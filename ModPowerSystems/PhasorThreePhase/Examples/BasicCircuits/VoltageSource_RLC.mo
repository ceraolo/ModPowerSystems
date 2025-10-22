within ModPowerSystems.PhasorThreePhase.Examples.BasicCircuits;
model VoltageSource_RLC

  inner ModPowerSystems.Base.System system
    annotation (Placement(transformation(origin={56,-92},    extent = {{-100, 80}, {-80, 100}})));
  ModPowerSystems.PhasorThreePhase.Basics.VoltageSource voltageSource
    annotation (Placement(transformation(extent={{-42,6},{-22,26}})));
  ModPowerSystems.PhasorThreePhase.Basics.Resistor resistor annotation (
      Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=-90,
        origin={-12,0})));
  ModPowerSystems.PhasorThreePhase.Basics.Ground ground
    annotation (Placement(transformation(extent={{-62,-36},{-42,-16}})));
  ModPowerSystems.PhasorThreePhase.Basics.Capacitor capacitor annotation (
      Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=-90,
        origin={30,0})));
  ModPowerSystems.PhasorThreePhase.Basics.Ground ground2
    annotation (Placement(transformation(extent={{20,-38},{40,-18}})));
  ModPowerSystems.PhasorThreePhase.Basics.Ground ground1
    annotation (Placement(transformation(extent={{-22,-38},{-2,-18}})));
  ModPowerSystems.PhasorThreePhase.Basics.Inductor inductor annotation (
      Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={10,0})));
  ModPowerSystems.PhasorThreePhase.Basics.Ground ground3
    annotation (Placement(transformation(extent={{0,-38},{20,-18}})));
equation
  connect(voltageSource.Plug1, ground.Plug1)
    annotation (Line(points={{-42,16},{-52,16},{-52,-16}}, color={0,0,0}));
  connect(inductor.Plug1, ground3.Plug1)
    annotation (Line(points={{10,-10},{10,-18}},          color={0,0,0}));
  connect(resistor.Plug1, ground1.Plug1)
    annotation (Line(points={{-12,-10},{-12,-18}},        color={0,0,0}));
  connect(capacitor.Plug1, ground2.Plug1)
    annotation (Line(points={{30,-10},{30,-18}},          color={0,0,0}));
  connect(voltageSource.Plug2, resistor.Plug2)
    annotation (Line(points={{-22,16},{-12,16},{-12,10}},
                                                        color={0,0,0}));
  connect(inductor.Plug2, resistor.Plug2) annotation (Line(points={{10,10},{10,
          16},{-12,16},{-12,10}},  color={0,0,0}));
  connect(capacitor.Plug2, resistor.Plug2) annotation (Line(points={{30,10},{30,
          16},{-12,16},{-12,10}},  color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio = false, extent = {{-60, 40}, {40, -40}})));
end VoltageSource_RLC;
