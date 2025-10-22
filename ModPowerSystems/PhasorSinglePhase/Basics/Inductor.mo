within ModPowerSystems.PhasorSinglePhase.Basics;
model Inductor
    extends ModPowerSystems.Base.Interfaces.ComplexPhasor.SinglePhase.OnePort;
  outer ModPowerSystems.Base.System system;

    parameter SI.Inductance L = 1e-3;
    SI.Reactance X = system.omega*L;

equation
    v = j*X*i;

    annotation (Icon(graphics={
          Line(points={{-40,0},{-98,0}},
                                       color={0,0,0}),
          Line(points={{8,58}}, color={0,0,0}),
          Line(points={{96,0},{38,0}}, color={0,0,0}),
          Rectangle(
            extent={{-72,28},{68,-30}},
            lineColor={0,0,0},
            fillColor={0,0,0},
            fillPattern=FillPattern.Solid),
        Text(
          extent={{110,78},{410,38}},
          textString="%name",
          textColor={0,0,255}),
        Text(
          extent={{-148,92},{152,52}},
          textString="%name",
          textColor={0,0,255})}));
end Inductor;
