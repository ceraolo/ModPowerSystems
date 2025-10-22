within ModPowerSystems.PhasorThreePhase.Examples.BasicCircuits;
model VoltageSource_RLC

  inner ModPowerSystems.Base.System system
    annotation (Placement(transformation(origin={60,-91},    extent = {{-100, 80}, {-80, 100}})));
  ModPowerSystems.PhasorThreePhase.Basics.VoltageSource voltageSource
    annotation (Placement(transformation(extent={{-38,7},{-18,27}})));
  ModPowerSystems.PhasorThreePhase.Basics.Resistor resistor annotation (
      Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=-90,
        origin={-6,1})));
  ModPowerSystems.PhasorThreePhase.Basics.Ground ground
    annotation (Placement(transformation(extent={{-58,-35},{-38,-15}})));
  ModPowerSystems.PhasorThreePhase.Basics.Capacitor capacitor annotation (
      Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=-90,
        origin={40,1})));
  ModPowerSystems.PhasorThreePhase.Basics.Ground ground2
    annotation (Placement(transformation(extent={{30,-37},{50,-17}})));
  ModPowerSystems.PhasorThreePhase.Basics.Ground ground1
    annotation (Placement(transformation(extent={{-16,-37},{4,-17}})));
  ModPowerSystems.PhasorThreePhase.Basics.Inductor inductor annotation (
      Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={18,1})));
  ModPowerSystems.PhasorThreePhase.Basics.Ground ground3
    annotation (Placement(transformation(extent={{8,-37},{28,-17}})));
equation
  connect(voltageSource.Plug1, ground.Plug1)
    annotation (Line(points={{-38,17},{-48,17},{-48,-15}}, color={0,0,0}));
  connect(inductor.Plug1, ground3.Plug1)
    annotation (Line(points={{18,-9},{18,-17}},           color={0,0,0}));
  connect(resistor.Plug1, ground1.Plug1)
    annotation (Line(points={{-6,-9},{-6,-17}},           color={0,0,0}));
  connect(capacitor.Plug1, ground2.Plug1)
    annotation (Line(points={{40,-9},{40,-17}},           color={0,0,0}));
  connect(voltageSource.Plug2, resistor.Plug2)
    annotation (Line(points={{-18,17},{-6,17},{-6,11}}, color={0,0,0}));
  connect(inductor.Plug2, resistor.Plug2) annotation (Line(points={{18,11},{18,
          17},{-6,17},{-6,11}},    color={0,0,0}));
  connect(capacitor.Plug2, resistor.Plug2) annotation (Line(points={{40,11},{40,
          17},{-6,17},{-6,11}},    color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, grid={2,2})),
                                                                 Diagram(
        coordinateSystem(preserveAspectRatio=false,   extent={{-60,-40},{60,40}},
        grid={2,1})));
end VoltageSource_RLC;
