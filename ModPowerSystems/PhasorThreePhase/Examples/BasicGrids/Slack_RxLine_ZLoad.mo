within ModPowerSystems.PhasorThreePhase.Examples.BasicGrids;
model Slack_RxLine_ZLoad
  ModPowerSystems.PhasorThreePhase.Slack.Slack slack(Vnom=110e3)
   annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={0,26})));
  ModPowerSystems.PhasorThreePhase.Connections.BusBar busBar(Vnom=110e3)
    annotation (Placement(transformation(extent={{-10,0},{10,20}})));
  ModPowerSystems.PhasorThreePhase.Connections.RxLine rxLine(Vnom = 110e3)
   annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={0,-8})));
  ModPowerSystems.PhasorThreePhase.Connections.BusBar busBar1(Vnom=110e3)
    annotation (Placement(transformation(extent={{-10,-34},{10,-14}})));
  ModPowerSystems.PhasorThreePhase.Loads.ZLoad zLoad(Vnom=110e3)
    annotation (Placement(transformation(extent={{-10,-54},{10,-34}})));
equation
  connect(busBar1.Plug1, zLoad.Plug1)
    annotation (Line(points={{0,-24},{0,-34}},         color={0,0,0}));
  connect(rxLine.Plug1, busBar1.Plug1)
    annotation (Line(points={{0,-18},{0,-24}},         color={0,0,0}));
  connect(rxLine.Plug2, busBar.Plug1)
    annotation (Line(points={{0,2},{0,10}},  color={0,0,0}));
  connect(slack.Plug1, busBar.Plug1)
    annotation (Line(points={{0,16},{0,10}},        color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio = false, extent = {{-20, 40}, {20, -60}})));
end Slack_RxLine_ZLoad;
