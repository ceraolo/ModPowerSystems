within ModPowerSystems.Base.Interfaces.ComplexPhasor.SinglePhase;
partial model OnePortGrounded
  "Shell model for models with one electrical connector "

  ModPowerSystems.Base.Interfaces.ComplexPhasor.SinglePhase.Pin Pin1
    annotation (Placement(transformation(extent={{-10,110},{10,90}})));

  // port voltage and current
  Modelica.SIunits.ComplexVoltage v;
  Modelica.SIunits.ComplexCurrent i;

  // characteristic values
  SI.ActivePower P "Consumed Active Power";
  SI.ReactivePower Q "Reactive Power";
  SI.Voltage V "Voltage RMS phase-to-neutral";
  SI.Voltage Vpeak "Voltage peak phase-to-neutral";
  SI.Voltage Vpp "Voltage RMS phase-to-phase";
  SI.Current I "Current RMS";
  SI.Current Ipeak "Current peak";
  SI.Angle Vangle "Voltage phase";
  SI.Angle Iangle "Current phase";
  SI.Angle phi "Phase shift between voltage and current";

equation
  v = Pin1.v;
  i = Pin1.i;
  V = 'abs'(v);
  Vpp = sqrt(3)*'abs'(v);
  Vpeak =  sqrt(2)*'abs'(v);
  I = 'abs'(i);
  Ipeak = sqrt(2)*'abs'(i);
  P = 3*real(v*conj(i));
  Q = 3*imag(v*conj(i));
  Vangle = arg(v);
  Iangle = arg(i);
  phi = Vangle-Iangle;

  annotation (
    Icon(
      coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}})),
    Documentation(info="<html>
      <p>The model represents a one port where the second pin is connected to the ground:</p>
      <p><img src=\"modelica://ModPowerSystems/Resources/Images/OnePortGrounded.png\"/></p>
      <p>Note that, due to the fact that the second pin does not provide any additional information 
      (voltage is zero and current the same as flowing into the port), it is not included in the model.</p>
      </html>"));
end OnePortGrounded;
