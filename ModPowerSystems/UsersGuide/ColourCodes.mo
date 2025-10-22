within ModPowerSystems.UsersGuide;
<<<<<<< HEAD
class ColourCodes "Colour codes"
  extends Modelica.Icons.Information;
  annotation(
    Documentation(info="<html>
<p><span style=\"font-family: Arial; font-size: 10pt;\">This info shows the colour codes chosen for the components <b>in the Ceraolo&apos;s fork.</span></b></p>
<p><span style=\"font-family: Arial; font-size: 10pt;\">The library has a complex structure cncomassing:</span></p>
<p><span style=\"font-family: Arial; font-size: 10pt;\">- three simulation approaches (phasors, dynamic phasors, emt)</span></p>
<p><span style=\"font-family: Arial; font-size: 10pt;\">- two aggregation levels (singhe-phase, three-phase)</span></p>
<p><span style=\"font-family: Arial; font-size: 10pt;\">For a total of 6 different systems, in general requiring their own colour/interface versions. However, phasors and dynamic phasors share their interfaces (Interfaces.ComplexPhasor), while Emt has interfaces of their own (Interfaces.RealValue).</span></p>
<p><span style=\"font-family: Arial; font-size: 10pt;\">Purposes of our colour codes are:</span></p>
<ul>
<li><span style=\"font-family: Arial; font-size: 10pt;\">keep different colours for incompatible interfaces</span></li>
<li><span style=\"font-family: Arial; font-size: 10pt;\">use different colours for the three types of components&nbsp;</span><span style=\"font-size: -1pt;\">(phasors, dynamic phasors, emt)</span></li>
<li><span style=\"font-family: Arial;\">avoid confusion with colours already used in MSL for different sub-libraries.</span></li>
</ul>
<p><span style=\"font-family: Arial;\">So the problem is hardly to solve.</span></p>
<p><span style=\"font-family: Arial;\">We&apos;ve decided the following.</span></p>
<p><u><span style=\"font-family: Arial;\">For the interfaces:</span></u></p>
<ol>
<li><span style=\"font-family: Arial;\">ComplexPhasor interfaces (to be used for phasors and dynamic phasors) will have light blue, similar to the one used in MSL-Electric.QuasiStatic</span></li>
<li><span style=\"font-family: Arial;\">RealValue interfaces will have use blue, similar to the one used &nbsp;in MSL-Electric.QuasiStatic</span></li>
<li><span style=\"font-family: Arial;\">Single-Phase and Three phase interfaces will have different shape: the first (pins) square, the second (plugs) round, in compliance with similar choices in MSL.</span></li>
</ol>
<p><u><span style=\"font-family: Arial; font-size: 10pt;\">For the models:</span></u></p>
<ol>
<li><span style=\"font-family: Arial;\">Complex phasor models will have the same usef for complex interfaces</span></li>
<li><span style=\"font-family: Arial;\">Dynamic phasor models will have black, already present in the original ModPowerSystems</span></li>
<li><span style=\"font-family: Arial;\">Emt models will have the same colour used for RealValue interfaces.</span></li>
</ol>
<p><br><span style=\"font-family: Arial;\">This makes ComplexPhasor and Emt components very similar in colour to MSL&apos;s. To avoid confusion, interface borders are in black, that is the original ModPowerSustem colour for everything.</span></p>
<p><span style=\"font-family: Arial;\"></p><p></span></p>
<p><span style=\"font-family: Arial; font-size: 10pt;\"></p><p></span></p>
<p><span style=\"font-family: Arial; font-size: 10pt;\"></p><p></span></p>
<p><span style=\"font-family: Arial; font-size: 10pt;\"></p><p></span></p>
<p><span style=\"font-family: Arial; font-size: 10pt;\"></p><p></span></p>
</html>",        __OpenModelica_infoHeader = "<html><head></head><body></body></html>"));
end ColourCodes;
