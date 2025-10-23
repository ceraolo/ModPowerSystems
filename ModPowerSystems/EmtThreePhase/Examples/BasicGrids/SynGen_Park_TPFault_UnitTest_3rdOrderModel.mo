within ModPowerSystems.EmtThreePhase.Examples.BasicGrids;
model SynGen_Park_TPFault_UnitTest_3rdOrderModel
  ModPowerSystems.EmtThreePhase.Generation.SynchronousGenerator_3rdOrderModel synchGenerator_Park
    annotation (Placement(visible=true, transformation(extent={{-50,-20},{-30,0}},
          rotation=0)));
  Modelica.Blocks.Sources.Constant const(k = 7.0821) annotation(
    Placement(visible = true, transformation(extent = {{-76, -20}, {-66, -10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const1(k = 5.5558e5) annotation(
    Placement(visible = true, transformation(extent = {{-76, -2}, {-66, 8}}, rotation = 0)));
  ModPowerSystems.EmtThreePhase.Fault.ThreePhaseFault threePhaseFault(R_off = {1e9, 1e9, 1e9}, t_on = 0.1, R_on = {0.001, 0.001, 0.001}, t_off = 2.1) annotation(
    Placement(visible = true, transformation(extent={{-24,-40},{-4,-20}},      rotation = 0)));
  ModPowerSystems.EmtThreePhase.Connections.BusBar busBar1(Vnom = 24e3)  annotation(
    Placement(visible = true, transformation(origin = {0, -22}, extent = {{-10, 0}, {10, 20}}, rotation = 0)));
  ModPowerSystems.EmtThreePhase.Loads.RLoad rLoad1(Vnom = 24e3)  annotation(
    Placement(visible = true, transformation(origin={18,-30},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(threePhaseFault.Plug1, busBar1.Plug1) annotation(
    Line(points={{-14,-20},{0,-20},{0,-12}}));
  connect(rLoad1.Plug1, busBar1.Plug1) annotation(
    Line(points={{18,-20},{0,-20},{0,-12}}));
  connect(synchGenerator_Park.Plug1, busBar1.Plug1)
    annotation (Line(points={{-40,0},{0,0},{0,-12},{0,-12}}));
  connect(const1.y, synchGenerator_Park.P_m_in) annotation (Line(points={{-65.5,
          3},{-57.75,3},{-57.75,-8},{-50.3,-8}}, color={0,0,127}));
  connect(const.y, synchGenerator_Park.v_fd_in) annotation (Line(points={{-65.5,
          -15},{-57.75,-15},{-57.75,-12},{-50.3,-12}}, color={0,0,127}));
  annotation(
    Icon(coordinateSystem(preserveAspectRatio = false)),
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-80, 20}, {40, -40}})),
    experiment(
      StopTime=60,
      __Dymola_NumberOfIntervals=5000,
      __Dymola_Algorithm="Dassl"),
    Documentation(info="<html>
<p><i>Comment by M Ceraolo</i></p>
<p></span><span style=\"font-size: 9.75pt;\">The fault lasts two seconds.</p>
<p></span><span style=\"font-size: 9.75pt;\">The system stabilises in around 30s. The final omega is larger than the initial one, because input power has remained constantly equal to the one originally absorbed by the load, but during the fault the constant-impedance load has drawn laess power (thus energy).</p>
</html>"));
end SynGen_Park_TPFault_UnitTest_3rdOrderModel;
