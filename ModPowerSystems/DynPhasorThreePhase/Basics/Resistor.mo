within ModPowerSystems.DynPhasorThreePhase.Basics;
model Resistor
  extends ModPowerSystems.Base.Interfaces.ComplexPhasor.ThreePhase.OnePort;

  parameter SI.Resistance R[3] = {1,1,1};

equation
    v[1] = R[1]*i[1];
    v[2] = R[2]*i[2];
    v[3] = R[3]*i[3];
  annotation (Icon(graphics={
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
          textColor={0,0,0})}));
end Resistor;
