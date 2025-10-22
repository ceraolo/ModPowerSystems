within ModPowerSystems.PhasorThreePhase.Basics;
model Resistor
  extends ModPowerSystems.Base.Interfaces.ComplexPhasor.ThreePhase.OnePort;

  parameter SI.Resistance R[3] = {1,1,1};

equation
    v[1] = R[1]*i[1];
    v[2] = R[2]*i[2];
    v[3] = R[3]*i[3];
  annotation (Icon(graphics={
        Rectangle(
          extent={{-32,72},{32,-70}},
          lineColor={0,128,255},
          lineThickness=0.5,
          rotation=270,
          fillPattern=FillPattern.Solid,
          fillColor={255,255,255}),
        Line(points={{8,58}}, color={0,0,0}),
        Line(points={{72,0},{100,0}},color={0,128,255}),
        Line(points={{-54,-34}}, color={0,0,0}),
        Line(points={{-100,0},{-70,0}},
        color={0,128,255}),
        Text(
          extent={{-150,84},{150,44}},
          textString="%name",
          textColor={0,0,255})}));
end Resistor;
