within ModPowerSystems.EmtThreePhase.Basics;
model Inductor
  extends ModPowerSystems.Base.Interfaces.RealValue.ThreePhase.OnePort;

  parameter SI.Inductance L[3,3] = {{1e-3,0,0}, {0,1e-3,0}, {0,0,1e-3}};

equation
    v = L*der(i);
  annotation (Icon(graphics={
        Line(points={{8,58}}, color={0,0,0}),
        Line(points={{-40,0},{-98,0}},
                                     color={0,0,255}),
        Line(points={{8,58}}, color={0,0,0}),
        Line(points={{96,0},{38,0}}, color={0,0,255}),
        Rectangle(
          extent={{-70,32},{74,-32}},
          lineColor={0,0,0},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-150,84},{150,44}},
          textString="%name",
          textColor={0,0,255})}));
end Inductor;
