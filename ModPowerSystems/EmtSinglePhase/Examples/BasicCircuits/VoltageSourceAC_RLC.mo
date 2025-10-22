within ModPowerSystems.EmtSinglePhase.Examples.BasicCircuits;
model VoltageSourceAC_RLC
  import ModPowerSystems;
  inner ModPowerSystems.Base.System system
    annotation (Placement(transformation(origin={64,-91},    extent = {{-100, 80}, {-80, 100}})));
  ModPowerSystems.EmtSinglePhase.Basics.VoltageAC voltageSource(phiV=0)
    annotation (Placement(transformation(extent={{-38,11},{-18,31}})));
  ModPowerSystems.EmtSinglePhase.Basics.Resistor resistor annotation (Placement(
        transformation(
        extent={{10,-10},{-10,10}},
        rotation=-90,
        origin={-4,5})));
  ModPowerSystems.EmtSinglePhase.Basics.Ground ground
    annotation (Placement(transformation(extent={{-58,-31},{-38,-11}})));
  ModPowerSystems.EmtSinglePhase.Basics.Capacitor capacitor annotation (
      Placement(transformation(
        extent={{10,-10},{-10,10}},
        rotation=-90,
        origin={38,5})));
  ModPowerSystems.EmtSinglePhase.Basics.Ground ground2
    annotation (Placement(transformation(extent={{28,-33},{48,-13}})));
  ModPowerSystems.EmtSinglePhase.Basics.Ground ground1
    annotation (Placement(transformation(extent={{-14,-33},{6,-13}})));
  ModPowerSystems.EmtSinglePhase.Basics.Inductor inductor annotation (Placement(
        transformation(
        extent={{-10,10},{10,-10}},
        rotation=90,
        origin={18,5})));
  ModPowerSystems.EmtSinglePhase.Basics.Ground ground3
    annotation (Placement(transformation(extent={{8,-33},{28,-13}})));
equation
  connect(voltageSource.Pin1, ground.Pin1)
    annotation (Line(points={{-38,21},{-48,21},{-48,-11}}, color={0,0,0}));
  connect(inductor.Pin1, ground3.Pin1)
    annotation (Line(points={{18,-5},{18,-13}},           color={0,0,0}));
  connect(resistor.Pin1, ground1.Pin1)
    annotation (Line(points={{-4,-5},{-4,-13}},           color={0,0,0}));
  connect(capacitor.Pin1, ground2.Pin1)
    annotation (Line(points={{38,-5},{38,-13}},           color={0,0,0}));
  connect(voltageSource.Pin2, resistor.Pin2)
    annotation (Line(points={{-18,21},{-4,21},{-4,15}}, color={0,0,0}));
  connect(inductor.Pin2, resistor.Pin2) annotation (Line(points={{18,15},{18,21},
          {-4,21},{-4,15}},        color={0,0,0}));
  connect(capacitor.Pin2, resistor.Pin2) annotation (Line(points={{38,15},{38,
          21},{-4,21},{-4,15}},    color={0,0,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false,   extent={{-60,-40},{60,40}},
        grid={2,1})));
end VoltageSourceAC_RLC;
