within ModPowerSystems.PhasorSinglePhase.Examples.BasicGrids;
model Slack_PiLine_ZIP
  ModPowerSystems.PhasorSinglePhase.Slack.Slack slack1(Vnom = 33e3)  annotation(
    Placement(transformation(origin = {-48, -8}, extent = {{-10, -10}, {10, 10}})));
  ModPowerSystems.PhasorSinglePhase.Loads.ZIPLoad zIPLoad1(P0 = 2e6, Q0 = 4e6, V0 = 33000, Vnom = 33000, a0 = 0, a1 = 0, a2 = 1, b0 = 0, b1 = 0, b2 = 1)  annotation(
    Placement(transformation(origin = {48, 0}, extent = {{-10, -10}, {10, 10}})));
  ModPowerSystems.PhasorSinglePhase.Connections.BusBar busBar1(Vnom = 33e3)  annotation(
    Placement(transformation(origin = {-38, 10}, extent = {{-10, 0}, {10, 20}}, rotation = -90)));
  ModPowerSystems.PhasorSinglePhase.Connections.BusBar busBar2(Vnom = 33e3)  annotation(
    Placement(transformation(origin = {22, 10}, extent = {{-10, 0}, {10, 20}}, rotation = -90)));
  ModPowerSystems.PhasorSinglePhase.Connections.PiLine piLine1(Vnom = 33e3,b = 0, g = 0, length = 100, r = 0.161, x = 0.29)  annotation(
    Placement(transformation(origin = {4, 10}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(piLine1.Pin1, busBar1.Pin1) annotation(
    Line(points = {{-6, 10}, {-28, 10}}));
  connect(piLine1.Pin2, busBar2.Pin1) annotation(
    Line(points = {{14, 10}, {32, 10}}));
  connect(zIPLoad1.Pin1, busBar2.Pin1) annotation(
    Line(points = {{48, 10}, {32, 10}}));
  connect(slack1.Pin1, busBar1.Pin1) annotation(
    Line(points = {{-48, 2}, {-48, 10}, {-28, 10}}));
annotation(
    Diagram(coordinateSystem(extent = {{-60, 20}, {60, -20}})));
end Slack_PiLine_ZIP;
