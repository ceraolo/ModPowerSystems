within ModPowerSystems.EmtThreePhase.Basics;
model VCVS_DQ
  extends ModPowerSystems.Base.Interfaces.RealValue.ThreePhase.OnePortInit;
  Modelica.Blocks.Interfaces.RealInput V_dq_in[2] annotation(
    Placement(visible = true, transformation(origin = {0, 120}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {0, 120}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));
    Modelica.Blocks.Interfaces.RealInput theta annotation(
    Placement(visible = true, transformation(origin = {60, 120}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {60, 120}, extent = {{-20, -20}, {20, 20}}, rotation = -90)));

equation

  v=Transforms.Functions.DQtoABC_Park(V_dq_in, theta);

  annotation(
    Icon(coordinateSystem(preserveAspectRatio = false, initialScale = 0.1), graphics = {Ellipse(extent = {{50, 50}, {-50, -50}}, endAngle = 360,
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),                                                                                                         Line(points = {{-100, 0}, {-50, 0}}, color=
              {0,0,255}),                                                                                                                                                               Line(points = {{96, 0}, {50, 0}}, color=
              {0,0,255}),                                                                                                                                                                                                  Line(points = {{28, -4}}, color=
              {0,0,255}),                                                                                                                                                                                                        Text(                 fillPattern = FillPattern.Solid, extent = {{40, -30}, {-40, 30}}, textString = "~",
          textColor={0,0,255}),                                                                                                                                                                                                        Line(origin = {0, 75}, points = {{0, 25}, {0, -23}, {0, -25}, {0, -25}},
          color={0,0,255}),
        Text(
          extent={{-148,-62},{152,-102}},
          textString="%name",
          textColor={0,0,255})}),
    Diagram(coordinateSystem(preserveAspectRatio = false)));
end VCVS_DQ;
