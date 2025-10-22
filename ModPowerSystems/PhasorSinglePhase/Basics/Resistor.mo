within ModPowerSystems.PhasorSinglePhase.Basics;
model Resistor
    extends ModPowerSystems.Base.Interfaces.ComplexPhasor.SinglePhase.OnePort;

    parameter SI.Resistance R = 1;

equation
      v = R*i;
    annotation (Icon(graphics={
          Rectangle(
            extent={{-33,72},{33,-72}},
            lineColor={0,0,0},
            lineThickness=0.5,
            origin={2,1},
            rotation=270,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
          Line(points={{8,58}}, color={0,0,0}),
          Line(points={{74,0},{100,0}},color={0,0,0}),
          Line(points={{-54,-34}}, color={0,0,0}),
          Line(points={{-100,0},{-72,0}},
          color={0,0,0}),
        Text(
          extent={{-150,84},{150,44}},
          textString="%name",
          textColor={0,0,255})}));
end Resistor;
