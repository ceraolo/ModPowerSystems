within ModPowerSystems.DynPhasorSinglePhase.Generation;
model SynchronousGenerator_3rdOrderModel
   extends ModPowerSystems.Base.Interfaces.ComplexPhasor.SinglePhase.OnePortGroundedInit;

  Modelica.Blocks.Interfaces.RealInput P_m_in
  annotation (Placement(transformation(extent={{-113,10},{-93,30}}),  iconTransformation(extent={{-113,10},
            {-93,30}})));
  Modelica.Blocks.Interfaces.RealInput v_fd_in annotation (Placement(transformation(extent={{-113,
            -30},{-93,-10}}),                                                                                   iconTransformation(extent={{-113,
            -30},{-93,-10}})));


  // general machine characteristics
  parameter Real V_nom = 24e3 "Nominal phase-to-phase RMS voltage";
  parameter Real P_nom = 555e6 "Nominal turbine (active) power (MW)";
  parameter Real f_nom = 60 "Nominal frequency";
  parameter Real p = 1 "Number of pole pairs";
  parameter Real H = 3.7 "Inertia constant";

  // machine parameters in per-unit system
  parameter Real R_s = 0.003 "Stator Resistance";
  parameter Real L_l = 0.15 "Stator leakage";
  parameter Real L_md = 1.6599 "d axis mutual inductance";
  parameter Real L_mq = 1.61 "q axis mutual inductance";
  parameter Real R_fd = 0.0006 "Rotor Resistance";
  parameter Real L_lfd = 0.1648 "Rotor leakage";

  // initialization parameters
  parameter Real P_init = 0.5405405405405406 "Initial active power";
  parameter Real Q_init = 0 "initial reactive power";
  parameter Real theta_volt_init = -Modelica.Constants.pi/2 "initial voltage angle";

  // machine constants deduced from machine characteristics
  parameter Real omega_nom = 2 * Modelica.Constants.pi * f_nom "Nominal angular frequency";

  // base quantities of pu-system deduced from machine characteristics
  parameter Real v_b = sqrt(2/3)*V_nom; // base = phase-to-ground peak voltage
  parameter Real i_b = 2/3*P_nom/v_b; // base = line peak current per phase
  parameter Real omega_e_b = omega_nom;
  parameter Real omega_m_b = omega_nom/p;

  // --- initial values ---
  parameter Real S_init = sqrt(P_init^2+Q_init^2);
  parameter Real vt_init = sqrt(2/3)*V_nom/v_b;
  parameter Real it_init = S_init/vt_init;
  parameter Real pf_init = acos(P_init/S_init);
  parameter Real delta_init = atan(((L_mq + L_l) * it_init * cos(pf_init) - R_s * it_init * sin(pf_init)) / (vt_init + R_s * it_init * cos(pf_init) + (L_mq + L_l) * it_init * sin(pf_init)));

  // electrical variables
  parameter Real v_d_init = vt_init * sin(delta_init); // stator
  parameter Real v_q_init = vt_init * cos(delta_init);
  parameter Real i_d_init = it_init * sin(delta_init + pf_init);
  parameter Real i_q_init = it_init * cos(delta_init + pf_init);
  parameter Real i_fd_init = (Psi_d_init + (L_md + L_l) * i_d_init) / L_md; // rotor
  parameter Real v_fd_init = R_fd * i_fd_init;

  // magnetic flux variables
  parameter Real Psi_d_init = v_q_init;
  parameter Real Psi_q_init = -v_d_init;
  parameter Real Psi_fd_init = (L_md + L_lfd) * i_fd_init - L_md * i_d_init;

  // electromechanical variables
  parameter Real omega_e_init = omega_nom/omega_e_b;
  parameter Real omega_m_init = omega_nom/p/omega_m_b;
  parameter Real T_e_init = Psi_d_init*i_q_init - Psi_q_init*i_d_init;
  parameter Real theta_re_init = theta_volt_init + delta_init - Modelica.Constants.pi/2;
  parameter Real theta_s_init = 0; //theta_volt_init (TBD)

  // --- variable declaration ---
  // magnetic flux variables
  Real Psi_d(start=Psi_d_init);
  Real Psi_q(start=Psi_q_init);
  Real Psi_fd(start=Psi_fd_init);

  // electrical variables
  // in reference frame rotating with rotor speed
  Real v_d(start=v_d_init);
  Real v_q(start=v_q_init);
  Real i_d(start=i_d_init);
  Real i_q(start=i_q_init);
  Real i_fd(start=i_fd_init);
  Real v_fd = v_fd_in/v_b; // voltage imposed from external voltage source (constant initial steady-state voltage assumed)

  // in reference frame rotating with synchronous speed (that is in grid reference frame, as used in connectors)
  Real theta_s(start=theta_s_init);

  // electromechanical variables
  Real omega_e_0 = 1;
  Real omega_e(start=omega_e_init);  // electrical angular velocity of rotor
  Real omega_m(start=omega_m_init);  // mechanical angular velocity of rotor
  Real theta_re(start=theta_re_init);
  Real T_e(start=T_e_init);
  Real T_m;
  Real P_m = P_m_in / P_nom; // mechanical power applied to rotor by external source (here transferred to pu system)
  Real delta(start=delta_init) "power angle";

initial equation
    {i_d_init,i_q_init} = ModPowerSystems.Base.Transforms.DQ1toDQ2_Kundur(-{sqrt(2)*i.re,sqrt(2)*i.im}/i_b, theta_re_init - theta_s_init);

equation
  // variable transformation to dq reference frame rotating with rotor speed and introduction of pu-system
  der(theta_s) = omega_nom;
  der(delta)=omega_e*omega_e_b-omega_nom;
  {v_d,v_q} = ModPowerSystems.Base.Transforms.DQ1toDQ2_Kundur({sqrt(2)*v.re,sqrt(2)*v.im}/v_b, theta_re - theta_s);
  {i_d,i_q} = ModPowerSystems.Base.Transforms.DQ1toDQ2_Kundur(-{sqrt(2)*i.re,sqrt(2)*i.im}/i_b, theta_re - theta_s);

  // magnetic flux linkage equations (from [1] eq. 2.130a, 2.130b, 2.130c)
  Psi_d = -(L_l+L_md)*i_d + L_md*i_fd; // stator
  Psi_q = -(L_l+L_mq)*i_q;
  Psi_fd = -L_md*i_d + (L_md+L_lfd)*i_fd; // rotor

  // voltage equations (from [1] eq. 2.129a, 2.129b, 2.131; modified as time is not in pu according to 3.88 from [2])
  v_d = - Psi_q*omega_e_0; // stator
  v_q = Psi_d*omega_e_0;
  v_fd = R_fd*i_fd + der(Psi_fd)/omega_e_b; // rotor

  // electromechanical equations (modified as time is not in pu according to 3.88 from [2])
  T_m = P_m / omega_m;
  T_e = Psi_d*i_q - Psi_q*i_d; // from [2] eq. 3.134
  der(omega_m)/omega_e_b = 1/(2*H) * (T_m - T_e); // from [2] eq. 3.198
  omega_e = omega_m;
  der(theta_re) = omega_e*omega_e_b;


  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Ellipse(extent={{-60,58},{60,-62}}, lineColor={0,0,0}),
        Ellipse(extent={{-40,38},{40,-42}}, lineColor={0,0,0}),
        Text(
          extent={{-30,26},{30,-26}},
          lineColor={0,0,0},
          textString="SG"),
        Line(points={{0,94},{0,58}}, color={0,0,0})}),           Diagram(
        coordinateSystem(preserveAspectRatio=false)),
    Documentation(info="<html>
<p>References:</p>
<p>[1] M. Eremia and M. Shahidehpour, <i>Handbook of Electrical Power System Dynamics</i>. Hoboken, NJ, USA: John Wiley &AMP; Sons, Inc, 2013. </p>
<p>[2] P. Kundur, N. J. Balu, and M. G. Lauby, <i>Power system stability and control</i>. New York; London: McGraw-Hill, 1994. </p>
</html>"));
end SynchronousGenerator_3rdOrderModel;
