-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2017.08.27940

-- Build Date:         Sep 11 2017 17:29:57

-- File Generated:     Jan 19 2018 14:26:32

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "Blink" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of Blink
entity Blink is
port (
    ref_clk : in std_logic;
    led : out std_logic;
    clk : out std_logic);
end Blink;

-- Architecture of Blink
-- View name is \INTERFACE\
architecture \INTERFACE\ of Blink is

signal \N__1486\ : std_logic;
signal \N__1472\ : std_logic;
signal \N__1471\ : std_logic;
signal \N__1470\ : std_logic;
signal \N__1463\ : std_logic;
signal \N__1462\ : std_logic;
signal \N__1461\ : std_logic;
signal \N__1444\ : std_logic;
signal \N__1443\ : std_logic;
signal \N__1442\ : std_logic;
signal \N__1441\ : std_logic;
signal \N__1438\ : std_logic;
signal \N__1433\ : std_logic;
signal \N__1430\ : std_logic;
signal \N__1427\ : std_logic;
signal \N__1420\ : std_logic;
signal \N__1419\ : std_logic;
signal \N__1418\ : std_logic;
signal \N__1417\ : std_logic;
signal \N__1412\ : std_logic;
signal \N__1409\ : std_logic;
signal \N__1406\ : std_logic;
signal \N__1399\ : std_logic;
signal \N__1396\ : std_logic;
signal \N__1393\ : std_logic;
signal \N__1390\ : std_logic;
signal \N__1389\ : std_logic;
signal \N__1388\ : std_logic;
signal \N__1387\ : std_logic;
signal \N__1386\ : std_logic;
signal \N__1385\ : std_logic;
signal \N__1378\ : std_logic;
signal \N__1371\ : std_logic;
signal \N__1366\ : std_logic;
signal \N__1365\ : std_logic;
signal \N__1364\ : std_logic;
signal \N__1363\ : std_logic;
signal \N__1362\ : std_logic;
signal \N__1359\ : std_logic;
signal \N__1356\ : std_logic;
signal \N__1353\ : std_logic;
signal \N__1344\ : std_logic;
signal \N__1339\ : std_logic;
signal \N__1336\ : std_logic;
signal \N__1333\ : std_logic;
signal \N__1332\ : std_logic;
signal \N__1329\ : std_logic;
signal \N__1326\ : std_logic;
signal \N__1321\ : std_logic;
signal \N__1320\ : std_logic;
signal \N__1317\ : std_logic;
signal \N__1314\ : std_logic;
signal \N__1309\ : std_logic;
signal \N__1308\ : std_logic;
signal \N__1305\ : std_logic;
signal \N__1302\ : std_logic;
signal \N__1297\ : std_logic;
signal \N__1296\ : std_logic;
signal \N__1291\ : std_logic;
signal \N__1288\ : std_logic;
signal \N__1287\ : std_logic;
signal \N__1286\ : std_logic;
signal \N__1285\ : std_logic;
signal \N__1278\ : std_logic;
signal \N__1277\ : std_logic;
signal \N__1274\ : std_logic;
signal \N__1271\ : std_logic;
signal \N__1268\ : std_logic;
signal \N__1261\ : std_logic;
signal \N__1260\ : std_logic;
signal \N__1259\ : std_logic;
signal \N__1258\ : std_logic;
signal \N__1257\ : std_logic;
signal \N__1256\ : std_logic;
signal \N__1255\ : std_logic;
signal \N__1254\ : std_logic;
signal \N__1253\ : std_logic;
signal \N__1252\ : std_logic;
signal \N__1243\ : std_logic;
signal \N__1240\ : std_logic;
signal \N__1231\ : std_logic;
signal \N__1228\ : std_logic;
signal \N__1225\ : std_logic;
signal \N__1216\ : std_logic;
signal \N__1215\ : std_logic;
signal \N__1214\ : std_logic;
signal \N__1213\ : std_logic;
signal \N__1210\ : std_logic;
signal \N__1207\ : std_logic;
signal \N__1204\ : std_logic;
signal \N__1201\ : std_logic;
signal \N__1196\ : std_logic;
signal \N__1193\ : std_logic;
signal \N__1186\ : std_logic;
signal \N__1183\ : std_logic;
signal \N__1182\ : std_logic;
signal \N__1179\ : std_logic;
signal \N__1176\ : std_logic;
signal \N__1173\ : std_logic;
signal \N__1170\ : std_logic;
signal \N__1165\ : std_logic;
signal \N__1162\ : std_logic;
signal \N__1161\ : std_logic;
signal \N__1158\ : std_logic;
signal \N__1157\ : std_logic;
signal \N__1156\ : std_logic;
signal \N__1155\ : std_logic;
signal \N__1154\ : std_logic;
signal \N__1153\ : std_logic;
signal \N__1152\ : std_logic;
signal \N__1135\ : std_logic;
signal \N__1132\ : std_logic;
signal \N__1129\ : std_logic;
signal \N__1126\ : std_logic;
signal \N__1125\ : std_logic;
signal \N__1124\ : std_logic;
signal \N__1123\ : std_logic;
signal \N__1120\ : std_logic;
signal \N__1117\ : std_logic;
signal \N__1114\ : std_logic;
signal \N__1111\ : std_logic;
signal \N__1102\ : std_logic;
signal \N__1101\ : std_logic;
signal \N__1100\ : std_logic;
signal \N__1099\ : std_logic;
signal \N__1096\ : std_logic;
signal \N__1093\ : std_logic;
signal \N__1090\ : std_logic;
signal \N__1087\ : std_logic;
signal \N__1078\ : std_logic;
signal \N__1077\ : std_logic;
signal \N__1076\ : std_logic;
signal \N__1073\ : std_logic;
signal \N__1070\ : std_logic;
signal \N__1067\ : std_logic;
signal \N__1066\ : std_logic;
signal \N__1063\ : std_logic;
signal \N__1058\ : std_logic;
signal \N__1055\ : std_logic;
signal \N__1048\ : std_logic;
signal \N__1047\ : std_logic;
signal \N__1046\ : std_logic;
signal \N__1045\ : std_logic;
signal \N__1042\ : std_logic;
signal \N__1039\ : std_logic;
signal \N__1036\ : std_logic;
signal \N__1033\ : std_logic;
signal \N__1024\ : std_logic;
signal \N__1021\ : std_logic;
signal \N__1018\ : std_logic;
signal \N__1015\ : std_logic;
signal \N__1012\ : std_logic;
signal \N__1009\ : std_logic;
signal \N__1006\ : std_logic;
signal \N__1003\ : std_logic;
signal \N__1000\ : std_logic;
signal \N__997\ : std_logic;
signal \N__994\ : std_logic;
signal \N__991\ : std_logic;
signal \N__988\ : std_logic;
signal \N__985\ : std_logic;
signal \N__982\ : std_logic;
signal \N__981\ : std_logic;
signal \N__976\ : std_logic;
signal \N__973\ : std_logic;
signal \N__970\ : std_logic;
signal \N__967\ : std_logic;
signal \N__964\ : std_logic;
signal \N__963\ : std_logic;
signal \N__962\ : std_logic;
signal \N__961\ : std_logic;
signal \N__954\ : std_logic;
signal \N__951\ : std_logic;
signal \N__946\ : std_logic;
signal \N__943\ : std_logic;
signal \N__942\ : std_logic;
signal \N__941\ : std_logic;
signal \N__940\ : std_logic;
signal \N__933\ : std_logic;
signal \N__930\ : std_logic;
signal \N__925\ : std_logic;
signal \N__922\ : std_logic;
signal \N__919\ : std_logic;
signal \N__916\ : std_logic;
signal \N__913\ : std_logic;
signal \N__910\ : std_logic;
signal \N__907\ : std_logic;
signal \N__904\ : std_logic;
signal \N__903\ : std_logic;
signal \N__900\ : std_logic;
signal \N__897\ : std_logic;
signal \N__892\ : std_logic;
signal \N__889\ : std_logic;
signal \N__886\ : std_logic;
signal \N__885\ : std_logic;
signal \N__882\ : std_logic;
signal \N__879\ : std_logic;
signal \N__874\ : std_logic;
signal \N__873\ : std_logic;
signal \N__870\ : std_logic;
signal \N__867\ : std_logic;
signal \N__862\ : std_logic;
signal \N__859\ : std_logic;
signal \N__858\ : std_logic;
signal \N__855\ : std_logic;
signal \N__852\ : std_logic;
signal \N__847\ : std_logic;
signal \N__846\ : std_logic;
signal \N__843\ : std_logic;
signal \N__840\ : std_logic;
signal \N__835\ : std_logic;
signal \N__834\ : std_logic;
signal \N__831\ : std_logic;
signal \N__828\ : std_logic;
signal \N__823\ : std_logic;
signal \N__820\ : std_logic;
signal \N__819\ : std_logic;
signal \N__816\ : std_logic;
signal \N__813\ : std_logic;
signal \N__808\ : std_logic;
signal \N__805\ : std_logic;
signal \N__802\ : std_logic;
signal \N__801\ : std_logic;
signal \N__800\ : std_logic;
signal \N__797\ : std_logic;
signal \N__792\ : std_logic;
signal \N__789\ : std_logic;
signal \N__784\ : std_logic;
signal \N__781\ : std_logic;
signal \N__778\ : std_logic;
signal \N__777\ : std_logic;
signal \N__774\ : std_logic;
signal \N__771\ : std_logic;
signal \N__768\ : std_logic;
signal \N__763\ : std_logic;
signal \N__760\ : std_logic;
signal \N__757\ : std_logic;
signal \N__754\ : std_logic;
signal \N__751\ : std_logic;
signal \N__748\ : std_logic;
signal \N__745\ : std_logic;
signal \N__742\ : std_logic;
signal \N__739\ : std_logic;
signal \N__736\ : std_logic;
signal \N__733\ : std_logic;
signal \N__730\ : std_logic;
signal \N__727\ : std_logic;
signal \N__724\ : std_logic;
signal \N__721\ : std_logic;
signal \N__718\ : std_logic;
signal \N__715\ : std_logic;
signal \N__712\ : std_logic;
signal \N__709\ : std_logic;
signal \N__706\ : std_logic;
signal \N__703\ : std_logic;
signal \N__700\ : std_logic;
signal \N__697\ : std_logic;
signal \N__694\ : std_logic;
signal \N__691\ : std_logic;
signal \N__688\ : std_logic;
signal \N__685\ : std_logic;
signal \N__682\ : std_logic;
signal \N__679\ : std_logic;
signal \N__676\ : std_logic;
signal \N__673\ : std_logic;
signal \N__670\ : std_logic;
signal \N__667\ : std_logic;
signal \N__664\ : std_logic;
signal \mypll_inst.clk_c\ : std_logic;
signal \VCCG0\ : std_logic;
signal \GNDG0\ : std_logic;
signal \GB_BUFFER_clk_c_g_THRU_CO\ : std_logic;
signal \bfn_7_1_0_\ : std_logic;
signal \countZ0Z_2\ : std_logic;
signal un2_count_1_cry_1 : std_logic;
signal \countZ0Z_3\ : std_logic;
signal un2_count_1_cry_2 : std_logic;
signal \countZ0Z_4\ : std_logic;
signal un2_count_1_cry_3 : std_logic;
signal un2_count_1_cry_4 : std_logic;
signal un2_count_1_cry_5 : std_logic;
signal un2_count_1_cry_6 : std_logic;
signal un2_count_1_cry_7 : std_logic;
signal un2_count_1_cry_8 : std_logic;
signal \bfn_7_2_0_\ : std_logic;
signal un2_count_1_cry_9 : std_logic;
signal un2_count_1_cry_10 : std_logic;
signal un2_count_1_cry_11 : std_logic;
signal un2_count_1_cry_12 : std_logic;
signal un2_count_1_cry_13 : std_logic;
signal un2_count_1_cry_14 : std_logic;
signal un2_count_1_cry_15 : std_logic;
signal un2_count_1_cry_16 : std_logic;
signal \bfn_7_3_0_\ : std_logic;
signal un2_count_1_cry_17 : std_logic;
signal un2_count_1_cry_18 : std_logic;
signal un2_count_1_cry_19 : std_logic;
signal un2_count_1_cry_20 : std_logic;
signal un2_count_1_cry_21 : std_logic;
signal \count_RNO_0Z0Z_7\ : std_logic;
signal \countZ0Z_1\ : std_logic;
signal \count_RNO_0Z0Z_5\ : std_logic;
signal \countZ0Z_9\ : std_logic;
signal \countZ0Z_8\ : std_logic;
signal \countZ0Z_10\ : std_logic;
signal \countZ0Z_11\ : std_logic;
signal \countZ0Z_7\ : std_logic;
signal \op_lt_op_lt_count8lto11_2_cascade_\ : std_logic;
signal \countZ0Z_5\ : std_logic;
signal \op_lt_op_lt_count8lt14_cascade_\ : std_logic;
signal \op_lt_op_lt_count8lto19_1_N_5_cascade_\ : std_logic;
signal \countZ0Z_0\ : std_logic;
signal \count_RNO_0Z0Z_6\ : std_logic;
signal \countZ0Z_6\ : std_logic;
signal \op_lt_op_lt_count8lto22_2_0_tz_cascade_\ : std_logic;
signal \count_RNO_0Z0Z_22\ : std_logic;
signal \count_RNO_0Z0Z_13\ : std_logic;
signal \op_lt_op_lt_count8lto22_cascade_\ : std_logic;
signal \op_lt_op_lt_count8lto14_0_0_cascade_\ : std_logic;
signal op_lt_op_lt_count8lt14 : std_logic;
signal \count_RNO_0Z0Z_12\ : std_logic;
signal \op_lt_op_lt_count8lt17_cascade_\ : std_logic;
signal \countZ0Z_16\ : std_logic;
signal \countZ0Z_15\ : std_logic;
signal \count_RNO_0Z0Z_21\ : std_logic;
signal \count_RNO_0Z0Z_17\ : std_logic;
signal \countZ0Z_18\ : std_logic;
signal \countZ0Z_19\ : std_logic;
signal \count_RNO_0Z0Z_14\ : std_logic;
signal \op_lt_op_lt_count8lto19_0_cascade_\ : std_logic;
signal op_lt_op_lt_count8lto19_0 : std_logic;
signal op_lt_op_lt_count8lt17 : std_logic;
signal \count_RNO_0Z0Z_20\ : std_logic;
signal \countZ0Z_22\ : std_logic;
signal \countZ0Z_21\ : std_logic;
signal \countZ0Z_20\ : std_logic;
signal op_lt_op_lt_count8lto22_1 : std_logic;
signal op_lt_op_lt_count8lto19_1_m4_i_a3_0 : std_logic;
signal op_lt_op_lt_count8lto22 : std_logic;
signal \op_lt_op_lt_count8lto19_1_N_5\ : std_logic;
signal led_c : std_logic;
signal clk_c_g : std_logic;
signal \countZ0Z_14\ : std_logic;
signal \countZ0Z_13\ : std_logic;
signal \countZ0Z_17\ : std_logic;
signal \countZ0Z_12\ : std_logic;
signal op_lt_op_lt_count8lto22_d_a0_1 : std_logic;
signal \CONSTANT_ONE_NET\ : std_logic;
signal \_gnd_net_\ : std_logic;

signal ref_clk_wire : std_logic;
signal led_wire : std_logic;
signal clk_wire : std_logic;
signal \mypll_inst.mypll_inst_pll_DYNAMICDELAY_wire\ : std_logic_vector(7 downto 0);

begin
    ref_clk_wire <= ref_clk;
    led <= led_wire;
    clk <= clk_wire;
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
            RESETB => \N__1018\,
            PLLOUTCORE => \mypll_inst.clk_c\,
            LOCK => OPEN,
            SDO => OPEN,
            SCLK => \GNDG0\,
            LATCHINPUTVALUE => \GNDG0\,
            EXTFEEDBACK => \GNDG0\,
            DYNAMICDELAY => \mypll_inst.mypll_inst_pll_DYNAMICDELAY_wire\,
            PLLIN => \N__1486\
        );

    \mypll_inst.mypll_inst_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \VCCG0\,
            DIN => '0',
            DOUT => \N__1486\,
            PACKAGEPIN => ref_clk_wire
        );

    \led_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1472\,
            DIN => \N__1471\,
            DOUT => \N__1470\,
            PACKAGEPIN => led_wire
        );

    \led_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__1472\,
            PADOUT => \N__1471\,
            PADIN => \N__1470\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__1186\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \clk_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1463\,
            DIN => \N__1462\,
            DOUT => \N__1461\,
            PACKAGEPIN => clk_wire
        );

    \clk_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__1463\,
            PADOUT => \N__1462\,
            PADIN => \N__1461\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__694\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I__318\ : CascadeMux
    port map (
            O => \N__1444\,
            I => \N__1438\
        );

    \I__317\ : InMux
    port map (
            O => \N__1443\,
            I => \N__1433\
        );

    \I__316\ : InMux
    port map (
            O => \N__1442\,
            I => \N__1433\
        );

    \I__315\ : InMux
    port map (
            O => \N__1441\,
            I => \N__1430\
        );

    \I__314\ : InMux
    port map (
            O => \N__1438\,
            I => \N__1427\
        );

    \I__313\ : LocalMux
    port map (
            O => \N__1433\,
            I => \countZ0Z_18\
        );

    \I__312\ : LocalMux
    port map (
            O => \N__1430\,
            I => \countZ0Z_18\
        );

    \I__311\ : LocalMux
    port map (
            O => \N__1427\,
            I => \countZ0Z_18\
        );

    \I__310\ : InMux
    port map (
            O => \N__1420\,
            I => \N__1412\
        );

    \I__309\ : InMux
    port map (
            O => \N__1419\,
            I => \N__1412\
        );

    \I__308\ : InMux
    port map (
            O => \N__1418\,
            I => \N__1409\
        );

    \I__307\ : InMux
    port map (
            O => \N__1417\,
            I => \N__1406\
        );

    \I__306\ : LocalMux
    port map (
            O => \N__1412\,
            I => \countZ0Z_19\
        );

    \I__305\ : LocalMux
    port map (
            O => \N__1409\,
            I => \countZ0Z_19\
        );

    \I__304\ : LocalMux
    port map (
            O => \N__1406\,
            I => \countZ0Z_19\
        );

    \I__303\ : InMux
    port map (
            O => \N__1399\,
            I => \N__1396\
        );

    \I__302\ : LocalMux
    port map (
            O => \N__1396\,
            I => \count_RNO_0Z0Z_14\
        );

    \I__301\ : CascadeMux
    port map (
            O => \N__1393\,
            I => \op_lt_op_lt_count8lto19_0_cascade_\
        );

    \I__300\ : InMux
    port map (
            O => \N__1390\,
            I => \N__1378\
        );

    \I__299\ : InMux
    port map (
            O => \N__1389\,
            I => \N__1378\
        );

    \I__298\ : InMux
    port map (
            O => \N__1388\,
            I => \N__1378\
        );

    \I__297\ : InMux
    port map (
            O => \N__1387\,
            I => \N__1371\
        );

    \I__296\ : InMux
    port map (
            O => \N__1386\,
            I => \N__1371\
        );

    \I__295\ : InMux
    port map (
            O => \N__1385\,
            I => \N__1371\
        );

    \I__294\ : LocalMux
    port map (
            O => \N__1378\,
            I => op_lt_op_lt_count8lto19_0
        );

    \I__293\ : LocalMux
    port map (
            O => \N__1371\,
            I => op_lt_op_lt_count8lto19_0
        );

    \I__292\ : CascadeMux
    port map (
            O => \N__1366\,
            I => \N__1359\
        );

    \I__291\ : CascadeMux
    port map (
            O => \N__1365\,
            I => \N__1356\
        );

    \I__290\ : InMux
    port map (
            O => \N__1364\,
            I => \N__1353\
        );

    \I__289\ : InMux
    port map (
            O => \N__1363\,
            I => \N__1344\
        );

    \I__288\ : InMux
    port map (
            O => \N__1362\,
            I => \N__1344\
        );

    \I__287\ : InMux
    port map (
            O => \N__1359\,
            I => \N__1344\
        );

    \I__286\ : InMux
    port map (
            O => \N__1356\,
            I => \N__1344\
        );

    \I__285\ : LocalMux
    port map (
            O => \N__1353\,
            I => op_lt_op_lt_count8lt17
        );

    \I__284\ : LocalMux
    port map (
            O => \N__1344\,
            I => op_lt_op_lt_count8lt17
        );

    \I__283\ : InMux
    port map (
            O => \N__1339\,
            I => \N__1336\
        );

    \I__282\ : LocalMux
    port map (
            O => \N__1336\,
            I => \count_RNO_0Z0Z_20\
        );

    \I__281\ : InMux
    port map (
            O => \N__1333\,
            I => \N__1329\
        );

    \I__280\ : InMux
    port map (
            O => \N__1332\,
            I => \N__1326\
        );

    \I__279\ : LocalMux
    port map (
            O => \N__1329\,
            I => \countZ0Z_22\
        );

    \I__278\ : LocalMux
    port map (
            O => \N__1326\,
            I => \countZ0Z_22\
        );

    \I__277\ : InMux
    port map (
            O => \N__1321\,
            I => \N__1317\
        );

    \I__276\ : InMux
    port map (
            O => \N__1320\,
            I => \N__1314\
        );

    \I__275\ : LocalMux
    port map (
            O => \N__1317\,
            I => \countZ0Z_21\
        );

    \I__274\ : LocalMux
    port map (
            O => \N__1314\,
            I => \countZ0Z_21\
        );

    \I__273\ : InMux
    port map (
            O => \N__1309\,
            I => \N__1305\
        );

    \I__272\ : InMux
    port map (
            O => \N__1308\,
            I => \N__1302\
        );

    \I__271\ : LocalMux
    port map (
            O => \N__1305\,
            I => \countZ0Z_20\
        );

    \I__270\ : LocalMux
    port map (
            O => \N__1302\,
            I => \countZ0Z_20\
        );

    \I__269\ : InMux
    port map (
            O => \N__1297\,
            I => \N__1291\
        );

    \I__268\ : InMux
    port map (
            O => \N__1296\,
            I => \N__1291\
        );

    \I__267\ : LocalMux
    port map (
            O => \N__1291\,
            I => op_lt_op_lt_count8lto22_1
        );

    \I__266\ : InMux
    port map (
            O => \N__1288\,
            I => \N__1278\
        );

    \I__265\ : InMux
    port map (
            O => \N__1287\,
            I => \N__1278\
        );

    \I__264\ : InMux
    port map (
            O => \N__1286\,
            I => \N__1278\
        );

    \I__263\ : InMux
    port map (
            O => \N__1285\,
            I => \N__1274\
        );

    \I__262\ : LocalMux
    port map (
            O => \N__1278\,
            I => \N__1271\
        );

    \I__261\ : InMux
    port map (
            O => \N__1277\,
            I => \N__1268\
        );

    \I__260\ : LocalMux
    port map (
            O => \N__1274\,
            I => op_lt_op_lt_count8lto19_1_m4_i_a3_0
        );

    \I__259\ : Odrv4
    port map (
            O => \N__1271\,
            I => op_lt_op_lt_count8lto19_1_m4_i_a3_0
        );

    \I__258\ : LocalMux
    port map (
            O => \N__1268\,
            I => op_lt_op_lt_count8lto19_1_m4_i_a3_0
        );

    \I__257\ : InMux
    port map (
            O => \N__1261\,
            I => \N__1243\
        );

    \I__256\ : InMux
    port map (
            O => \N__1260\,
            I => \N__1243\
        );

    \I__255\ : InMux
    port map (
            O => \N__1259\,
            I => \N__1243\
        );

    \I__254\ : InMux
    port map (
            O => \N__1258\,
            I => \N__1243\
        );

    \I__253\ : InMux
    port map (
            O => \N__1257\,
            I => \N__1240\
        );

    \I__252\ : InMux
    port map (
            O => \N__1256\,
            I => \N__1231\
        );

    \I__251\ : InMux
    port map (
            O => \N__1255\,
            I => \N__1231\
        );

    \I__250\ : InMux
    port map (
            O => \N__1254\,
            I => \N__1231\
        );

    \I__249\ : InMux
    port map (
            O => \N__1253\,
            I => \N__1231\
        );

    \I__248\ : InMux
    port map (
            O => \N__1252\,
            I => \N__1228\
        );

    \I__247\ : LocalMux
    port map (
            O => \N__1243\,
            I => \N__1225\
        );

    \I__246\ : LocalMux
    port map (
            O => \N__1240\,
            I => op_lt_op_lt_count8lto22
        );

    \I__245\ : LocalMux
    port map (
            O => \N__1231\,
            I => op_lt_op_lt_count8lto22
        );

    \I__244\ : LocalMux
    port map (
            O => \N__1228\,
            I => op_lt_op_lt_count8lto22
        );

    \I__243\ : Odrv4
    port map (
            O => \N__1225\,
            I => op_lt_op_lt_count8lto22
        );

    \I__242\ : CascadeMux
    port map (
            O => \N__1216\,
            I => \N__1210\
        );

    \I__241\ : CascadeMux
    port map (
            O => \N__1215\,
            I => \N__1207\
        );

    \I__240\ : CascadeMux
    port map (
            O => \N__1214\,
            I => \N__1204\
        );

    \I__239\ : InMux
    port map (
            O => \N__1213\,
            I => \N__1201\
        );

    \I__238\ : InMux
    port map (
            O => \N__1210\,
            I => \N__1196\
        );

    \I__237\ : InMux
    port map (
            O => \N__1207\,
            I => \N__1196\
        );

    \I__236\ : InMux
    port map (
            O => \N__1204\,
            I => \N__1193\
        );

    \I__235\ : LocalMux
    port map (
            O => \N__1201\,
            I => \op_lt_op_lt_count8lto19_1_N_5\
        );

    \I__234\ : LocalMux
    port map (
            O => \N__1196\,
            I => \op_lt_op_lt_count8lto19_1_N_5\
        );

    \I__233\ : LocalMux
    port map (
            O => \N__1193\,
            I => \op_lt_op_lt_count8lto19_1_N_5\
        );

    \I__232\ : IoInMux
    port map (
            O => \N__1186\,
            I => \N__1183\
        );

    \I__231\ : LocalMux
    port map (
            O => \N__1183\,
            I => \N__1179\
        );

    \I__230\ : CascadeMux
    port map (
            O => \N__1182\,
            I => \N__1176\
        );

    \I__229\ : Span4Mux_s0_v
    port map (
            O => \N__1179\,
            I => \N__1173\
        );

    \I__228\ : InMux
    port map (
            O => \N__1176\,
            I => \N__1170\
        );

    \I__227\ : Odrv4
    port map (
            O => \N__1173\,
            I => led_c
        );

    \I__226\ : LocalMux
    port map (
            O => \N__1170\,
            I => led_c
        );

    \I__225\ : InMux
    port map (
            O => \N__1165\,
            I => \N__1162\
        );

    \I__224\ : LocalMux
    port map (
            O => \N__1162\,
            I => \N__1158\
        );

    \I__223\ : ClkMux
    port map (
            O => \N__1161\,
            I => \N__1135\
        );

    \I__222\ : Glb2LocalMux
    port map (
            O => \N__1158\,
            I => \N__1135\
        );

    \I__221\ : ClkMux
    port map (
            O => \N__1157\,
            I => \N__1135\
        );

    \I__220\ : ClkMux
    port map (
            O => \N__1156\,
            I => \N__1135\
        );

    \I__219\ : ClkMux
    port map (
            O => \N__1155\,
            I => \N__1135\
        );

    \I__218\ : ClkMux
    port map (
            O => \N__1154\,
            I => \N__1135\
        );

    \I__217\ : ClkMux
    port map (
            O => \N__1153\,
            I => \N__1135\
        );

    \I__216\ : ClkMux
    port map (
            O => \N__1152\,
            I => \N__1135\
        );

    \I__215\ : GlobalMux
    port map (
            O => \N__1135\,
            I => \N__1132\
        );

    \I__214\ : gio2CtrlBuf
    port map (
            O => \N__1132\,
            I => clk_c_g
        );

    \I__213\ : InMux
    port map (
            O => \N__1129\,
            I => \N__1126\
        );

    \I__212\ : LocalMux
    port map (
            O => \N__1126\,
            I => \N__1120\
        );

    \I__211\ : InMux
    port map (
            O => \N__1125\,
            I => \N__1117\
        );

    \I__210\ : InMux
    port map (
            O => \N__1124\,
            I => \N__1114\
        );

    \I__209\ : InMux
    port map (
            O => \N__1123\,
            I => \N__1111\
        );

    \I__208\ : Odrv4
    port map (
            O => \N__1120\,
            I => \countZ0Z_14\
        );

    \I__207\ : LocalMux
    port map (
            O => \N__1117\,
            I => \countZ0Z_14\
        );

    \I__206\ : LocalMux
    port map (
            O => \N__1114\,
            I => \countZ0Z_14\
        );

    \I__205\ : LocalMux
    port map (
            O => \N__1111\,
            I => \countZ0Z_14\
        );

    \I__204\ : InMux
    port map (
            O => \N__1102\,
            I => \N__1096\
        );

    \I__203\ : InMux
    port map (
            O => \N__1101\,
            I => \N__1093\
        );

    \I__202\ : InMux
    port map (
            O => \N__1100\,
            I => \N__1090\
        );

    \I__201\ : InMux
    port map (
            O => \N__1099\,
            I => \N__1087\
        );

    \I__200\ : LocalMux
    port map (
            O => \N__1096\,
            I => \countZ0Z_13\
        );

    \I__199\ : LocalMux
    port map (
            O => \N__1093\,
            I => \countZ0Z_13\
        );

    \I__198\ : LocalMux
    port map (
            O => \N__1090\,
            I => \countZ0Z_13\
        );

    \I__197\ : LocalMux
    port map (
            O => \N__1087\,
            I => \countZ0Z_13\
        );

    \I__196\ : CascadeMux
    port map (
            O => \N__1078\,
            I => \N__1073\
        );

    \I__195\ : CascadeMux
    port map (
            O => \N__1077\,
            I => \N__1070\
        );

    \I__194\ : CascadeMux
    port map (
            O => \N__1076\,
            I => \N__1067\
        );

    \I__193\ : InMux
    port map (
            O => \N__1073\,
            I => \N__1063\
        );

    \I__192\ : InMux
    port map (
            O => \N__1070\,
            I => \N__1058\
        );

    \I__191\ : InMux
    port map (
            O => \N__1067\,
            I => \N__1058\
        );

    \I__190\ : InMux
    port map (
            O => \N__1066\,
            I => \N__1055\
        );

    \I__189\ : LocalMux
    port map (
            O => \N__1063\,
            I => \countZ0Z_17\
        );

    \I__188\ : LocalMux
    port map (
            O => \N__1058\,
            I => \countZ0Z_17\
        );

    \I__187\ : LocalMux
    port map (
            O => \N__1055\,
            I => \countZ0Z_17\
        );

    \I__186\ : InMux
    port map (
            O => \N__1048\,
            I => \N__1042\
        );

    \I__185\ : InMux
    port map (
            O => \N__1047\,
            I => \N__1039\
        );

    \I__184\ : InMux
    port map (
            O => \N__1046\,
            I => \N__1036\
        );

    \I__183\ : InMux
    port map (
            O => \N__1045\,
            I => \N__1033\
        );

    \I__182\ : LocalMux
    port map (
            O => \N__1042\,
            I => \countZ0Z_12\
        );

    \I__181\ : LocalMux
    port map (
            O => \N__1039\,
            I => \countZ0Z_12\
        );

    \I__180\ : LocalMux
    port map (
            O => \N__1036\,
            I => \countZ0Z_12\
        );

    \I__179\ : LocalMux
    port map (
            O => \N__1033\,
            I => \countZ0Z_12\
        );

    \I__178\ : InMux
    port map (
            O => \N__1024\,
            I => \N__1021\
        );

    \I__177\ : LocalMux
    port map (
            O => \N__1021\,
            I => op_lt_op_lt_count8lto22_d_a0_1
        );

    \I__176\ : IoInMux
    port map (
            O => \N__1018\,
            I => \N__1015\
        );

    \I__175\ : LocalMux
    port map (
            O => \N__1015\,
            I => \N__1012\
        );

    \I__174\ : Span4Mux_s0_v
    port map (
            O => \N__1012\,
            I => \N__1009\
        );

    \I__173\ : Odrv4
    port map (
            O => \N__1009\,
            I => \CONSTANT_ONE_NET\
        );

    \I__172\ : CascadeMux
    port map (
            O => \N__1006\,
            I => \op_lt_op_lt_count8lto22_2_0_tz_cascade_\
        );

    \I__171\ : InMux
    port map (
            O => \N__1003\,
            I => \N__1000\
        );

    \I__170\ : LocalMux
    port map (
            O => \N__1000\,
            I => \count_RNO_0Z0Z_22\
        );

    \I__169\ : InMux
    port map (
            O => \N__997\,
            I => \N__994\
        );

    \I__168\ : LocalMux
    port map (
            O => \N__994\,
            I => \N__991\
        );

    \I__167\ : Odrv4
    port map (
            O => \N__991\,
            I => \count_RNO_0Z0Z_13\
        );

    \I__166\ : CascadeMux
    port map (
            O => \N__988\,
            I => \op_lt_op_lt_count8lto22_cascade_\
        );

    \I__165\ : CascadeMux
    port map (
            O => \N__985\,
            I => \op_lt_op_lt_count8lto14_0_0_cascade_\
        );

    \I__164\ : InMux
    port map (
            O => \N__982\,
            I => \N__976\
        );

    \I__163\ : InMux
    port map (
            O => \N__981\,
            I => \N__976\
        );

    \I__162\ : LocalMux
    port map (
            O => \N__976\,
            I => op_lt_op_lt_count8lt14
        );

    \I__161\ : InMux
    port map (
            O => \N__973\,
            I => \N__970\
        );

    \I__160\ : LocalMux
    port map (
            O => \N__970\,
            I => \count_RNO_0Z0Z_12\
        );

    \I__159\ : CascadeMux
    port map (
            O => \N__967\,
            I => \op_lt_op_lt_count8lt17_cascade_\
        );

    \I__158\ : InMux
    port map (
            O => \N__964\,
            I => \N__954\
        );

    \I__157\ : InMux
    port map (
            O => \N__963\,
            I => \N__954\
        );

    \I__156\ : InMux
    port map (
            O => \N__962\,
            I => \N__954\
        );

    \I__155\ : InMux
    port map (
            O => \N__961\,
            I => \N__951\
        );

    \I__154\ : LocalMux
    port map (
            O => \N__954\,
            I => \countZ0Z_16\
        );

    \I__153\ : LocalMux
    port map (
            O => \N__951\,
            I => \countZ0Z_16\
        );

    \I__152\ : CascadeMux
    port map (
            O => \N__946\,
            I => \N__943\
        );

    \I__151\ : InMux
    port map (
            O => \N__943\,
            I => \N__933\
        );

    \I__150\ : InMux
    port map (
            O => \N__942\,
            I => \N__933\
        );

    \I__149\ : InMux
    port map (
            O => \N__941\,
            I => \N__933\
        );

    \I__148\ : InMux
    port map (
            O => \N__940\,
            I => \N__930\
        );

    \I__147\ : LocalMux
    port map (
            O => \N__933\,
            I => \countZ0Z_15\
        );

    \I__146\ : LocalMux
    port map (
            O => \N__930\,
            I => \countZ0Z_15\
        );

    \I__145\ : InMux
    port map (
            O => \N__925\,
            I => \N__922\
        );

    \I__144\ : LocalMux
    port map (
            O => \N__922\,
            I => \count_RNO_0Z0Z_21\
        );

    \I__143\ : CascadeMux
    port map (
            O => \N__919\,
            I => \N__916\
        );

    \I__142\ : InMux
    port map (
            O => \N__916\,
            I => \N__913\
        );

    \I__141\ : LocalMux
    port map (
            O => \N__913\,
            I => \count_RNO_0Z0Z_17\
        );

    \I__140\ : InMux
    port map (
            O => \N__910\,
            I => \N__907\
        );

    \I__139\ : LocalMux
    port map (
            O => \N__907\,
            I => \count_RNO_0Z0Z_7\
        );

    \I__138\ : InMux
    port map (
            O => \N__904\,
            I => \N__900\
        );

    \I__137\ : InMux
    port map (
            O => \N__903\,
            I => \N__897\
        );

    \I__136\ : LocalMux
    port map (
            O => \N__900\,
            I => \countZ0Z_1\
        );

    \I__135\ : LocalMux
    port map (
            O => \N__897\,
            I => \countZ0Z_1\
        );

    \I__134\ : InMux
    port map (
            O => \N__892\,
            I => \N__889\
        );

    \I__133\ : LocalMux
    port map (
            O => \N__889\,
            I => \count_RNO_0Z0Z_5\
        );

    \I__132\ : InMux
    port map (
            O => \N__886\,
            I => \N__882\
        );

    \I__131\ : InMux
    port map (
            O => \N__885\,
            I => \N__879\
        );

    \I__130\ : LocalMux
    port map (
            O => \N__882\,
            I => \countZ0Z_9\
        );

    \I__129\ : LocalMux
    port map (
            O => \N__879\,
            I => \countZ0Z_9\
        );

    \I__128\ : InMux
    port map (
            O => \N__874\,
            I => \N__870\
        );

    \I__127\ : InMux
    port map (
            O => \N__873\,
            I => \N__867\
        );

    \I__126\ : LocalMux
    port map (
            O => \N__870\,
            I => \countZ0Z_8\
        );

    \I__125\ : LocalMux
    port map (
            O => \N__867\,
            I => \countZ0Z_8\
        );

    \I__124\ : CascadeMux
    port map (
            O => \N__862\,
            I => \N__859\
        );

    \I__123\ : InMux
    port map (
            O => \N__859\,
            I => \N__855\
        );

    \I__122\ : InMux
    port map (
            O => \N__858\,
            I => \N__852\
        );

    \I__121\ : LocalMux
    port map (
            O => \N__855\,
            I => \countZ0Z_10\
        );

    \I__120\ : LocalMux
    port map (
            O => \N__852\,
            I => \countZ0Z_10\
        );

    \I__119\ : InMux
    port map (
            O => \N__847\,
            I => \N__843\
        );

    \I__118\ : InMux
    port map (
            O => \N__846\,
            I => \N__840\
        );

    \I__117\ : LocalMux
    port map (
            O => \N__843\,
            I => \countZ0Z_11\
        );

    \I__116\ : LocalMux
    port map (
            O => \N__840\,
            I => \countZ0Z_11\
        );

    \I__115\ : InMux
    port map (
            O => \N__835\,
            I => \N__831\
        );

    \I__114\ : InMux
    port map (
            O => \N__834\,
            I => \N__828\
        );

    \I__113\ : LocalMux
    port map (
            O => \N__831\,
            I => \countZ0Z_7\
        );

    \I__112\ : LocalMux
    port map (
            O => \N__828\,
            I => \countZ0Z_7\
        );

    \I__111\ : CascadeMux
    port map (
            O => \N__823\,
            I => \op_lt_op_lt_count8lto11_2_cascade_\
        );

    \I__110\ : InMux
    port map (
            O => \N__820\,
            I => \N__816\
        );

    \I__109\ : InMux
    port map (
            O => \N__819\,
            I => \N__813\
        );

    \I__108\ : LocalMux
    port map (
            O => \N__816\,
            I => \countZ0Z_5\
        );

    \I__107\ : LocalMux
    port map (
            O => \N__813\,
            I => \countZ0Z_5\
        );

    \I__106\ : CascadeMux
    port map (
            O => \N__808\,
            I => \op_lt_op_lt_count8lt14_cascade_\
        );

    \I__105\ : CascadeMux
    port map (
            O => \N__805\,
            I => \op_lt_op_lt_count8lto19_1_N_5_cascade_\
        );

    \I__104\ : CascadeMux
    port map (
            O => \N__802\,
            I => \N__797\
        );

    \I__103\ : InMux
    port map (
            O => \N__801\,
            I => \N__792\
        );

    \I__102\ : InMux
    port map (
            O => \N__800\,
            I => \N__792\
        );

    \I__101\ : InMux
    port map (
            O => \N__797\,
            I => \N__789\
        );

    \I__100\ : LocalMux
    port map (
            O => \N__792\,
            I => \countZ0Z_0\
        );

    \I__99\ : LocalMux
    port map (
            O => \N__789\,
            I => \countZ0Z_0\
        );

    \I__98\ : InMux
    port map (
            O => \N__784\,
            I => \N__781\
        );

    \I__97\ : LocalMux
    port map (
            O => \N__781\,
            I => \count_RNO_0Z0Z_6\
        );

    \I__96\ : CascadeMux
    port map (
            O => \N__778\,
            I => \N__774\
        );

    \I__95\ : InMux
    port map (
            O => \N__777\,
            I => \N__771\
        );

    \I__94\ : InMux
    port map (
            O => \N__774\,
            I => \N__768\
        );

    \I__93\ : LocalMux
    port map (
            O => \N__771\,
            I => \countZ0Z_6\
        );

    \I__92\ : LocalMux
    port map (
            O => \N__768\,
            I => \countZ0Z_6\
        );

    \I__91\ : InMux
    port map (
            O => \N__763\,
            I => un2_count_1_cry_13
        );

    \I__90\ : InMux
    port map (
            O => \N__760\,
            I => un2_count_1_cry_14
        );

    \I__89\ : InMux
    port map (
            O => \N__757\,
            I => un2_count_1_cry_15
        );

    \I__88\ : InMux
    port map (
            O => \N__754\,
            I => \bfn_7_3_0_\
        );

    \I__87\ : InMux
    port map (
            O => \N__751\,
            I => un2_count_1_cry_17
        );

    \I__86\ : InMux
    port map (
            O => \N__748\,
            I => un2_count_1_cry_18
        );

    \I__85\ : InMux
    port map (
            O => \N__745\,
            I => un2_count_1_cry_19
        );

    \I__84\ : InMux
    port map (
            O => \N__742\,
            I => un2_count_1_cry_20
        );

    \I__83\ : InMux
    port map (
            O => \N__739\,
            I => un2_count_1_cry_21
        );

    \I__82\ : InMux
    port map (
            O => \N__736\,
            I => un2_count_1_cry_4
        );

    \I__81\ : InMux
    port map (
            O => \N__733\,
            I => un2_count_1_cry_5
        );

    \I__80\ : InMux
    port map (
            O => \N__730\,
            I => un2_count_1_cry_6
        );

    \I__79\ : InMux
    port map (
            O => \N__727\,
            I => un2_count_1_cry_7
        );

    \I__78\ : InMux
    port map (
            O => \N__724\,
            I => \bfn_7_2_0_\
        );

    \I__77\ : InMux
    port map (
            O => \N__721\,
            I => un2_count_1_cry_9
        );

    \I__76\ : InMux
    port map (
            O => \N__718\,
            I => un2_count_1_cry_10
        );

    \I__75\ : InMux
    port map (
            O => \N__715\,
            I => un2_count_1_cry_11
        );

    \I__74\ : InMux
    port map (
            O => \N__712\,
            I => un2_count_1_cry_12
        );

    \I__73\ : IoInMux
    port map (
            O => \N__709\,
            I => \N__706\
        );

    \I__72\ : LocalMux
    port map (
            O => \N__706\,
            I => \N__703\
        );

    \I__71\ : Span12Mux_s8_v
    port map (
            O => \N__703\,
            I => \N__700\
        );

    \I__70\ : Span12Mux_v
    port map (
            O => \N__700\,
            I => \N__697\
        );

    \I__69\ : Odrv12
    port map (
            O => \N__697\,
            I => \mypll_inst.clk_c\
        );

    \I__68\ : IoInMux
    port map (
            O => \N__694\,
            I => \N__691\
        );

    \I__67\ : LocalMux
    port map (
            O => \N__691\,
            I => \GB_BUFFER_clk_c_g_THRU_CO\
        );

    \I__66\ : InMux
    port map (
            O => \N__688\,
            I => \N__685\
        );

    \I__65\ : LocalMux
    port map (
            O => \N__685\,
            I => \countZ0Z_2\
        );

    \I__64\ : InMux
    port map (
            O => \N__682\,
            I => un2_count_1_cry_1
        );

    \I__63\ : InMux
    port map (
            O => \N__679\,
            I => \N__676\
        );

    \I__62\ : LocalMux
    port map (
            O => \N__676\,
            I => \countZ0Z_3\
        );

    \I__61\ : InMux
    port map (
            O => \N__673\,
            I => un2_count_1_cry_2
        );

    \I__60\ : InMux
    port map (
            O => \N__670\,
            I => \N__667\
        );

    \I__59\ : LocalMux
    port map (
            O => \N__667\,
            I => \countZ0Z_4\
        );

    \I__58\ : InMux
    port map (
            O => \N__664\,
            I => un2_count_1_cry_3
        );

    \IN_MUX_bfv_7_1_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "00"
        )
    port map (
            carryinitin => '0',
            carryinitout => \bfn_7_1_0_\
        );

    \IN_MUX_bfv_7_2_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => un2_count_1_cry_8,
            carryinitout => \bfn_7_2_0_\
        );

    \IN_MUX_bfv_7_3_0_\ : ICE_CARRY_IN_MUX
    generic map (
            C_INIT => "10"
        )
    port map (
            carryinitin => un2_count_1_cry_16,
            carryinitout => \bfn_7_3_0_\
        );

    \mypll_inst.PLLOUTCORE_derived_clock_RNIF7IB\ : ICE_GB
    port map (
            USERSIGNALTOGLOBALBUFFER => \N__709\,
            GLOBALBUFFEROUTPUT => clk_c_g
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

    \GB_BUFFER_clk_c_g_THRU_LUT4_0_LC_5_1_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101010101010"
        )
    port map (
            in0 => \N__1165\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \GB_BUFFER_clk_c_g_THRU_CO\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \un2_count_1_cry_1_c_LC_7_1_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__903\,
            in2 => \N__802\,
            in3 => \_gnd_net_\,
            lcout => OPEN,
            ltout => OPEN,
            carryin => \bfn_7_1_0_\,
            carryout => un2_count_1_cry_1,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_2_LC_7_1_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__688\,
            in2 => \_gnd_net_\,
            in3 => \N__682\,
            lcout => \countZ0Z_2\,
            ltout => OPEN,
            carryin => un2_count_1_cry_1,
            carryout => un2_count_1_cry_2,
            clk => \N__1154\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_3_LC_7_1_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__679\,
            in2 => \_gnd_net_\,
            in3 => \N__673\,
            lcout => \countZ0Z_3\,
            ltout => OPEN,
            carryin => un2_count_1_cry_2,
            carryout => un2_count_1_cry_3,
            clk => \N__1154\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_4_LC_7_1_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__670\,
            in2 => \_gnd_net_\,
            in3 => \N__664\,
            lcout => \countZ0Z_4\,
            ltout => OPEN,
            carryin => un2_count_1_cry_3,
            carryout => un2_count_1_cry_4,
            clk => \N__1154\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNO_0_5_LC_7_1_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__819\,
            in2 => \_gnd_net_\,
            in3 => \N__736\,
            lcout => \count_RNO_0Z0Z_5\,
            ltout => OPEN,
            carryin => un2_count_1_cry_4,
            carryout => un2_count_1_cry_5,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNO_0_6_LC_7_1_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1010010101011010"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__778\,
            in3 => \N__733\,
            lcout => \count_RNO_0Z0Z_6\,
            ltout => OPEN,
            carryin => un2_count_1_cry_5,
            carryout => un2_count_1_cry_6,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNO_0_7_LC_7_1_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__834\,
            in2 => \_gnd_net_\,
            in3 => \N__730\,
            lcout => \count_RNO_0Z0Z_7\,
            ltout => OPEN,
            carryin => un2_count_1_cry_6,
            carryout => un2_count_1_cry_7,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_8_LC_7_1_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__873\,
            in2 => \_gnd_net_\,
            in3 => \N__727\,
            lcout => \countZ0Z_8\,
            ltout => OPEN,
            carryin => un2_count_1_cry_7,
            carryout => un2_count_1_cry_8,
            clk => \N__1154\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_9_LC_7_2_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__885\,
            in2 => \_gnd_net_\,
            in3 => \N__724\,
            lcout => \countZ0Z_9\,
            ltout => OPEN,
            carryin => \bfn_7_2_0_\,
            carryout => un2_count_1_cry_9,
            clk => \N__1156\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_10_LC_7_2_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__858\,
            in2 => \_gnd_net_\,
            in3 => \N__721\,
            lcout => \countZ0Z_10\,
            ltout => OPEN,
            carryin => un2_count_1_cry_9,
            carryout => un2_count_1_cry_10,
            clk => \N__1156\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_11_LC_7_2_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__847\,
            in2 => \_gnd_net_\,
            in3 => \N__718\,
            lcout => \countZ0Z_11\,
            ltout => OPEN,
            carryin => un2_count_1_cry_10,
            carryout => un2_count_1_cry_11,
            clk => \N__1156\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNO_0_12_LC_7_2_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1045\,
            in2 => \_gnd_net_\,
            in3 => \N__715\,
            lcout => \count_RNO_0Z0Z_12\,
            ltout => OPEN,
            carryin => un2_count_1_cry_11,
            carryout => un2_count_1_cry_12,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNO_0_13_LC_7_2_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1099\,
            in2 => \_gnd_net_\,
            in3 => \N__712\,
            lcout => \count_RNO_0Z0Z_13\,
            ltout => OPEN,
            carryin => un2_count_1_cry_12,
            carryout => un2_count_1_cry_13,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNO_0_14_LC_7_2_5\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1123\,
            in2 => \_gnd_net_\,
            in3 => \N__763\,
            lcout => \count_RNO_0Z0Z_14\,
            ltout => OPEN,
            carryin => un2_count_1_cry_13,
            carryout => un2_count_1_cry_14,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_15_LC_7_2_6\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__940\,
            in2 => \_gnd_net_\,
            in3 => \N__760\,
            lcout => \countZ0Z_15\,
            ltout => OPEN,
            carryin => un2_count_1_cry_14,
            carryout => un2_count_1_cry_15,
            clk => \N__1156\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_16_LC_7_2_7\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__961\,
            in2 => \_gnd_net_\,
            in3 => \N__757\,
            lcout => \countZ0Z_16\,
            ltout => OPEN,
            carryin => un2_count_1_cry_15,
            carryout => un2_count_1_cry_16,
            clk => \N__1156\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNO_0_17_LC_7_3_0\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1066\,
            in2 => \_gnd_net_\,
            in3 => \N__754\,
            lcout => \count_RNO_0Z0Z_17\,
            ltout => OPEN,
            carryin => \bfn_7_3_0_\,
            carryout => un2_count_1_cry_17,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_18_LC_7_3_1\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1441\,
            in2 => \_gnd_net_\,
            in3 => \N__751\,
            lcout => \countZ0Z_18\,
            ltout => OPEN,
            carryin => un2_count_1_cry_17,
            carryout => un2_count_1_cry_18,
            clk => \N__1161\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_19_LC_7_3_2\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "1000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1418\,
            in2 => \_gnd_net_\,
            in3 => \N__748\,
            lcout => \countZ0Z_19\,
            ltout => OPEN,
            carryin => un2_count_1_cry_18,
            carryout => un2_count_1_cry_19,
            clk => \N__1161\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNO_0_20_LC_7_3_3\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1309\,
            in2 => \_gnd_net_\,
            in3 => \N__745\,
            lcout => \count_RNO_0Z0Z_20\,
            ltout => OPEN,
            carryin => un2_count_1_cry_19,
            carryout => un2_count_1_cry_20,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNO_0_21_LC_7_3_4\ : LogicCell40
    generic map (
            C_ON => '1',
            SEQ_MODE => "0000",
            LUT_INIT => "1001100101100110"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1321\,
            in2 => \_gnd_net_\,
            in3 => \N__742\,
            lcout => \count_RNO_0Z0Z_21\,
            ltout => OPEN,
            carryin => un2_count_1_cry_20,
            carryout => un2_count_1_cry_21,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_22_LC_7_3_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0010001010001000"
        )
    port map (
            in0 => \N__1003\,
            in1 => \N__1333\,
            in2 => \_gnd_net_\,
            in3 => \N__739\,
            lcout => \countZ0Z_22\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1161\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_7_LC_8_1_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1000000011001100"
        )
    port map (
            in0 => \N__1288\,
            in1 => \N__910\,
            in2 => \N__1216\,
            in3 => \N__1256\,
            lcout => \countZ0Z_7\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1153\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_1_LC_8_1_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100001100111100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__800\,
            in2 => \_gnd_net_\,
            in3 => \N__904\,
            lcout => \countZ0Z_1\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1153\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_5_LC_8_1_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1000000011001100"
        )
    port map (
            in0 => \N__1286\,
            in1 => \N__892\,
            in2 => \N__1215\,
            in3 => \N__1255\,
            lcout => \countZ0Z_5\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1153\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNIOBUR_8_LC_8_1_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000001"
        )
    port map (
            in0 => \N__886\,
            in1 => \N__874\,
            in2 => \N__862\,
            in3 => \N__846\,
            lcout => OPEN,
            ltout => \op_lt_op_lt_count8lto11_2_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNITTD11_5_LC_8_1_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0111000011110000"
        )
    port map (
            in0 => \N__835\,
            in1 => \N__777\,
            in2 => \N__823\,
            in3 => \N__820\,
            lcout => op_lt_op_lt_count8lt14,
            ltout => \op_lt_op_lt_count8lt14_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNICTR52_12_LC_8_1_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111011111111111"
        )
    port map (
            in0 => \N__1129\,
            in1 => \N__1102\,
            in2 => \N__808\,
            in3 => \N__1048\,
            lcout => \op_lt_op_lt_count8lto19_1_N_5\,
            ltout => \op_lt_op_lt_count8lto19_1_N_5_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_0_LC_8_1_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0101000100010001"
        )
    port map (
            in0 => \N__801\,
            in1 => \N__1254\,
            in2 => \N__805\,
            in3 => \N__1277\,
            lcout => \countZ0Z_0\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1153\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_6_LC_8_1_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101010100000000"
        )
    port map (
            in0 => \N__1253\,
            in1 => \N__1287\,
            in2 => \N__1214\,
            in3 => \N__784\,
            lcout => \countZ0Z_6\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1153\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNO_1_22_LC_8_2_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0001111100000000"
        )
    port map (
            in0 => \N__962\,
            in1 => \N__941\,
            in2 => \N__1076\,
            in3 => \N__1385\,
            lcout => OPEN,
            ltout => \op_lt_op_lt_count8lto22_2_0_tz_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNO_0_22_LC_8_2_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111010101110101"
        )
    port map (
            in0 => \N__1296\,
            in1 => \N__1024\,
            in2 => \N__1006\,
            in3 => \N__982\,
            lcout => \count_RNO_0Z0Z_22\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNIAEV82_17_LC_8_2_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100110011001000"
        )
    port map (
            in0 => \N__1443\,
            in1 => \N__1297\,
            in2 => \N__1077\,
            in3 => \N__1419\,
            lcout => op_lt_op_lt_count8lto22,
            ltout => \op_lt_op_lt_count8lto22_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_13_LC_8_2_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1000110000001100"
        )
    port map (
            in0 => \N__1386\,
            in1 => \N__997\,
            in2 => \N__988\,
            in3 => \N__1364\,
            lcout => \countZ0Z_13\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1155\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNIFVD41_12_LC_8_2_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000100000000000"
        )
    port map (
            in0 => \N__1047\,
            in1 => \N__1101\,
            in2 => \_gnd_net_\,
            in3 => \N__1125\,
            lcout => OPEN,
            ltout => \op_lt_op_lt_count8lto14_0_0_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNIRC5U2_15_LC_8_2_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0001000100000001"
        )
    port map (
            in0 => \N__942\,
            in1 => \N__963\,
            in2 => \N__985\,
            in3 => \N__981\,
            lcout => op_lt_op_lt_count8lt17,
            ltout => \op_lt_op_lt_count8lt17_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_12_LC_8_2_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100010001000100"
        )
    port map (
            in0 => \N__1252\,
            in1 => \N__973\,
            in2 => \N__967\,
            in3 => \N__1387\,
            lcout => \countZ0Z_12\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1155\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNI45JG1_15_LC_8_2_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000000001"
        )
    port map (
            in0 => \N__1420\,
            in1 => \N__964\,
            in2 => \N__946\,
            in3 => \N__1442\,
            lcout => op_lt_op_lt_count8lto19_1_m4_i_a3_0,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_21_LC_8_3_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1011001100000000"
        )
    port map (
            in0 => \N__1389\,
            in1 => \N__1261\,
            in2 => \N__1366\,
            in3 => \N__925\,
            lcout => \countZ0Z_21\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1157\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_17_LC_8_3_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101000001010000"
        )
    port map (
            in0 => \N__1259\,
            in1 => \N__1363\,
            in2 => \N__919\,
            in3 => \N__1390\,
            lcout => \countZ0Z_17\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1157\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNILL9O_18_LC_8_3_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000000001111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__1444\,
            in3 => \N__1417\,
            lcout => op_lt_op_lt_count8lto19_0,
            ltout => \op_lt_op_lt_count8lto19_0_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_14_LC_8_3_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100010001000100"
        )
    port map (
            in0 => \N__1258\,
            in1 => \N__1399\,
            in2 => \N__1393\,
            in3 => \N__1362\,
            lcout => \countZ0Z_14\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1157\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_20_LC_8_3_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1011001100000000"
        )
    port map (
            in0 => \N__1388\,
            in1 => \N__1260\,
            in2 => \N__1365\,
            in3 => \N__1339\,
            lcout => \countZ0Z_20\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1157\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNICVG41_22_LC_8_3_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000100000000000"
        )
    port map (
            in0 => \N__1332\,
            in1 => \N__1320\,
            in2 => \_gnd_net_\,
            in3 => \N__1308\,
            lcout => op_lt_op_lt_count8lto22_1,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \ledZ0_LC_9_1_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1011010000111100"
        )
    port map (
            in0 => \N__1285\,
            in1 => \N__1257\,
            in2 => \N__1182\,
            in3 => \N__1213\,
            lcout => led_c,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1152\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \count_RNO_2_22_LC_9_2_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000000000000000"
        )
    port map (
            in0 => \N__1124\,
            in1 => \N__1100\,
            in2 => \N__1078\,
            in3 => \N__1046\,
            lcout => op_lt_op_lt_count8lto22_d_a0_1,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \CONSTANT_ONE_LUT4_LC_12_30_1\ : LogicCell40
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
