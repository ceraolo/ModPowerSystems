within ModPowerSystems.PhasorThreePhase.Connections;
model BusBar
  extends
    ModPowerSystems.Base.Interfaces.ComplexPhasor.ThreePhase.OnePortGroundedInit;

  Real[3] Vrel "voltage relative to nominal voltage";

  outer ModPowerSystems.Base.System system;

equation
  Vrel[:] = Vpp[:]./Vnom;
  i[1] = Complex(0, 0);
  i[2] = Complex(0, 0);
  i[3] = Complex(0, 0);

 annotation (
    Icon(
      coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,0},{100,200}},
        grid={2,2}),
      graphics={
        Text(
          extent={{-4,118},{-104,158}},
          textString="%name",
          textColor={0,0,255}),
        Rectangle(
          extent={{-80,110},{80,90}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid)}), Diagram(coordinateSystem(extent={{-100,
            0},{100,200}})));
end BusBar;
