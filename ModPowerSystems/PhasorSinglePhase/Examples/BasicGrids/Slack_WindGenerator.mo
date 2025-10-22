within ModPowerSystems.PhasorSinglePhase.Examples.BasicGrids;
model Slack_WindGenerator
  final parameter String WindProfileFile = Modelica.Utilities.Files.loadResource("modelica://ModPowerSystems/../ExampleSimulationData/WindProfile.txt");
  final parameter String WindProfileName = "WindProfile";

  Slack.Slack slack
    annotation (Placement(transformation(extent={{-10,24},{10,4}})));
  inner ModPowerSystems.Base.System system
    annotation (Placement(transformation(origin = {60, -76}, extent = {{-100, 80}, {-80, 100}})));
  Generation.WindGenerator windGenerator(profileFileName=WindProfileFile,
      profileName=WindProfileName)
    annotation (Placement(transformation(extent={{-10,-24},{10,0}})));
equation
  connect(slack.Pin1, windGenerator.Pin1)
    annotation (Line(points={{0,4},{0,0}}, color={0,0,0}));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-40,
            20},{20,-20}})));
end Slack_WindGenerator;
