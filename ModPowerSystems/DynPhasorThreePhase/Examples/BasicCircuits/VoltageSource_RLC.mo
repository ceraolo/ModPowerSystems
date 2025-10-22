within ModPowerSystems.DynPhasorThreePhase.Examples.BasicCircuits;
model VoltageSource_RLC

  inner ModPowerSystems.Base.System system
    annotation (Placement(transformation(origin = {60, -96}, extent = {{-100, 80}, {-80, 100}})));
  ModPowerSystems.DynPhasorThreePhase.Basics.VoltageSource voltageSource
    annotation (Placement(transformation(extent={{-42,6},{-22,26}})));
  ModPowerSystems.DynPhasorThreePhase.Basics.Resistor resistor annotation (
      Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=-90,
        origin={-6,0})));
  ModPowerSystems.DynPhasorThreePhase.Basics.Ground ground
    annotation (Placement(transformation(extent={{-62,-36},{-42,-16}})));
  ModPowerSystems.DynPhasorThreePhase.Basics.Capacitor capacitor annotation (
      Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=-90,
        origin={40,0})));
  ModPowerSystems.DynPhasorThreePhase.Basics.Ground ground2
    annotation (Placement(transformation(extent={{30,-38},{50,-18}})));
  ModPowerSystems.DynPhasorThreePhase.Basics.Ground ground1
    annotation (Placement(transformation(extent={{-16,-38},{4,-18}})));
  ModPowerSystems.DynPhasorThreePhase.Basics.Inductor inductor annotation (
      Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={18,0})));
  ModPowerSystems.DynPhasorThreePhase.Basics.Ground ground3
    annotation (Placement(transformation(extent={{8,-38},{28,-18}})));
equation
  connect(voltageSource.Plug1, ground.Plug1)
    annotation (Line(points={{-42,16},{-52,16},{-52,-16}}, color={0,0,0}));
  connect(inductor.Plug1, ground3.Plug1)
    annotation (Line(points={{18,-10},{18,-18}},          color={0,0,0}));
  connect(resistor.Plug1, ground1.Plug1)
    annotation (Line(points={{-6,-10},{-6,-18}},          color={0,0,0}));
  connect(capacitor.Plug1, ground2.Plug1)
    annotation (Line(points={{40,-10},{40,-18}},          color={0,0,0}));
  connect(voltageSource.Plug2, resistor.Plug2)
    annotation (Line(points={{-22,16},{-6,16},{-6,10}}, color={0,0,0}));
  connect(inductor.Plug2, resistor.Plug2) annotation (Line(points={{18,10},{18,
          16},{-6,16},{-6,10}},    color={0,0,0}));
  connect(capacitor.Plug2, resistor.Plug2) annotation (Line(points={{40,10},{40,
          16},{-6,16},{-6,10}},    color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false,   extent={{-60,-40},{60,40}},
        grid={2,1})));
end VoltageSource_RLC;
