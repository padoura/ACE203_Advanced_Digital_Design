<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="XLXN_5" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="1360">
        <instance x="416" y="624" name="XLXI_1" orien="R0" />
        <text style="fontsize:32;fontname:Arial" x="139" y="496">In0</text>
        <instance x="416" y="864" name="XLXI_2" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="272" y1="496" y2="496" x1="192" />
            <wire x2="416" y1="496" y2="496" x1="272" />
            <wire x2="272" y1="496" y2="736" x1="272" />
            <wire x2="416" y1="736" y2="736" x1="272" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="240" y1="560" y2="560" x1="192" />
            <wire x2="416" y1="560" y2="560" x1="240" />
            <wire x2="240" y1="560" y2="800" x1="240" />
            <wire x2="416" y1="800" y2="800" x1="240" />
        </branch>
        <text style="fontsize:32;fontname:Arial" x="679" y="768">S</text>
        <text style="fontsize:32;fontname:Arial" x="679" y="528">C</text>
        <text style="fontsize:32;fontname:Arial" x="139" y="560">In1</text>
    </sheet>
</drawing>