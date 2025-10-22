within ModPowerSystems.DynPhasorSinglePhase.Basics;
model Ground
  extends
    ModPowerSystems.Base.Interfaces.ComplexPhasor.SinglePhase.OnePortGrounded;

equation
  v = Complex(0,0);

  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Line(points={{-40,40},{40,40}},
                                      color={0,0,0}),
        Line(points={{-30,30},{30,30}},   color={0,0,0}),
        Line(points={{-20,20},{20,20}},   color={0,0,0}),
        Line(points={{0,96},{0,40}},color={0,0,0}),
        Text(
          extent={{-150,-10},{150,-50}},
          textString="%name",
          textColor={0,0,255})}),                     Diagram(coordinateSystem(
          preserveAspectRatio=false)));
end Ground;
