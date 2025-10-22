within ModPowerSystems.EmtSinglePhase.Basics;
model VoltageDC
  extends ModPowerSystems.Base.Interfaces.RealValue.SinglePhase.OnePort;

  parameter Modelica.Units.SI.Voltage Vnom=10
    "Nominal peak voltage phase-to-neutral";

equation
  v = Vnom;

  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
                                                               Ellipse(extent={{54,50},
              {-46,-50}},        lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(points={{-96,0},{-46,0}},  color={0,0,255}),
        Line(points={{100,0},{54,0}},color={0,0,255}),
        Line(points={{-2.22045e-016,-1.35963e-032},{24,-3.67395e-016}},
                                      color={0,0,255},
          origin={-26,-12},
          rotation=90),
        Line(points={{32,-4}}, color={0,0,255}),
        Line(points={{-2.22045e-016,-1.35963e-032},{24,-3.67395e-016}},
                                      color={0,0,255},
          rotation=180,
          origin={-14,0}),
        Text(
          extent={{-150,100},{150,60}},
          textString="%name",
          textColor={0,0,255})}),                                Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end VoltageDC;
