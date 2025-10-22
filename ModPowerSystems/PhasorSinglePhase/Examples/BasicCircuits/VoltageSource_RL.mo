within ModPowerSystems.PhasorSinglePhase.Examples.BasicCircuits;

model VoltageSource_RL
  inner ModPowerSystems.Base.System system annotation(
    Placement(transformation(origin = {72, -96}, extent = {{-100, 80}, {-80, 100}})));
  ModPowerSystems.PhasorSinglePhase.Basics.VoltageSource voltageSource annotation(
    Placement(transformation(origin = {4, 0}, extent = {{-42, 6}, {-22, 26}})));
  ModPowerSystems.PhasorSinglePhase.Basics.Resistor resistor annotation(
    Placement(transformation(origin = {0, 16}, extent = {{10, -10}, {-10, 10}})));
  ModPowerSystems.PhasorSinglePhase.Basics.Ground ground annotation(
    Placement(transformation(origin = {4, 0}, extent = {{-62, -36}, {-42, -16}})));
  ModPowerSystems.PhasorSinglePhase.Basics.Inductor inductor(L = 0.01) annotation(
    Placement(transformation(origin = {18, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  ModPowerSystems.PhasorSinglePhase.Basics.Ground ground3 annotation(
    Placement(transformation(origin = {4, 0}, extent = {{4, -38}, {24, -18}})));
equation
  connect(resistor.Pin1, inductor.Pin2) annotation(
    Line(points = {{10, 16}, {18, 16}, {18, 10}}));
  connect(ground.Pin1, voltageSource.Pin1) annotation(
    Line(points = {{-48, -16}, {-48, -16}, {-48, 16}, {-38, 16}}));
  connect(inductor.Pin1, ground3.Pin1) annotation(
    Line(points = {{18, -10}, {18, -14}, {18, -18}}));
  connect(voltageSource.Pin2, resistor.Pin2) annotation(
    Line(points = {{-18, 16}, {-14, 16}, {-10, 16}}));
  annotation(
    Icon(coordinateSystem(preserveAspectRatio = false)),
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-60, 40}, {40, -40}})));
end VoltageSource_RL;
