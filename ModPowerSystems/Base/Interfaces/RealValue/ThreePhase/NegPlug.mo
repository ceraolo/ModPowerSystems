within ModPowerSystems.Base.Interfaces.RealValue.ThreePhase;
connector NegPlug
  ModPowerSystems.Base.Interfaces.RealValue.SinglePhase.Pin[3] Pins;

  annotation (
    Icon(
      coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        grid={2,2}), graphics={Ellipse(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid)}),
    Diagram(
      coordinateSystem(
        preserveAspectRatio=false,
        extent={{-100,-100},{100,100}},
        grid={2,2}),
        graphics={
          Rectangle(
            extent={{100,100},{-100,-100}},
            fillPattern=FillPattern.Solid,
          fillColor={255,255,255},
          lineColor={0,0,255})}),
    Documentation(
      info="
        <html>         
            The potential of this connector is the complex voltage and the flow variable is the complex current.          
        </html>"));
end NegPlug;
