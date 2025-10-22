within ModPowerSystems.PhasorThreePhase.Basics;
model VoltageSource "infinite power source"
  extends ModPowerSystems.Base.Interfaces.ComplexPhasor.ThreePhase.OnePort;

  parameter SI.Voltage Vnom = 10 "Voltage phase-to-neutral RMS amplitude";
  parameter SI.Angle phiV = 0 "Initial voltage angle";
  constant SI.Angle[3] ThreePhaseShift = (0:2)*2*pi/3 "Phase shift";

equation
  v[1] = Complex(Vnom/sqrt(3)*cos(phiV - ThreePhaseShift[1]), Vnom/sqrt(3)*sin(phiV - ThreePhaseShift[1]));
  v[2] = Complex(Vnom/sqrt(3)*cos(phiV - ThreePhaseShift[2]), Vnom/sqrt(3)*sin(phiV - ThreePhaseShift[2]));
  v[3] = Complex(Vnom/sqrt(3)*cos(phiV - ThreePhaseShift[3]), Vnom/sqrt(3)*sin(phiV - ThreePhaseShift[3]));

  annotation (
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        grid={2,2}), graphics={                                Ellipse(extent={{50,50},
              {-48,-52}},        lineColor={0,0,0},
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
        Line(points={{-100,0},{-48,0}}, color={0,0,0}),
        Line(points={{50,0},{100,0}}, color={0,0,0}),
        Text(
          extent={{-150,100},{150,60}},
          textString="%name",
          textColor={0,0,255})}),  Diagram(coordinateSystem(preserveAspectRatio=
           false, extent={{-100,-100},{100,100}})));
end VoltageSource;
