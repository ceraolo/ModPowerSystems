within ModPowerSystems.EmtThreePhase.Examples.BasicCircuits;
model VoltageSource_RLC

  inner ModPowerSystems.Base.System system
    annotation (Placement(transformation(origin = {62, -96}, extent = {{-100, 80}, {-80, 100}})));
  ModPowerSystems.EmtThreePhase.Basics.VoltageAC voltageAC
    annotation (Placement(transformation(extent={{-42,6},{-22,26}})));
  ModPowerSystems.EmtThreePhase.Basics.Resistor resistor annotation (Placement(
        transformation(
        extent={{10,-10},{-10,10}},
        rotation=-90,
        origin={-6,0})));
  ModPowerSystems.EmtThreePhase.Basics.Ground ground
    annotation (Placement(transformation(extent={{-62,-36},{-42,-16}})));
  ModPowerSystems.EmtThreePhase.Basics.Capacitor capacitor annotation (
      Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=-90,
        origin={40,0})));
  ModPowerSystems.EmtThreePhase.Basics.Ground ground2
    annotation (Placement(transformation(extent={{30,-38},{50,-18}})));
  ModPowerSystems.EmtThreePhase.Basics.Ground ground1
    annotation (Placement(transformation(extent={{-16,-38},{4,-18}})));
  ModPowerSystems.EmtThreePhase.Basics.Inductor inductor annotation (Placement(
        transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={18,0})));
  ModPowerSystems.EmtThreePhase.Basics.Ground ground3
    annotation (Placement(transformation(extent={{8,-38},{28,-18}})));
equation
  connect(voltageAC.Plug1, ground.Plug1)
    annotation (Line(points={{-42,16},{-52,16},{-52,-16}}, color={0,0,0}));
  connect(inductor.Plug1, ground3.Plug1)
    annotation (Line(points={{18,-10},{18,-18}},          color={0,0,0}));
  connect(resistor.Plug1, ground1.Plug1)
    annotation (Line(points={{-6,-10},{-6,-18}},          color={0,0,0}));
  connect(capacitor.Plug1, ground2.Plug1)
    annotation (Line(points={{40,-10},{40,-18}},          color={0,0,0}));
  connect(voltageAC.Plug2, resistor.Plug2)
    annotation (Line(points={{-22,16},{-6,16},{-6,10}}, color={0,0,0}));
  connect(inductor.Plug2, resistor.Plug2) annotation (Line(points={{18,10},{18,
          16},{-6,16},{-6,10}},    color={0,0,0}));
  connect(capacitor.Plug2, resistor.Plug2) annotation (Line(points={{40,10},{40,
          16},{-6,16},{-6,10}},    color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false,   extent={{-60,-40},{60,40}},
        grid={2,2})));
end VoltageSource_RLC;
