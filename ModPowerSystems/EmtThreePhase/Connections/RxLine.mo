within ModPowerSystems.EmtThreePhase.Connections;
model RxLine
  extends ModPowerSystems.Base.Interfaces.RealValue.ThreePhase.OnePort;

  parameter SI.Resistance[3,3] r = {{0.207,0,0}, {0,0.207,0}, {0,0,0.207}}
    "Series Resistance per km";
  parameter SI.Reactance[3,3] x = {{0.121,0,0}, {0,0.121,0}, {0,0,0.121}}
    "Series Reactance per km";
  parameter Real length = 20 "Length of line in km";

  SI.Resistance[3,3] R = r * length;
  SI.Reactance[3,3] X = x * length;

  outer ModPowerSystems.Base.System system;

  SI.Inductance[3,3] L = X / system.omega;

equation
  v = L*der(i) + R*i;

  annotation (
    Icon(
      coordinateSystem(
        preserveAspectRatio=false, initialScale = 0.1),
      graphics={Line(points = {{100, 0}, {60, 0}}, color={0,0,255}),
                                                    Text(extent = {{100, 20}, {-100, 60}}, textString = "%name",
          textColor={0,0,255}),                                                                                   Rectangle(extent = {{-60, 20}, {60, -20}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),                                                                                                                     Line(points = {{-60, 0}, {-100, 0}}, color=
              {0,0,255})}));
end RxLine;
