within ModPowerSystems.Base.Interfaces.ComplexPhasor.ThreePhase;
partial model OnePort 
  "Shell model for one-port models with one electrical three-phase connector"

  ModPowerSystems.Base.Interfaces.ComplexPhasor.ThreePhase.Plug Plug1
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  ModPowerSystems.Base.Interfaces.ComplexPhasor.ThreePhase.Plug Plug2
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));

// port voltage and current
  SI.ComplexVoltage v[3] "Voltage between Plug1 and Plug2";
  SI.ComplexCurrent i[3] "Current flowing from Plug1 to Plug2";
  SI.ComplexVoltage v1[3];
  SI.ComplexVoltage v2[3];

// characteristic values
  SI.Voltage V[3] "Voltage RMS phase-to-neutral";
  SI.Current I[3] "Current RMS";
  SI.Voltage Vpeak[3] "Voltage peak phase-to-neutral";
  SI.Current Ipeak[3] "Current peak";

equation
  v[:] = v1[:] - v2[:];
  v1[:] = Plug1.Pins[:].v;
  v2[:] = Plug2.Pins[:].v;
  i[:] = Plug1.Pins[:].i;
  i[:].re = -Plug2.Pins[:].i.re;
  i[:].im = -Plug2.Pins[:].i.im;
  V[:] = 'abs'(v[:]);
  I[:] = 'abs'(i[:]);
  Vpeak[:] =  sqrt(2)*'abs'(v[:]);
  Ipeak[:] = sqrt(2)*'abs'(i[:]);

  annotation (
    Icon(
      coordinateSystem(
        preserveAspectRatio=false, initialScale = 0.1), graphics={Text(origin = {-168, -4}, extent = {{74, 24}, {94, 4}}, textString = "+")}),      Documentation(info="<html>
<p>The model represents a one port with the following definitions:</p>
<p><img src=\"modelica://ModPowerSystems/Resources/Images/OnePort.png\"/></p>
<p>Note, that a one port must meet the port condition: input and output current must be equal.</p>
</html>"));
end OnePort;
