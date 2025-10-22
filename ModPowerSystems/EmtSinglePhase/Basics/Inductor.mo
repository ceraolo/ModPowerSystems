within ModPowerSystems.EmtSinglePhase.Basics;
model Inductor
  extends ModPowerSystems.Base.Interfaces.RealValue.SinglePhase.OnePort;

  parameter SI.Inductance L = 100e-3;

equation
  L*der(i) = v;

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}})), Icon(graphics={
        Line(points={{8,58}}, color={0,0,0}),
        Line(points={{-42,0},{-100,0}},
                                     color={0,0,255}),
        Line(points={{94,0},{36,0}}, color={0,0,255}),
        Rectangle(
          extent={{-72,32},{72,-32}},
          lineColor={0,0,255},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-150,86},{150,46}},
          textString="%name",
          textColor={0,0,255})}));
end Inductor;
