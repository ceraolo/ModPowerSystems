within ModPowerSystems.PhasorSinglePhase.Examples.BasicCircuits;

model VoltageSource_RLC
  import ModPowerSystems;
  inner ModPowerSystems.Base.System system annotation(
    Placement(transformation(origin = {64, -94}, extent = {{-100, 80}, {-80, 100}})));
  ModPowerSystems.PhasorSinglePhase.Basics.VoltageSource voltageSource annotation(
    Placement(transformation(origin = {4, 0}, extent = {{-42, 6}, {-22, 26}})));
  ModPowerSystems.PhasorSinglePhase.Basics.Resistor resistor annotation(
    Placement(transformation(origin={-2,0},    extent = {{10, -10}, {-10, 10}}, rotation = -90)));
  ModPowerSystems.PhasorSinglePhase.Basics.Ground ground annotation(
    Placement(transformation(origin = {4, 0}, extent = {{-62, -36}, {-42, -16}})));
  ModPowerSystems.PhasorSinglePhase.Basics.Capacitor capacitor annotation(
    Placement(transformation(origin={44,0},    extent = {{10, -10}, {-10, 10}}, rotation = -90)));
  ModPowerSystems.PhasorSinglePhase.Basics.Ground ground2 annotation(
    Placement(transformation(origin={10,0},   extent = {{24, -38}, {44, -18}})));
  ModPowerSystems.PhasorSinglePhase.Basics.Ground ground1 annotation(
    Placement(transformation(origin={6,0},    extent = {{-18, -38}, {2, -18}})));
  ModPowerSystems.PhasorSinglePhase.Basics.Inductor inductor annotation(
    Placement(transformation(origin={22,0},    extent = {{10, -10}, {-10, 10}}, rotation = -90)));
  ModPowerSystems.PhasorSinglePhase.Basics.Ground ground3 annotation(
    Placement(transformation(origin={8,0},    extent = {{4, -38}, {24, -18}})));
equation
  connect(voltageSource.Pin1, ground.Pin1) annotation(
    Line(points = {{-38, 16}, {-48, 16}, {-48, -16}}));
  connect(inductor.Pin1, ground3.Pin1) annotation(
    Line(points={{22,-10},{22,-18}}));
  connect(resistor.Pin1, ground1.Pin1) annotation(
    Line(points={{-2,-10},{-2,-18}}));
  connect(capacitor.Pin1, ground2.Pin1) annotation(
    Line(points={{44,-10},{44,-18}}));
  connect(voltageSource.Pin2, resistor.Pin2) annotation(
    Line(points={{-18,16},{-2,16},{-2,10}}));
  connect(inductor.Pin2, resistor.Pin2) annotation(
    Line(points={{22,10},{22,16},{-2,16},{-2,10}}));
  connect(capacitor.Pin2, resistor.Pin2) annotation(
    Line(points={{44,10},{44,16},{-2,16},{-2,10}}));
  annotation(
    Icon(coordinateSystem(preserveAspectRatio=false, grid={2,2})),
    Diagram(coordinateSystem(preserveAspectRatio=false,   extent={{-60,-40},{60,
            40}},
        grid={2,2})));
end VoltageSource_RLC;
