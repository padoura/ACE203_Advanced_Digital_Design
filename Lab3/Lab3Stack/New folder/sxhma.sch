<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_11(4:0)" />
        <signal name="XLXN_12(4:0)" />
        <signal name="XLXN_13(4:0)" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15(3:0)" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18(4:0)" />
        <signal name="XLXN_19(4:0)" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_2(1:0)" />
        <signal name="XLXN_31(1:0)" />
        <blockdef name="Counter5bit">
            <timestamp>2017-3-29T10:11:30</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="SSDData">
            <timestamp>2017-3-29T10:10:8</timestamp>
            <rect width="304" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
        </blockdef>
        <blockdef name="SSDControl">
            <timestamp>2017-3-29T10:10:2</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="singlepulsegen">
            <timestamp>2017-3-29T10:11:7</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="FSMStack">
            <timestamp>2017-3-29T10:11:15</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="EqualComp5">
            <timestamp>2017-3-29T10:11:20</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="MemoryStack">
            <timestamp>2017-3-29T10:11:35</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="singlepulsegen" name="PUSH">
            <blockpin signalname="XLXN_25" name="clk" />
            <blockpin signalname="XLXN_26" name="rst" />
            <blockpin name="input" />
            <blockpin signalname="XLXN_15(3:0)" name="output" />
        </block>
        <block symbolname="singlepulsegen" name="POP">
            <blockpin signalname="XLXN_25" name="clk" />
            <blockpin signalname="XLXN_26" name="rst" />
            <blockpin name="input" />
            <blockpin signalname="XLXN_15(3:0)" name="output" />
        </block>
        <block symbolname="singlepulsegen" name="ADD">
            <blockpin signalname="XLXN_25" name="clk" />
            <blockpin signalname="XLXN_26" name="rst" />
            <blockpin name="input" />
            <blockpin name="output" />
        </block>
        <block symbolname="FSMStack" name="XLXI_15">
            <blockpin signalname="XLXN_25" name="Clk" />
            <blockpin signalname="XLXN_26" name="Rst" />
            <blockpin signalname="XLXN_15(3:0)" name="InVec(3:0)" />
            <blockpin name="OutVec(1:0)" />
        </block>
        <block symbolname="EqualComp5" name="TOSeq0">
            <blockpin signalname="XLXN_18(4:0)" name="A(4:0)" />
            <blockpin name="B(4:0)" />
            <blockpin signalname="XLXN_15(3:0)" name="AeqB" />
        </block>
        <block symbolname="Counter5bit" name="TOS">
            <blockpin signalname="XLXN_25" name="Clk" />
            <blockpin name="En" />
            <blockpin signalname="XLXN_15(3:0)" name="UpDn" />
            <blockpin name="LD" />
            <blockpin name="InVec(4:0)" />
            <blockpin name="RC" />
            <blockpin signalname="XLXN_18(4:0)" name="Q(4:0)" />
        </block>
        <block symbolname="Counter5bit" name="TOSm1">
            <blockpin signalname="XLXN_25" name="Clk" />
            <blockpin name="En" />
            <blockpin signalname="XLXN_15(3:0)" name="UpDn" />
            <blockpin name="LD" />
            <blockpin name="InVec(4:0)" />
            <blockpin name="RC" />
            <blockpin name="Q(4:0)" />
        </block>
        <block symbolname="EqualComp5" name="TOSeq31">
            <blockpin signalname="XLXN_18(4:0)" name="A(4:0)" />
            <blockpin name="B(4:0)" />
            <blockpin signalname="XLXN_15(3:0)" name="AeqB" />
        </block>
        <block symbolname="MemoryStack" name="XLXI_26">
            <blockpin signalname="XLXN_25" name="clka" />
            <blockpin name="wea(0:0)" />
            <blockpin signalname="XLXN_18(4:0)" name="addra(4:0)" />
            <blockpin name="dina(7:0)" />
            <blockpin name="douta(7:0)" />
        </block>
        <block symbolname="SSDData" name="XLXI_2">
            <blockpin name="DataIn(1:0)" />
            <blockpin signalname="XLXN_2(1:0)" name="ControlIn(1:0)" />
            <blockpin name="DataOut(7:0)" />
        </block>
        <block symbolname="SSDControl" name="XLXI_3">
            <blockpin name="Clk" />
            <blockpin name="Rst" />
            <blockpin signalname="XLXN_2(1:0)" name="StateOut(1:0)" />
            <blockpin name="ControlOut(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="352" y="368" name="PUSH" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="352" y="656" name="POP" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="352" y="960" name="ADD" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="336" y="1520" name="TOS" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="336" y="1920" name="TOSm1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="1072" y="1376" name="TOSeq0" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="1056" y="1104" name="TOSeq31" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="0" type="instance" />
        </instance>
        <instance x="1616" y="800" name="XLXI_15" orien="R0">
        </instance>
        <branch name="XLXN_15(3:0)">
            <wire x2="144" y1="48" y2="1360" x1="144" />
            <wire x2="144" y1="1360" y2="1760" x1="144" />
            <wire x2="336" y1="1760" y2="1760" x1="144" />
            <wire x2="336" y1="1360" y2="1360" x1="144" />
            <wire x2="736" y1="48" y2="48" x1="144" />
            <wire x2="736" y1="48" y2="208" x1="736" />
            <wire x2="1504" y1="208" y2="208" x1="736" />
            <wire x2="1504" y1="208" y2="768" x1="1504" />
            <wire x2="1504" y1="768" y2="1008" x1="1504" />
            <wire x2="1504" y1="768" y2="1280" x1="1504" />
            <wire x2="1616" y1="768" y2="768" x1="1504" />
            <wire x2="1120" y1="496" y2="496" x1="736" />
            <wire x2="1120" y1="496" y2="768" x1="1120" />
            <wire x2="1504" y1="768" y2="768" x1="1120" />
            <wire x2="1504" y1="1008" y2="1008" x1="1440" />
            <wire x2="1504" y1="1280" y2="1280" x1="1456" />
        </branch>
        <branch name="XLXN_18(4:0)">
            <wire x2="896" y1="1488" y2="1488" x1="720" />
            <wire x2="1520" y1="1488" y2="1488" x1="896" />
            <wire x2="1056" y1="1008" y2="1008" x1="896" />
            <wire x2="896" y1="1008" y2="1280" x1="896" />
            <wire x2="896" y1="1280" y2="1488" x1="896" />
            <wire x2="1072" y1="1280" y2="1280" x1="896" />
            <wire x2="1520" y1="1104" y2="1488" x1="1520" />
            <wire x2="1952" y1="1104" y2="1104" x1="1520" />
        </branch>
        <instance x="1952" y="1200" name="XLXI_26" orien="R0">
        </instance>
        <branch name="XLXN_25">
            <wire x2="352" y1="208" y2="208" x1="288" />
            <wire x2="288" y1="208" y2="496" x1="288" />
            <wire x2="352" y1="496" y2="496" x1="288" />
            <wire x2="288" y1="496" y2="704" x1="288" />
            <wire x2="288" y1="704" y2="800" x1="288" />
            <wire x2="352" y1="800" y2="800" x1="288" />
            <wire x2="288" y1="800" y2="1232" x1="288" />
            <wire x2="336" y1="1232" y2="1232" x1="288" />
            <wire x2="288" y1="1232" y2="1632" x1="288" />
            <wire x2="336" y1="1632" y2="1632" x1="288" />
            <wire x2="784" y1="704" y2="704" x1="288" />
            <wire x2="784" y1="640" y2="704" x1="784" />
            <wire x2="1568" y1="640" y2="640" x1="784" />
            <wire x2="1616" y1="640" y2="640" x1="1568" />
            <wire x2="1568" y1="640" y2="976" x1="1568" />
            <wire x2="1952" y1="976" y2="976" x1="1568" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="240" y1="400" y2="560" x1="240" />
            <wire x2="272" y1="560" y2="560" x1="240" />
            <wire x2="352" y1="560" y2="560" x1="272" />
            <wire x2="272" y1="560" y2="864" x1="272" />
            <wire x2="352" y1="864" y2="864" x1="272" />
            <wire x2="864" y1="400" y2="400" x1="240" />
            <wire x2="864" y1="400" y2="704" x1="864" />
            <wire x2="1616" y1="704" y2="704" x1="864" />
            <wire x2="352" y1="272" y2="272" x1="272" />
            <wire x2="272" y1="272" y2="560" x1="272" />
        </branch>
        <instance x="1744" y="1792" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1776" y="2048" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_2(1:0)">
            <wire x2="2256" y1="1584" y2="1584" x1="1680" />
            <wire x2="2256" y1="1584" y2="1952" x1="2256" />
            <wire x2="1680" y1="1584" y2="1760" x1="1680" />
            <wire x2="1744" y1="1760" y2="1760" x1="1680" />
            <wire x2="2256" y1="1952" y2="1952" x1="2160" />
        </branch>
    </sheet>
</drawing>