within ModPowerSystems.DynPhasorThreePhase.Basics;
model Capacitor
  extends ModPowerSystems.Base.Interfaces.ComplexPhasor.ThreePhase.OnePort;
  outer ModPowerSystems.Base.System system;

  parameter SI.Capacitance C[3] = {1e-6,1e-6,1e-6};
  SI.Reactance X[3] = -ones(3)./(system.omega*C[:]);

equation
  v[:] = j*X[:].*i[:];

  annotation (Icon(graphics={
        Line(points={{-12,0},{-98,0}},
                                     color={162,29,33}),
        Line(points={{8,58}}, color={0,0,0}),
        Line(points={{100,0},{12,0}},color={162,29,33}),
          Rectangle(
            extent={{-12,36},{-10,-36}},
            lineColor={162,29,33},
            lineThickness=1,
            fillColor={162,29,33},
            fillPattern=FillPattern.Solid),
          Rectangle(
            extent={{10,36},{12,-36}},
            lineColor={162,29,33},
            lineThickness=1,
            fillColor={162,29,33},
            fillPattern=FillPattern.Solid),
        Text(
          extent={{-150,92},{150,52}},
          textString="%name",
          textColor={0,0,255})}));
end Capacitor;
