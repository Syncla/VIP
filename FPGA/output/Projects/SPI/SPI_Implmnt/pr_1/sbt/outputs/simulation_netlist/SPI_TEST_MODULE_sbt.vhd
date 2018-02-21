-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2017.08.27940

-- Build Date:         Sep 11 2017 17:29:57

-- File Generated:     Feb 5 2018 19:20:50

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

signal \N__1337\ : std_logic;
signal \N__1323\ : std_logic;
signal \N__1322\ : std_logic;
signal \N__1321\ : std_logic;
signal \N__1314\ : std_logic;
signal \N__1313\ : std_logic;
signal \N__1312\ : std_logic;
signal \N__1305\ : std_logic;
signal \N__1304\ : std_logic;
signal \N__1303\ : std_logic;
signal \N__1296\ : std_logic;
signal \N__1295\ : std_logic;
signal \N__1294\ : std_logic;
signal \N__1287\ : std_logic;
signal \N__1286\ : std_logic;
signal \N__1285\ : std_logic;
signal \N__1278\ : std_logic;
signal \N__1277\ : std_logic;
signal \N__1276\ : std_logic;
signal \N__1259\ : std_logic;
signal \N__1256\ : std_logic;
signal \N__1253\ : std_logic;
signal \N__1250\ : std_logic;
signal \N__1247\ : std_logic;
signal \N__1244\ : std_logic;
signal \N__1241\ : std_logic;
signal \N__1238\ : std_logic;
signal \N__1235\ : std_logic;
signal \N__1232\ : std_logic;
signal \N__1229\ : std_logic;
signal \N__1226\ : std_logic;
signal \N__1223\ : std_logic;
signal \N__1220\ : std_logic;
signal \N__1217\ : std_logic;
signal \N__1216\ : std_logic;
signal \N__1213\ : std_logic;
signal \N__1210\ : std_logic;
signal \N__1205\ : std_logic;
signal \N__1202\ : std_logic;
signal \N__1201\ : std_logic;
signal \N__1198\ : std_logic;
signal \N__1197\ : std_logic;
signal \N__1194\ : std_logic;
signal \N__1191\ : std_logic;
signal \N__1188\ : std_logic;
signal \N__1185\ : std_logic;
signal \N__1178\ : std_logic;
signal \N__1177\ : std_logic;
signal \N__1176\ : std_logic;
signal \N__1175\ : std_logic;
signal \N__1172\ : std_logic;
signal \N__1169\ : std_logic;
signal \N__1164\ : std_logic;
signal \N__1157\ : std_logic;
signal \N__1154\ : std_logic;
signal \N__1153\ : std_logic;
signal \N__1150\ : std_logic;
signal \N__1147\ : std_logic;
signal \N__1142\ : std_logic;
signal \N__1141\ : std_logic;
signal \N__1138\ : std_logic;
signal \N__1135\ : std_logic;
signal \N__1130\ : std_logic;
signal \N__1127\ : std_logic;
signal \N__1124\ : std_logic;
signal \N__1121\ : std_logic;
signal \N__1118\ : std_logic;
signal \N__1115\ : std_logic;
signal \N__1112\ : std_logic;
signal \N__1109\ : std_logic;
signal \N__1108\ : std_logic;
signal \N__1107\ : std_logic;
signal \N__1102\ : std_logic;
signal \N__1099\ : std_logic;
signal \N__1094\ : std_logic;
signal \N__1093\ : std_logic;
signal \N__1090\ : std_logic;
signal \N__1087\ : std_logic;
signal \N__1084\ : std_logic;
signal \N__1081\ : std_logic;
signal \N__1076\ : std_logic;
signal \N__1073\ : std_logic;
signal \N__1070\ : std_logic;
signal \N__1067\ : std_logic;
signal \N__1064\ : std_logic;
signal \N__1061\ : std_logic;
signal \N__1058\ : std_logic;
signal \N__1055\ : std_logic;
signal \N__1052\ : std_logic;
signal \N__1051\ : std_logic;
signal \N__1048\ : std_logic;
signal \N__1045\ : std_logic;
signal \N__1040\ : std_logic;
signal \N__1039\ : std_logic;
signal \N__1038\ : std_logic;
signal \N__1037\ : std_logic;
signal \N__1036\ : std_logic;
signal \N__1035\ : std_logic;
signal \N__1034\ : std_logic;
signal \N__1033\ : std_logic;
signal \N__1032\ : std_logic;
signal \N__1031\ : std_logic;
signal \N__1030\ : std_logic;
signal \N__1007\ : std_logic;
signal \N__1004\ : std_logic;
signal \N__1001\ : std_logic;
signal \N__1000\ : std_logic;
signal \N__997\ : std_logic;
signal \N__994\ : std_logic;
signal \N__991\ : std_logic;
signal \N__988\ : std_logic;
signal \N__987\ : std_logic;
signal \N__986\ : std_logic;
signal \N__985\ : std_logic;
signal \N__984\ : std_logic;
signal \N__983\ : std_logic;
signal \N__982\ : std_logic;
signal \N__981\ : std_logic;
signal \N__980\ : std_logic;
signal \N__979\ : std_logic;
signal \N__978\ : std_logic;
signal \N__977\ : std_logic;
signal \N__976\ : std_logic;
signal \N__975\ : std_logic;
signal \N__972\ : std_logic;
signal \N__969\ : std_logic;
signal \N__966\ : std_logic;
signal \N__961\ : std_logic;
signal \N__948\ : std_logic;
signal \N__943\ : std_logic;
signal \N__940\ : std_logic;
signal \N__937\ : std_logic;
signal \N__920\ : std_logic;
signal \N__919\ : std_logic;
signal \N__916\ : std_logic;
signal \N__913\ : std_logic;
signal \N__908\ : std_logic;
signal \N__907\ : std_logic;
signal \N__904\ : std_logic;
signal \N__901\ : std_logic;
signal \N__896\ : std_logic;
signal \N__895\ : std_logic;
signal \N__892\ : std_logic;
signal \N__889\ : std_logic;
signal \N__884\ : std_logic;
signal \N__883\ : std_logic;
signal \N__880\ : std_logic;
signal \N__877\ : std_logic;
signal \N__872\ : std_logic;
signal \N__869\ : std_logic;
signal \N__866\ : std_logic;
signal \N__865\ : std_logic;
signal \N__864\ : std_logic;
signal \N__863\ : std_logic;
signal \N__860\ : std_logic;
signal \N__857\ : std_logic;
signal \N__854\ : std_logic;
signal \N__851\ : std_logic;
signal \N__842\ : std_logic;
signal \N__839\ : std_logic;
signal \N__836\ : std_logic;
signal \N__833\ : std_logic;
signal \N__830\ : std_logic;
signal \N__827\ : std_logic;
signal \N__824\ : std_logic;
signal \N__821\ : std_logic;
signal \N__818\ : std_logic;
signal \N__815\ : std_logic;
signal \N__812\ : std_logic;
signal \N__809\ : std_logic;
signal \N__806\ : std_logic;
signal \N__803\ : std_logic;
signal \N__800\ : std_logic;
signal \N__797\ : std_logic;
signal \N__794\ : std_logic;
signal \N__791\ : std_logic;
signal \N__788\ : std_logic;
signal \N__785\ : std_logic;
signal \N__782\ : std_logic;
signal \N__779\ : std_logic;
signal \N__776\ : std_logic;
signal \N__773\ : std_logic;
signal \N__770\ : std_logic;
signal \N__767\ : std_logic;
signal \N__764\ : std_logic;
signal \N__761\ : std_logic;
signal \N__758\ : std_logic;
signal \N__755\ : std_logic;
signal \N__752\ : std_logic;
signal \N__751\ : std_logic;
signal \N__750\ : std_logic;
signal \N__749\ : std_logic;
signal \N__748\ : std_logic;
signal \N__741\ : std_logic;
signal \N__736\ : std_logic;
signal \N__731\ : std_logic;
signal \N__730\ : std_logic;
signal \N__727\ : std_logic;
signal \N__724\ : std_logic;
signal \N__719\ : std_logic;
signal \N__718\ : std_logic;
signal \N__715\ : std_logic;
signal \N__712\ : std_logic;
signal \N__707\ : std_logic;
signal \N__706\ : std_logic;
signal \N__703\ : std_logic;
signal \N__700\ : std_logic;
signal \N__695\ : std_logic;
signal \N__692\ : std_logic;
signal \N__689\ : std_logic;
signal \N__686\ : std_logic;
signal \N__683\ : std_logic;
signal \N__680\ : std_logic;
signal \N__677\ : std_logic;
signal \N__674\ : std_logic;
signal \N__673\ : std_logic;
signal \N__672\ : std_logic;
signal \N__669\ : std_logic;
signal \N__664\ : std_logic;
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
signal \N__610\ : std_logic;
signal \N__607\ : std_logic;
signal \N__604\ : std_logic;
signal \N__599\ : std_logic;
signal \N__596\ : std_logic;
signal \mypll_inst.outclk\ : std_logic;
signal \VCCG0\ : std_logic;
signal \GNDG0\ : std_logic;
signal \CONSTANT_ONE_NET\ : std_logic;
signal \spi.TxDataZ0Z_0\ : std_logic;
signal \LEDG_c\ : std_logic;
signal \txZ0Z_1\ : std_logic;
signal \spi.un3_ss_old_cascade_\ : std_logic;
signal \spi.RxdData_0_sqmuxa_cascade_\ : std_logic;
signal \LEDR_c\ : std_logic;
signal \spi.SPI_DONE_0_sqmuxa_2_cascade_\ : std_logic;
signal \spi.SPI_DONE_0_sqmuxa\ : std_logic;
signal \spi.SPI_DONE_0_sqmuxa_cascade_\ : std_logic;
signal \spi.un1_SPI_DONE_0_sqmuxa_1_0_cascade_\ : std_logic;
signal \SS_c\ : std_logic;
signal \spi.SS_latchedZ0\ : std_logic;
signal \spi.SS_oldZ0\ : std_logic;
signal \spi.SCLK_oldZ0\ : std_logic;
signal rx_4 : std_logic;
signal rx_3 : std_logic;
signal rx_6 : std_logic;
signal rx_5 : std_logic;
signal rx_2 : std_logic;
signal rx_7 : std_logic;
signal done : std_logic;
signal \txZ0Z_5\ : std_logic;
signal \txZ0Z_7\ : std_logic;
signal \MISO_c\ : std_logic;
signal \txZ0Z_4\ : std_logic;
signal \spi.TxDataZ0Z_4\ : std_logic;
signal \txZ0Z_3\ : std_logic;
signal \spi.TxDataZ0Z_3\ : std_logic;
signal \txZ0Z_6\ : std_logic;
signal \spi.TxDataZ0Z_5\ : std_logic;
signal \spi.TxDataZ0Z_6\ : std_logic;
signal \txZ0Z_2\ : std_logic;
signal \spi.TxDataZ0Z_1\ : std_logic;
signal \spi.TxDataZ0Z_2\ : std_logic;
signal \spi.TxData_1_sqmuxa_i\ : std_logic;
signal \spi.indexZ0Z_1\ : std_logic;
signal \spi.indexZ0Z_0\ : std_logic;
signal \spi.CO1_0_1_cascade_\ : std_logic;
signal \spi.un1_SPI_DONE_0_sqmuxa_1_0\ : std_logic;
signal \spi.indexZ0Z_2\ : std_logic;
signal \SCK_c\ : std_logic;
signal \spi.SCLK_latchedZ0\ : std_logic;
signal rx_1 : std_logic;
signal \spi.MOSI_latchedZ0\ : std_logic;
signal rx_0 : std_logic;
signal outclk_g : std_logic;
signal \spi.RxdData_0_sqmuxa\ : std_logic;
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
            RESETB => \N__644\,
            PLLOUTCORE => \mypll_inst.outclk\,
            LOCK => OPEN,
            SDO => OPEN,
            SCLK => \GNDG0\,
            LATCHINPUTVALUE => \GNDG0\,
            EXTFEEDBACK => \GNDG0\,
            DYNAMICDELAY => \mypll_inst.mypll_inst_pll_DYNAMICDELAY_wire\,
            PLLIN => \N__1337\
        );

    \mypll_inst.mypll_inst_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \VCCG0\,
            DIN => '0',
            DOUT => \N__1337\,
            PACKAGEPIN => clk_wire
        );

    \LEDR_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1323\,
            DIN => \N__1322\,
            DOUT => \N__1321\,
            PACKAGEPIN => \LEDR_wire\
        );

    \LEDR_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__1323\,
            PADOUT => \N__1322\,
            PADIN => \N__1321\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__689\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \MOSI_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1314\,
            DIN => \N__1313\,
            DOUT => \N__1312\,
            PACKAGEPIN => \MOSI_wire\
        );

    \MOSI_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000000"
        )
    port map (
            PADOEN => \N__1314\,
            PADOUT => \N__1313\,
            PADIN => \N__1312\,
            CLOCKENABLE => \VCCG0\,
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \spi.MOSI_latchedZ0\,
            DOUT0 => '0',
            INPUTCLK => \N__1040\,
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
            OE => \N__1305\,
            DIN => \N__1304\,
            DOUT => \N__1303\,
            PACKAGEPIN => \MISO_wire\
        );

    \MISO_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__1305\,
            PADOUT => \N__1304\,
            PADIN => \N__1303\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__830\,
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
            OE => \N__1296\,
            DIN => \N__1295\,
            DOUT => \N__1294\,
            PACKAGEPIN => \SCK_wire\
        );

    \SCK_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__1296\,
            PADOUT => \N__1295\,
            PADIN => \N__1294\,
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
            OE => \N__1287\,
            DIN => \N__1286\,
            DOUT => \N__1285\,
            PACKAGEPIN => \SS_wire\
        );

    \SS_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__1287\,
            PADOUT => \N__1286\,
            PADIN => \N__1285\,
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
            OE => \N__1278\,
            DIN => \N__1277\,
            DOUT => \N__1276\,
            PACKAGEPIN => \LEDG_wire\
        );

    \LEDG_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__1278\,
            PADOUT => \N__1277\,
            PADIN => \N__1276\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__626\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I__273\ : CascadeMux
    port map (
            O => \N__1259\,
            I => \N__1256\
        );

    \I__272\ : InMux
    port map (
            O => \N__1256\,
            I => \N__1253\
        );

    \I__271\ : LocalMux
    port map (
            O => \N__1253\,
            I => \txZ0Z_6\
        );

    \I__270\ : InMux
    port map (
            O => \N__1250\,
            I => \N__1247\
        );

    \I__269\ : LocalMux
    port map (
            O => \N__1247\,
            I => \spi.TxDataZ0Z_5\
        );

    \I__268\ : InMux
    port map (
            O => \N__1244\,
            I => \N__1241\
        );

    \I__267\ : LocalMux
    port map (
            O => \N__1241\,
            I => \spi.TxDataZ0Z_6\
        );

    \I__266\ : InMux
    port map (
            O => \N__1238\,
            I => \N__1235\
        );

    \I__265\ : LocalMux
    port map (
            O => \N__1235\,
            I => \txZ0Z_2\
        );

    \I__264\ : InMux
    port map (
            O => \N__1232\,
            I => \N__1229\
        );

    \I__263\ : LocalMux
    port map (
            O => \N__1229\,
            I => \N__1226\
        );

    \I__262\ : Odrv4
    port map (
            O => \N__1226\,
            I => \spi.TxDataZ0Z_1\
        );

    \I__261\ : InMux
    port map (
            O => \N__1223\,
            I => \N__1220\
        );

    \I__260\ : LocalMux
    port map (
            O => \N__1220\,
            I => \spi.TxDataZ0Z_2\
        );

    \I__259\ : CEMux
    port map (
            O => \N__1217\,
            I => \N__1213\
        );

    \I__258\ : CEMux
    port map (
            O => \N__1216\,
            I => \N__1210\
        );

    \I__257\ : LocalMux
    port map (
            O => \N__1213\,
            I => \N__1205\
        );

    \I__256\ : LocalMux
    port map (
            O => \N__1210\,
            I => \N__1205\
        );

    \I__255\ : Odrv4
    port map (
            O => \N__1205\,
            I => \spi.TxData_1_sqmuxa_i\
        );

    \I__254\ : CascadeMux
    port map (
            O => \N__1202\,
            I => \N__1198\
        );

    \I__253\ : CascadeMux
    port map (
            O => \N__1201\,
            I => \N__1194\
        );

    \I__252\ : InMux
    port map (
            O => \N__1198\,
            I => \N__1191\
        );

    \I__251\ : InMux
    port map (
            O => \N__1197\,
            I => \N__1188\
        );

    \I__250\ : InMux
    port map (
            O => \N__1194\,
            I => \N__1185\
        );

    \I__249\ : LocalMux
    port map (
            O => \N__1191\,
            I => \spi.indexZ0Z_1\
        );

    \I__248\ : LocalMux
    port map (
            O => \N__1188\,
            I => \spi.indexZ0Z_1\
        );

    \I__247\ : LocalMux
    port map (
            O => \N__1185\,
            I => \spi.indexZ0Z_1\
        );

    \I__246\ : InMux
    port map (
            O => \N__1178\,
            I => \N__1172\
        );

    \I__245\ : InMux
    port map (
            O => \N__1177\,
            I => \N__1169\
        );

    \I__244\ : InMux
    port map (
            O => \N__1176\,
            I => \N__1164\
        );

    \I__243\ : InMux
    port map (
            O => \N__1175\,
            I => \N__1164\
        );

    \I__242\ : LocalMux
    port map (
            O => \N__1172\,
            I => \spi.indexZ0Z_0\
        );

    \I__241\ : LocalMux
    port map (
            O => \N__1169\,
            I => \spi.indexZ0Z_0\
        );

    \I__240\ : LocalMux
    port map (
            O => \N__1164\,
            I => \spi.indexZ0Z_0\
        );

    \I__239\ : CascadeMux
    port map (
            O => \N__1157\,
            I => \spi.CO1_0_1_cascade_\
        );

    \I__238\ : InMux
    port map (
            O => \N__1154\,
            I => \N__1150\
        );

    \I__237\ : InMux
    port map (
            O => \N__1153\,
            I => \N__1147\
        );

    \I__236\ : LocalMux
    port map (
            O => \N__1150\,
            I => \spi.un1_SPI_DONE_0_sqmuxa_1_0\
        );

    \I__235\ : LocalMux
    port map (
            O => \N__1147\,
            I => \spi.un1_SPI_DONE_0_sqmuxa_1_0\
        );

    \I__234\ : InMux
    port map (
            O => \N__1142\,
            I => \N__1138\
        );

    \I__233\ : InMux
    port map (
            O => \N__1141\,
            I => \N__1135\
        );

    \I__232\ : LocalMux
    port map (
            O => \N__1138\,
            I => \spi.indexZ0Z_2\
        );

    \I__231\ : LocalMux
    port map (
            O => \N__1135\,
            I => \spi.indexZ0Z_2\
        );

    \I__230\ : InMux
    port map (
            O => \N__1130\,
            I => \N__1127\
        );

    \I__229\ : LocalMux
    port map (
            O => \N__1127\,
            I => \N__1124\
        );

    \I__228\ : Span4Mux_h
    port map (
            O => \N__1124\,
            I => \N__1121\
        );

    \I__227\ : Span4Mux_v
    port map (
            O => \N__1121\,
            I => \N__1118\
        );

    \I__226\ : Span4Mux_v
    port map (
            O => \N__1118\,
            I => \N__1115\
        );

    \I__225\ : Span4Mux_v
    port map (
            O => \N__1115\,
            I => \N__1112\
        );

    \I__224\ : Odrv4
    port map (
            O => \N__1112\,
            I => \SCK_c\
        );

    \I__223\ : InMux
    port map (
            O => \N__1109\,
            I => \N__1102\
        );

    \I__222\ : InMux
    port map (
            O => \N__1108\,
            I => \N__1102\
        );

    \I__221\ : InMux
    port map (
            O => \N__1107\,
            I => \N__1099\
        );

    \I__220\ : LocalMux
    port map (
            O => \N__1102\,
            I => \spi.SCLK_latchedZ0\
        );

    \I__219\ : LocalMux
    port map (
            O => \N__1099\,
            I => \spi.SCLK_latchedZ0\
        );

    \I__218\ : InMux
    port map (
            O => \N__1094\,
            I => \N__1090\
        );

    \I__217\ : InMux
    port map (
            O => \N__1093\,
            I => \N__1087\
        );

    \I__216\ : LocalMux
    port map (
            O => \N__1090\,
            I => \N__1084\
        );

    \I__215\ : LocalMux
    port map (
            O => \N__1087\,
            I => \N__1081\
        );

    \I__214\ : Span4Mux_v
    port map (
            O => \N__1084\,
            I => \N__1076\
        );

    \I__213\ : Span4Mux_h
    port map (
            O => \N__1081\,
            I => \N__1076\
        );

    \I__212\ : Odrv4
    port map (
            O => \N__1076\,
            I => rx_1
        );

    \I__211\ : InMux
    port map (
            O => \N__1073\,
            I => \N__1070\
        );

    \I__210\ : LocalMux
    port map (
            O => \N__1070\,
            I => \N__1067\
        );

    \I__209\ : Span4Mux_h
    port map (
            O => \N__1067\,
            I => \N__1064\
        );

    \I__208\ : Sp12to4
    port map (
            O => \N__1064\,
            I => \N__1061\
        );

    \I__207\ : Odrv12
    port map (
            O => \N__1061\,
            I => \spi.MOSI_latchedZ0\
        );

    \I__206\ : InMux
    port map (
            O => \N__1058\,
            I => \N__1055\
        );

    \I__205\ : LocalMux
    port map (
            O => \N__1055\,
            I => \N__1052\
        );

    \I__204\ : Span4Mux_h
    port map (
            O => \N__1052\,
            I => \N__1048\
        );

    \I__203\ : InMux
    port map (
            O => \N__1051\,
            I => \N__1045\
        );

    \I__202\ : Odrv4
    port map (
            O => \N__1048\,
            I => rx_0
        );

    \I__201\ : LocalMux
    port map (
            O => \N__1045\,
            I => rx_0
        );

    \I__200\ : ClkMux
    port map (
            O => \N__1040\,
            I => \N__1007\
        );

    \I__199\ : ClkMux
    port map (
            O => \N__1039\,
            I => \N__1007\
        );

    \I__198\ : ClkMux
    port map (
            O => \N__1038\,
            I => \N__1007\
        );

    \I__197\ : ClkMux
    port map (
            O => \N__1037\,
            I => \N__1007\
        );

    \I__196\ : ClkMux
    port map (
            O => \N__1036\,
            I => \N__1007\
        );

    \I__195\ : ClkMux
    port map (
            O => \N__1035\,
            I => \N__1007\
        );

    \I__194\ : ClkMux
    port map (
            O => \N__1034\,
            I => \N__1007\
        );

    \I__193\ : ClkMux
    port map (
            O => \N__1033\,
            I => \N__1007\
        );

    \I__192\ : ClkMux
    port map (
            O => \N__1032\,
            I => \N__1007\
        );

    \I__191\ : ClkMux
    port map (
            O => \N__1031\,
            I => \N__1007\
        );

    \I__190\ : ClkMux
    port map (
            O => \N__1030\,
            I => \N__1007\
        );

    \I__189\ : GlobalMux
    port map (
            O => \N__1007\,
            I => \N__1004\
        );

    \I__188\ : gio2CtrlBuf
    port map (
            O => \N__1004\,
            I => outclk_g
        );

    \I__187\ : CEMux
    port map (
            O => \N__1001\,
            I => \N__997\
        );

    \I__186\ : CEMux
    port map (
            O => \N__1000\,
            I => \N__994\
        );

    \I__185\ : LocalMux
    port map (
            O => \N__997\,
            I => \N__991\
        );

    \I__184\ : LocalMux
    port map (
            O => \N__994\,
            I => \N__988\
        );

    \I__183\ : Span4Mux_h
    port map (
            O => \N__991\,
            I => \N__972\
        );

    \I__182\ : Span4Mux_h
    port map (
            O => \N__988\,
            I => \N__969\
        );

    \I__181\ : InMux
    port map (
            O => \N__987\,
            I => \N__966\
        );

    \I__180\ : InMux
    port map (
            O => \N__986\,
            I => \N__961\
        );

    \I__179\ : InMux
    port map (
            O => \N__985\,
            I => \N__961\
        );

    \I__178\ : InMux
    port map (
            O => \N__984\,
            I => \N__948\
        );

    \I__177\ : InMux
    port map (
            O => \N__983\,
            I => \N__948\
        );

    \I__176\ : InMux
    port map (
            O => \N__982\,
            I => \N__948\
        );

    \I__175\ : InMux
    port map (
            O => \N__981\,
            I => \N__948\
        );

    \I__174\ : InMux
    port map (
            O => \N__980\,
            I => \N__948\
        );

    \I__173\ : InMux
    port map (
            O => \N__979\,
            I => \N__948\
        );

    \I__172\ : InMux
    port map (
            O => \N__978\,
            I => \N__943\
        );

    \I__171\ : InMux
    port map (
            O => \N__977\,
            I => \N__943\
        );

    \I__170\ : InMux
    port map (
            O => \N__976\,
            I => \N__940\
        );

    \I__169\ : InMux
    port map (
            O => \N__975\,
            I => \N__937\
        );

    \I__168\ : Odrv4
    port map (
            O => \N__972\,
            I => \spi.RxdData_0_sqmuxa\
        );

    \I__167\ : Odrv4
    port map (
            O => \N__969\,
            I => \spi.RxdData_0_sqmuxa\
        );

    \I__166\ : LocalMux
    port map (
            O => \N__966\,
            I => \spi.RxdData_0_sqmuxa\
        );

    \I__165\ : LocalMux
    port map (
            O => \N__961\,
            I => \spi.RxdData_0_sqmuxa\
        );

    \I__164\ : LocalMux
    port map (
            O => \N__948\,
            I => \spi.RxdData_0_sqmuxa\
        );

    \I__163\ : LocalMux
    port map (
            O => \N__943\,
            I => \spi.RxdData_0_sqmuxa\
        );

    \I__162\ : LocalMux
    port map (
            O => \N__940\,
            I => \spi.RxdData_0_sqmuxa\
        );

    \I__161\ : LocalMux
    port map (
            O => \N__937\,
            I => \spi.RxdData_0_sqmuxa\
        );

    \I__160\ : InMux
    port map (
            O => \N__920\,
            I => \N__916\
        );

    \I__159\ : InMux
    port map (
            O => \N__919\,
            I => \N__913\
        );

    \I__158\ : LocalMux
    port map (
            O => \N__916\,
            I => rx_3
        );

    \I__157\ : LocalMux
    port map (
            O => \N__913\,
            I => rx_3
        );

    \I__156\ : InMux
    port map (
            O => \N__908\,
            I => \N__904\
        );

    \I__155\ : InMux
    port map (
            O => \N__907\,
            I => \N__901\
        );

    \I__154\ : LocalMux
    port map (
            O => \N__904\,
            I => rx_6
        );

    \I__153\ : LocalMux
    port map (
            O => \N__901\,
            I => rx_6
        );

    \I__152\ : InMux
    port map (
            O => \N__896\,
            I => \N__892\
        );

    \I__151\ : InMux
    port map (
            O => \N__895\,
            I => \N__889\
        );

    \I__150\ : LocalMux
    port map (
            O => \N__892\,
            I => rx_5
        );

    \I__149\ : LocalMux
    port map (
            O => \N__889\,
            I => rx_5
        );

    \I__148\ : InMux
    port map (
            O => \N__884\,
            I => \N__880\
        );

    \I__147\ : InMux
    port map (
            O => \N__883\,
            I => \N__877\
        );

    \I__146\ : LocalMux
    port map (
            O => \N__880\,
            I => rx_2
        );

    \I__145\ : LocalMux
    port map (
            O => \N__877\,
            I => rx_2
        );

    \I__144\ : InMux
    port map (
            O => \N__872\,
            I => \N__869\
        );

    \I__143\ : LocalMux
    port map (
            O => \N__869\,
            I => rx_7
        );

    \I__142\ : CEMux
    port map (
            O => \N__866\,
            I => \N__860\
        );

    \I__141\ : CEMux
    port map (
            O => \N__865\,
            I => \N__857\
        );

    \I__140\ : InMux
    port map (
            O => \N__864\,
            I => \N__854\
        );

    \I__139\ : InMux
    port map (
            O => \N__863\,
            I => \N__851\
        );

    \I__138\ : LocalMux
    port map (
            O => \N__860\,
            I => done
        );

    \I__137\ : LocalMux
    port map (
            O => \N__857\,
            I => done
        );

    \I__136\ : LocalMux
    port map (
            O => \N__854\,
            I => done
        );

    \I__135\ : LocalMux
    port map (
            O => \N__851\,
            I => done
        );

    \I__134\ : InMux
    port map (
            O => \N__842\,
            I => \N__839\
        );

    \I__133\ : LocalMux
    port map (
            O => \N__839\,
            I => \txZ0Z_5\
        );

    \I__132\ : InMux
    port map (
            O => \N__836\,
            I => \N__833\
        );

    \I__131\ : LocalMux
    port map (
            O => \N__833\,
            I => \txZ0Z_7\
        );

    \I__130\ : IoInMux
    port map (
            O => \N__830\,
            I => \N__827\
        );

    \I__129\ : LocalMux
    port map (
            O => \N__827\,
            I => \N__824\
        );

    \I__128\ : IoSpan4Mux
    port map (
            O => \N__824\,
            I => \N__821\
        );

    \I__127\ : Sp12to4
    port map (
            O => \N__821\,
            I => \N__818\
        );

    \I__126\ : Span12Mux_s6_v
    port map (
            O => \N__818\,
            I => \N__815\
        );

    \I__125\ : Odrv12
    port map (
            O => \N__815\,
            I => \MISO_c\
        );

    \I__124\ : CascadeMux
    port map (
            O => \N__812\,
            I => \N__809\
        );

    \I__123\ : InMux
    port map (
            O => \N__809\,
            I => \N__806\
        );

    \I__122\ : LocalMux
    port map (
            O => \N__806\,
            I => \txZ0Z_4\
        );

    \I__121\ : InMux
    port map (
            O => \N__803\,
            I => \N__800\
        );

    \I__120\ : LocalMux
    port map (
            O => \N__800\,
            I => \spi.TxDataZ0Z_4\
        );

    \I__119\ : InMux
    port map (
            O => \N__797\,
            I => \N__794\
        );

    \I__118\ : LocalMux
    port map (
            O => \N__794\,
            I => \txZ0Z_3\
        );

    \I__117\ : InMux
    port map (
            O => \N__791\,
            I => \N__788\
        );

    \I__116\ : LocalMux
    port map (
            O => \N__788\,
            I => \spi.TxDataZ0Z_3\
        );

    \I__115\ : CascadeMux
    port map (
            O => \N__785\,
            I => \spi.SPI_DONE_0_sqmuxa_2_cascade_\
        );

    \I__114\ : InMux
    port map (
            O => \N__782\,
            I => \N__779\
        );

    \I__113\ : LocalMux
    port map (
            O => \N__779\,
            I => \spi.SPI_DONE_0_sqmuxa\
        );

    \I__112\ : CascadeMux
    port map (
            O => \N__776\,
            I => \spi.SPI_DONE_0_sqmuxa_cascade_\
        );

    \I__111\ : CascadeMux
    port map (
            O => \N__773\,
            I => \spi.un1_SPI_DONE_0_sqmuxa_1_0_cascade_\
        );

    \I__110\ : InMux
    port map (
            O => \N__770\,
            I => \N__767\
        );

    \I__109\ : LocalMux
    port map (
            O => \N__767\,
            I => \N__764\
        );

    \I__108\ : Span4Mux_v
    port map (
            O => \N__764\,
            I => \N__761\
        );

    \I__107\ : Span4Mux_h
    port map (
            O => \N__761\,
            I => \N__758\
        );

    \I__106\ : Sp12to4
    port map (
            O => \N__758\,
            I => \N__755\
        );

    \I__105\ : Odrv12
    port map (
            O => \N__755\,
            I => \SS_c\
        );

    \I__104\ : InMux
    port map (
            O => \N__752\,
            I => \N__741\
        );

    \I__103\ : InMux
    port map (
            O => \N__751\,
            I => \N__741\
        );

    \I__102\ : InMux
    port map (
            O => \N__750\,
            I => \N__741\
        );

    \I__101\ : InMux
    port map (
            O => \N__749\,
            I => \N__736\
        );

    \I__100\ : InMux
    port map (
            O => \N__748\,
            I => \N__736\
        );

    \I__99\ : LocalMux
    port map (
            O => \N__741\,
            I => \spi.SS_latchedZ0\
        );

    \I__98\ : LocalMux
    port map (
            O => \N__736\,
            I => \spi.SS_latchedZ0\
        );

    \I__97\ : InMux
    port map (
            O => \N__731\,
            I => \N__727\
        );

    \I__96\ : InMux
    port map (
            O => \N__730\,
            I => \N__724\
        );

    \I__95\ : LocalMux
    port map (
            O => \N__727\,
            I => \spi.SS_oldZ0\
        );

    \I__94\ : LocalMux
    port map (
            O => \N__724\,
            I => \spi.SS_oldZ0\
        );

    \I__93\ : InMux
    port map (
            O => \N__719\,
            I => \N__715\
        );

    \I__92\ : InMux
    port map (
            O => \N__718\,
            I => \N__712\
        );

    \I__91\ : LocalMux
    port map (
            O => \N__715\,
            I => \spi.SCLK_oldZ0\
        );

    \I__90\ : LocalMux
    port map (
            O => \N__712\,
            I => \spi.SCLK_oldZ0\
        );

    \I__89\ : InMux
    port map (
            O => \N__707\,
            I => \N__703\
        );

    \I__88\ : InMux
    port map (
            O => \N__706\,
            I => \N__700\
        );

    \I__87\ : LocalMux
    port map (
            O => \N__703\,
            I => rx_4
        );

    \I__86\ : LocalMux
    port map (
            O => \N__700\,
            I => rx_4
        );

    \I__85\ : CascadeMux
    port map (
            O => \N__695\,
            I => \spi.un3_ss_old_cascade_\
        );

    \I__84\ : CascadeMux
    port map (
            O => \N__692\,
            I => \spi.RxdData_0_sqmuxa_cascade_\
        );

    \I__83\ : IoInMux
    port map (
            O => \N__689\,
            I => \N__686\
        );

    \I__82\ : LocalMux
    port map (
            O => \N__686\,
            I => \N__683\
        );

    \I__81\ : Span4Mux_s3_v
    port map (
            O => \N__683\,
            I => \N__680\
        );

    \I__80\ : Span4Mux_v
    port map (
            O => \N__680\,
            I => \N__677\
        );

    \I__79\ : Span4Mux_v
    port map (
            O => \N__677\,
            I => \N__674\
        );

    \I__78\ : Span4Mux_h
    port map (
            O => \N__674\,
            I => \N__669\
        );

    \I__77\ : InMux
    port map (
            O => \N__673\,
            I => \N__664\
        );

    \I__76\ : InMux
    port map (
            O => \N__672\,
            I => \N__664\
        );

    \I__75\ : Odrv4
    port map (
            O => \N__669\,
            I => \LEDR_c\
        );

    \I__74\ : LocalMux
    port map (
            O => \N__664\,
            I => \LEDR_c\
        );

    \I__73\ : IoInMux
    port map (
            O => \N__659\,
            I => \N__656\
        );

    \I__72\ : LocalMux
    port map (
            O => \N__656\,
            I => \N__653\
        );

    \I__71\ : Span12Mux_s8_v
    port map (
            O => \N__653\,
            I => \N__650\
        );

    \I__70\ : Span12Mux_v
    port map (
            O => \N__650\,
            I => \N__647\
        );

    \I__69\ : Odrv12
    port map (
            O => \N__647\,
            I => \mypll_inst.outclk\
        );

    \I__68\ : IoInMux
    port map (
            O => \N__644\,
            I => \N__641\
        );

    \I__67\ : LocalMux
    port map (
            O => \N__641\,
            I => \N__638\
        );

    \I__66\ : Span4Mux_s0_v
    port map (
            O => \N__638\,
            I => \N__635\
        );

    \I__65\ : Odrv4
    port map (
            O => \N__635\,
            I => \CONSTANT_ONE_NET\
        );

    \I__64\ : InMux
    port map (
            O => \N__632\,
            I => \N__629\
        );

    \I__63\ : LocalMux
    port map (
            O => \N__629\,
            I => \spi.TxDataZ0Z_0\
        );

    \I__62\ : IoInMux
    port map (
            O => \N__626\,
            I => \N__623\
        );

    \I__61\ : LocalMux
    port map (
            O => \N__623\,
            I => \N__620\
        );

    \I__60\ : IoSpan4Mux
    port map (
            O => \N__620\,
            I => \N__617\
        );

    \I__59\ : Span4Mux_s2_v
    port map (
            O => \N__617\,
            I => \N__614\
        );

    \I__58\ : Sp12to4
    port map (
            O => \N__614\,
            I => \N__611\
        );

    \I__57\ : Span12Mux_v
    port map (
            O => \N__611\,
            I => \N__607\
        );

    \I__56\ : InMux
    port map (
            O => \N__610\,
            I => \N__604\
        );

    \I__55\ : Odrv12
    port map (
            O => \N__607\,
            I => \LEDG_c\
        );

    \I__54\ : LocalMux
    port map (
            O => \N__604\,
            I => \LEDG_c\
        );

    \I__53\ : InMux
    port map (
            O => \N__599\,
            I => \N__596\
        );

    \I__52\ : LocalMux
    port map (
            O => \N__596\,
            I => \txZ0Z_1\
        );

    \mypll_inst.PLLOUTCORE_derived_clock_RNIF7IB\ : ICE_GB
    port map (
            USERSIGNALTOGLOBALBUFFER => \N__659\,
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

    \CONSTANT_ONE_LUT4_LC_12_30_2\ : LogicCell40
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

    \LEDRZ0_LC_13_14_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__864\,
            lcout => \LEDR_c\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1030\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.TxData_1_LC_13_15_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__599\,
            in1 => \N__632\,
            in2 => \_gnd_net_\,
            in3 => \N__977\,
            lcout => \spi.TxDataZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1031\,
            ce => \N__1216\,
            sr => \_gnd_net_\
        );

    \spi.TxData_0_LC_13_15_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111110101010"
        )
    port map (
            in0 => \N__978\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__610\,
            lcout => \spi.TxDataZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1031\,
            ce => \N__1216\,
            sr => \_gnd_net_\
        );

    \LEDGZ0_LC_13_16_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1058\,
            lcout => \LEDG_c\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1033\,
            ce => \N__865\,
            sr => \_gnd_net_\
        );

    \tx_1_LC_13_16_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1093\,
            lcout => \txZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1033\,
            ce => \N__865\,
            sr => \_gnd_net_\
        );

    \spi.RxdData_4_LC_14_14_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__919\,
            lcout => rx_4,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1032\,
            ce => \N__1000\,
            sr => \_gnd_net_\
        );

    \spi.RxdData_5_LC_14_14_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__706\,
            lcout => rx_5,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1032\,
            ce => \N__1000\,
            sr => \_gnd_net_\
        );

    \spi.RxdData_2_LC_14_14_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1094\,
            lcout => rx_2,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1032\,
            ce => \N__1000\,
            sr => \_gnd_net_\
        );

    \spi.RxdData_3_LC_14_14_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__883\,
            lcout => rx_3,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1032\,
            ce => \N__1000\,
            sr => \_gnd_net_\
        );

    \spi.RxdData_7_LC_14_14_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__907\,
            lcout => rx_7,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1032\,
            ce => \N__1000\,
            sr => \_gnd_net_\
        );

    \spi.RxdData_6_LC_14_14_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__895\,
            lcout => rx_6,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1032\,
            ce => \N__1000\,
            sr => \_gnd_net_\
        );

    \spi.SPI_DONE_RNO_0_LC_14_15_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101010100000000"
        )
    port map (
            in0 => \N__749\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__731\,
            lcout => OPEN,
            ltout => \spi.un3_ss_old_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SPI_DONE_LC_14_15_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110111001100"
        )
    port map (
            in0 => \N__673\,
            in1 => \N__782\,
            in2 => \N__695\,
            in3 => \N__863\,
            lcout => done,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1034\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SCLK_old_RNIKH0V_LC_14_15_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000001000100"
        )
    port map (
            in0 => \N__718\,
            in1 => \N__1107\,
            in2 => \_gnd_net_\,
            in3 => \N__748\,
            lcout => \spi.RxdData_0_sqmuxa\,
            ltout => \spi.RxdData_0_sqmuxa_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SCLK_old_RNIRCN41_LC_14_15_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111110000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__692\,
            in3 => \N__672\,
            lcout => \spi.TxData_1_sqmuxa_i\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.index_RNI57R91_2_LC_14_16_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000001"
        )
    port map (
            in0 => \N__1175\,
            in1 => \N__750\,
            in2 => \N__1201\,
            in3 => \N__1141\,
            lcout => OPEN,
            ltout => \spi.SPI_DONE_0_sqmuxa_2_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SCLK_old_RNI5H8V1_LC_14_16_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000010100000"
        )
    port map (
            in0 => \N__1108\,
            in1 => \_gnd_net_\,
            in2 => \N__785\,
            in3 => \N__719\,
            lcout => \spi.SPI_DONE_0_sqmuxa\,
            ltout => \spi.SPI_DONE_0_sqmuxa_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SS_old_RNIBOQN3_LC_14_16_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000111000001101"
        )
    port map (
            in0 => \N__730\,
            in1 => \N__976\,
            in2 => \N__776\,
            in3 => \N__751\,
            lcout => \spi.un1_SPI_DONE_0_sqmuxa_1_0\,
            ltout => \spi.un1_SPI_DONE_0_sqmuxa_1_0_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.index_0_LC_14_16_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011111111001111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1176\,
            in2 => \N__773\,
            in3 => \N__985\,
            lcout => \spi.indexZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1036\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SS_latched_LC_14_16_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__770\,
            lcout => \spi.SS_latchedZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1036\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SS_old_LC_14_16_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1010101010101010"
        )
    port map (
            in0 => \N__752\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \spi.SS_oldZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1036\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SCLK_old_LC_14_16_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1109\,
            lcout => \spi.SCLK_oldZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1036\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.index_1_LC_14_16_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1011010011111111"
        )
    port map (
            in0 => \N__1178\,
            in1 => \N__986\,
            in2 => \N__1202\,
            in3 => \N__1153\,
            lcout => \spi.indexZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1036\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \tx_4_LC_15_14_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__707\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \txZ0Z_4\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1035\,
            ce => \N__866\,
            sr => \_gnd_net_\
        );

    \tx_3_LC_15_14_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__920\,
            lcout => \txZ0Z_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1035\,
            ce => \N__866\,
            sr => \_gnd_net_\
        );

    \tx_6_LC_15_14_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__908\,
            lcout => \txZ0Z_6\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1035\,
            ce => \N__866\,
            sr => \_gnd_net_\
        );

    \tx_5_LC_15_14_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__896\,
            lcout => \txZ0Z_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1035\,
            ce => \N__866\,
            sr => \_gnd_net_\
        );

    \tx_2_LC_15_14_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__884\,
            lcout => \txZ0Z_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1035\,
            ce => \N__866\,
            sr => \_gnd_net_\
        );

    \tx_7_LC_15_14_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__872\,
            lcout => \txZ0Z_7\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1035\,
            ce => \N__866\,
            sr => \_gnd_net_\
        );

    \spi.TxData_5_LC_15_15_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__982\,
            in1 => \N__842\,
            in2 => \_gnd_net_\,
            in3 => \N__803\,
            lcout => \spi.TxDataZ0Z_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1037\,
            ce => \N__1217\,
            sr => \_gnd_net_\
        );

    \spi.TxData_7_LC_15_15_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__836\,
            in1 => \N__1244\,
            in2 => \_gnd_net_\,
            in3 => \N__984\,
            lcout => \MISO_c\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1037\,
            ce => \N__1217\,
            sr => \_gnd_net_\
        );

    \spi.TxData_4_LC_15_15_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111101001010000"
        )
    port map (
            in0 => \N__981\,
            in1 => \_gnd_net_\,
            in2 => \N__812\,
            in3 => \N__791\,
            lcout => \spi.TxDataZ0Z_4\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1037\,
            ce => \N__1217\,
            sr => \_gnd_net_\
        );

    \spi.TxData_3_LC_15_15_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__797\,
            in1 => \N__1223\,
            in2 => \_gnd_net_\,
            in3 => \N__980\,
            lcout => \spi.TxDataZ0Z_3\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1037\,
            ce => \N__1217\,
            sr => \_gnd_net_\
        );

    \spi.TxData_6_LC_15_15_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111101001010000"
        )
    port map (
            in0 => \N__983\,
            in1 => \_gnd_net_\,
            in2 => \N__1259\,
            in3 => \N__1250\,
            lcout => \spi.TxDataZ0Z_6\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1037\,
            ce => \N__1217\,
            sr => \_gnd_net_\
        );

    \spi.TxData_2_LC_15_15_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__1238\,
            in1 => \N__1232\,
            in2 => \_gnd_net_\,
            in3 => \N__979\,
            lcout => \spi.TxDataZ0Z_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1037\,
            ce => \N__1217\,
            sr => \_gnd_net_\
        );

    \spi.index_RNO_0_2_LC_15_16_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101010101110111"
        )
    port map (
            in0 => \N__975\,
            in1 => \N__1197\,
            in2 => \_gnd_net_\,
            in3 => \N__1177\,
            lcout => OPEN,
            ltout => \spi.CO1_0_1_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.index_2_LC_15_16_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0110100111111111"
        )
    port map (
            in0 => \N__987\,
            in1 => \N__1142\,
            in2 => \N__1157\,
            in3 => \N__1154\,
            lcout => \spi.indexZ0Z_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1038\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.SCLK_latched_LC_15_16_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1130\,
            lcout => \spi.SCLK_latchedZ0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1038\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \spi.RxdData_1_LC_15_17_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1051\,
            lcout => rx_1,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1039\,
            ce => \N__1001\,
            sr => \_gnd_net_\
        );

    \spi.RxdData_0_LC_15_17_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1073\,
            lcout => rx_0,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1039\,
            ce => \N__1001\,
            sr => \_gnd_net_\
        );
end \INTERFACE\;
