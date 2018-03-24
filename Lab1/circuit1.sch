<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_8" />
        <signal name="XLXN_21" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
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
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_6">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_7">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="XLXN_8" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="XLXN_8" name="I" />
            <blockpin name="O" />
        </block>
        <block symbolname="buf" name="XLXI_10">
            <blockpin signalname="XLXN_23" name="I" />
            <blockpin name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="1360">
        <instance x="992" y="288" name="XLXI_2" orien="R0" />
        <instance x="992" y="608" name="XLXI_3" orien="R0" />
        <instance x="992" y="848" name="XLXI_4" orien="R0" />
        <instance x="992" y="1104" name="XLXI_5" orien="R0" />
        <instance x="688" y="1184" name="XLXI_9" orien="R0" />
        <instance x="688" y="1296" name="XLXI_10" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="992" y1="976" y2="976" x1="672" />
        </branch>
        <text style="fontsize:40;fontname:Arial" x="896" y="1040">Btn3</text>
        <instance x="448" y="1008" name="XLXI_8" orien="R0" />
        <text style="fontsize:40;fontname:Arial" x="900" y="788">Btn2</text>
        <branch name="XLXN_4">
            <wire x2="992" y1="720" y2="720" x1="672" />
        </branch>
        <instance x="416" y="816" name="XLXI_7" orien="R0" />
        <text style="fontsize:40;fontname:Arial" x="900" y="544">Btn1</text>
        <text style="fontsize:40;fontname:Arial" x="904" y="228">Btn0</text>
        <branch name="XLXN_5">
            <wire x2="992" y1="160" y2="160" x1="672" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="992" y1="480" y2="480" x1="656" />
        </branch>
        <instance x="400" y="576" name="XLXI_6" orien="R0" />
        <text style="fontsize:40;fontname:Arial" x="1264" y="192">Led(0)</text>
        <text style="fontsize:40;fontname:Arial" x="1272" y="504">Led(1)</text>
        <text style="fontsize:40;fontname:Arial" x="1280" y="752">Led(2)</text>
        <text style="fontsize:40;fontname:Arial" x="1272" y="1004">Led(3)</text>
        <instance x="416" y="256" name="XLXI_1" orien="R0" />
        <text style="fontsize:40;fontname:Arial" x="32" y="132">IN0</text>
        <branch name="XLXN_8">
            <wire x2="240" y1="128" y2="128" x1="112" />
            <wire x2="416" y1="128" y2="128" x1="240" />
            <wire x2="240" y1="128" y2="448" x1="240" />
            <wire x2="400" y1="448" y2="448" x1="240" />
            <wire x2="240" y1="448" y2="688" x1="240" />
            <wire x2="416" y1="688" y2="688" x1="240" />
            <wire x2="240" y1="688" y2="976" x1="240" />
            <wire x2="448" y1="976" y2="976" x1="240" />
            <wire x2="240" y1="976" y2="1152" x1="240" />
            <wire x2="688" y1="1152" y2="1152" x1="240" />
        </branch>
        <text style="fontsize:40;fontname:Arial" x="960" y="1156">Led(4)</text>
        <text style="fontsize:40;fontname:Arial" x="960" y="1264">Led(5)</text>
        <text style="fontsize:40;fontname:Arial" x="36" y="192">IN1</text>
        <branch name="XLXN_23">
            <wire x2="176" y1="192" y2="192" x1="112" />
            <wire x2="416" y1="192" y2="192" x1="176" />
            <wire x2="176" y1="192" y2="512" x1="176" />
            <wire x2="400" y1="512" y2="512" x1="176" />
            <wire x2="176" y1="512" y2="752" x1="176" />
            <wire x2="416" y1="752" y2="752" x1="176" />
            <wire x2="176" y1="752" y2="1264" x1="176" />
            <wire x2="688" y1="1264" y2="1264" x1="176" />
        </branch>
    </sheet>
</drawing>