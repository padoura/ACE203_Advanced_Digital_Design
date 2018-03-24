<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_14" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <blockdef name="HalfAdder">
            <timestamp>2017-2-24T21:22:56</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="OrGate">
            <timestamp>2017-2-24T21:23:6</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="HalfAdder" name="In0">
            <blockpin name="In0" />
            <blockpin name="In1" />
            <blockpin signalname="XLXN_14" name="S" />
            <blockpin signalname="XLXN_12" name="C" />
        </block>
        <block symbolname="HalfAdder" name="XLXI_5">
            <blockpin name="In0" />
            <blockpin signalname="XLXN_14" name="In1" />
            <blockpin name="S" />
            <blockpin signalname="XLXN_13" name="C" />
        </block>
        <block symbolname="OrGate" name="XLXI_4">
            <blockpin signalname="XLXN_13" name="In0" />
            <blockpin signalname="XLXN_12" name="In1" />
            <blockpin name="Out0" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="1360">
        <instance x="160" y="752" name="In0" orien="R0">
        </instance>
        <instance x="640" y="576" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_14">
            <wire x2="592" y1="656" y2="656" x1="544" />
            <wire x2="592" y1="544" y2="656" x1="592" />
            <wire x2="640" y1="544" y2="544" x1="592" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="560" y1="720" y2="720" x1="544" />
            <wire x2="1216" y1="720" y2="720" x1="560" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1040" y1="544" y2="544" x1="1024" />
            <wire x2="1120" y1="544" y2="544" x1="1040" />
            <wire x2="1120" y1="544" y2="656" x1="1120" />
            <wire x2="1216" y1="656" y2="656" x1="1120" />
        </branch>
        <instance x="1216" y="752" name="XLXI_4" orien="R0">
        </instance>
        <text style="fontsize:24;fontname:Arial" x="99" y="656">IN0</text>
        <text style="fontsize:24;fontname:Arial" x="99" y="716">IN1</text>
        <text style="fontsize:24;fontname:Arial" x="587" y="476">IN2</text>
        <text style="fontsize:24;fontname:Arial" x="1055" y="480">Led(0)</text>
        <text style="fontsize:24;fontname:Arial" x="1619" y="656">Led(1)</text>
    </sheet>
</drawing>