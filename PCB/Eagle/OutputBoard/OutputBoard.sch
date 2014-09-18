<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.1.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="74ttl-din">
<description>&lt;b&gt;TTL Devices with DIN Symbols&lt;/b&gt;&lt;p&gt;
CadSoft and the author do not warrant that this library is free from error
or will meet your specific requirements.&lt;p&gt;
&lt;author&gt;Created by Holger Bettenbühl, hol.bet.@rhein-main.net&lt;/author&gt;</description>
<packages>
<package name="DIL20">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="12.7" y1="2.921" x2="-12.7" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.921" x2="12.7" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="12.7" y1="2.921" x2="12.7" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="2.921" x2="-12.7" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.921" x2="-12.7" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.016" x2="-12.7" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="-11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-13.081" y="-3.048" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-9.779" y="-0.381" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="+UB">
<circle x="0" y="-0.635" radius="0.635" width="0.1524" layer="94"/>
<text x="1.27" y="-1.27" size="1.524" layer="95">&gt;NAME</text>
<pin name="+UB" x="0" y="2.54" visible="pad" length="short" direction="pwr" rot="R270"/>
</symbol>
<symbol name="-UB">
<wire x1="0" y1="-0.635" x2="0" y2="0.635" width="0" layer="94"/>
<wire x1="0.635" y1="0" x2="-0.635" y2="0" width="0" layer="94"/>
<circle x="0" y="0.635" radius="0.635" width="0.1524" layer="94"/>
<text x="1.27" y="0" size="1.524" layer="95">&gt;NAME</text>
<pin name="-UB" x="0" y="-2.54" visible="pad" length="short" direction="pwr" rot="R90"/>
</symbol>
<symbol name="574">
<wire x1="-0.635" y1="0" x2="0.635" y2="0" width="0" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0" layer="94"/>
<wire x1="-7.62" y1="-27.94" x2="7.62" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-22.86" x2="7.62" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-22.86" x2="-7.62" y2="-25.4" width="0.254" layer="94"/>
<wire x1="7.62" y1="-22.86" x2="7.62" y2="-25.4" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-17.78" x2="7.62" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-17.78" x2="-7.62" y2="-20.32" width="0.254" layer="94"/>
<wire x1="7.62" y1="-17.78" x2="7.62" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-12.7" x2="7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-12.7" x2="-7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="-2.54" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="-5.08" y2="15.24" width="0.254" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="5.08" y2="12.7" width="0.254" layer="94"/>
<wire x1="-5.08" y1="15.24" x2="-7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="-7.62" y1="27.94" x2="-7.62" y2="22.86" width="0.254" layer="94"/>
<wire x1="-7.62" y1="27.94" x2="7.62" y2="27.94" width="0.254" layer="94"/>
<wire x1="7.62" y1="27.94" x2="7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="15.24" x2="5.08" y2="15.24" width="0.254" layer="94"/>
<wire x1="5.08" y1="12.7" x2="5.08" y2="15.24" width="0.254" layer="94"/>
<wire x1="5.08" y1="12.7" x2="7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="12.7" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="-7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="-7.62" y1="12.7" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="0" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="0" width="0.254" layer="94"/>
<wire x1="-7.62" y1="22.86" x2="-10.16" y2="24.13" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="22.86" x2="-7.62" y2="18.7706" width="0.254" layer="94"/>
<wire x1="-10.16" y1="24.13" x2="-10.16" y2="22.86" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="18.7706" x2="-5.6388" y2="17.78" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="18.7706" x2="-7.62" y2="17.78" width="0.254" layer="94"/>
<wire x1="-5.6388" y1="17.78" x2="-7.62" y2="16.7894" width="0.1524" layer="94"/>
<wire x1="7.62" y1="10.16" x2="10.16" y2="10.16" width="0.1524" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="10.16" y2="5.08" width="0.1524" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="0" x2="10.16" y2="0" width="0.1524" layer="94"/>
<wire x1="7.62" y1="0" x2="7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="10.16" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="10.16" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="10.16" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="7.62" y2="-17.78" width="0.254" layer="94"/>
<wire x1="7.62" y1="-20.32" x2="10.16" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-20.32" x2="7.62" y2="-22.86" width="0.254" layer="94"/>
<wire x1="7.62" y1="-25.4" x2="10.16" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-25.4" x2="7.62" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-10.16" y1="22.86" x2="-7.62" y2="22.86" width="0.1524" layer="94"/>
<wire x1="-10.16" y1="17.78" x2="-7.62" y2="17.78" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="17.78" x2="-7.62" y2="15.24" width="0.254" layer="94"/>
<wire x1="-10.16" y1="10.16" x2="-7.62" y2="10.16" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="5.08" x2="-7.62" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="-10.16" y1="0" x2="-7.62" y2="0" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-5.08" x2="-7.62" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-10.16" x2="-7.62" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-15.24" x2="-7.62" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-15.24" x2="-7.62" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-20.32" x2="-7.62" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-20.32" x2="-7.62" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-25.4" x2="-7.62" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-25.4" x2="-7.62" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-0.9398" y1="10.8458" x2="-0.9398" y2="8.9662" width="0.1524" layer="94"/>
<wire x1="-0.9398" y1="8.9662" x2="0.9398" y2="9.906" width="0.1524" layer="94"/>
<wire x1="0.9398" y1="9.906" x2="-0.9398" y2="10.8458" width="0.1524" layer="94"/>
<wire x1="4.3942" y1="10.8458" x2="6.2738" y2="10.8458" width="0.1524" layer="94"/>
<wire x1="6.2738" y1="10.8458" x2="5.334" y2="8.9662" width="0.1524" layer="94"/>
<wire x1="5.334" y1="8.9662" x2="4.3942" y2="10.8458" width="0.1524" layer="94"/>
<text x="-4.445" y="16.51" size="2.032" layer="94">C1</text>
<text x="-6.35" y="8.89" size="2.032" layer="94">1</text>
<text x="-5.08" y="8.89" size="2.032" layer="94">D</text>
<text x="-7.62" y="28.575" size="2.032" layer="95">&gt;NAME</text>
<text x="-7.62" y="-31.115" size="2.032" layer="96">&gt;VALUE</text>
<text x="-6.35" y="21.59" size="2.032" layer="94">EN</text>
<pin name="6D" x="-12.7" y="-15.24" visible="pad" length="short" direction="in"/>
<pin name="5D" x="-12.7" y="-10.16" visible="pad" length="short" direction="in"/>
<pin name="4D" x="-12.7" y="-5.08" visible="pad" length="short" direction="in"/>
<pin name="3D" x="-12.7" y="0" visible="pad" length="short" direction="in"/>
<pin name="2D" x="-12.7" y="5.08" visible="pad" length="short" direction="in"/>
<pin name="1D" x="-12.7" y="10.16" visible="pad" length="short" direction="in"/>
<pin name="CLK" x="-12.7" y="17.78" visible="pad" length="short" direction="in"/>
<pin name="!OC" x="-12.7" y="22.86" visible="pad" length="short" direction="in"/>
<pin name="6Q" x="12.7" y="-15.24" visible="pad" length="short" direction="hiz" rot="R180"/>
<pin name="5Q" x="12.7" y="-10.16" visible="pad" length="short" direction="hiz" rot="R180"/>
<pin name="4Q" x="12.7" y="-5.08" visible="pad" length="short" direction="hiz" rot="R180"/>
<pin name="3Q" x="12.7" y="0" visible="pad" length="short" direction="hiz" rot="R180"/>
<pin name="2Q" x="12.7" y="5.08" visible="pad" length="short" direction="hiz" rot="R180"/>
<pin name="1Q" x="12.7" y="10.16" visible="pad" length="short" direction="hiz" rot="R180"/>
<pin name="7D" x="-12.7" y="-20.32" visible="pad" length="short" direction="in"/>
<pin name="8D" x="-12.7" y="-25.4" visible="pad" length="short" direction="in"/>
<pin name="7Q" x="12.7" y="-20.32" visible="pad" length="short" direction="hiz" rot="R180"/>
<pin name="8Q" x="12.7" y="-25.4" visible="pad" length="short" direction="hiz" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*574" prefix="V">
<description>8-bit D type &lt;b&gt;FLIP FLOP&lt;/b&gt; bus driver</description>
<gates>
<gate name="/+UB" symbol="+UB" x="15.24" y="25.4" addlevel="request"/>
<gate name="/-UB" symbol="-UB" x="15.24" y="17.78" addlevel="request"/>
<gate name="1" symbol="574" x="0" y="0"/>
</gates>
<devices>
<device name="N" package="DIL20">
<connects>
<connect gate="/+UB" pin="+UB" pad="20"/>
<connect gate="/-UB" pin="-UB" pad="10"/>
<connect gate="1" pin="!OC" pad="1"/>
<connect gate="1" pin="1D" pad="2"/>
<connect gate="1" pin="1Q" pad="19"/>
<connect gate="1" pin="2D" pad="3"/>
<connect gate="1" pin="2Q" pad="18"/>
<connect gate="1" pin="3D" pad="4"/>
<connect gate="1" pin="3Q" pad="17"/>
<connect gate="1" pin="4D" pad="5"/>
<connect gate="1" pin="4Q" pad="16"/>
<connect gate="1" pin="5D" pad="6"/>
<connect gate="1" pin="5Q" pad="15"/>
<connect gate="1" pin="6D" pad="7"/>
<connect gate="1" pin="6Q" pad="14"/>
<connect gate="1" pin="7D" pad="8"/>
<connect gate="1" pin="7Q" pad="13"/>
<connect gate="1" pin="8D" pad="9"/>
<connect gate="1" pin="8Q" pad="12"/>
<connect gate="1" pin="CLK" pad="11"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VCC">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="74xx-us">
<description>&lt;b&gt;TTL Devices, 74xx Series with US Symbols&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Texas Instruments &lt;i&gt;TTL Data Book&lt;/i&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;Volume 1, 1996.
&lt;li&gt;TTL Data Book, Volume 2 , 1993
&lt;li&gt;National Seminconductor Databook 1990, ALS/LS Logic
&lt;li&gt;ttl 74er digital data dictionary, ECA Electronic + Acustic GmbH, ISBN 3-88109-032-0
&lt;li&gt;http://icmaster.com/ViewCompare.asp
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL16">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO16">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.699" y1="1.9558" x2="-4.699" y2="1.9558" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.9558" x2="5.08" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.5748" x2="-4.699" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.9558" x2="5.08" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.5748" x2="-4.699" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="-1.9558" x2="4.699" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.5748" x2="5.08" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.5748" x2="-5.08" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-5.08" y1="-1.6002" x2="5.08" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="-3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-4.064" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.461" y="-1.778" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.889" y1="1.9558" x2="-0.381" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="-3.0988" x2="-4.191" y2="-1.9558" layer="51"/>
<rectangle x1="-3.429" y1="-3.0988" x2="-2.921" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="-3.0734" x2="-1.651" y2="-1.9304" layer="51"/>
<rectangle x1="-0.889" y1="-3.0988" x2="-0.381" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="1.9558" x2="-1.651" y2="3.0988" layer="51"/>
<rectangle x1="-3.429" y1="1.9558" x2="-2.921" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="1.9558" x2="-4.191" y2="3.0988" layer="51"/>
<rectangle x1="0.381" y1="-3.0988" x2="0.889" y2="-1.9558" layer="51"/>
<rectangle x1="1.651" y1="-3.0988" x2="2.159" y2="-1.9558" layer="51"/>
<rectangle x1="2.921" y1="-3.0988" x2="3.429" y2="-1.9558" layer="51"/>
<rectangle x1="4.191" y1="-3.0988" x2="4.699" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="1.9558" x2="0.889" y2="3.0988" layer="51"/>
<rectangle x1="1.651" y1="1.9558" x2="2.159" y2="3.0988" layer="51"/>
<rectangle x1="2.921" y1="1.9558" x2="3.429" y2="3.0988" layer="51"/>
<rectangle x1="4.191" y1="1.9558" x2="4.699" y2="3.0988" layer="51"/>
</package>
<package name="LCC20">
<description>&lt;b&gt;Leadless Chip Carrier&lt;/b&gt;&lt;p&gt; Ceramic Package</description>
<wire x1="-0.4001" y1="4.4" x2="-0.87" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-3.3" y1="4.4" x2="-4.4" y2="3.3" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="4.3985" x2="0.4001" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.3985" x2="-0.8699" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="2.14" x2="-4.3985" y2="2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="-2.9401" y1="4.4" x2="-3.3" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.4" x2="0.4001" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.3985" x2="1.67" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="3.3" x2="-4.4" y2="2.9401" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="2.14" x2="-4.4" y2="1.6701" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="0.87" x2="-4.3985" y2="1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-0.4001" x2="-4.3985" y2="0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-1.6701" x2="-4.3985" y2="-0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="0.87" x2="-4.4" y2="0.4001" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-0.4001" x2="-4.4" y2="-0.87" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-2.9401" x2="-4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-4.4" y2="-4.4099" width="0.2032" layer="51"/>
<wire x1="2.14" y1="4.3985" x2="2.94" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="2.14" y1="4.4" x2="1.6701" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="4.4" x2="2.9401" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.4001" y1="-4.4" x2="0.87" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="-4.3985" x2="0.4001" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="0.87" y1="-4.3985" x2="1.67" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="2.9401" y1="-4.4" x2="4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.87" y1="-4.4" x2="-0.4001" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-1.6701" y1="-4.3985" x2="-0.8699" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.9401" y1="-4.3985" x2="-2.1399" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.14" y1="-4.4" x2="-1.6701" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-2.9401" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="0.4001" x2="4.4" y2="0.87" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="0.4001" x2="4.3985" y2="-0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="1.6701" x2="4.3985" y2="0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="2.9401" x2="4.4" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-0.87" x2="4.4" y2="-0.4001" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="-0.87" x2="4.3985" y2="-1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="-2.14" x2="4.3985" y2="-2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="-2.14" x2="4.4" y2="-1.6701" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-4.4" x2="4.4" y2="-2.9401" width="0.2032" layer="51"/>
<wire x1="-2.9401" y1="4.3985" x2="-2.1399" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.4" x2="-2.14" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="-2.9401" x2="-4.3985" y2="-2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="-1.6701" x2="-4.4" y2="-2.14" width="0.2032" layer="51"/>
<wire x1="1.6701" y1="-4.4" x2="2.14" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="2.14" y1="-4.3985" x2="2.94" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="4.3985" y1="2.9401" x2="4.3985" y2="2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="1.6701" x2="4.4" y2="2.14" width="0.2032" layer="51"/>
<smd name="2" x="-1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="1" x="0" y="3.8001" dx="0.8" dy="3.4" layer="1"/>
<smd name="3" x="-2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="4" x="-4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="5" x="-4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="6" x="-4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="7" x="-4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="8" x="-4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="9" x="-2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="10" x="-1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="11" x="0" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="12" x="1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="13" x="2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="14" x="4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="15" x="4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="16" x="4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="17" x="4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="18" x="4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="19" x="2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="20" x="1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<text x="-3.4971" y="5.811" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.9751" y="-7.6871" size="1.778" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="74138">
<wire x1="-10.16" y1="-12.7" x2="7.62" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="7.62" y2="10.16" width="0.4064" layer="94"/>
<wire x1="7.62" y1="10.16" x2="-10.16" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="10.16" x2="-10.16" y2="-12.7" width="0.4064" layer="94"/>
<text x="-10.16" y="10.795" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-15.24" y="7.62" length="middle" direction="in"/>
<pin name="B" x="-15.24" y="5.08" length="middle" direction="in"/>
<pin name="C" x="-15.24" y="2.54" length="middle" direction="in"/>
<pin name="G2A" x="-15.24" y="-7.62" length="middle" direction="in" function="dot"/>
<pin name="G2B" x="-15.24" y="-10.16" length="middle" direction="in" function="dot"/>
<pin name="G1" x="-15.24" y="-5.08" length="middle" direction="in"/>
<pin name="Y7" x="12.7" y="-10.16" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y6" x="12.7" y="-7.62" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y5" x="12.7" y="-5.08" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y4" x="12.7" y="-2.54" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y3" x="12.7" y="0" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y2" x="12.7" y="2.54" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y1" x="12.7" y="5.08" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y0" x="12.7" y="7.62" length="middle" direction="out" function="dot" rot="R180"/>
</symbol>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-7.62" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="5.08" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-10.16" visible="pad" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="10.16" visible="pad" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*138" prefix="IC">
<description>3-line to 8-line &lt;b&gt;DECODER/DEMULTIPLEXER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="74138" x="20.32" y="0"/>
<gate name="P" symbol="PWRN" x="-5.08" y="0" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL16">
<connects>
<connect gate="A" pin="A" pad="1"/>
<connect gate="A" pin="B" pad="2"/>
<connect gate="A" pin="C" pad="3"/>
<connect gate="A" pin="G1" pad="6"/>
<connect gate="A" pin="G2A" pad="4"/>
<connect gate="A" pin="G2B" pad="5"/>
<connect gate="A" pin="Y0" pad="15"/>
<connect gate="A" pin="Y1" pad="14"/>
<connect gate="A" pin="Y2" pad="13"/>
<connect gate="A" pin="Y3" pad="12"/>
<connect gate="A" pin="Y4" pad="11"/>
<connect gate="A" pin="Y5" pad="10"/>
<connect gate="A" pin="Y6" pad="9"/>
<connect gate="A" pin="Y7" pad="7"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
<device name="D" package="SO16">
<connects>
<connect gate="A" pin="A" pad="1"/>
<connect gate="A" pin="B" pad="2"/>
<connect gate="A" pin="C" pad="3"/>
<connect gate="A" pin="G1" pad="6"/>
<connect gate="A" pin="G2A" pad="4"/>
<connect gate="A" pin="G2B" pad="5"/>
<connect gate="A" pin="Y0" pad="15"/>
<connect gate="A" pin="Y1" pad="14"/>
<connect gate="A" pin="Y2" pad="13"/>
<connect gate="A" pin="Y3" pad="12"/>
<connect gate="A" pin="Y4" pad="11"/>
<connect gate="A" pin="Y5" pad="10"/>
<connect gate="A" pin="Y6" pad="9"/>
<connect gate="A" pin="Y7" pad="7"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
<device name="FK" package="LCC20">
<connects>
<connect gate="A" pin="A" pad="2"/>
<connect gate="A" pin="B" pad="3"/>
<connect gate="A" pin="C" pad="4"/>
<connect gate="A" pin="G1" pad="8"/>
<connect gate="A" pin="G2A" pad="5"/>
<connect gate="A" pin="G2B" pad="7"/>
<connect gate="A" pin="Y0" pad="19"/>
<connect gate="A" pin="Y1" pad="18"/>
<connect gate="A" pin="Y2" pad="17"/>
<connect gate="A" pin="Y3" pad="15"/>
<connect gate="A" pin="Y4" pad="14"/>
<connect gate="A" pin="Y5" pad="13"/>
<connect gate="A" pin="Y6" pad="12"/>
<connect gate="A" pin="Y7" pad="9"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lstb">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA03-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.81" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="-3.81" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
</package>
<package name="MA08-1">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-10.16" y="1.651" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-9.398" y="-2.921" size="1.27" layer="21" ratio="10">1</text>
<text x="8.255" y="1.651" size="1.27" layer="21" ratio="10">8</text>
<text x="-1.27" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA03-1">
<wire x1="3.81" y1="-5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="-1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-1.27" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="MA08-1">
<wire x1="3.81" y1="-10.16" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="2.54" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="2.54" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="2.54" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="12.7" x2="-1.27" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-10.16" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="12.7" x2="3.81" y2="12.7" width="0.4064" layer="94"/>
<text x="-1.27" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="13.462" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA03-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA03-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA03-1">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA08-1" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="MA08-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA08-1">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
<connect gate="1" pin="3" pad="3"/>
<connect gate="1" pin="4" pad="4"/>
<connect gate="1" pin="5" pad="5"/>
<connect gate="1" pin="6" pad="6"/>
<connect gate="1" pin="7" pad="7"/>
<connect gate="1" pin="8" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X02">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
<package name="1X02/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-3.175" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.445" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD2">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X2" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X02/90">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="V1" library="74ttl-din" deviceset="74*574" device="N"/>
<part name="V2" library="74ttl-din" deviceset="74*574" device="N"/>
<part name="V3" library="74ttl-din" deviceset="74*574" device="N"/>
<part name="SUPPLY1" library="supply2" deviceset="GND" device=""/>
<part name="P+1" library="supply1" deviceset="VCC" device=""/>
<part name="IC1" library="74xx-us" deviceset="74*138" device="N" technology="LS"/>
<part name="SV1" library="con-lstb" deviceset="MA08-1" device=""/>
<part name="SV2" library="con-lstb" deviceset="MA03-1" device=""/>
<part name="SV4" library="con-lstb" deviceset="MA08-1" device=""/>
<part name="SV5" library="con-lstb" deviceset="MA08-1" device=""/>
<part name="SV6" library="con-lstb" deviceset="MA08-1" device=""/>
<part name="SV7" library="pinhead" deviceset="PINHD-1X2" device=""/>
<part name="V4" library="74ttl-din" deviceset="74*574" device="N"/>
<part name="SV3" library="con-lstb" deviceset="MA08-1" device=""/>
<part name="V5" library="74ttl-din" deviceset="74*574" device="N"/>
<part name="V6" library="74ttl-din" deviceset="74*574" device="N"/>
<part name="SV8" library="con-lstb" deviceset="MA08-1" device=""/>
<part name="SV9" library="con-lstb" deviceset="MA08-1" device=""/>
<part name="V7" library="74ttl-din" deviceset="74*574" device="N"/>
<part name="SV10" library="con-lstb" deviceset="MA08-1" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="V1" gate="1" x="48.26" y="45.72"/>
<instance part="V2" gate="1" x="119.38" y="45.72"/>
<instance part="V3" gate="1" x="187.96" y="45.72"/>
<instance part="SUPPLY1" gate="GND" x="-58.42" y="-30.48"/>
<instance part="P+1" gate="VCC" x="-63.5" y="-12.7"/>
<instance part="IC1" gate="A" x="-2.54" y="-15.24"/>
<instance part="SV1" gate="1" x="-15.24" y="45.72"/>
<instance part="SV2" gate="G$1" x="-48.26" y="-10.16"/>
<instance part="SV4" gate="1" x="71.12" y="93.98" rot="R270"/>
<instance part="SV5" gate="1" x="139.7" y="96.52" rot="R270"/>
<instance part="SV6" gate="1" x="208.28" y="96.52" rot="R270"/>
<instance part="SV7" gate="G$1" x="-81.28" y="-20.32" rot="R180"/>
<instance part="V4" gate="1" x="256.54" y="45.72"/>
<instance part="SV3" gate="1" x="276.86" y="96.52" rot="R270"/>
<instance part="V5" gate="1" x="119.38" y="-76.2"/>
<instance part="V6" gate="1" x="187.96" y="-76.2"/>
<instance part="SV8" gate="1" x="139.7" y="-25.4" rot="R270"/>
<instance part="SV9" gate="1" x="208.28" y="-25.4" rot="R270"/>
<instance part="V7" gate="1" x="256.54" y="-76.2"/>
<instance part="SV10" gate="1" x="276.86" y="-25.4" rot="R270"/>
<instance part="V1" gate="/+UB" x="48.26" y="73.66"/>
<instance part="V1" gate="/-UB" x="55.88" y="66.04" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$4" class="0">
<segment>
<wire x1="86.36" y1="-12.7" x2="86.36" y2="63.5" width="0.1524" layer="91"/>
<pinref part="V2" gate="1" pin="CLK"/>
<wire x1="86.36" y1="63.5" x2="106.68" y2="63.5" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="Y2"/>
<wire x1="10.16" y1="-12.7" x2="86.36" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="V1" gate="1" pin="CLK"/>
<wire x1="35.56" y1="63.5" x2="12.7" y2="63.5" width="0.1524" layer="91"/>
<wire x1="12.7" y1="63.5" x2="12.7" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="Y1"/>
<wire x1="10.16" y1="-10.16" x2="12.7" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="IC1" gate="A" pin="Y3"/>
<wire x1="10.16" y1="-15.24" x2="152.4" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="V3" gate="1" pin="CLK"/>
<wire x1="154.94" y1="-10.16" x2="154.94" y2="63.5" width="0.1524" layer="91"/>
<wire x1="154.94" y1="63.5" x2="175.26" y2="63.5" width="0.1524" layer="91"/>
<wire x1="152.4" y1="-15.24" x2="154.94" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="154.94" y1="-15.24" x2="154.94" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="V1" gate="1" pin="!OC"/>
<wire x1="35.56" y1="68.58" x2="35.56" y2="78.74" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="78.74" x2="35.56" y2="78.74" width="0.1524" layer="91"/>
<junction x="35.56" y="78.74"/>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
<pinref part="IC1" gate="A" pin="G2B"/>
<wire x1="-58.42" y1="-27.94" x2="-58.42" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="-25.4" x2="-58.42" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-58.42" y1="-22.86" x2="-58.42" y2="78.74" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="-25.4" x2="-53.34" y2="-25.4" width="0.1524" layer="91"/>
<junction x="-58.42" y="-25.4"/>
<pinref part="IC1" gate="A" pin="G2A"/>
<wire x1="-53.34" y1="-25.4" x2="-58.42" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="-22.86" x2="-58.42" y2="-22.86" width="0.1524" layer="91"/>
<junction x="-58.42" y="-22.86"/>
<pinref part="SV7" gate="G$1" pin="1"/>
<wire x1="-78.74" y1="-22.86" x2="-58.42" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="V5" gate="1" pin="!OC"/>
<wire x1="106.68" y1="-43.18" x2="106.68" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-43.18" x2="175.26" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="V6" gate="1" pin="!OC"/>
<wire x1="175.26" y1="-43.18" x2="175.26" y2="-53.34" width="0.1524" layer="91"/>
<junction x="106.68" y="-43.18"/>
<wire x1="175.26" y1="-43.18" x2="243.84" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="V7" gate="1" pin="!OC"/>
<wire x1="243.84" y1="-43.18" x2="243.84" y2="-53.34" width="0.1524" layer="91"/>
<junction x="175.26" y="-43.18"/>
<wire x1="106.68" y1="-43.18" x2="-53.34" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-53.34" y1="-43.18" x2="-53.34" y2="-25.4" width="0.1524" layer="91"/>
<junction x="-53.34" y="-25.4"/>
<pinref part="V4" gate="1" pin="!OC"/>
<wire x1="243.84" y1="78.74" x2="243.84" y2="68.58" width="0.1524" layer="91"/>
<pinref part="V3" gate="1" pin="!OC"/>
<pinref part="V2" gate="1" pin="!OC"/>
<wire x1="35.56" y1="78.74" x2="106.68" y2="78.74" width="0.1524" layer="91"/>
<wire x1="106.68" y1="78.74" x2="106.68" y2="68.58" width="0.1524" layer="91"/>
<junction x="106.68" y="78.74"/>
<wire x1="106.68" y1="78.74" x2="175.26" y2="78.74" width="0.1524" layer="91"/>
<wire x1="175.26" y1="78.74" x2="175.26" y2="68.58" width="0.1524" layer="91"/>
<wire x1="175.26" y1="78.74" x2="243.84" y2="78.74" width="0.1524" layer="91"/>
<junction x="175.26" y="78.74"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="V1" gate="1" pin="1Q"/>
<wire x1="60.96" y1="55.88" x2="63.5" y2="55.88" width="0.1524" layer="91"/>
<pinref part="SV4" gate="1" pin="1"/>
<wire x1="63.5" y1="55.88" x2="63.5" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="V1" gate="1" pin="2Q"/>
<wire x1="60.96" y1="50.8" x2="66.04" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SV4" gate="1" pin="2"/>
<wire x1="66.04" y1="86.36" x2="66.04" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="V1" gate="1" pin="3Q"/>
<wire x1="60.96" y1="45.72" x2="68.58" y2="45.72" width="0.1524" layer="91"/>
<pinref part="SV4" gate="1" pin="3"/>
<wire x1="68.58" y1="86.36" x2="68.58" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="V1" gate="1" pin="4Q"/>
<wire x1="71.12" y1="40.64" x2="60.96" y2="40.64" width="0.1524" layer="91"/>
<pinref part="SV4" gate="1" pin="4"/>
<wire x1="71.12" y1="86.36" x2="71.12" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="V1" gate="1" pin="5Q"/>
<wire x1="60.96" y1="35.56" x2="73.66" y2="35.56" width="0.1524" layer="91"/>
<pinref part="SV4" gate="1" pin="5"/>
<wire x1="73.66" y1="86.36" x2="73.66" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="V1" gate="1" pin="6Q"/>
<wire x1="60.96" y1="30.48" x2="76.2" y2="30.48" width="0.1524" layer="91"/>
<pinref part="SV4" gate="1" pin="6"/>
<wire x1="76.2" y1="86.36" x2="76.2" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="V1" gate="1" pin="7Q"/>
<wire x1="78.74" y1="25.4" x2="60.96" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SV4" gate="1" pin="7"/>
<wire x1="78.74" y1="86.36" x2="78.74" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="V1" gate="1" pin="8Q"/>
<wire x1="60.96" y1="20.32" x2="81.28" y2="20.32" width="0.1524" layer="91"/>
<pinref part="SV4" gate="1" pin="8"/>
<wire x1="81.28" y1="86.36" x2="81.28" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="IC1" gate="A" pin="A"/>
<pinref part="SV2" gate="G$1" pin="3"/>
<wire x1="-40.64" y1="-7.62" x2="-17.78" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="2"/>
<pinref part="IC1" gate="A" pin="B"/>
<wire x1="-40.64" y1="-10.16" x2="-17.78" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="1"/>
<pinref part="IC1" gate="A" pin="C"/>
<wire x1="-40.64" y1="-12.7" x2="-17.78" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="IC1" gate="A" pin="G1"/>
<pinref part="SV7" gate="G$1" pin="2"/>
<wire x1="-78.74" y1="-20.32" x2="-68.58" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<wire x1="-68.58" y1="-20.32" x2="-63.5" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="-63.5" y1="-15.24" x2="-63.5" y2="-20.32" width="0.1524" layer="91"/>
<junction x="-63.5" y="-20.32"/>
<wire x1="-63.5" y1="-20.32" x2="-17.78" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-20.32" x2="-68.58" y2="81.28" width="0.1524" layer="91"/>
<junction x="-68.58" y="-20.32"/>
<wire x1="-68.58" y1="81.28" x2="48.26" y2="81.28" width="0.1524" layer="91"/>
<pinref part="V1" gate="/+UB" pin="+UB"/>
<wire x1="48.26" y1="81.28" x2="48.26" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="V2" gate="1" pin="1Q"/>
<pinref part="SV5" gate="1" pin="1"/>
<wire x1="132.08" y1="55.88" x2="132.08" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="V2" gate="1" pin="2Q"/>
<wire x1="132.08" y1="50.8" x2="134.62" y2="50.8" width="0.1524" layer="91"/>
<pinref part="SV5" gate="1" pin="2"/>
<wire x1="134.62" y1="50.8" x2="134.62" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="SV5" gate="1" pin="3"/>
<wire x1="137.16" y1="88.9" x2="137.16" y2="45.72" width="0.1524" layer="91"/>
<pinref part="V2" gate="1" pin="3Q"/>
<wire x1="137.16" y1="45.72" x2="132.08" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="V2" gate="1" pin="4Q"/>
<wire x1="132.08" y1="40.64" x2="139.7" y2="40.64" width="0.1524" layer="91"/>
<pinref part="SV5" gate="1" pin="4"/>
<wire x1="139.7" y1="40.64" x2="139.7" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="V2" gate="1" pin="5Q"/>
<wire x1="132.08" y1="35.56" x2="142.24" y2="35.56" width="0.1524" layer="91"/>
<pinref part="SV5" gate="1" pin="5"/>
<wire x1="142.24" y1="35.56" x2="142.24" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="SV5" gate="1" pin="6"/>
<wire x1="144.78" y1="88.9" x2="144.78" y2="30.48" width="0.1524" layer="91"/>
<pinref part="V2" gate="1" pin="6Q"/>
<wire x1="144.78" y1="30.48" x2="132.08" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="V2" gate="1" pin="7Q"/>
<wire x1="132.08" y1="25.4" x2="147.32" y2="25.4" width="0.1524" layer="91"/>
<pinref part="SV5" gate="1" pin="7"/>
<wire x1="147.32" y1="25.4" x2="147.32" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="SV5" gate="1" pin="8"/>
<wire x1="149.86" y1="88.9" x2="149.86" y2="20.32" width="0.1524" layer="91"/>
<pinref part="V2" gate="1" pin="8Q"/>
<wire x1="149.86" y1="20.32" x2="132.08" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<wire x1="200.66" y1="55.88" x2="200.66" y2="88.9" width="0.1524" layer="91"/>
<pinref part="SV6" gate="1" pin="1"/>
<pinref part="V3" gate="1" pin="1Q"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<wire x1="203.2" y1="50.8" x2="203.2" y2="88.9" width="0.1524" layer="91"/>
<pinref part="SV6" gate="1" pin="2"/>
<pinref part="V3" gate="1" pin="2Q"/>
<wire x1="200.66" y1="50.8" x2="203.2" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<wire x1="205.74" y1="88.9" x2="205.74" y2="45.72" width="0.1524" layer="91"/>
<pinref part="SV6" gate="1" pin="3"/>
<pinref part="V3" gate="1" pin="3Q"/>
<wire x1="200.66" y1="45.72" x2="205.74" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<wire x1="200.66" y1="40.64" x2="208.28" y2="40.64" width="0.1524" layer="91"/>
<wire x1="208.28" y1="40.64" x2="208.28" y2="88.9" width="0.1524" layer="91"/>
<pinref part="SV6" gate="1" pin="4"/>
<pinref part="V3" gate="1" pin="4Q"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<wire x1="200.66" y1="35.56" x2="210.82" y2="35.56" width="0.1524" layer="91"/>
<wire x1="210.82" y1="35.56" x2="210.82" y2="88.9" width="0.1524" layer="91"/>
<pinref part="SV6" gate="1" pin="5"/>
<pinref part="V3" gate="1" pin="5Q"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<wire x1="213.36" y1="88.9" x2="213.36" y2="30.48" width="0.1524" layer="91"/>
<wire x1="213.36" y1="30.48" x2="200.66" y2="30.48" width="0.1524" layer="91"/>
<pinref part="SV6" gate="1" pin="6"/>
<pinref part="V3" gate="1" pin="6Q"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<wire x1="200.66" y1="25.4" x2="215.9" y2="25.4" width="0.1524" layer="91"/>
<wire x1="215.9" y1="25.4" x2="215.9" y2="88.9" width="0.1524" layer="91"/>
<pinref part="SV6" gate="1" pin="7"/>
<pinref part="V3" gate="1" pin="7Q"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<wire x1="218.44" y1="88.9" x2="218.44" y2="20.32" width="0.1524" layer="91"/>
<wire x1="218.44" y1="20.32" x2="200.66" y2="20.32" width="0.1524" layer="91"/>
<pinref part="SV6" gate="1" pin="8"/>
<pinref part="V3" gate="1" pin="8Q"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="V4" gate="1" pin="CLK"/>
<wire x1="223.52" y1="-17.78" x2="223.52" y2="63.5" width="0.1524" layer="91"/>
<wire x1="223.52" y1="63.5" x2="243.84" y2="63.5" width="0.1524" layer="91"/>
<wire x1="10.16" y1="-17.78" x2="223.52" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="Y4"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<wire x1="269.24" y1="55.88" x2="269.24" y2="88.9" width="0.1524" layer="91"/>
<pinref part="SV3" gate="1" pin="1"/>
<pinref part="V4" gate="1" pin="1Q"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<wire x1="271.78" y1="50.8" x2="271.78" y2="88.9" width="0.1524" layer="91"/>
<pinref part="SV3" gate="1" pin="2"/>
<pinref part="V4" gate="1" pin="2Q"/>
<wire x1="269.24" y1="50.8" x2="271.78" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<wire x1="274.32" y1="88.9" x2="274.32" y2="45.72" width="0.1524" layer="91"/>
<pinref part="SV3" gate="1" pin="3"/>
<pinref part="V4" gate="1" pin="3Q"/>
<wire x1="269.24" y1="45.72" x2="274.32" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<wire x1="269.24" y1="40.64" x2="276.86" y2="40.64" width="0.1524" layer="91"/>
<wire x1="276.86" y1="40.64" x2="276.86" y2="88.9" width="0.1524" layer="91"/>
<pinref part="SV3" gate="1" pin="4"/>
<pinref part="V4" gate="1" pin="4Q"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<wire x1="269.24" y1="35.56" x2="279.4" y2="35.56" width="0.1524" layer="91"/>
<wire x1="279.4" y1="35.56" x2="279.4" y2="88.9" width="0.1524" layer="91"/>
<pinref part="SV3" gate="1" pin="5"/>
<pinref part="V4" gate="1" pin="5Q"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<wire x1="281.94" y1="88.9" x2="281.94" y2="30.48" width="0.1524" layer="91"/>
<wire x1="281.94" y1="30.48" x2="269.24" y2="30.48" width="0.1524" layer="91"/>
<pinref part="SV3" gate="1" pin="6"/>
<pinref part="V4" gate="1" pin="6Q"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<wire x1="269.24" y1="25.4" x2="284.48" y2="25.4" width="0.1524" layer="91"/>
<wire x1="284.48" y1="25.4" x2="284.48" y2="88.9" width="0.1524" layer="91"/>
<pinref part="SV3" gate="1" pin="7"/>
<pinref part="V4" gate="1" pin="7Q"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<wire x1="287.02" y1="88.9" x2="287.02" y2="20.32" width="0.1524" layer="91"/>
<wire x1="287.02" y1="20.32" x2="269.24" y2="20.32" width="0.1524" layer="91"/>
<pinref part="SV3" gate="1" pin="8"/>
<pinref part="V4" gate="1" pin="8Q"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<wire x1="86.36" y1="-134.62" x2="86.36" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="V5" gate="1" pin="CLK"/>
<wire x1="86.36" y1="-58.42" x2="106.68" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="Y5"/>
<wire x1="43.18" y1="-134.62" x2="86.36" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="10.16" y1="-20.32" x2="43.18" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-20.32" x2="43.18" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="V6" gate="1" pin="CLK"/>
<wire x1="40.64" y1="-137.16" x2="154.94" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="154.94" y1="-137.16" x2="154.94" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="154.94" y1="-58.42" x2="175.26" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="Y6"/>
<wire x1="10.16" y1="-22.86" x2="40.64" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-22.86" x2="40.64" y2="-137.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<wire x1="20.32" y1="-121.92" x2="91.44" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-121.92" x2="91.44" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="V5" gate="1" pin="2D"/>
<wire x1="91.44" y1="-71.12" x2="106.68" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="91.44" y1="-121.92" x2="160.02" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-121.92" x2="160.02" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-71.12" x2="175.26" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="V6" gate="1" pin="2D"/>
<junction x="91.44" y="-121.92"/>
<wire x1="160.02" y1="-121.92" x2="228.6" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-121.92" x2="228.6" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="228.6" y1="-71.12" x2="243.84" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="V7" gate="1" pin="2D"/>
<junction x="160.02" y="-121.92"/>
<pinref part="SV1" gate="1" pin="7"/>
<pinref part="V1" gate="1" pin="2D"/>
<wire x1="-7.62" y1="53.34" x2="7.62" y2="53.34" width="0.1524" layer="91"/>
<wire x1="7.62" y1="53.34" x2="7.62" y2="50.8" width="0.1524" layer="91"/>
<wire x1="7.62" y1="50.8" x2="20.32" y2="50.8" width="0.1524" layer="91"/>
<wire x1="20.32" y1="50.8" x2="35.56" y2="50.8" width="0.1524" layer="91"/>
<wire x1="20.32" y1="50.8" x2="20.32" y2="0" width="0.1524" layer="91"/>
<junction x="20.32" y="50.8"/>
<wire x1="20.32" y1="0" x2="91.44" y2="0" width="0.1524" layer="91"/>
<wire x1="91.44" y1="0" x2="91.44" y2="50.8" width="0.1524" layer="91"/>
<pinref part="V2" gate="1" pin="2D"/>
<wire x1="91.44" y1="50.8" x2="106.68" y2="50.8" width="0.1524" layer="91"/>
<wire x1="91.44" y1="0" x2="160.02" y2="0" width="0.1524" layer="91"/>
<wire x1="160.02" y1="0" x2="160.02" y2="50.8" width="0.1524" layer="91"/>
<wire x1="160.02" y1="50.8" x2="175.26" y2="50.8" width="0.1524" layer="91"/>
<pinref part="V3" gate="1" pin="2D"/>
<junction x="91.44" y="0"/>
<wire x1="160.02" y1="0" x2="228.6" y2="0" width="0.1524" layer="91"/>
<wire x1="228.6" y1="0" x2="228.6" y2="50.8" width="0.1524" layer="91"/>
<wire x1="228.6" y1="50.8" x2="243.84" y2="50.8" width="0.1524" layer="91"/>
<pinref part="V4" gate="1" pin="2D"/>
<junction x="160.02" y="0"/>
<wire x1="20.32" y1="-121.92" x2="20.32" y2="0" width="0.1524" layer="91"/>
<junction x="20.32" y="0"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<wire x1="22.86" y1="-119.38" x2="93.98" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="V5" gate="1" pin="3D"/>
<wire x1="93.98" y1="-119.38" x2="93.98" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-76.2" x2="106.68" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-119.38" x2="162.56" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-119.38" x2="162.56" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-76.2" x2="175.26" y2="-76.2" width="0.1524" layer="91"/>
<pinref part="V6" gate="1" pin="3D"/>
<junction x="93.98" y="-119.38"/>
<wire x1="162.56" y1="-119.38" x2="231.14" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-119.38" x2="231.14" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="231.14" y1="-76.2" x2="243.84" y2="-76.2" width="0.1524" layer="91"/>
<pinref part="V7" gate="1" pin="3D"/>
<junction x="162.56" y="-119.38"/>
<pinref part="SV1" gate="1" pin="6"/>
<pinref part="V1" gate="1" pin="3D"/>
<wire x1="-7.62" y1="50.8" x2="5.08" y2="50.8" width="0.1524" layer="91"/>
<wire x1="5.08" y1="50.8" x2="5.08" y2="45.72" width="0.1524" layer="91"/>
<wire x1="5.08" y1="45.72" x2="22.86" y2="45.72" width="0.1524" layer="91"/>
<wire x1="22.86" y1="45.72" x2="35.56" y2="45.72" width="0.1524" layer="91"/>
<wire x1="22.86" y1="45.72" x2="22.86" y2="2.54" width="0.1524" layer="91"/>
<junction x="22.86" y="45.72"/>
<wire x1="22.86" y1="2.54" x2="93.98" y2="2.54" width="0.1524" layer="91"/>
<pinref part="V2" gate="1" pin="3D"/>
<wire x1="93.98" y1="2.54" x2="93.98" y2="45.72" width="0.1524" layer="91"/>
<wire x1="93.98" y1="45.72" x2="106.68" y2="45.72" width="0.1524" layer="91"/>
<wire x1="93.98" y1="2.54" x2="162.56" y2="2.54" width="0.1524" layer="91"/>
<wire x1="162.56" y1="2.54" x2="162.56" y2="45.72" width="0.1524" layer="91"/>
<wire x1="162.56" y1="45.72" x2="175.26" y2="45.72" width="0.1524" layer="91"/>
<pinref part="V3" gate="1" pin="3D"/>
<junction x="93.98" y="2.54"/>
<wire x1="162.56" y1="2.54" x2="231.14" y2="2.54" width="0.1524" layer="91"/>
<wire x1="231.14" y1="2.54" x2="231.14" y2="45.72" width="0.1524" layer="91"/>
<wire x1="231.14" y1="45.72" x2="243.84" y2="45.72" width="0.1524" layer="91"/>
<pinref part="V4" gate="1" pin="3D"/>
<junction x="162.56" y="2.54"/>
<wire x1="22.86" y1="-119.38" x2="22.86" y2="2.54" width="0.1524" layer="91"/>
<junction x="22.86" y="2.54"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="V5" gate="1" pin="4D"/>
<wire x1="106.68" y1="-81.28" x2="96.52" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="96.52" y1="-81.28" x2="96.52" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="96.52" y1="-116.84" x2="25.4" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-81.28" x2="165.1" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-81.28" x2="165.1" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-116.84" x2="96.52" y2="-116.84" width="0.1524" layer="91"/>
<pinref part="V6" gate="1" pin="4D"/>
<junction x="96.52" y="-116.84"/>
<wire x1="243.84" y1="-81.28" x2="233.68" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-81.28" x2="233.68" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="233.68" y1="-116.84" x2="165.1" y2="-116.84" width="0.1524" layer="91"/>
<pinref part="V7" gate="1" pin="4D"/>
<junction x="165.1" y="-116.84"/>
<pinref part="SV1" gate="1" pin="5"/>
<wire x1="-7.62" y1="48.26" x2="2.54" y2="48.26" width="0.1524" layer="91"/>
<wire x1="2.54" y1="48.26" x2="2.54" y2="40.64" width="0.1524" layer="91"/>
<pinref part="V1" gate="1" pin="4D"/>
<wire x1="2.54" y1="40.64" x2="25.4" y2="40.64" width="0.1524" layer="91"/>
<wire x1="25.4" y1="40.64" x2="35.56" y2="40.64" width="0.1524" layer="91"/>
<wire x1="25.4" y1="40.64" x2="25.4" y2="5.08" width="0.1524" layer="91"/>
<junction x="25.4" y="40.64"/>
<pinref part="V2" gate="1" pin="4D"/>
<wire x1="106.68" y1="40.64" x2="96.52" y2="40.64" width="0.1524" layer="91"/>
<wire x1="96.52" y1="40.64" x2="96.52" y2="5.08" width="0.1524" layer="91"/>
<wire x1="96.52" y1="5.08" x2="25.4" y2="5.08" width="0.1524" layer="91"/>
<wire x1="175.26" y1="40.64" x2="165.1" y2="40.64" width="0.1524" layer="91"/>
<wire x1="165.1" y1="40.64" x2="165.1" y2="5.08" width="0.1524" layer="91"/>
<wire x1="165.1" y1="5.08" x2="96.52" y2="5.08" width="0.1524" layer="91"/>
<pinref part="V3" gate="1" pin="4D"/>
<junction x="96.52" y="5.08"/>
<wire x1="243.84" y1="40.64" x2="233.68" y2="40.64" width="0.1524" layer="91"/>
<wire x1="233.68" y1="40.64" x2="233.68" y2="5.08" width="0.1524" layer="91"/>
<wire x1="233.68" y1="5.08" x2="165.1" y2="5.08" width="0.1524" layer="91"/>
<pinref part="V4" gate="1" pin="4D"/>
<junction x="165.1" y="5.08"/>
<wire x1="25.4" y1="-116.84" x2="25.4" y2="5.08" width="0.1524" layer="91"/>
<junction x="25.4" y="5.08"/>
</segment>
</net>
<net name="BUS1" class="0">
<segment>
<pinref part="V5" gate="1" pin="1D"/>
<wire x1="106.68" y1="-66.04" x2="88.9" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-66.04" x2="88.9" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-124.46" x2="17.78" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-66.04" x2="157.48" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-66.04" x2="157.48" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-124.46" x2="88.9" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="V6" gate="1" pin="1D"/>
<junction x="88.9" y="-124.46"/>
<wire x1="243.84" y1="-66.04" x2="226.06" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-66.04" x2="226.06" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-124.46" x2="157.48" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="V7" gate="1" pin="1D"/>
<junction x="157.48" y="-124.46"/>
<pinref part="SV1" gate="1" pin="8"/>
<pinref part="V1" gate="1" pin="1D"/>
<wire x1="-7.62" y1="55.88" x2="17.78" y2="55.88" width="0.1524" layer="91"/>
<wire x1="17.78" y1="55.88" x2="35.56" y2="55.88" width="0.1524" layer="91"/>
<wire x1="17.78" y1="55.88" x2="17.78" y2="-2.54" width="0.1524" layer="91"/>
<junction x="17.78" y="55.88"/>
<pinref part="V2" gate="1" pin="1D"/>
<wire x1="106.68" y1="55.88" x2="88.9" y2="55.88" width="0.1524" layer="91"/>
<wire x1="88.9" y1="55.88" x2="88.9" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-2.54" x2="17.78" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="175.26" y1="55.88" x2="157.48" y2="55.88" width="0.1524" layer="91"/>
<wire x1="157.48" y1="55.88" x2="157.48" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-2.54" x2="88.9" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="V3" gate="1" pin="1D"/>
<junction x="88.9" y="-2.54"/>
<wire x1="243.84" y1="55.88" x2="226.06" y2="55.88" width="0.1524" layer="91"/>
<wire x1="226.06" y1="55.88" x2="226.06" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="226.06" y1="-2.54" x2="157.48" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="V4" gate="1" pin="1D"/>
<junction x="157.48" y="-2.54"/>
<wire x1="17.78" y1="-124.46" x2="17.78" y2="-2.54" width="0.1524" layer="91"/>
<junction x="17.78" y="-2.54"/>
</segment>
</net>
<net name="DATA1" class="0">
<segment>
<wire x1="35.56" y1="-106.68" x2="106.68" y2="-106.68" width="0.1524" layer="91"/>
<pinref part="V5" gate="1" pin="8D"/>
<wire x1="106.68" y1="-106.68" x2="106.68" y2="-101.6" width="0.1524" layer="91"/>
<junction x="106.68" y="-106.68"/>
<pinref part="V6" gate="1" pin="8D"/>
<wire x1="106.68" y1="-106.68" x2="175.26" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="175.26" y1="-106.68" x2="175.26" y2="-101.6" width="0.1524" layer="91"/>
<pinref part="V7" gate="1" pin="8D"/>
<wire x1="175.26" y1="-106.68" x2="243.84" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="243.84" y1="-106.68" x2="243.84" y2="-101.6" width="0.1524" layer="91"/>
<junction x="175.26" y="-106.68"/>
<pinref part="V1" gate="1" pin="8D"/>
<wire x1="35.56" y1="20.32" x2="-7.62" y2="20.32" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="1"/>
<wire x1="-7.62" y1="20.32" x2="-7.62" y2="38.1" width="0.1524" layer="91"/>
<wire x1="35.56" y1="20.32" x2="35.56" y2="15.24" width="0.1524" layer="91"/>
<wire x1="35.56" y1="15.24" x2="106.68" y2="15.24" width="0.1524" layer="91"/>
<junction x="35.56" y="20.32"/>
<pinref part="V2" gate="1" pin="8D"/>
<wire x1="106.68" y1="15.24" x2="106.68" y2="20.32" width="0.1524" layer="91"/>
<junction x="106.68" y="15.24"/>
<pinref part="V3" gate="1" pin="8D"/>
<wire x1="106.68" y1="15.24" x2="175.26" y2="15.24" width="0.1524" layer="91"/>
<wire x1="175.26" y1="15.24" x2="175.26" y2="20.32" width="0.1524" layer="91"/>
<pinref part="V4" gate="1" pin="8D"/>
<wire x1="175.26" y1="15.24" x2="243.84" y2="15.24" width="0.1524" layer="91"/>
<wire x1="243.84" y1="15.24" x2="243.84" y2="20.32" width="0.1524" layer="91"/>
<junction x="175.26" y="15.24"/>
<wire x1="35.56" y1="-106.68" x2="35.56" y2="15.24" width="0.1524" layer="91"/>
<junction x="35.56" y="15.24"/>
</segment>
</net>
<net name="DATA2" class="0">
<segment>
<wire x1="104.14" y1="-109.22" x2="104.14" y2="-96.52" width="0.1524" layer="91"/>
<pinref part="V5" gate="1" pin="7D"/>
<wire x1="104.14" y1="-96.52" x2="106.68" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-109.22" x2="104.14" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-109.22" x2="172.72" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-96.52" x2="175.26" y2="-96.52" width="0.1524" layer="91"/>
<pinref part="V6" gate="1" pin="7D"/>
<junction x="104.14" y="-109.22"/>
<wire x1="104.14" y1="-109.22" x2="172.72" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-109.22" x2="241.3" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="241.3" y1="-96.52" x2="243.84" y2="-96.52" width="0.1524" layer="91"/>
<pinref part="V7" gate="1" pin="7D"/>
<wire x1="172.72" y1="-109.22" x2="241.3" y2="-109.22" width="0.1524" layer="91"/>
<junction x="172.72" y="-109.22"/>
<pinref part="SV1" gate="1" pin="2"/>
<wire x1="-7.62" y1="40.64" x2="-5.08" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="40.64" x2="-5.08" y2="25.4" width="0.1524" layer="91"/>
<pinref part="V1" gate="1" pin="7D"/>
<wire x1="-5.08" y1="25.4" x2="33.02" y2="25.4" width="0.1524" layer="91"/>
<wire x1="33.02" y1="25.4" x2="35.56" y2="25.4" width="0.1524" layer="91"/>
<wire x1="33.02" y1="25.4" x2="33.02" y2="12.7" width="0.1524" layer="91"/>
<junction x="33.02" y="25.4"/>
<wire x1="104.14" y1="12.7" x2="104.14" y2="25.4" width="0.1524" layer="91"/>
<pinref part="V2" gate="1" pin="7D"/>
<wire x1="104.14" y1="25.4" x2="106.68" y2="25.4" width="0.1524" layer="91"/>
<wire x1="33.02" y1="12.7" x2="104.14" y2="12.7" width="0.1524" layer="91"/>
<wire x1="172.72" y1="12.7" x2="172.72" y2="25.4" width="0.1524" layer="91"/>
<wire x1="172.72" y1="25.4" x2="175.26" y2="25.4" width="0.1524" layer="91"/>
<pinref part="V3" gate="1" pin="7D"/>
<junction x="104.14" y="12.7"/>
<wire x1="104.14" y1="12.7" x2="172.72" y2="12.7" width="0.1524" layer="91"/>
<wire x1="241.3" y1="12.7" x2="241.3" y2="25.4" width="0.1524" layer="91"/>
<wire x1="241.3" y1="25.4" x2="243.84" y2="25.4" width="0.1524" layer="91"/>
<pinref part="V4" gate="1" pin="7D"/>
<wire x1="172.72" y1="12.7" x2="241.3" y2="12.7" width="0.1524" layer="91"/>
<junction x="172.72" y="12.7"/>
<wire x1="33.02" y1="-109.22" x2="33.02" y2="12.7" width="0.1524" layer="91"/>
<junction x="33.02" y="12.7"/>
</segment>
</net>
<net name="DATA3" class="0">
<segment>
<pinref part="V5" gate="1" pin="6D"/>
<wire x1="101.6" y1="-111.76" x2="101.6" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-91.44" x2="106.68" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-111.76" x2="30.48" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-111.76" x2="170.18" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-91.44" x2="175.26" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="170.18" y1="-111.76" x2="101.6" y2="-111.76" width="0.1524" layer="91"/>
<pinref part="V6" gate="1" pin="6D"/>
<junction x="101.6" y="-111.76"/>
<wire x1="238.76" y1="-111.76" x2="238.76" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-91.44" x2="243.84" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-111.76" x2="170.18" y2="-111.76" width="0.1524" layer="91"/>
<pinref part="V7" gate="1" pin="6D"/>
<junction x="170.18" y="-111.76"/>
<pinref part="V2" gate="1" pin="6D"/>
<wire x1="101.6" y1="10.16" x2="101.6" y2="30.48" width="0.1524" layer="91"/>
<wire x1="101.6" y1="30.48" x2="106.68" y2="30.48" width="0.1524" layer="91"/>
<pinref part="V1" gate="1" pin="6D"/>
<wire x1="35.56" y1="30.48" x2="30.48" y2="30.48" width="0.1524" layer="91"/>
<wire x1="30.48" y1="30.48" x2="-2.54" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="30.48" x2="-2.54" y2="43.18" width="0.1524" layer="91"/>
<pinref part="SV1" gate="1" pin="3"/>
<wire x1="-2.54" y1="43.18" x2="-7.62" y2="43.18" width="0.1524" layer="91"/>
<wire x1="30.48" y1="30.48" x2="30.48" y2="10.16" width="0.1524" layer="91"/>
<junction x="30.48" y="30.48"/>
<wire x1="101.6" y1="10.16" x2="30.48" y2="10.16" width="0.1524" layer="91"/>
<wire x1="170.18" y1="10.16" x2="170.18" y2="30.48" width="0.1524" layer="91"/>
<wire x1="170.18" y1="30.48" x2="175.26" y2="30.48" width="0.1524" layer="91"/>
<wire x1="170.18" y1="10.16" x2="101.6" y2="10.16" width="0.1524" layer="91"/>
<pinref part="V3" gate="1" pin="6D"/>
<junction x="101.6" y="10.16"/>
<wire x1="238.76" y1="10.16" x2="238.76" y2="30.48" width="0.1524" layer="91"/>
<wire x1="238.76" y1="30.48" x2="243.84" y2="30.48" width="0.1524" layer="91"/>
<wire x1="238.76" y1="10.16" x2="170.18" y2="10.16" width="0.1524" layer="91"/>
<pinref part="V4" gate="1" pin="6D"/>
<junction x="170.18" y="10.16"/>
<wire x1="30.48" y1="-111.76" x2="30.48" y2="10.16" width="0.1524" layer="91"/>
<junction x="30.48" y="10.16"/>
</segment>
</net>
<net name="DATA8" class="0">
<segment>
<wire x1="27.94" y1="-114.3" x2="99.06" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-114.3" x2="99.06" y2="-86.36" width="0.1524" layer="91"/>
<pinref part="V5" gate="1" pin="5D"/>
<wire x1="99.06" y1="-86.36" x2="106.68" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="99.06" y1="-114.3" x2="167.64" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-114.3" x2="167.64" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="167.64" y1="-86.36" x2="175.26" y2="-86.36" width="0.1524" layer="91"/>
<pinref part="V6" gate="1" pin="5D"/>
<junction x="99.06" y="-114.3"/>
<wire x1="167.64" y1="-114.3" x2="236.22" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-114.3" x2="236.22" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="236.22" y1="-86.36" x2="243.84" y2="-86.36" width="0.1524" layer="91"/>
<pinref part="V7" gate="1" pin="5D"/>
<junction x="167.64" y="-114.3"/>
<pinref part="SV1" gate="1" pin="4"/>
<wire x1="-7.62" y1="45.72" x2="0" y2="45.72" width="0.1524" layer="91"/>
<wire x1="0" y1="45.72" x2="0" y2="35.56" width="0.1524" layer="91"/>
<pinref part="V1" gate="1" pin="5D"/>
<wire x1="0" y1="35.56" x2="27.94" y2="35.56" width="0.1524" layer="91"/>
<wire x1="27.94" y1="35.56" x2="35.56" y2="35.56" width="0.1524" layer="91"/>
<wire x1="27.94" y1="35.56" x2="27.94" y2="7.62" width="0.1524" layer="91"/>
<junction x="27.94" y="35.56"/>
<wire x1="27.94" y1="7.62" x2="99.06" y2="7.62" width="0.1524" layer="91"/>
<wire x1="99.06" y1="7.62" x2="99.06" y2="35.56" width="0.1524" layer="91"/>
<pinref part="V2" gate="1" pin="5D"/>
<wire x1="99.06" y1="35.56" x2="106.68" y2="35.56" width="0.1524" layer="91"/>
<wire x1="99.06" y1="7.62" x2="167.64" y2="7.62" width="0.1524" layer="91"/>
<wire x1="167.64" y1="7.62" x2="167.64" y2="35.56" width="0.1524" layer="91"/>
<wire x1="167.64" y1="35.56" x2="175.26" y2="35.56" width="0.1524" layer="91"/>
<pinref part="V3" gate="1" pin="5D"/>
<junction x="99.06" y="7.62"/>
<wire x1="167.64" y1="7.62" x2="236.22" y2="7.62" width="0.1524" layer="91"/>
<wire x1="236.22" y1="7.62" x2="236.22" y2="35.56" width="0.1524" layer="91"/>
<wire x1="236.22" y1="35.56" x2="243.84" y2="35.56" width="0.1524" layer="91"/>
<pinref part="V4" gate="1" pin="5D"/>
<junction x="167.64" y="7.62"/>
<wire x1="27.94" y1="-114.3" x2="27.94" y2="7.62" width="0.1524" layer="91"/>
<junction x="27.94" y="7.62"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="V5" gate="1" pin="1Q"/>
<pinref part="SV8" gate="1" pin="1"/>
<wire x1="132.08" y1="-66.04" x2="132.08" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="V5" gate="1" pin="2Q"/>
<wire x1="132.08" y1="-71.12" x2="134.62" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="SV8" gate="1" pin="2"/>
<wire x1="134.62" y1="-71.12" x2="134.62" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="SV8" gate="1" pin="3"/>
<wire x1="137.16" y1="-33.02" x2="137.16" y2="-76.2" width="0.1524" layer="91"/>
<pinref part="V5" gate="1" pin="3Q"/>
<wire x1="137.16" y1="-76.2" x2="132.08" y2="-76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="V5" gate="1" pin="4Q"/>
<wire x1="132.08" y1="-81.28" x2="139.7" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="SV8" gate="1" pin="4"/>
<wire x1="139.7" y1="-81.28" x2="139.7" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="V5" gate="1" pin="5Q"/>
<wire x1="132.08" y1="-86.36" x2="142.24" y2="-86.36" width="0.1524" layer="91"/>
<pinref part="SV8" gate="1" pin="5"/>
<wire x1="142.24" y1="-86.36" x2="142.24" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="SV8" gate="1" pin="6"/>
<wire x1="144.78" y1="-33.02" x2="144.78" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="V5" gate="1" pin="6Q"/>
<wire x1="144.78" y1="-91.44" x2="132.08" y2="-91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="V5" gate="1" pin="7Q"/>
<wire x1="132.08" y1="-96.52" x2="147.32" y2="-96.52" width="0.1524" layer="91"/>
<pinref part="SV8" gate="1" pin="7"/>
<wire x1="147.32" y1="-96.52" x2="147.32" y2="-33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="SV8" gate="1" pin="8"/>
<wire x1="149.86" y1="-33.02" x2="149.86" y2="-101.6" width="0.1524" layer="91"/>
<pinref part="V5" gate="1" pin="8Q"/>
<wire x1="149.86" y1="-101.6" x2="132.08" y2="-101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<wire x1="200.66" y1="-66.04" x2="200.66" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="SV9" gate="1" pin="1"/>
<pinref part="V6" gate="1" pin="1Q"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<wire x1="203.2" y1="-71.12" x2="203.2" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="SV9" gate="1" pin="2"/>
<pinref part="V6" gate="1" pin="2Q"/>
<wire x1="200.66" y1="-71.12" x2="203.2" y2="-71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<wire x1="205.74" y1="-33.02" x2="205.74" y2="-76.2" width="0.1524" layer="91"/>
<pinref part="SV9" gate="1" pin="3"/>
<pinref part="V6" gate="1" pin="3Q"/>
<wire x1="200.66" y1="-76.2" x2="205.74" y2="-76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<wire x1="200.66" y1="-81.28" x2="208.28" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="208.28" y1="-81.28" x2="208.28" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="SV9" gate="1" pin="4"/>
<pinref part="V6" gate="1" pin="4Q"/>
</segment>
</net>
<net name="N$60" class="0">
<segment>
<wire x1="200.66" y1="-86.36" x2="210.82" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="210.82" y1="-86.36" x2="210.82" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="SV9" gate="1" pin="5"/>
<pinref part="V6" gate="1" pin="5Q"/>
</segment>
</net>
<net name="N$61" class="0">
<segment>
<wire x1="213.36" y1="-33.02" x2="213.36" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="213.36" y1="-91.44" x2="200.66" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="SV9" gate="1" pin="6"/>
<pinref part="V6" gate="1" pin="6Q"/>
</segment>
</net>
<net name="N$62" class="0">
<segment>
<wire x1="200.66" y1="-96.52" x2="215.9" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="215.9" y1="-96.52" x2="215.9" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="SV9" gate="1" pin="7"/>
<pinref part="V6" gate="1" pin="7Q"/>
</segment>
</net>
<net name="N$63" class="0">
<segment>
<wire x1="218.44" y1="-33.02" x2="218.44" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="218.44" y1="-101.6" x2="200.66" y2="-101.6" width="0.1524" layer="91"/>
<pinref part="SV9" gate="1" pin="8"/>
<pinref part="V6" gate="1" pin="8Q"/>
</segment>
</net>
<net name="N$64" class="0">
<segment>
<pinref part="V7" gate="1" pin="CLK"/>
<wire x1="223.52" y1="-139.7" x2="223.52" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="223.52" y1="-58.42" x2="243.84" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="IC1" gate="A" pin="Y7"/>
<wire x1="38.1" y1="-139.7" x2="223.52" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="10.16" y1="-25.4" x2="38.1" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="38.1" y1="-25.4" x2="38.1" y2="-139.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$65" class="0">
<segment>
<wire x1="269.24" y1="-66.04" x2="269.24" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="SV10" gate="1" pin="1"/>
<pinref part="V7" gate="1" pin="1Q"/>
</segment>
</net>
<net name="N$66" class="0">
<segment>
<wire x1="271.78" y1="-71.12" x2="271.78" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="SV10" gate="1" pin="2"/>
<pinref part="V7" gate="1" pin="2Q"/>
<wire x1="269.24" y1="-71.12" x2="271.78" y2="-71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$67" class="0">
<segment>
<wire x1="274.32" y1="-33.02" x2="274.32" y2="-76.2" width="0.1524" layer="91"/>
<pinref part="SV10" gate="1" pin="3"/>
<pinref part="V7" gate="1" pin="3Q"/>
<wire x1="269.24" y1="-76.2" x2="274.32" y2="-76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$68" class="0">
<segment>
<wire x1="269.24" y1="-81.28" x2="276.86" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="276.86" y1="-81.28" x2="276.86" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="SV10" gate="1" pin="4"/>
<pinref part="V7" gate="1" pin="4Q"/>
</segment>
</net>
<net name="N$69" class="0">
<segment>
<wire x1="269.24" y1="-86.36" x2="279.4" y2="-86.36" width="0.1524" layer="91"/>
<wire x1="279.4" y1="-86.36" x2="279.4" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="SV10" gate="1" pin="5"/>
<pinref part="V7" gate="1" pin="5Q"/>
</segment>
</net>
<net name="N$70" class="0">
<segment>
<wire x1="281.94" y1="-33.02" x2="281.94" y2="-91.44" width="0.1524" layer="91"/>
<wire x1="281.94" y1="-91.44" x2="269.24" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="SV10" gate="1" pin="6"/>
<pinref part="V7" gate="1" pin="6Q"/>
</segment>
</net>
<net name="N$71" class="0">
<segment>
<wire x1="269.24" y1="-96.52" x2="284.48" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="284.48" y1="-96.52" x2="284.48" y2="-33.02" width="0.1524" layer="91"/>
<pinref part="SV10" gate="1" pin="7"/>
<pinref part="V7" gate="1" pin="7Q"/>
</segment>
</net>
<net name="N$72" class="0">
<segment>
<wire x1="287.02" y1="-33.02" x2="287.02" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="287.02" y1="-101.6" x2="269.24" y2="-101.6" width="0.1524" layer="91"/>
<pinref part="SV10" gate="1" pin="8"/>
<pinref part="V7" gate="1" pin="8Q"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
