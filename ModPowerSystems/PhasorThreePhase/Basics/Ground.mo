within ModPowerSystems.PhasorThreePhase.Basics;
model Ground
  extends
    ModPowerSystems.Base.Interfaces.ComplexPhasor.ThreePhase.OnePortGrounded;

equation
  v[:].re = zeros(3);
  v[:].im = zeros(3);

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
          preserveAspectRatio=false)),
              Icon(graphics={
        Line(points={{-10,30},{30,30}},   color={0,0,0}),
        Line(points={{-10,30},{30,30}},   color={0,0,0}),
        Line(points={{-10,30},{30,30}},   color={0,0,0}),
        Line(
          points={{-10,10},{10,10}},
          color={0,0,0},
          thickness=0.5),
        Line(
          points={{-32,10},{18,-22}},
          color={0,0,0},
          thickness=0.5)}));
end Ground;
