within ModPowerSystems.EmtThreePhase.Fault;
model ThreePhaseFault
  extends ModPowerSystems.Base.Interfaces.RealValue.ThreePhase.OnePortGrounded;

  parameter SI.Time t_on = 0.1 "fault  time on";
  parameter SI.Time t_off = 0.2 "fault  time off";
  parameter SI.Resistance R_on[3] = {1e-4, 1e-4, 1e-4} "resistance 'fault'";
  parameter SI.Resistance R_off[3] = {1e6, 1e6, 1e6} "resistance 'no fault'";

  SI.Resistance R[3]
                    "resistance";

equation
  if time > t_on and time < t_off then
    R = R_on;
  else
    R = R_off;
  end if;
      v[:] = R[:].*i[:];

  annotation (Icon(graphics={
        Line(points={{8,58}}, color={0,0,0}),
        Line(points={{-54,-34}}, color={0,0,0}),
        Polygon(
          points={{-8,-2},{2,4},{4,-14},{-8,-2}},
          lineColor={238,46,47},
          fillColor={238,46,47},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-2,0},{-30,70},{-6,50},{0,90}},
          color={238,46,47},
          thickness=0.5),                                                                                                                          Text(extent={{-100,
              -72},{100,-32}},                                                                                                                                                               textString = "%name",
          textColor={0,0,255})}));
end ThreePhaseFault;
