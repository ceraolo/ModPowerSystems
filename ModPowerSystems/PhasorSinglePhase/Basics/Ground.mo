within ModPowerSystems.PhasorSinglePhase.Basics;
model Ground
    extends
    ModPowerSystems.Base.Interfaces.ComplexPhasor.SinglePhase.OnePortGrounded;

equation
    v = Complex(0,0);

    annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Line(points={{-60,52},{60,52}},
                                        color={0,0,0}),
          Line(points={{-40,30},{40,30}},   color={0,0,0}),
          Line(points={{-20,10},{20,10}},   color={0,0,0}),
          Line(points={{0,96},{0,52}},color={0,0,0}),
        Text(
          extent={{-150,-8},{150,-48}},
          textString="%name",
          textColor={0,0,255})}),                       Diagram(coordinateSystem(
            preserveAspectRatio=false)));
end Ground;
