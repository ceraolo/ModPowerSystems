within ModPowerSystems.EmtThreePhase.Basics;
model Resistor
  extends ModPowerSystems.Base.Interfaces.RealValue.ThreePhase.OnePort;

  parameter SI.Resistance R[3,3] = {{1,0,0}, {0,1,0}, {0,0,1}};

equation
    v = R*i;
  annotation (Icon(graphics={
        Line(points={{8,58}}, color={0,0,0}),
        Line(points={{-42,0},{-100,0}},
                                     color={0,0,255}),
        Line(points={{94,0},{36,0}}, color={0,0,255}),
        Rectangle(
          extent={{-72,32},{72,-32}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-150,86},{150,46}},
          textString="%name",
          textColor={0,0,255})}));
end Resistor;
