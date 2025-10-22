within ModPowerSystems.DynPhasorSinglePhase.Examples.BasicCircuits;

model VoltageSource_RL
  import ModPowerSystems;
  inner ModPowerSystems.Base.System system annotation(
    Placement(transformation(origin = {88, -98}, extent = {{-100, 80}, {-80, 100}})));
  ModPowerSystems.DynPhasorSinglePhase.Basics.VoltageSource voltageSource annotation(
    Placement(transformation(origin = {20, -2}, extent = {{-42, 6}, {-22, 26}})));
  ModPowerSystems.DynPhasorSinglePhase.Basics.Resistor resistor(R = 1) annotation(
    Placement(transformation(origin = {16, 14}, extent = {{10, -10}, {-10, 10}})));
  ModPowerSystems.DynPhasorSinglePhase.Basics.Ground ground annotation(
    Placement(transformation(origin = {20, 0}, extent = {{-62, -36}, {-42, -16}})));
  ModPowerSystems.DynPhasorSinglePhase.Basics.Inductor inductor(L = 0.001) annotation(
    Placement(transformation(origin = {34, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  ModPowerSystems.DynPhasorSinglePhase.Basics.Ground ground3 annotation(
    Placement(transformation(origin = {20, 0}, extent = {{4, -38}, {24, -18}})));
equation
  connect(resistor.Pin1, inductor.Pin2) annotation(
    Line(points = {{26, 14}, {34, 14}, {34, 8}}));
  connect(ground.Pin1, voltageSource.Pin1) annotation(
    Line(points = {{-32, -16}, {-32, 14}, {-22, 14}}));
  connect(inductor.Pin1, ground3.Pin1) annotation(
    Line(points = {{34, -12}, {34, -18}}));
  connect(voltageSource.Pin2, resistor.Pin2) annotation(
    Line(points = {{-2, 14}, {2, 14}, {6, 14}}));
  annotation(
    Icon(coordinateSystem(preserveAspectRatio = false)),
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-40, 20}, {40, -40}})),
    experiment(StopTime = 0.2, Interval = 5e-005));
end VoltageSource_RL;
