within ModPowerSystems.EmtSinglePhase.Basics;
model Capacitor
  extends ModPowerSystems.Base.Interfaces.RealValue.SinglePhase.OnePort;

  parameter SI.Capacitance C = 1e-6;

initial equation
  // use this only if the simulation should start with a transient
  //v = 0;

equation
  C*der(v) = i;

  annotation (Icon(graphics={
        Line(points={{8,58}}, color={0,0,0}),
        Line(points={{-12,0},{-98,0}},
                                     color={0,0,255}),
        Line(points={{100,0},{12,0}},color={0,0,255}),
          Rectangle(
            extent={{-12,36},{-10,-36}},
            lineColor={0,0,255},
            lineThickness=1,
            fillColor={0,0,255},
            fillPattern=FillPattern.Solid),
          Rectangle(
            extent={{10,36},{12,-36}},
            lineColor={0,0,255},
            lineThickness=1,
            fillColor={0,0,255},
            fillPattern=FillPattern.Solid),
        Text(
          extent={{-150,94},{150,54}},
          textString="%name",
          textColor={0,0,255})}));
end Capacitor;
