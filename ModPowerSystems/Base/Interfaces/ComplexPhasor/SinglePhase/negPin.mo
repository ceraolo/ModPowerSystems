within ModPowerSystems.Base.Interfaces.ComplexPhasor.SinglePhase;
connector negPin "Pin/Terminal with voltage potential and current flow"
  Modelica.Units.SI.ComplexVoltage v "Complex potential at the node";
  flow Modelica.Units.SI.ComplexCurrent i
    "Complex current flowing into the pin";
  annotation (
    Icon(
      coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        grid={2,2}),
        graphics={
          Rectangle(
            extent={{100,100},{-100,-100}},
            fillPattern=FillPattern.Solid,
          fillColor={255,255,255})}),
    Diagram(
      coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        grid={2,2}),
        graphics={
          Rectangle(
            extent={{100,100},{-100,-100}},
            fillPattern=FillPattern.Solid,
          fillColor={255,255,255})}),
    Documentation(
      info="
        <html>         
            The potential of this connector is the complex voltage and the flow variable is the complex current.          
        </html>"));
end negPin;
