-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2017.08.27940

-- Build Date:         Sep 11 2017 17:29:57

-- File Generated:     Feb 5 2018 17:54:25

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "SPI_TEST_MODULE" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of SPI_TEST_MODULE
entity SPI_TEST_MODULE is
port (
    SCK : in std_logic;
    MOSI : in std_logic;
    MISO : out std_logic;
    LEDR : out std_logic;
    clk : in std_logic;
    SS : in std_logic;
    LEDG : out std_logic);
end SPI_TEST_MODULE;

-- Architecture of SPI_TEST_MODULE
-- View name is \INTERFACE\
architecture \INTERFACE\ of SPI_TEST_MODULE is

signal \N__1286\ : std_logic;
signal \N__1272\ : std_logic;
signal \N__1271\ : std_logic;
signal \N__1270\ : std_logic;
signal \N__1263\ : std_logic;
signal \N__1262\ : std_logic;
signal \N__1261\ : std_logic;
signal \N__1254\ : std_logic;
signal \N__1253\ : std_logic;
signal \N__1252\ : std_logic;
signal \N__1245\ : std_logic;
signal \N__1244\ : std_logic;
signal \N__1243\ : std_logic;
signal \N__1236\ : std_logic;
signal \N__1235\ : std_logic;
signal \N__1234\ : std_logic;
signal \N__1227\ : std_logic;
signal \N__1226\ : std_logic;
signal \N__1225\ : std_logic;
signal \N__1208\ : std_logic;
signal \N__1207\ : std_logic;
signal \N__1206\ : std_logic;
signal \N__1203\ : std_logic;
signal \N__1202\ : std_logic;
signal \N__1199\ : std_logic;
signal \N__1192\ : std_logic;
signal \N__1187\ : std_logic;
signal \N__1186\ : std_logic;
signal \N__1185\ : std_logic;
signal \N__1182\ : std_logic;
signal \N__1179\ : std_logic;
signal \N__1178\ : std_logic;
signal \N__1177\ : std_logic;
signal \N__1176\ : std_logic;
signal \N__1175\ : std_logic;
signal \N__1174\ : std_logic;
signal \N__1173\ : std_logic;
signal \N__1172\ : std_logic;
signal \N__1171\ : std_logic;
signal \N__1168\ : std_logic;
signal \N__1167\ : std_logic;
signal \N__1166\ : std_logic;
signal \N__1165\ : std_logic;
signal \N__1164\ : std_logic;
signal \N__1161\ : std_logic;
signal \N__1158\ : std_logic;
signal \N__1153\ : std_logic;
signal \N__1140\ : std_logic;
signal \N__1137\ : std_logic;
signal \N__1128\ : std_logic;
signal \N__1115\ : std_logic;
signal \N__1114\ : std_logic;
signal \N__1111\ : std_logic;
signal \N__1108\ : std_logic;
signal \N__1103\ : std_logic;
signal \N__1100\ : std_logic;
signal \N__1099\ : std_logic;
signal \N__1098\ : std_logic;
signal \N__1095\ : std_logic;
signal \N__1092\ : std_logic;
signal \N__1089\ : std_logic;
signal \N__1086\ : std_logic;
signal \N__1079\ : std_logic;
signal \N__1078\ : std_logic;
signal \N__1073\ : std_logic;
signal \N__1070\ : std_logic;
signal \N__1069\ : std_logic;
signal \N__1066\ : std_logic;
signal \N__1063\ : std_logic;
signal \N__1058\ : std_logic;
signal \N__1055\ : std_logic;
signal \N__1052\ : std_logic;
signal \N__1049\ : std_logic;
signal \N__1048\ : std_logic;
signal \N__1045\ : std_logic;
signal \N__1042\ : std_logic;
signal \N__1039\ : std_logic;
signal \N__1036\ : std_logic;
signal \N__1035\ : std_logic;
signal \N__1032\ : std_logic;
signal \N__1029\ : std_logic;
signal \N__1028\ : std_logic;
signal \N__1025\ : std_logic;
signal \N__1020\ : std_logic;
signal \N__1015\ : std_logic;
signal \N__1010\ : std_logic;
signal \N__1007\ : std_logic;
signal \N__1004\ : std_logic;
signal \N__1001\ : std_logic;
signal \N__998\ : std_logic;
signal \N__995\ : std_logic;
signal \N__992\ : std_logic;
signal \N__991\ : std_logic;
signal \N__990\ : std_logic;
signal \N__989\ : std_logic;
signal \N__988\ : std_logic;
signal \N__983\ : std_logic;
signal \N__976\ : std_logic;
signal \N__971\ : std_logic;
signal \N__968\ : std_logic;
signal \N__965\ : std_logic;
signal \N__962\ : std_logic;
signal \N__959\ : std_logic;
signal \N__956\ : std_logic;
signal \N__953\ : std_logic;
signal \N__952\ : std_logic;
signal \N__951\ : std_logic;
signal \N__948\ : std_logic;
signal \N__943\ : std_logic;
signal \N__938\ : std_logic;
signal \N__937\ : std_logic;
signal \N__936\ : std_logic;
signal \N__935\ : std_logic;
signal \N__934\ : std_logic;
signal \N__933\ : std_logic;
signal \N__932\ : std_logic;
signal \N__931\ : std_logic;
signal \N__930\ : std_logic;
signal \N__929\ : std_logic;
signal \N__928\ : std_logic;
signal \N__927\ : std_logic;
signal \N__926\ : std_logic;
signal \N__925\ : std_logic;
signal \N__896\ : std_logic;
signal \N__893\ : std_logic;
signal \N__890\ : std_logic;
signal \N__887\ : std_logic;
signal \N__884\ : std_logic;
signal \N__881\ : std_logic;
signal \N__878\ : std_logic;
signal \N__875\ : std_logic;
signal \N__872\ : std_logic;
signal \N__869\ : std_logic;
signal \N__866\ : std_logic;
signal \N__865\ : std_logic;
signal \N__860\ : std_logic;
signal \N__857\ : std_logic;
signal \N__854\ : std_logic;
signal \N__853\ : std_logic;
signal \N__850\ : std_logic;
signal \N__847\ : std_logic;
signal \N__844\ : std_logic;
signal \N__841\ : std_logic;
signal \N__838\ : std_logic;
signal \N__835\ : std_logic;
signal \N__830\ : std_logic;
signal \N__827\ : std_logic;
signal \N__824\ : std_logic;
signal \N__821\ : std_logic;
signal \N__820\ : std_logic;
signal \N__817\ : std_logic;
signal \N__816\ : std_logic;
signal \N__813\ : std_logic;
signal \N__810\ : std_logic;
signal \N__807\ : std_logic;
signal \N__804\ : std_logic;
signal \N__797\ : std_logic;
signal \N__796\ : std_logic;
signal \N__793\ : std_logic;
signal \N__790\ : std_logic;
signal \N__785\ : std_logic;
signal \N__784\ : std_logic;
signal \N__781\ : std_logic;
signal \N__778\ : std_logic;
signal \N__773\ : std_logic;
signal \N__772\ : std_logic;
signal \N__769\ : std_logic;
signal \N__766\ : std_logic;
signal \N__761\ : std_logic;
signal \N__760\ : std_logic;
signal \N__757\ : std_logic;
signal \N__754\ : std_logic;
signal \N__749\ : std_logic;
signal \N__748\ : std_logic;
signal \N__745\ : std_logic;
signal \N__742\ : std_logic;
signal \N__737\ : std_logic;
signal \N__736\ : std_logic;
signal \N__733\ : std_logic;
signal \N__730\ : std_logic;
signal \N__725\ : std_logic;
signal \N__722\ : std_logic;
signal \N__719\ : std_logic;
signal \N__716\ : std_logic;
signal \N__713\ : std_logic;
signal \N__710\ : std_logic;
signal \N__707\ : std_logic;
signal \N__704\ : std_logic;
signal \N__701\ : std_logic;
signal \N__698\ : std_logic;
signal \N__695\ : std_logic;
signal \N__692\ : std_logic;
signal \N__689\ : std_logic;
signal \N__686\ : std_logic;
signal \N__683\ : std_logic;
signal \N__680\ : std_logic;
signal \N__677\ : std_logic;
signal \N__674\ : std_logic;
signal \N__671\ : std_logic;
signal \N__668\ : std_logic;
signal \N__665\ : std_logic;
signal \N__662\ : std_logic;
signal \N__659\ : std_logic;
signal \N__656\ : std_logic;
signal \N__653\ : std_logic;
signal \N__650\ : std_logic;
signal \N__647\ : std_logic;
signal \N__644\ : std_logic;
signal \N__641\ : std_logic;
signal \N__638\ : std_logic;
signal \N__635\ : std_logic;
signal \N__632\ : std_logic;
signal \N__629\ : std_logic;
signal \N__626\ : std_logic;
signal \N__623\ : std_logic;
signal \N__620\ : std_logic;
signal \N__617\ : std_logic;
signal \N__614\ : std_logic;
signal \N__611\ : std_logic;
signal \N__608\ : std_logic;
signal \N__607\ : std_logic;
signal \N__604\ : std_logic;
signal \N__601\ : std_logic;
signal \N__596\ : std_logic;
signal \N__593\ : std_logic;
signal \N__590\ : std_logic;
signal \N__587\ : std_logic;
signal \N__584\ : std_logic;
signal \mypll_inst.outclk\ : std_logic;
signal \VCCG0\ : std_logic;
signal \GNDG0\ : std_logic;
signal \txZ0Z_5\ : std_logic;
signal \txZ0Z_4\ : std_logic;
signal \spi.TxDataZ0Z_4\ : std_logic;
signal \txZ0Z_3\ : std_logic;
signal \spi.TxDataZ0Z_3\ : std_logic;
signal \txZ0Z_1\ : std_logic;
signal \spi.TxDataZ0Z_0\ : std_logic;
signal \txZ0Z_2\ : std_logic;
signal \spi.TxDataZ0Z_1\ : std_logic;
signal \spi.TxDataZ0Z_2\ : std_logic;
signal rx_7 : std_logic;
signal rx_2 : std_logic;
signal rx_3 : std_logic;
signal rx_4 : std_logic;
signal rx_1 : std_logic;
signal rx_5 : std_logic;
signal rx_6 : std_logic;
signal \txZ0Z_6\ : std_logic;
signal \spi.TxDataZ0Z_5\ : std_logic;
signal \txZ0Z_7\ : std_logic;
signal \spi.TxDataZ0Z_6\ : std_logic;
signal \MISO_c\ : std_logic;
signal \txZ0Z_0\ : std_logic;
signal \spi.SPI_DONE_0_sqmuxa_2_cascade_\ : std_logic;
signal \spi.SPI_DONE_0_sqmuxa_cascade_\ : std_logic;
signal \spi.un1_SPI_DONE_0_sqmuxa_1_0_cascade_\ : std_logic;
signal \spi.CO1_0_1_cascade_\ : std_logic;
signal \spi.indexZ0Z_2\ : std_logic;
signal \spi.RxdData_0_sqmuxa_cascade_\ : std_logic;
signal \spi.TxData_5_sn_N_2\ : std_logic;
signal \spi.MOSI_latchedZ0\ : std_logic;
signal rx_0 : std_logic;
signal \spi.indexZ0Z_0\ : std_logic;
signal \spi.RxdData_0_sqmuxa\ : std_logic;
signal \spi.un1_SPI_DONE_0_sqmuxa_1_0\ : std_logic;
signal \spi.indexZ0Z_1\ : std_logic;
signal \spi.SCLK_oldZ0\ : std_logic;
signal \spi.SS_oldZ0\ : std_logic;
signal \spi.SPI_DONE_0_sqmuxa\ : std_logic;
signal done : std_logic;
signal \sendDataZ0\ : std_logic;
signal \SS_c\ : std_logic;
signal \spi.SS_latchedZ0\ : std_logic;
signal \SCK_c\ : std_logic;
signal \spi.SCLK_latchedZ0\ : std_logic;
signal outclk_g : std_logic;
signal \CONSTANT_ONE_NET\ : std_logic;
signal \_gnd_net_\ : std_logic;

signal clk_wire : std_logic;
signal \LEDR_wire\ : std_logic;
signal \MOSI_wire\ : std_logic;
signal \MISO_wire\ : std_logic;
signal \SCK_wire\ : std_logic;
signal \SS_wire\ : std_logic;
signal \LEDG_wire\ : std_logic;
signal \mypll_inst.mypll_inst_pll_DYNAMICDELAY_wire\ : std_logic_vector(7 downto 0);

begin
    clk_wire <= clk;
    LEDR <= \LEDR_wire\;
    \MOSI_wire\ <= MOSI;
    MISO <= \MISO_wire\;
    \SCK_wire\ <= SCK;
    \SS_wire\ <= SS;
    LEDG <= \LEDG_wire\;
    \mypll_inst.mypll_inst_pll_DYNAMICDELAY_wire\ <= \GNDG0\&\GNDG0\&\GNDG0\&\GNDG0\&\GNDG0\&\GNDG0\&\GNDG0\&\GNDG0\;

    \mypll_inst.mypll_inst_pll\ : PLL40
    generic map (
            DELAY_ADJUSTMENT_MODE_FEEDBACK => "FIXED",
            TEST_MODE => '0',
            SHIFTREG_DIV_MODE => "00",
            PLLOUT_SELECT => "GENCLK",
            FILTER_RANGE => "001",
            FEEDBACK_PATH => "SIMPLE",
            FDA_RELATIVE => "0000",
            FDA_FEEDBACK => "0000",
            ENABLE_ICEGATE => '0',
            DIVR => "0000",
            DIVQ => "100",
            DIVF => "0111111",
            DELAY_ADJUSTMENT_MODE_RELATIVE => "FIXED"
        )
    port map (
            PLLOUTGLOBAL => OPEN,
            SDI => \GNDG0\,
            BYPASS => \GNDG0\,
            RESETB => \N__890\,
            PLLOUTCORE => \mypll_inst.outclk\,
            LOCK => OPEN,
            SDO => OPEN,
            SCLK => \GNDG0\,
            LATCHINPUTVALUE => \GNDG0\,
            EXTFEEDBACK => \GNDG0\,
            DYNAMICDELAY => \mypll_inst.mypll_inst_pll_DYNAMICDELAY_wire\,
            PLLIN => \N__1286\
        );

    \mypll_inst.mypll_inst_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \VCCG0\,
            DIN => '0',
            DOUT => \N__1286\,
            PACKAGEPIN => clk_wire
        );

    \LEDR_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1272\,
            DIN => \N__1271\,
            DOUT => \N__1270\,
            PACKAGEPIN => \LEDR_wire\
        );

    \LEDR_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "010101"
        )
    port map (
            PADOEN => \N__1272\,
            PADOUT => \N__1271\,
            PADIN => \N__1270\,
            CLOCKENABLE => \N__1052\,
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__617\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => \N__938\
        );

    \MOSI_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1263\,
            DIN => \N__1262\,
            DOUT => \N__1261\,
            PACKAGEPIN => \MOSI_wire\
        );

    \MOSI_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000000"
        )
    port map (
            PADOEN => \N__1263\,
            PADOUT => \N__1262\,
            PADIN => \N__1261\,
            CLOCKENABLE => \VCCG0\,
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \spi.MOSI_latchedZ0\,
            DOUT0 => '0',
            INPUTCLK => \N__936\,
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \MISO_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1254\,
            DIN => \N__1253\,
            DOUT => \N__1252\,
            PACKAGEPIN => \MISO_wire\
        );

    \MISO_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__1254\,
            PADOUT => \N__1253\,
            PADIN => \N__1252\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__698\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \SCK_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1245\,
            DIN => \N__1244\,
            DOUT => \N__1243\,
            PACKAGEPIN => \SCK_wire\
        );

    \SCK_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__1245\,
            PADOUT => \N__1244\,
            PADIN => \N__1243\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \SCK_c\,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \SS_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1236\,
            DIN => \N__1235\,
            DOUT => \N__1234\,
            PACKAGEPIN => \SS_wire\
        );

    \SS_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__1236\,
            PADOUT => \N__1235\,
            PADIN => \N__1234\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \SS_c\,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \LEDG_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1227\,
            DIN => \N__1226\,
            DOUT => \N__1225\,
            PACKAGEPIN => \LEDG_wire\
        );

    \LEDG_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "010101"
        )
    port map (
            PADOEN => \N__1227\,
            PADOUT => \N__1226\,
            PADIN => \N__1225\,
            CLOCKENABLE => \N__1048\,
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__824\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => \N__937\
        );

    \I__259\ : CascadeMux
    port map (
            O => \N__1208\,
            I => \N__1203\
        );

    \I__258\ : InMux
    port map (
            O => \N__1207\,
            I => \N__1199\
        );

    \I__257\ : InMux
    port map (
            O => \N__1206\,
            I => \N__1192\
        );

    \I__256\ : InMux
    port map (
            O => \N__1203\,
            I => \N__1192\
        );

    \I__255\ : InMux
    port map (
            O => \N__1202\,
            I => \N__1192\
        );

    \I__254\ : LocalMux
    port map (
            O => \N__1199\,
            I => \spi.indexZ0Z_0\
        );

    \I__253\ : LocalMux
    port map (
            O => \N__1192\,
            I => \spi.indexZ0Z_0\
        );

    \I__252\ : CEMux
    port map (
            O => \N__1187\,
            I => \N__1182\
        );

    \I__251\ : CEMux
    port map (
            O => \N__1186\,
            I => \N__1179\
        );

    \I__250\ : CascadeMux
    port map (
            O => \N__1185\,
            I => \N__1168\
        );

    \I__249\ : LocalMux
    port map (
            O => \N__1182\,
            I => \N__1161\
        );

    \I__248\ : LocalMux
    port map (
            O => \N__1179\,
            I => \N__1158\
        );

    \I__247\ : InMux
    port map (
            O => \N__1178\,
            I => \N__1153\
        );

    \I__246\ : InMux
    port map (
            O => \N__1177\,
            I => \N__1153\
        );

    \I__245\ : InMux
    port map (
            O => \N__1176\,
            I => \N__1140\
        );

    \I__244\ : InMux
    port map (
            O => \N__1175\,
            I => \N__1140\
        );

    \I__243\ : InMux
    port map (
            O => \N__1174\,
            I => \N__1140\
        );

    \I__242\ : InMux
    port map (
            O => \N__1173\,
            I => \N__1140\
        );

    \I__241\ : InMux
    port map (
            O => \N__1172\,
            I => \N__1140\
        );

    \I__240\ : InMux
    port map (
            O => \N__1171\,
            I => \N__1140\
        );

    \I__239\ : InMux
    port map (
            O => \N__1168\,
            I => \N__1137\
        );

    \I__238\ : InMux
    port map (
            O => \N__1167\,
            I => \N__1128\
        );

    \I__237\ : InMux
    port map (
            O => \N__1166\,
            I => \N__1128\
        );

    \I__236\ : InMux
    port map (
            O => \N__1165\,
            I => \N__1128\
        );

    \I__235\ : InMux
    port map (
            O => \N__1164\,
            I => \N__1128\
        );

    \I__234\ : Odrv12
    port map (
            O => \N__1161\,
            I => \spi.RxdData_0_sqmuxa\
        );

    \I__233\ : Odrv12
    port map (
            O => \N__1158\,
            I => \spi.RxdData_0_sqmuxa\
        );

    \I__232\ : LocalMux
    port map (
            O => \N__1153\,
            I => \spi.RxdData_0_sqmuxa\
        );

    \I__231\ : LocalMux
    port map (
            O => \N__1140\,
            I => \spi.RxdData_0_sqmuxa\
        );

    \I__230\ : LocalMux
    port map (
            O => \N__1137\,
            I => \spi.RxdData_0_sqmuxa\
        );

    \I__229\ : LocalMux
    port map (
            O => \N__1128\,
            I => \spi.RxdData_0_sqmuxa\
        );

    \I__228\ : InMux
    port map (
            O => \N__1115\,
            I => \N__1111\
        );

    \I__227\ : InMux
    port map (
            O => \N__1114\,
            I => \N__1108\
        );

    \I__226\ : LocalMux
    port map (
            O => \N__1111\,
            I => \spi.un1_SPI_DONE_0_sqmuxa_1_0\
        );

    \I__225\ : LocalMux
    port map (
            O => \N__1108\,
            I => \spi.un1_SPI_DONE_0_sqmuxa_1_0\
        );

    \I__224\ : CascadeMux
    port map (
            O => \N__1103\,
            I => \N__1100\
        );

    \I__223\ : InMux
    port map (
            O => \N__1100\,
            I => \N__1095\
        );

    \I__222\ : InMux
    port map (
            O => \N__1099\,
            I => \N__1092\
        );

    \I__221\ : InMux
    port map (
            O => \N__1098\,
            I => \N__1089\
        );

    \I__220\ : LocalMux
    port map (
            O => \N__1095\,
            I => \N__1086\
        );

    \I__219\ : LocalMux
    port map (
            O => \N__1092\,
            I => \spi.indexZ0Z_1\
        );

    \I__218\ : LocalMux
    port map (
            O => \N__1089\,
            I => \spi.indexZ0Z_1\
        );

    \I__217\ : Odrv12
    port map (
            O => \N__1086\,
            I => \spi.indexZ0Z_1\
        );

    \I__216\ : InMux
    port map (
            O => \N__1079\,
            I => \N__1073\
        );

    \I__215\ : InMux
    port map (
            O => \N__1078\,
            I => \N__1073\
        );

    \I__214\ : LocalMux
    port map (
            O => \N__1073\,
            I => \spi.SCLK_oldZ0\
        );

    \I__213\ : InMux
    port map (
            O => \N__1070\,
            I => \N__1066\
        );

    \I__212\ : InMux
    port map (
            O => \N__1069\,
            I => \N__1063\
        );

    \I__211\ : LocalMux
    port map (
            O => \N__1066\,
            I => \spi.SS_oldZ0\
        );

    \I__210\ : LocalMux
    port map (
            O => \N__1063\,
            I => \spi.SS_oldZ0\
        );

    \I__209\ : InMux
    port map (
            O => \N__1058\,
            I => \N__1055\
        );

    \I__208\ : LocalMux
    port map (
            O => \N__1055\,
            I => \spi.SPI_DONE_0_sqmuxa\
        );

    \I__207\ : CEMux
    port map (
            O => \N__1052\,
            I => \N__1049\
        );

    \I__206\ : LocalMux
    port map (
            O => \N__1049\,
            I => \N__1045\
        );

    \I__205\ : CEMux
    port map (
            O => \N__1048\,
            I => \N__1042\
        );

    \I__204\ : IoSpan4Mux
    port map (
            O => \N__1045\,
            I => \N__1039\
        );

    \I__203\ : LocalMux
    port map (
            O => \N__1042\,
            I => \N__1036\
        );

    \I__202\ : Span4Mux_s1_v
    port map (
            O => \N__1039\,
            I => \N__1032\
        );

    \I__201\ : Span4Mux_s1_v
    port map (
            O => \N__1036\,
            I => \N__1029\
        );

    \I__200\ : CascadeMux
    port map (
            O => \N__1035\,
            I => \N__1025\
        );

    \I__199\ : Span4Mux_h
    port map (
            O => \N__1032\,
            I => \N__1020\
        );

    \I__198\ : Span4Mux_h
    port map (
            O => \N__1029\,
            I => \N__1020\
        );

    \I__197\ : InMux
    port map (
            O => \N__1028\,
            I => \N__1015\
        );

    \I__196\ : InMux
    port map (
            O => \N__1025\,
            I => \N__1015\
        );

    \I__195\ : Odrv4
    port map (
            O => \N__1020\,
            I => done
        );

    \I__194\ : LocalMux
    port map (
            O => \N__1015\,
            I => done
        );

    \I__193\ : InMux
    port map (
            O => \N__1010\,
            I => \N__1007\
        );

    \I__192\ : LocalMux
    port map (
            O => \N__1007\,
            I => \sendDataZ0\
        );

    \I__191\ : InMux
    port map (
            O => \N__1004\,
            I => \N__1001\
        );

    \I__190\ : LocalMux
    port map (
            O => \N__1001\,
            I => \N__998\
        );

    \I__189\ : Span4Mux_h
    port map (
            O => \N__998\,
            I => \N__995\
        );

    \I__188\ : Odrv4
    port map (
            O => \N__995\,
            I => \SS_c\
        );

    \I__187\ : InMux
    port map (
            O => \N__992\,
            I => \N__983\
        );

    \I__186\ : InMux
    port map (
            O => \N__991\,
            I => \N__983\
        );

    \I__185\ : InMux
    port map (
            O => \N__990\,
            I => \N__976\
        );

    \I__184\ : InMux
    port map (
            O => \N__989\,
            I => \N__976\
        );

    \I__183\ : InMux
    port map (
            O => \N__988\,
            I => \N__976\
        );

    \I__182\ : LocalMux
    port map (
            O => \N__983\,
            I => \spi.SS_latchedZ0\
        );

    \I__181\ : LocalMux
    port map (
            O => \N__976\,
            I => \spi.SS_latchedZ0\
        );

    \I__180\ : InMux
    port map (
            O => \N__971\,
            I => \N__968\
        );

    \I__179\ : LocalMux
    port map (
            O => \N__968\,
            I => \N__965\
        );

    \I__178\ : IoSpan4Mux
    port map (
            O => \N__965\,
            I => \N__962\
        );

    \I__177\ : IoSpan4Mux
    port map (
            O => \N__962\,
            I => \N__959\
        );

    \I__176\ : Odrv4
    port map (
            O => \N__959\,
            I => \SCK_c\
        );

    \I__175\ : InMux
    port map (
            O => \N__956\,
            I => \N__953\
        );

    \I__174\ : LocalMux
    port map (
            O => \N__953\,
            I => \N__948\
        );

    \I__173\ : InMux
    port map (
            O => \N__952\,
            I => \N__943\
        );

    \I__172\ : InMux
    port map (
            O => \N__951\,
            I => \N__943\
        );

    \I__171\ : Odrv4
    port map (
            O => \N__948\,
            I => \spi.SCLK_latchedZ0\
        );

    \I__170\ : LocalMux
    port map (
            O => \N__943\,
            I => \spi.SCLK_latchedZ0\
        );

    \I__169\ : ClkMux
    port map (
            O => \N__938\,
            I => \N__896\
        );

    \I__168\ : ClkMux
    port map (
            O => \N__937\,
            I => \N__896\
        );

    \I__167\ : ClkMux
    port map (
            O => \N__936\,
            I => \N__896\
        );

    \I__166\ : ClkMux
    port map (
            O => \N__935\,
            I => \N__896\
        );

    \I__165\ : ClkMux
    port map (
            O => \N__934\,
            I => \N__896\
        );

    \I__164\ : ClkMux
    port map (
            O => \N__933\,
            I => \N__896\
        );

    \I__163\ : ClkMux
    port map (
            O => \N__932\,
            I => \N__896\
        );

    \I__162\ : ClkMux
    port map (
            O => \N__931\,
            I => \N__896\
        );

    \I__161\ : ClkMux
    port map (
            O => \N__930\,
            I => \N__896\
        );

    \I__160\ : ClkMux
    port map (
            O => \N__929\,
            I => \N__896\
        );

    \I__159\ : ClkMux
    port map (
            O => \N__928\,
            I => \N__896\
        );

    \I__158\ : ClkMux
    port map (
            O => \N__927\,
            I => \N__896\
        );

    \I__157\ : ClkMux
    port map (
            O => \N__926\,
            I => \N__896\
        );

    \I__156\ : ClkMux
    port map (
            O => \N__925\,
            I => \N__896\
        );

    \I__155\ : GlobalMux
    port map (
            O => \N__896\,
            I => \N__893\
        );

    \I__154\ : gio2CtrlBuf
    port map (
            O => \N__893\,
            I => outclk_g
        );

    \I__153\ : IoInMux
    port map (
            O => \N__890\,
            I => \N__887\
        );

    \I__152\ : LocalMux
    port map (
            O => \N__887\,
            I => \N__884\
        );

    \I__151\ : Span4Mux_s0_v
    port map (
            O => \N__884\,
            I => \N__881\
        );

    \I__150\ : Odrv4
    port map (
            O => \N__881\,
            I => \CONSTANT_ONE_NET\
        );

    \I__149\ : CascadeMux
    port map (
            O => \N__878\,
            I => \spi.SPI_DONE_0_sqmuxa_2_cascade_\
        );

    \I__148\ : CascadeMux
    port map (
            O => \N__875\,
            I => \spi.SPI_DONE_0_sqmuxa_cascade_\
        );

    \I__147\ : CascadeMux
    port map (
            O => \N__872\,
            I => \spi.un1_SPI_DONE_0_sqmuxa_1_0_cascade_\
        );

    \I__146\ : CascadeMux
    port map (
            O => \N__869\,
            I => \spi.CO1_0_1_cascade_\
        );

    \I__145\ : InMux
    port map (
            O => \N__866\,
            I => \N__860\
        );

    \I__144\ : InMux
    port map (
            O => \N__865\,
            I => \N__860\
        );

    \I__143\ : LocalMux
    port map (
            O => \N__860\,
            I => \spi.indexZ0Z_2\
        );

    \I__142\ : CascadeMux
    port map (
            O => \N__857\,
            I => \spi.RxdData_0_sqmuxa_cascade_\
        );

    \I__141\ : SRMux
    port map (
            O => \N__854\,
            I => \N__850\
        );

    \I__140\ : SRMux
    port map (
            O => \N__853\,
            I => \N__847\
        );

    \I__139\ : LocalMux
    port map (
            O => \N__850\,
            I => \N__844\
        );

    \I__138\ : LocalMux
    port map (
            O => \N__847\,
            I => \N__841\
        );

    \I__137\ : Span4Mux_s1_v
    port map (
            O => \N__844\,
            I => \N__838\
        );

    \I__136\ : Span4Mux_h
    port map (
            O => \N__841\,
            I => \N__835\
        );

    \I__135\ : Odrv4
    port map (
            O => \N__838\,
            I => \spi.TxData_5_sn_N_2\
        );

    \I__134\ : Odrv4
    port map (
            O => \N__835\,
            I => \spi.TxData_5_sn_N_2\
        );

    \I__133\ : InMux
    port map (
            O => \N__830\,
            I => \N__827\
        );

    \I__132\ : LocalMux
    port map (
            O => \N__827\,
            I => \spi.MOSI_latchedZ0\
        );

    \I__131\ : IoInMux
    port map (
            O => \N__824\,
            I => \N__821\
        );

    \I__130\ : LocalMux
    port map (
            O => \N__821\,
            I => \N__817\
        );

    \I__129\ : InMux
    port map (
            O => \N__820\,
            I => \N__813\
        );

    \I__128\ : Span4Mux_s0_v
    port map (
            O => \N__817\,
            I => \N__810\
        );

    \I__127\ : InMux
    port map (
            O => \N__816\,
            I => \N__807\
        );

    \I__126\ : LocalMux
    port map (
            O => \N__813\,
            I => \N__804\
        );

    \I__125\ : Odrv4
    port map (
            O => \N__810\,
            I => rx_0
        );

    \I__124\ : LocalMux
    port map (
            O => \N__807\,
            I => rx_0
        );

    \I__123\ : Odrv4
    port map (
            O => \N__804\,
            I => rx_0
        );

    \I__122\ : InMux
    port map (
            O => \N__797\,
            I => \N__793\
        );

    \I__121\ : InMux
    port map (
            O => \N__796\,
            I => \N__790\
        );

    \I__120\ : LocalMux
    port map (
            O => \N__793\,
            I => rx_2
        );

    \I__119\ : LocalMux
    port map (
            O => \N__790\,
            I => rx_2
        );

    \I__118\ : InMux
    port map (
            O => \N__785\,
            I => \N__781\
        );

    \I__117\ : InMux
    port map (
            O => \N__784\,
            I => \N__778\
        );

    \I__116\ : LocalMux
    port map (
            O => \N__781\,
            I => rx_3
        );

    \I__115\ : LocalMux
    port map (
            O => \N__778\,
            I => rx_3
        );

    \I__114\ : InMux
    port map (
            O => \N__773\,
            I => \N__769\
        );

    \I__113\ : InMux
    port map (
            O => \N__772\,
            I => \N__766\
        );

    \I__112\ : LocalMux
    port map (
            O => \N__769\,
            I => rx_4
        );

    \I__111\ : LocalMux
    port map (
            O => \N__766\,
            I => rx_4
        );

    \I__110\ : InMux
    port map (
            O => \N__761\,
            I => \N__757\
        );

    \I__109\ : InMux
    port map (
            O => \N__760\,
            I => \N__754\
        );

    \I__108\ : LocalMux
    port map (
            O => \N__757\,
            I => rx_1
        );

    \I__107\ : LocalMux
    port map (
            O => \N__754\,
            I => rx_1
        );

    \I__106\ : InMux
    port map (
            O => \N__749\,
            I => \N__745\
        );

    \I__105\ : InMux
    port map (
            O => \N__748\,
            I => \N__742\
        );

    \I__104\ : LocalMux
    port map (
            O => \N__745\,
            I => rx_5
        );

    \I__103\ : LocalMux
    port map (
            O => \N__742\,
            I => rx_5
        );

    \I__102\ : InMux
    port map (
            O => \N__737\,
            I => \N__733\
        );

    \I__101\ : InMux
    port map (
            O => \N__736\,
            I => \N__730\
        );

    \I__100\ : LocalMux
    port map (
            O => \N__733\,
            I => rx_6
        );

    \I__99\ : LocalMux
    port map (
            O => \N__730\,
            I => rx_6
        );

    \I__98\ : InMux
    port map (
            O => \N__725\,
            I => \N__722\
        );

    \I__97\ : LocalMux
    port map (
            O => \N__722\,
            I => \txZ0Z_6\
        );

    \I__96\ : InMux
    port map (
            O => \N__719\,
            I => \N__716\
        );

    \I__95\ : LocalMux
    port map (
            O => \N__716\,
            I => \N__713\
        );

    \I__94\ : Odrv4
    port map (
            O => \N__713\,
            I => \spi.TxDataZ0Z_5\
        );

    \I__93\ : InMux
    port map (
            O => \N__710\,
            I => \N__707\
        );

    \I__92\ : LocalMux
    port map (
            O => \N__707\,
            I => \txZ0Z_7\
        );

    \I__91\ : InMux
    port map (
            O => \N__704\,
            I => \N__701\
        );

    \I__90\ : LocalMux
    port map (
            O => \N__701\,
            I => \spi.TxDataZ0Z_6\
        );

    \I__89\ : IoInMux
    port map (
            O => \N__698\,
            I => \N__695\
        );

    \I__88\ : LocalMux
    port map (
            O => \N__695\,
            I => \N__692\
        );

    \I__87\ : Span4Mux_s0_v
    port map (
            O => \N__692\,
            I => \N__689\
        );

    \I__86\ : Span4Mux_h
    port map (
            O => \N__689\,
            I => \N__686\
        );

    \I__85\ : Odrv4
    port map (
            O => \N__686\,
            I => \MISO_c\
        );

    \I__84\ : InMux
    port map (
            O => \N__683\,
            I => \N__680\
        );

    \I__83\ : LocalMux
    port map (
            O => \N__680\,
            I => \txZ0Z_0\
        );

    \I__82\ : InMux
    port map (
            O => \N__677\,
            I => \N__674\
        );

    \I__81\ : LocalMux
    port map (
            O => \N__674\,
            I => \txZ0Z_5\
        );

    \I__80\ : InMux
    port map (
            O => \N__671\,
            I => \N__668\
        );

    \I__79\ : LocalMux
    port map (
            O => \N__668\,
            I => \txZ0Z_4\
        );

    \I__78\ : InMux
    port map (
            O => \N__665\,
            I => \N__662\
        );

    \I__77\ : LocalMux
    port map (
            O => \N__662\,
            I => \spi.TxDataZ0Z_4\
        );

    \I__76\ : InMux
    port map (
            O => \N__659\,
            I => \N__656\
        );

    \I__75\ : LocalMux
    port map (
            O => \N__656\,
            I => \txZ0Z_3\
        );

    \I__74\ : InMux
    port map (
            O => \N__653\,
            I => \N__650\
        );

    \I__73\ : LocalMux
    port map (
            O => \N__650\,
            I => \spi.TxDataZ0Z_3\
        );

    \I__72\ : InMux
    port map (
            O => \N__647\,
            I => \N__644\
        );

    \I__71\ : LocalMux
    port map (
            O => \N__644\,
            I => \txZ0Z_1\
        );

    \I__70\ : InMux
    port map (
            O => \N__641\,
            I => \N__638\
        );

    \I__69\ : LocalMux
    port map (
            O => \N__638\,
            I => \spi.TxDataZ0Z_0\
        );

    \I__68\ : InMux
    port map (
            O => \N__635\,
            I => \N__632\
        );

    \I__67\ : LocalMux
    port map (
            O => \N__632\,
            I => \txZ0Z_2\
        );

    \I__66\ : InMux
    port map (
            O => \N__629\,
            I => \N__626\
        );

    \I__65\ : LocalMux
    port map (
            O => \N__626\,
            I => \spi.TxDataZ0Z_1\
        );

    \I__64\ : InMux
    port map (
            O => \N__623\,
            I => \N__620\
        );

    \I__63\ : LocalMux
    port map (
            O => \N__620\,
            I => \spi.TxDataZ0Z_2\
        );

    \I__62\ : IoInMux
    port map (
            O => \N__617\,
            I => \N__614\
        );

    \I__61\ : LocalMux
    port map (
            O => \N__614\,
            I => \N__611\
        );

    \I__60\ : Span4Mux_s0_v
    port map (
            O => \N__611\,
            I => \N__608\
        );

    \I__59\ : Span4Mux_h
    port map (
            O => \N__608\,
            I => \N__604\
        );

    \I__58\ : InMux
    port map (
            O => \N__607\,
            I => \N__601\
        );

    \I__57\ : Odrv4
    port map (
            O => \N__604\,
            I => rx_7
        );

    \I__56\ : LocalMux
    port map (
            O => \N__601\,
            I => rx_7
        );

    \I__55\ : IoInMux
    port map (
            O => \N__596\,
            I => \N__593\
        );

    \I__54\ : LocalMux
    port map (
            O => \N__593\,
            I => \N__590\
        );

    \I__53\ : Span12Mux_s8_v
    port map (
            O => \N__590\,
            I => \N__587\
        );

    \I__52\ : Span12Mux_v
    port map (
            O => \N__587\,
            I => \N__584\
        );

    \I__51\ : Odrv12
    port map (
            O => \N__584\,
            I => \mypll_inst.outclk\
        );

    \mypll_inst.PLLOUTCORE_derived_clock_RNIF7IB\ : ICE_GB
    port map (
            USERSIGNALTOGLOBALBUFFER => \N__596\,
            GLOBALBUFFEROUTPUT => outclk_g
        );

    \VCC\ : VCC
    port map (
            Y => \VCCG0\
        );

    \GND\ : GND
    port map (
            Y => \GNDG0\
        );

    \GND_Inst\ : GND
    port map (
            Y => \_gnd_net_\
        );

    \tx_5_LC_10_28_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__749\,
            lcout => \txZ0Z_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__929\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tx_1_LC_10_28_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__761\,
            lcout => \txZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__929\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tx_4_LC_10_29_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__773\,
            lcout => \txZ0Z_4\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__932\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tx_3_LC_10_29_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__785\,
            lcout => \txZ0Z_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__932\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tx_2_LC_10_29_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__797\,
            lcout => \txZ0Z_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__932\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tx_6_LC_10_30_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__737\,
            lcout => \txZ0Z_6\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__935\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tx_7_LC_10_30_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__607\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \txZ0Z_7\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__935\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.TxData_5_LC_11_28_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__1176\,
            in1 => \N__677\,
            in2 => \_gnd_net_\,
            in3 => \N__665\,
            lcout => \spi.TxDataZ0Z_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__927\,
            ce => 'H',
            sr => \N__853\
        );

    \spi.TxData_4_LC_11_28_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__671\,
            in1 => \N__653\,
            in2 => \_gnd_net_\,
            in3 => \N__1175\,
            lcout => \spi.TxDataZ0Z_4\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__927\,
            ce => 'H',
            sr => \N__853\
        );

    \spi.TxData_0_LC_11_28_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__683\,
            in2 => \_gnd_net_\,
            in3 => \N__1171\,
            lcout => \spi.TxDataZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__927\,
            ce => 'H',
            sr => \N__853\
        );

    \spi.TxData_3_LC_11_28_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__659\,
            in1 => \N__623\,
            in2 => \_gnd_net_\,
            in3 => \N__1174\,
            lcout => \spi.TxDataZ0Z_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__927\,
            ce => 'H',
            sr => \N__853\
        );

    \spi.TxData_1_LC_11_28_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__1172\,
            in1 => \N__647\,
            in2 => \_gnd_net_\,
            in3 => \N__641\,
            lcout => \spi.TxDataZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__927\,
            ce => 'H',
            sr => \N__853\
        );

    \spi.TxData_2_LC_11_28_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__635\,
            in1 => \N__629\,
            in2 => \_gnd_net_\,
            in3 => \N__1173\,
            lcout => \spi.TxDataZ0Z_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__927\,
            ce => 'H',
            sr => \N__853\
        );

    \spi.RxdData_3_LC_11_29_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__796\,
            lcout => rx_3,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__930\,
            ce => \N__1186\,
            sr => \_gnd_net_\
        );

    \spi.RxdData_7_LC_11_29_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__736\,
            lcout => rx_7,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__930\,
            ce => \N__1186\,
            sr => \_gnd_net_\
        );

    \spi.RxdData_2_LC_11_29_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__760\,
            lcout => rx_2,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__930\,
            ce => \N__1186\,
            sr => \_gnd_net_\
        );

    \spi.RxdData_4_LC_11_29_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__784\,
            lcout => rx_4,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__930\,
            ce => \N__1186\,
            sr => \_gnd_net_\
        );

    \spi.RxdData_5_LC_11_29_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__772\,
            lcout => rx_5,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__930\,
            ce => \N__1186\,
            sr => \_gnd_net_\
        );

    \spi.RxdData_1_LC_11_29_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__816\,
            lcout => rx_1,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__930\,
            ce => \N__1186\,
            sr => \_gnd_net_\
        );

    \spi.RxdData_6_LC_11_29_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__748\,
            lcout => rx_6,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__930\,
            ce => \N__1186\,
            sr => \_gnd_net_\
        );

    \spi.TxData_6_LC_11_30_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__725\,
            in1 => \N__719\,
            in2 => \_gnd_net_\,
            in3 => \N__1177\,
            lcout => \spi.TxDataZ0Z_6\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__933\,
            ce => 'H',
            sr => \N__854\
        );

    \spi.TxData_7_LC_11_30_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__710\,
            in1 => \N__704\,
            in2 => \_gnd_net_\,
            in3 => \N__1178\,
            lcout => \MISO_c\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__933\,
            ce => 'H',
            sr => \N__854\
        );

    \tx_0_LC_12_28_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__820\,
            lcout => \txZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__925\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.index_RNI57R91_2_LC_12_29_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000001"
        )
    port map (
            in0 => \N__1202\,
            in1 => \N__989\,
            in2 => \N__1103\,
            in3 => \N__865\,
            lcout => OPEN,
            ltout => \spi.SPI_DONE_0_sqmuxa_2_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SCLK_old_RNI5H8V1_LC_12_29_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101000000000000"
        )
    port map (
            in0 => \N__1079\,
            in1 => \_gnd_net_\,
            in2 => \N__878\,
            in3 => \N__952\,
            lcout => \spi.SPI_DONE_0_sqmuxa\,
            ltout => \spi.SPI_DONE_0_sqmuxa_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SS_old_RNIBOQN3_LC_12_29_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000111000001011"
        )
    port map (
            in0 => \N__1165\,
            in1 => \N__1069\,
            in2 => \N__875\,
            in3 => \N__990\,
            lcout => \spi.un1_SPI_DONE_0_sqmuxa_1_0\,
            ltout => \spi.un1_SPI_DONE_0_sqmuxa_1_0_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.index_0_LC_12_29_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011111111001111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1206\,
            in2 => \N__872\,
            in3 => \N__1166\,
            lcout => \spi.indexZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__926\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.index_RNO_0_2_LC_12_29_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101010101011111"
        )
    port map (
            in0 => \N__1164\,
            in1 => \_gnd_net_\,
            in2 => \N__1208\,
            in3 => \N__1098\,
            lcout => OPEN,
            ltout => \spi.CO1_0_1_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.index_2_LC_12_29_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0110100111111111"
        )
    port map (
            in0 => \N__866\,
            in1 => \N__1167\,
            in2 => \N__869\,
            in3 => \N__1114\,
            lcout => \spi.indexZ0Z_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__926\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SCLK_old_RNIKH0V_LC_12_29_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000100010"
        )
    port map (
            in0 => \N__951\,
            in1 => \N__1078\,
            in2 => \_gnd_net_\,
            in3 => \N__988\,
            lcout => \spi.RxdData_0_sqmuxa\,
            ltout => \spi.RxdData_0_sqmuxa_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SCLK_old_RNIO5681_LC_12_29_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000010100000101"
        )
    port map (
            in0 => \N__1010\,
            in1 => \_gnd_net_\,
            in2 => \N__857\,
            in3 => \_gnd_net_\,
            lcout => \spi.TxData_5_sn_N_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.RxdData_0_LC_12_30_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__830\,
            lcout => rx_0,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__928\,
            ce => \N__1187\,
            sr => \_gnd_net_\
        );

    \spi.SS_old_LC_13_29_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__992\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \spi.SS_oldZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__931\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.index_1_LC_13_29_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1001101011111111"
        )
    port map (
            in0 => \N__1099\,
            in1 => \N__1207\,
            in2 => \N__1185\,
            in3 => \N__1115\,
            lcout => \spi.indexZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__931\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SCLK_old_LC_13_29_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__956\,
            lcout => \spi.SCLK_oldZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__931\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SPI_DONE_LC_13_29_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111111010100"
        )
    port map (
            in0 => \N__1070\,
            in1 => \N__991\,
            in2 => \N__1035\,
            in3 => \N__1058\,
            lcout => done,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__931\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \sendData_LC_13_29_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1028\,
            lcout => \sendDataZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__931\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SS_latched_LC_13_30_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1004\,
            lcout => \spi.SS_latchedZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__934\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SCLK_latched_LC_13_30_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__971\,
            lcout => \spi.SCLK_latchedZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__934\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \CONSTANT_ONE_LUT4_LC_13_30_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \CONSTANT_ONE_NET\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );
end \INTERFACE\;
