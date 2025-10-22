within ModPowerSystems.PhasorSinglePhase.Basics;
model Capacitor
    extends ModPowerSystems.Base.Interfaces.ComplexPhasor.SinglePhase.OnePort;
  outer ModPowerSystems.Base.System system;

    parameter SI.Capacitance C = 1e-6;
    SI.Reactance X = -1/(system.omega*C);

  Modelica.Units.SI.ComplexVoltage v;

equation
    v = j*X*i;

    annotation (Icon(graphics={
          Line(points={{-14,0},{-100,0}},
                                       color={0,0,0}),
          Line(points={{8,58}}, color={0,0,0}),
          Line(points={{100,0},{12,0}},color={0,0,0}),
          Rectangle(
            extent={{-12,38},{-10,-34}},
            lineColor={0,0,0},
            lineThickness=1,
            fillColor={0,0,0},
            fillPattern=FillPattern.Solid),
          Rectangle(
            extent={{10,38},{12,-34}},
            lineColor={0,0,0},
            lineThickness=1,
            fillColor={0,0,0},
            fillPattern=FillPattern.Solid),
        Text(
          extent={{-150,92},{150,52}},
          textString="%name",
          textColor={0,0,255})}));
end Capacitor;
