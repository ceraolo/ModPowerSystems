within ModPowerSystems.DynPhasorSinglePhase.Examples.BasicCircuits;
model VoltageSource_RLC
  import ModPowerSystems;
  inner ModPowerSystems.Base.System system
    annotation (Placement(transformation(origin={64,-95},    extent = {{-100, 80}, {-80, 100}})));
  ModPowerSystems.DynPhasorSinglePhase.Basics.VoltageSource voltageSource
    annotation (Placement(transformation(extent={{-38,6},{-18,26}})));
  ModPowerSystems.DynPhasorSinglePhase.Basics.Resistor resistor annotation (
      Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=-90,
        origin={-2,0})));
  ModPowerSystems.DynPhasorSinglePhase.Basics.Ground ground
    annotation (Placement(transformation(extent={{-58,-36},{-38,-16}})));
  ModPowerSystems.DynPhasorSinglePhase.Basics.Capacitor capacitor annotation (
      Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=-90,
        origin={42,0})));
  ModPowerSystems.DynPhasorSinglePhase.Basics.Ground ground2
    annotation (Placement(transformation(extent={{32,-38},{52,-18}})));
  ModPowerSystems.DynPhasorSinglePhase.Basics.Ground ground1
    annotation (Placement(transformation(extent={{-12,-38},{8,-18}})));
  ModPowerSystems.DynPhasorSinglePhase.Basics.Inductor inductor annotation (
      Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={20,0})));
  ModPowerSystems.DynPhasorSinglePhase.Basics.Ground ground3
    annotation (Placement(transformation(extent={{10,-38},{30,-18}})));
equation
  connect(voltageSource.Pin1, ground.Pin1)
    annotation (Line(points={{-38,16},{-48,16},{-48,-16}}, color={0,0,0}));
  connect(inductor.Pin1, ground3.Pin1)
    annotation (Line(points={{20,-10},{20,-18}},          color={0,0,0}));
  connect(resistor.Pin1, ground1.Pin1)
    annotation (Line(points={{-2,-10},{-2,-18}},          color={0,0,0}));
  connect(capacitor.Pin1, ground2.Pin1)
    annotation (Line(points={{42,-10},{42,-18}},          color={0,0,0}));
  connect(voltageSource.Pin2, resistor.Pin2)
    annotation (Line(points={{-18,16},{-2,16},{-2,10}}, color={0,0,0}));
  connect(inductor.Pin2, resistor.Pin2) annotation (Line(points={{20,10},{20,16},
          {-2,16},{-2,10}},        color={0,0,0}));
  connect(capacitor.Pin2, resistor.Pin2) annotation (Line(points={{42,10},{42,
          16},{-2,16},{-2,10}},    color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false,   extent={{-60,-40},{60,40}},
        grid={2,1})),
    experiment(StopTime=0.1, __Dymola_Algorithm="Dassl"));
end VoltageSource_RLC;
