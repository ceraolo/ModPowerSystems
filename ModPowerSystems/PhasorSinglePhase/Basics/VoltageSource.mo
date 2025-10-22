within ModPowerSystems.PhasorSinglePhase.Basics;
model VoltageSource "infinite power source"
    extends ModPowerSystems.Base.Interfaces.ComplexPhasor.SinglePhase.OnePort;

    parameter SI.Voltage Vnom = 10 "Voltage phase-to-neutral RMS amplitude";
    parameter SI.Angle phiV = 0 "Initial Voltage Angle";

  outer ModPowerSystems.Base.System system;

equation
    v = Complex(Vnom*cos(phiV), Vnom*sin(phiV));

    annotation (
      Icon(coordinateSystem(
          preserveAspectRatio=false,
          extent={{-100,-100},{100,100}},
          grid={2,2}), graphics={
          Line(points={{-100,0},{-40,0}}, color={0,128,255}),
          Line(points={{40,0},{100,0}}, color={0,128,255}),    Ellipse(extent={{50,52},
              {-48,-50}},        lineColor={0,128,255},
          rotation=360,
          fillPattern=FillPattern.Solid,
          fillColor={255,255,255}),
        Text(
          extent={{38,-33},{-38,33}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid,
          textString="~",
          origin={0,-1},
          rotation=360),
        Text(
          extent={{-150,100},{150,60}},
          textString="%name",
          textColor={0,0,255})}),    Diagram(coordinateSystem(preserveAspectRatio=
             false, extent={{-100,-100},{100,100}})));
end VoltageSource;
