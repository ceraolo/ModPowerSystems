within ModPowerSystems.Base.Interfaces.ComplexPhasor.ThreePhase;
connector negPlug
  ModPowerSystems.Base.Interfaces.ComplexPhasor.SinglePhase.Pin Pins[3];
    annotation (
    Icon(
      coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        grid={2,2}), graphics={Ellipse(
          extent={{-100,100},{100,-98}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid)}),
    Diagram(
      coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        grid={2,2}), graphics={Ellipse(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid)}),
    Documentation(
      info="
        <html>         
            The potential of this connector is the complex voltage and the flow variable is the complex current.          
        </html>"));
end negPlug;
