within ModPowerSystems.DynPhasorSinglePhase.Basics;
model Resistor
  extends ModPowerSystems.Base.Interfaces.ComplexPhasor.SinglePhase.OnePort;

  parameter SI.Resistance R = 1;

equation
    v = R*i;
  annotation (Icon(graphics={
        Line(points={{8,58}}, color={0,0,0}),
        Line(points={{8,58}}, color={0,0,0}),
        Line(points={{40,0},{100,0}},color={0,0,0}),
        Line(points={{-54,-34}}, color={0,0,0}),
        Line(points={{-100,0},{-40,0}},
        color={0,0,0}),
          Rectangle(
            extent={{-33,72},{33,-72}},
            lineColor={0,0,0},
            lineThickness=0.5,
            origin={0,1},
            rotation=270,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-152,84},{148,44}},
          textString="%name",
          textColor={0,0,255})}));
end Resistor;
