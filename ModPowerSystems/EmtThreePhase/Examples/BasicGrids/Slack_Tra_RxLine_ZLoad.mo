within ModPowerSystems.EmtThreePhase.Examples.BasicGrids;
model Slack_Tra_RxLine_ZLoad
  ModPowerSystems.EmtThreePhase.Slack.Slack slack1(Vnom = 110e3)  annotation(
    Placement(visible = true, transformation(origin={0,66},    extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  ModPowerSystems.EmtThreePhase.Transformers.Transformer transformer1 annotation(
    Placement(visible = true, transformation(origin={0,20},    extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  inner Base.System system annotation(
    Placement(transformation(origin={-24,64},    extent = {{-10, -10}, {10, 10}})));
  ModPowerSystems.EmtThreePhase.Loads.ZLoad zLoad1(Vnom = 20e3)  annotation(
    Placement(visible = true, transformation(origin={0,-66},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ModPowerSystems.EmtThreePhase.Connections.BusBar busBar1(Vnom = 110e3)  annotation(
    Placement(visible = true, transformation(origin={0,32},    extent = {{-10, 0}, {10, 20}}, rotation = 0)));
  ModPowerSystems.EmtThreePhase.Connections.BusBar busBar2(Vnom = 20e3)  annotation(
    Placement(visible = true, transformation(                  extent={{-10,-14},
            {10,6}},                                                                          rotation = 0)));
  ModPowerSystems.EmtThreePhase.Connections.RxLine rxLine1(Vnom = 20e3)  annotation(
    Placement(visible = true, transformation(origin={0,-24},    extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  ModPowerSystems.EmtThreePhase.Connections.BusBar busBar3(Vnom = 20e3)  annotation(
    Placement(visible = true, transformation(origin={0,-56},    extent = {{-10, 0}, {10, 20}}, rotation = 0)));
equation
  connect(zLoad1.Plug1, busBar3.Plug1) annotation(
    Line(points={{0,-56},{0,-46}}));
  connect(rxLine1.Plug2, busBar3.Plug1) annotation(
    Line(points={{0,-34},{0,-46}}));
  connect(busBar2.Plug1, rxLine1.Plug1) annotation(
    Line(points={{0,-4},{0,-14}}));
  connect(transformer1.Plug2, busBar2.Plug1) annotation(
    Line(points={{0,10},{0,-4}}));
  connect(transformer1.Plug1, busBar1.Plug1) annotation(
    Line(points={{0,30},{0,42}}));
  connect(slack1.Plug1, busBar1.Plug1) annotation(
    Line(points={{0,56},{0,42}}));
annotation(
    Diagram(coordinateSystem(extent={{-40,-80},{20,80}}, grid={2,2})), Icon(
        coordinateSystem(grid={2,2})));
end Slack_Tra_RxLine_ZLoad;
