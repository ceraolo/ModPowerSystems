within ModPowerSystems.EmtSinglePhase.Basics;
model CurrentDC
  extends ModPowerSystems.Base.Interfaces.RealValue.SinglePhase.OnePort;

  parameter Modelica.Units.SI.Current Inom=10 "Nominal current";

equation
  i = -Inom;

  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
                                                               Ellipse(extent={{
              50,50},{-50,-50}}, lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(points={{-100,0},{-50,0}}, color={0,0,255}),
        Line(points={{96,0},{50,0}}, color={0,0,255}),
        Line(points={{28,-4}}, color={0,0,255}),
        Polygon(
          points={{8,4},{28,0},{8,-4},{8,4}},
          lineColor={0,0,255},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Line(points={{-32,0},{12,0}},   color={0,0,255}),
        Text(
          extent={{-150,100},{150,60}},
          textString="%name",
          textColor={0,0,255})}),                                Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end CurrentDC;
