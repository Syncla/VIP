// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 11 2017 17:30:03

// File Generated:     Feb 5 2018 17:54:25

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "SPI_TEST_MODULE" view "INTERFACE"

module SPI_TEST_MODULE (
    SCK,
    MOSI,
    MISO,
    LEDR,
    clk,
    SS,
    LEDG);

    input SCK;
    input MOSI;
    output MISO;
    output LEDR;
    input clk;
    input SS;
    output LEDG;

    wire N__1286;
    wire N__1272;
    wire N__1271;
    wire N__1270;
    wire N__1263;
    wire N__1262;
    wire N__1261;
    wire N__1254;
    wire N__1253;
    wire N__1252;
    wire N__1245;
    wire N__1244;
    wire N__1243;
    wire N__1236;
    wire N__1235;
    wire N__1234;
    wire N__1227;
    wire N__1226;
    wire N__1225;
    wire N__1208;
    wire N__1207;
    wire N__1206;
    wire N__1203;
    wire N__1202;
    wire N__1199;
    wire N__1192;
    wire N__1187;
    wire N__1186;
    wire N__1185;
    wire N__1182;
    wire N__1179;
    wire N__1178;
    wire N__1177;
    wire N__1176;
    wire N__1175;
    wire N__1174;
    wire N__1173;
    wire N__1172;
    wire N__1171;
    wire N__1168;
    wire N__1167;
    wire N__1166;
    wire N__1165;
    wire N__1164;
    wire N__1161;
    wire N__1158;
    wire N__1153;
    wire N__1140;
    wire N__1137;
    wire N__1128;
    wire N__1115;
    wire N__1114;
    wire N__1111;
    wire N__1108;
    wire N__1103;
    wire N__1100;
    wire N__1099;
    wire N__1098;
    wire N__1095;
    wire N__1092;
    wire N__1089;
    wire N__1086;
    wire N__1079;
    wire N__1078;
    wire N__1073;
    wire N__1070;
    wire N__1069;
    wire N__1066;
    wire N__1063;
    wire N__1058;
    wire N__1055;
    wire N__1052;
    wire N__1049;
    wire N__1048;
    wire N__1045;
    wire N__1042;
    wire N__1039;
    wire N__1036;
    wire N__1035;
    wire N__1032;
    wire N__1029;
    wire N__1028;
    wire N__1025;
    wire N__1020;
    wire N__1015;
    wire N__1010;
    wire N__1007;
    wire N__1004;
    wire N__1001;
    wire N__998;
    wire N__995;
    wire N__992;
    wire N__991;
    wire N__990;
    wire N__989;
    wire N__988;
    wire N__983;
    wire N__976;
    wire N__971;
    wire N__968;
    wire N__965;
    wire N__962;
    wire N__959;
    wire N__956;
    wire N__953;
    wire N__952;
    wire N__951;
    wire N__948;
    wire N__943;
    wire N__938;
    wire N__937;
    wire N__936;
    wire N__935;
    wire N__934;
    wire N__933;
    wire N__932;
    wire N__931;
    wire N__930;
    wire N__929;
    wire N__928;
    wire N__927;
    wire N__926;
    wire N__925;
    wire N__896;
    wire N__893;
    wire N__890;
    wire N__887;
    wire N__884;
    wire N__881;
    wire N__878;
    wire N__875;
    wire N__872;
    wire N__869;
    wire N__866;
    wire N__865;
    wire N__860;
    wire N__857;
    wire N__854;
    wire N__853;
    wire N__850;
    wire N__847;
    wire N__844;
    wire N__841;
    wire N__838;
    wire N__835;
    wire N__830;
    wire N__827;
    wire N__824;
    wire N__821;
    wire N__820;
    wire N__817;
    wire N__816;
    wire N__813;
    wire N__810;
    wire N__807;
    wire N__804;
    wire N__797;
    wire N__796;
    wire N__793;
    wire N__790;
    wire N__785;
    wire N__784;
    wire N__781;
    wire N__778;
    wire N__773;
    wire N__772;
    wire N__769;
    wire N__766;
    wire N__761;
    wire N__760;
    wire N__757;
    wire N__754;
    wire N__749;
    wire N__748;
    wire N__745;
    wire N__742;
    wire N__737;
    wire N__736;
    wire N__733;
    wire N__730;
    wire N__725;
    wire N__722;
    wire N__719;
    wire N__716;
    wire N__713;
    wire N__710;
    wire N__707;
    wire N__704;
    wire N__701;
    wire N__698;
    wire N__695;
    wire N__692;
    wire N__689;
    wire N__686;
    wire N__683;
    wire N__680;
    wire N__677;
    wire N__674;
    wire N__671;
    wire N__668;
    wire N__665;
    wire N__662;
    wire N__659;
    wire N__656;
    wire N__653;
    wire N__650;
    wire N__647;
    wire N__644;
    wire N__641;
    wire N__638;
    wire N__635;
    wire N__632;
    wire N__629;
    wire N__626;
    wire N__623;
    wire N__620;
    wire N__617;
    wire N__614;
    wire N__611;
    wire N__608;
    wire N__607;
    wire N__604;
    wire N__601;
    wire N__596;
    wire N__593;
    wire N__590;
    wire N__587;
    wire N__584;
    wire \mypll_inst.outclk ;
    wire VCCG0;
    wire GNDG0;
    wire txZ0Z_5;
    wire txZ0Z_4;
    wire \spi.TxDataZ0Z_4 ;
    wire txZ0Z_3;
    wire \spi.TxDataZ0Z_3 ;
    wire txZ0Z_1;
    wire \spi.TxDataZ0Z_0 ;
    wire txZ0Z_2;
    wire \spi.TxDataZ0Z_1 ;
    wire \spi.TxDataZ0Z_2 ;
    wire rx_7;
    wire rx_2;
    wire rx_3;
    wire rx_4;
    wire rx_1;
    wire rx_5;
    wire rx_6;
    wire txZ0Z_6;
    wire \spi.TxDataZ0Z_5 ;
    wire txZ0Z_7;
    wire \spi.TxDataZ0Z_6 ;
    wire MISO_c;
    wire txZ0Z_0;
    wire \spi.SPI_DONE_0_sqmuxa_2_cascade_ ;
    wire \spi.SPI_DONE_0_sqmuxa_cascade_ ;
    wire \spi.un1_SPI_DONE_0_sqmuxa_1_0_cascade_ ;
    wire \spi.CO1_0_1_cascade_ ;
    wire \spi.indexZ0Z_2 ;
    wire \spi.RxdData_0_sqmuxa_cascade_ ;
    wire \spi.TxData_5_sn_N_2 ;
    wire \spi.MOSI_latchedZ0 ;
    wire rx_0;
    wire \spi.indexZ0Z_0 ;
    wire \spi.RxdData_0_sqmuxa ;
    wire \spi.un1_SPI_DONE_0_sqmuxa_1_0 ;
    wire \spi.indexZ0Z_1 ;
    wire \spi.SCLK_oldZ0 ;
    wire \spi.SS_oldZ0 ;
    wire \spi.SPI_DONE_0_sqmuxa ;
    wire done;
    wire sendDataZ0;
    wire SS_c;
    wire \spi.SS_latchedZ0 ;
    wire SCK_c;
    wire \spi.SCLK_latchedZ0 ;
    wire outclk_g;
    wire CONSTANT_ONE_NET;
    wire _gnd_net_;

    defparam \mypll_inst.mypll_inst_pll .DELAY_ADJUSTMENT_MODE_FEEDBACK="FIXED";
    defparam \mypll_inst.mypll_inst_pll .TEST_MODE=1'b0;
    defparam \mypll_inst.mypll_inst_pll .SHIFTREG_DIV_MODE=2'b00;
    defparam \mypll_inst.mypll_inst_pll .PLLOUT_SELECT="GENCLK";
    defparam \mypll_inst.mypll_inst_pll .FILTER_RANGE=3'b001;
    defparam \mypll_inst.mypll_inst_pll .FEEDBACK_PATH="SIMPLE";
    defparam \mypll_inst.mypll_inst_pll .FDA_RELATIVE=4'b0000;
    defparam \mypll_inst.mypll_inst_pll .FDA_FEEDBACK=4'b0000;
    defparam \mypll_inst.mypll_inst_pll .ENABLE_ICEGATE=1'b0;
    defparam \mypll_inst.mypll_inst_pll .DIVR=4'b0000;
    defparam \mypll_inst.mypll_inst_pll .DIVQ=3'b100;
    defparam \mypll_inst.mypll_inst_pll .DIVF=7'b0111111;
    defparam \mypll_inst.mypll_inst_pll .DELAY_ADJUSTMENT_MODE_RELATIVE="FIXED";
    PLL40 \mypll_inst.mypll_inst_pll  (
            .PLLOUTGLOBAL(),
            .SDI(GNDG0),
            .BYPASS(GNDG0),
            .RESETB(N__890),
            .PLLOUTCORE(\mypll_inst.outclk ),
            .LOCK(),
            .SDO(),
            .SCLK(GNDG0),
            .LATCHINPUTVALUE(GNDG0),
            .EXTFEEDBACK(GNDG0),
            .DYNAMICDELAY({GNDG0,GNDG0,GNDG0,GNDG0,GNDG0,GNDG0,GNDG0,GNDG0}),
            .PLLIN(N__1286));
    IO_PAD \mypll_inst.mypll_inst_iopad  (
            .OE(VCCG0),
            .DIN(),
            .DOUT(N__1286),
            .PACKAGEPIN(clk));
    IO_PAD LEDR_obuf_iopad (
            .OE(N__1272),
            .DIN(N__1271),
            .DOUT(N__1270),
            .PACKAGEPIN(LEDR));
    defparam LEDR_obuf_preio.NEG_TRIGGER=1'b0;
    defparam LEDR_obuf_preio.PIN_TYPE=6'b010101;
    PRE_IO LEDR_obuf_preio (
            .PADOEN(N__1272),
            .PADOUT(N__1271),
            .PADIN(N__1270),
            .CLOCKENABLE(N__1052),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__617),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK(N__938));
    IO_PAD MOSI_ibuf_iopad (
            .OE(N__1263),
            .DIN(N__1262),
            .DOUT(N__1261),
            .PACKAGEPIN(MOSI));
    defparam MOSI_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam MOSI_ibuf_preio.PIN_TYPE=6'b000000;
    PRE_IO MOSI_ibuf_preio (
            .PADOEN(N__1263),
            .PADOUT(N__1262),
            .PADIN(N__1261),
            .CLOCKENABLE(VCCG0),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(\spi.MOSI_latchedZ0 ),
            .DOUT0(),
            .INPUTCLK(N__936),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD MISO_obuf_iopad (
            .OE(N__1254),
            .DIN(N__1253),
            .DOUT(N__1252),
            .PACKAGEPIN(MISO));
    defparam MISO_obuf_preio.NEG_TRIGGER=1'b0;
    defparam MISO_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO MISO_obuf_preio (
            .PADOEN(N__1254),
            .PADOUT(N__1253),
            .PADIN(N__1252),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__698),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD SCK_ibuf_iopad (
            .OE(N__1245),
            .DIN(N__1244),
            .DOUT(N__1243),
            .PACKAGEPIN(SCK));
    defparam SCK_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam SCK_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO SCK_ibuf_preio (
            .PADOEN(N__1245),
            .PADOUT(N__1244),
            .PADIN(N__1243),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(SCK_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD SS_ibuf_iopad (
            .OE(N__1236),
            .DIN(N__1235),
            .DOUT(N__1234),
            .PACKAGEPIN(SS));
    defparam SS_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam SS_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO SS_ibuf_preio (
            .PADOEN(N__1236),
            .PADOUT(N__1235),
            .PADIN(N__1234),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(SS_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD LEDG_obuf_iopad (
            .OE(N__1227),
            .DIN(N__1226),
            .DOUT(N__1225),
            .PACKAGEPIN(LEDG));
    defparam LEDG_obuf_preio.NEG_TRIGGER=1'b0;
    defparam LEDG_obuf_preio.PIN_TYPE=6'b010101;
    PRE_IO LEDG_obuf_preio (
            .PADOEN(N__1227),
            .PADOUT(N__1226),
            .PADIN(N__1225),
            .CLOCKENABLE(N__1048),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__824),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK(N__937));
    CascadeMux I__259 (
            .O(N__1208),
            .I(N__1203));
    InMux I__258 (
            .O(N__1207),
            .I(N__1199));
    InMux I__257 (
            .O(N__1206),
            .I(N__1192));
    InMux I__256 (
            .O(N__1203),
            .I(N__1192));
    InMux I__255 (
            .O(N__1202),
            .I(N__1192));
    LocalMux I__254 (
            .O(N__1199),
            .I(\spi.indexZ0Z_0 ));
    LocalMux I__253 (
            .O(N__1192),
            .I(\spi.indexZ0Z_0 ));
    CEMux I__252 (
            .O(N__1187),
            .I(N__1182));
    CEMux I__251 (
            .O(N__1186),
            .I(N__1179));
    CascadeMux I__250 (
            .O(N__1185),
            .I(N__1168));
    LocalMux I__249 (
            .O(N__1182),
            .I(N__1161));
    LocalMux I__248 (
            .O(N__1179),
            .I(N__1158));
    InMux I__247 (
            .O(N__1178),
            .I(N__1153));
    InMux I__246 (
            .O(N__1177),
            .I(N__1153));
    InMux I__245 (
            .O(N__1176),
            .I(N__1140));
    InMux I__244 (
            .O(N__1175),
            .I(N__1140));
    InMux I__243 (
            .O(N__1174),
            .I(N__1140));
    InMux I__242 (
            .O(N__1173),
            .I(N__1140));
    InMux I__241 (
            .O(N__1172),
            .I(N__1140));
    InMux I__240 (
            .O(N__1171),
            .I(N__1140));
    InMux I__239 (
            .O(N__1168),
            .I(N__1137));
    InMux I__238 (
            .O(N__1167),
            .I(N__1128));
    InMux I__237 (
            .O(N__1166),
            .I(N__1128));
    InMux I__236 (
            .O(N__1165),
            .I(N__1128));
    InMux I__235 (
            .O(N__1164),
            .I(N__1128));
    Odrv12 I__234 (
            .O(N__1161),
            .I(\spi.RxdData_0_sqmuxa ));
    Odrv12 I__233 (
            .O(N__1158),
            .I(\spi.RxdData_0_sqmuxa ));
    LocalMux I__232 (
            .O(N__1153),
            .I(\spi.RxdData_0_sqmuxa ));
    LocalMux I__231 (
            .O(N__1140),
            .I(\spi.RxdData_0_sqmuxa ));
    LocalMux I__230 (
            .O(N__1137),
            .I(\spi.RxdData_0_sqmuxa ));
    LocalMux I__229 (
            .O(N__1128),
            .I(\spi.RxdData_0_sqmuxa ));
    InMux I__228 (
            .O(N__1115),
            .I(N__1111));
    InMux I__227 (
            .O(N__1114),
            .I(N__1108));
    LocalMux I__226 (
            .O(N__1111),
            .I(\spi.un1_SPI_DONE_0_sqmuxa_1_0 ));
    LocalMux I__225 (
            .O(N__1108),
            .I(\spi.un1_SPI_DONE_0_sqmuxa_1_0 ));
    CascadeMux I__224 (
            .O(N__1103),
            .I(N__1100));
    InMux I__223 (
            .O(N__1100),
            .I(N__1095));
    InMux I__222 (
            .O(N__1099),
            .I(N__1092));
    InMux I__221 (
            .O(N__1098),
            .I(N__1089));
    LocalMux I__220 (
            .O(N__1095),
            .I(N__1086));
    LocalMux I__219 (
            .O(N__1092),
            .I(\spi.indexZ0Z_1 ));
    LocalMux I__218 (
            .O(N__1089),
            .I(\spi.indexZ0Z_1 ));
    Odrv12 I__217 (
            .O(N__1086),
            .I(\spi.indexZ0Z_1 ));
    InMux I__216 (
            .O(N__1079),
            .I(N__1073));
    InMux I__215 (
            .O(N__1078),
            .I(N__1073));
    LocalMux I__214 (
            .O(N__1073),
            .I(\spi.SCLK_oldZ0 ));
    InMux I__213 (
            .O(N__1070),
            .I(N__1066));
    InMux I__212 (
            .O(N__1069),
            .I(N__1063));
    LocalMux I__211 (
            .O(N__1066),
            .I(\spi.SS_oldZ0 ));
    LocalMux I__210 (
            .O(N__1063),
            .I(\spi.SS_oldZ0 ));
    InMux I__209 (
            .O(N__1058),
            .I(N__1055));
    LocalMux I__208 (
            .O(N__1055),
            .I(\spi.SPI_DONE_0_sqmuxa ));
    CEMux I__207 (
            .O(N__1052),
            .I(N__1049));
    LocalMux I__206 (
            .O(N__1049),
            .I(N__1045));
    CEMux I__205 (
            .O(N__1048),
            .I(N__1042));
    IoSpan4Mux I__204 (
            .O(N__1045),
            .I(N__1039));
    LocalMux I__203 (
            .O(N__1042),
            .I(N__1036));
    Span4Mux_s1_v I__202 (
            .O(N__1039),
            .I(N__1032));
    Span4Mux_s1_v I__201 (
            .O(N__1036),
            .I(N__1029));
    CascadeMux I__200 (
            .O(N__1035),
            .I(N__1025));
    Span4Mux_h I__199 (
            .O(N__1032),
            .I(N__1020));
    Span4Mux_h I__198 (
            .O(N__1029),
            .I(N__1020));
    InMux I__197 (
            .O(N__1028),
            .I(N__1015));
    InMux I__196 (
            .O(N__1025),
            .I(N__1015));
    Odrv4 I__195 (
            .O(N__1020),
            .I(done));
    LocalMux I__194 (
            .O(N__1015),
            .I(done));
    InMux I__193 (
            .O(N__1010),
            .I(N__1007));
    LocalMux I__192 (
            .O(N__1007),
            .I(sendDataZ0));
    InMux I__191 (
            .O(N__1004),
            .I(N__1001));
    LocalMux I__190 (
            .O(N__1001),
            .I(N__998));
    Span4Mux_h I__189 (
            .O(N__998),
            .I(N__995));
    Odrv4 I__188 (
            .O(N__995),
            .I(SS_c));
    InMux I__187 (
            .O(N__992),
            .I(N__983));
    InMux I__186 (
            .O(N__991),
            .I(N__983));
    InMux I__185 (
            .O(N__990),
            .I(N__976));
    InMux I__184 (
            .O(N__989),
            .I(N__976));
    InMux I__183 (
            .O(N__988),
            .I(N__976));
    LocalMux I__182 (
            .O(N__983),
            .I(\spi.SS_latchedZ0 ));
    LocalMux I__181 (
            .O(N__976),
            .I(\spi.SS_latchedZ0 ));
    InMux I__180 (
            .O(N__971),
            .I(N__968));
    LocalMux I__179 (
            .O(N__968),
            .I(N__965));
    IoSpan4Mux I__178 (
            .O(N__965),
            .I(N__962));
    IoSpan4Mux I__177 (
            .O(N__962),
            .I(N__959));
    Odrv4 I__176 (
            .O(N__959),
            .I(SCK_c));
    InMux I__175 (
            .O(N__956),
            .I(N__953));
    LocalMux I__174 (
            .O(N__953),
            .I(N__948));
    InMux I__173 (
            .O(N__952),
            .I(N__943));
    InMux I__172 (
            .O(N__951),
            .I(N__943));
    Odrv4 I__171 (
            .O(N__948),
            .I(\spi.SCLK_latchedZ0 ));
    LocalMux I__170 (
            .O(N__943),
            .I(\spi.SCLK_latchedZ0 ));
    ClkMux I__169 (
            .O(N__938),
            .I(N__896));
    ClkMux I__168 (
            .O(N__937),
            .I(N__896));
    ClkMux I__167 (
            .O(N__936),
            .I(N__896));
    ClkMux I__166 (
            .O(N__935),
            .I(N__896));
    ClkMux I__165 (
            .O(N__934),
            .I(N__896));
    ClkMux I__164 (
            .O(N__933),
            .I(N__896));
    ClkMux I__163 (
            .O(N__932),
            .I(N__896));
    ClkMux I__162 (
            .O(N__931),
            .I(N__896));
    ClkMux I__161 (
            .O(N__930),
            .I(N__896));
    ClkMux I__160 (
            .O(N__929),
            .I(N__896));
    ClkMux I__159 (
            .O(N__928),
            .I(N__896));
    ClkMux I__158 (
            .O(N__927),
            .I(N__896));
    ClkMux I__157 (
            .O(N__926),
            .I(N__896));
    ClkMux I__156 (
            .O(N__925),
            .I(N__896));
    GlobalMux I__155 (
            .O(N__896),
            .I(N__893));
    gio2CtrlBuf I__154 (
            .O(N__893),
            .I(outclk_g));
    IoInMux I__153 (
            .O(N__890),
            .I(N__887));
    LocalMux I__152 (
            .O(N__887),
            .I(N__884));
    Span4Mux_s0_v I__151 (
            .O(N__884),
            .I(N__881));
    Odrv4 I__150 (
            .O(N__881),
            .I(CONSTANT_ONE_NET));
    CascadeMux I__149 (
            .O(N__878),
            .I(\spi.SPI_DONE_0_sqmuxa_2_cascade_ ));
    CascadeMux I__148 (
            .O(N__875),
            .I(\spi.SPI_DONE_0_sqmuxa_cascade_ ));
    CascadeMux I__147 (
            .O(N__872),
            .I(\spi.un1_SPI_DONE_0_sqmuxa_1_0_cascade_ ));
    CascadeMux I__146 (
            .O(N__869),
            .I(\spi.CO1_0_1_cascade_ ));
    InMux I__145 (
            .O(N__866),
            .I(N__860));
    InMux I__144 (
            .O(N__865),
            .I(N__860));
    LocalMux I__143 (
            .O(N__860),
            .I(\spi.indexZ0Z_2 ));
    CascadeMux I__142 (
            .O(N__857),
            .I(\spi.RxdData_0_sqmuxa_cascade_ ));
    SRMux I__141 (
            .O(N__854),
            .I(N__850));
    SRMux I__140 (
            .O(N__853),
            .I(N__847));
    LocalMux I__139 (
            .O(N__850),
            .I(N__844));
    LocalMux I__138 (
            .O(N__847),
            .I(N__841));
    Span4Mux_s1_v I__137 (
            .O(N__844),
            .I(N__838));
    Span4Mux_h I__136 (
            .O(N__841),
            .I(N__835));
    Odrv4 I__135 (
            .O(N__838),
            .I(\spi.TxData_5_sn_N_2 ));
    Odrv4 I__134 (
            .O(N__835),
            .I(\spi.TxData_5_sn_N_2 ));
    InMux I__133 (
            .O(N__830),
            .I(N__827));
    LocalMux I__132 (
            .O(N__827),
            .I(\spi.MOSI_latchedZ0 ));
    IoInMux I__131 (
            .O(N__824),
            .I(N__821));
    LocalMux I__130 (
            .O(N__821),
            .I(N__817));
    InMux I__129 (
            .O(N__820),
            .I(N__813));
    Span4Mux_s0_v I__128 (
            .O(N__817),
            .I(N__810));
    InMux I__127 (
            .O(N__816),
            .I(N__807));
    LocalMux I__126 (
            .O(N__813),
            .I(N__804));
    Odrv4 I__125 (
            .O(N__810),
            .I(rx_0));
    LocalMux I__124 (
            .O(N__807),
            .I(rx_0));
    Odrv4 I__123 (
            .O(N__804),
            .I(rx_0));
    InMux I__122 (
            .O(N__797),
            .I(N__793));
    InMux I__121 (
            .O(N__796),
            .I(N__790));
    LocalMux I__120 (
            .O(N__793),
            .I(rx_2));
    LocalMux I__119 (
            .O(N__790),
            .I(rx_2));
    InMux I__118 (
            .O(N__785),
            .I(N__781));
    InMux I__117 (
            .O(N__784),
            .I(N__778));
    LocalMux I__116 (
            .O(N__781),
            .I(rx_3));
    LocalMux I__115 (
            .O(N__778),
            .I(rx_3));
    InMux I__114 (
            .O(N__773),
            .I(N__769));
    InMux I__113 (
            .O(N__772),
            .I(N__766));
    LocalMux I__112 (
            .O(N__769),
            .I(rx_4));
    LocalMux I__111 (
            .O(N__766),
            .I(rx_4));
    InMux I__110 (
            .O(N__761),
            .I(N__757));
    InMux I__109 (
            .O(N__760),
            .I(N__754));
    LocalMux I__108 (
            .O(N__757),
            .I(rx_1));
    LocalMux I__107 (
            .O(N__754),
            .I(rx_1));
    InMux I__106 (
            .O(N__749),
            .I(N__745));
    InMux I__105 (
            .O(N__748),
            .I(N__742));
    LocalMux I__104 (
            .O(N__745),
            .I(rx_5));
    LocalMux I__103 (
            .O(N__742),
            .I(rx_5));
    InMux I__102 (
            .O(N__737),
            .I(N__733));
    InMux I__101 (
            .O(N__736),
            .I(N__730));
    LocalMux I__100 (
            .O(N__733),
            .I(rx_6));
    LocalMux I__99 (
            .O(N__730),
            .I(rx_6));
    InMux I__98 (
            .O(N__725),
            .I(N__722));
    LocalMux I__97 (
            .O(N__722),
            .I(txZ0Z_6));
    InMux I__96 (
            .O(N__719),
            .I(N__716));
    LocalMux I__95 (
            .O(N__716),
            .I(N__713));
    Odrv4 I__94 (
            .O(N__713),
            .I(\spi.TxDataZ0Z_5 ));
    InMux I__93 (
            .O(N__710),
            .I(N__707));
    LocalMux I__92 (
            .O(N__707),
            .I(txZ0Z_7));
    InMux I__91 (
            .O(N__704),
            .I(N__701));
    LocalMux I__90 (
            .O(N__701),
            .I(\spi.TxDataZ0Z_6 ));
    IoInMux I__89 (
            .O(N__698),
            .I(N__695));
    LocalMux I__88 (
            .O(N__695),
            .I(N__692));
    Span4Mux_s0_v I__87 (
            .O(N__692),
            .I(N__689));
    Span4Mux_h I__86 (
            .O(N__689),
            .I(N__686));
    Odrv4 I__85 (
            .O(N__686),
            .I(MISO_c));
    InMux I__84 (
            .O(N__683),
            .I(N__680));
    LocalMux I__83 (
            .O(N__680),
            .I(txZ0Z_0));
    InMux I__82 (
            .O(N__677),
            .I(N__674));
    LocalMux I__81 (
            .O(N__674),
            .I(txZ0Z_5));
    InMux I__80 (
            .O(N__671),
            .I(N__668));
    LocalMux I__79 (
            .O(N__668),
            .I(txZ0Z_4));
    InMux I__78 (
            .O(N__665),
            .I(N__662));
    LocalMux I__77 (
            .O(N__662),
            .I(\spi.TxDataZ0Z_4 ));
    InMux I__76 (
            .O(N__659),
            .I(N__656));
    LocalMux I__75 (
            .O(N__656),
            .I(txZ0Z_3));
    InMux I__74 (
            .O(N__653),
            .I(N__650));
    LocalMux I__73 (
            .O(N__650),
            .I(\spi.TxDataZ0Z_3 ));
    InMux I__72 (
            .O(N__647),
            .I(N__644));
    LocalMux I__71 (
            .O(N__644),
            .I(txZ0Z_1));
    InMux I__70 (
            .O(N__641),
            .I(N__638));
    LocalMux I__69 (
            .O(N__638),
            .I(\spi.TxDataZ0Z_0 ));
    InMux I__68 (
            .O(N__635),
            .I(N__632));
    LocalMux I__67 (
            .O(N__632),
            .I(txZ0Z_2));
    InMux I__66 (
            .O(N__629),
            .I(N__626));
    LocalMux I__65 (
            .O(N__626),
            .I(\spi.TxDataZ0Z_1 ));
    InMux I__64 (
            .O(N__623),
            .I(N__620));
    LocalMux I__63 (
            .O(N__620),
            .I(\spi.TxDataZ0Z_2 ));
    IoInMux I__62 (
            .O(N__617),
            .I(N__614));
    LocalMux I__61 (
            .O(N__614),
            .I(N__611));
    Span4Mux_s0_v I__60 (
            .O(N__611),
            .I(N__608));
    Span4Mux_h I__59 (
            .O(N__608),
            .I(N__604));
    InMux I__58 (
            .O(N__607),
            .I(N__601));
    Odrv4 I__57 (
            .O(N__604),
            .I(rx_7));
    LocalMux I__56 (
            .O(N__601),
            .I(rx_7));
    IoInMux I__55 (
            .O(N__596),
            .I(N__593));
    LocalMux I__54 (
            .O(N__593),
            .I(N__590));
    Span12Mux_s8_v I__53 (
            .O(N__590),
            .I(N__587));
    Span12Mux_v I__52 (
            .O(N__587),
            .I(N__584));
    Odrv12 I__51 (
            .O(N__584),
            .I(\mypll_inst.outclk ));
    ICE_GB \mypll_inst.PLLOUTCORE_derived_clock_RNIF7IB  (
            .USERSIGNALTOGLOBALBUFFER(N__596),
            .GLOBALBUFFEROUTPUT(outclk_g));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam tx_5_LC_10_28_5.C_ON=1'b0;
    defparam tx_5_LC_10_28_5.SEQ_MODE=4'b1000;
    defparam tx_5_LC_10_28_5.LUT_INIT=16'b1111111100000000;
    LogicCell40 tx_5_LC_10_28_5 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__749),
            .lcout(txZ0Z_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__929),
            .ce(),
            .sr(_gnd_net_));
    defparam tx_1_LC_10_28_6.C_ON=1'b0;
    defparam tx_1_LC_10_28_6.SEQ_MODE=4'b1000;
    defparam tx_1_LC_10_28_6.LUT_INIT=16'b1111111100000000;
    LogicCell40 tx_1_LC_10_28_6 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__761),
            .lcout(txZ0Z_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__929),
            .ce(),
            .sr(_gnd_net_));
    defparam tx_4_LC_10_29_2.C_ON=1'b0;
    defparam tx_4_LC_10_29_2.SEQ_MODE=4'b1000;
    defparam tx_4_LC_10_29_2.LUT_INIT=16'b1111111100000000;
    LogicCell40 tx_4_LC_10_29_2 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__773),
            .lcout(txZ0Z_4),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__932),
            .ce(),
            .sr(_gnd_net_));
    defparam tx_3_LC_10_29_3.C_ON=1'b0;
    defparam tx_3_LC_10_29_3.SEQ_MODE=4'b1000;
    defparam tx_3_LC_10_29_3.LUT_INIT=16'b1111111100000000;
    LogicCell40 tx_3_LC_10_29_3 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__785),
            .lcout(txZ0Z_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__932),
            .ce(),
            .sr(_gnd_net_));
    defparam tx_2_LC_10_29_7.C_ON=1'b0;
    defparam tx_2_LC_10_29_7.SEQ_MODE=4'b1000;
    defparam tx_2_LC_10_29_7.LUT_INIT=16'b1111111100000000;
    LogicCell40 tx_2_LC_10_29_7 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__797),
            .lcout(txZ0Z_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__932),
            .ce(),
            .sr(_gnd_net_));
    defparam tx_6_LC_10_30_0.C_ON=1'b0;
    defparam tx_6_LC_10_30_0.SEQ_MODE=4'b1000;
    defparam tx_6_LC_10_30_0.LUT_INIT=16'b1111111100000000;
    LogicCell40 tx_6_LC_10_30_0 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__737),
            .lcout(txZ0Z_6),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__935),
            .ce(),
            .sr(_gnd_net_));
    defparam tx_7_LC_10_30_2.C_ON=1'b0;
    defparam tx_7_LC_10_30_2.SEQ_MODE=4'b1000;
    defparam tx_7_LC_10_30_2.LUT_INIT=16'b1100110011001100;
    LogicCell40 tx_7_LC_10_30_2 (
            .in0(_gnd_net_),
            .in1(N__607),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(txZ0Z_7),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__935),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.TxData_5_LC_11_28_0 .C_ON=1'b0;
    defparam \spi.TxData_5_LC_11_28_0 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_5_LC_11_28_0 .LUT_INIT=16'b1110111001000100;
    LogicCell40 \spi.TxData_5_LC_11_28_0  (
            .in0(N__1176),
            .in1(N__677),
            .in2(_gnd_net_),
            .in3(N__665),
            .lcout(\spi.TxDataZ0Z_5 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__927),
            .ce(),
            .sr(N__853));
    defparam \spi.TxData_4_LC_11_28_1 .C_ON=1'b0;
    defparam \spi.TxData_4_LC_11_28_1 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_4_LC_11_28_1 .LUT_INIT=16'b1100110010101010;
    LogicCell40 \spi.TxData_4_LC_11_28_1  (
            .in0(N__671),
            .in1(N__653),
            .in2(_gnd_net_),
            .in3(N__1175),
            .lcout(\spi.TxDataZ0Z_4 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__927),
            .ce(),
            .sr(N__853));
    defparam \spi.TxData_0_LC_11_28_3 .C_ON=1'b0;
    defparam \spi.TxData_0_LC_11_28_3 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_0_LC_11_28_3 .LUT_INIT=16'b1111111111001100;
    LogicCell40 \spi.TxData_0_LC_11_28_3  (
            .in0(_gnd_net_),
            .in1(N__683),
            .in2(_gnd_net_),
            .in3(N__1171),
            .lcout(\spi.TxDataZ0Z_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__927),
            .ce(),
            .sr(N__853));
    defparam \spi.TxData_3_LC_11_28_5 .C_ON=1'b0;
    defparam \spi.TxData_3_LC_11_28_5 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_3_LC_11_28_5 .LUT_INIT=16'b1100110010101010;
    LogicCell40 \spi.TxData_3_LC_11_28_5  (
            .in0(N__659),
            .in1(N__623),
            .in2(_gnd_net_),
            .in3(N__1174),
            .lcout(\spi.TxDataZ0Z_3 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__927),
            .ce(),
            .sr(N__853));
    defparam \spi.TxData_1_LC_11_28_6 .C_ON=1'b0;
    defparam \spi.TxData_1_LC_11_28_6 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_1_LC_11_28_6 .LUT_INIT=16'b1110111001000100;
    LogicCell40 \spi.TxData_1_LC_11_28_6  (
            .in0(N__1172),
            .in1(N__647),
            .in2(_gnd_net_),
            .in3(N__641),
            .lcout(\spi.TxDataZ0Z_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__927),
            .ce(),
            .sr(N__853));
    defparam \spi.TxData_2_LC_11_28_7 .C_ON=1'b0;
    defparam \spi.TxData_2_LC_11_28_7 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_2_LC_11_28_7 .LUT_INIT=16'b1100110010101010;
    LogicCell40 \spi.TxData_2_LC_11_28_7  (
            .in0(N__635),
            .in1(N__629),
            .in2(_gnd_net_),
            .in3(N__1173),
            .lcout(\spi.TxDataZ0Z_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__927),
            .ce(),
            .sr(N__853));
    defparam \spi.RxdData_3_LC_11_29_0 .C_ON=1'b0;
    defparam \spi.RxdData_3_LC_11_29_0 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_3_LC_11_29_0 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_3_LC_11_29_0  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__796),
            .lcout(rx_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__930),
            .ce(N__1186),
            .sr(_gnd_net_));
    defparam \spi.RxdData_7_LC_11_29_1 .C_ON=1'b0;
    defparam \spi.RxdData_7_LC_11_29_1 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_7_LC_11_29_1 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_7_LC_11_29_1  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__736),
            .lcout(rx_7),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__930),
            .ce(N__1186),
            .sr(_gnd_net_));
    defparam \spi.RxdData_2_LC_11_29_2 .C_ON=1'b0;
    defparam \spi.RxdData_2_LC_11_29_2 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_2_LC_11_29_2 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_2_LC_11_29_2  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__760),
            .lcout(rx_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__930),
            .ce(N__1186),
            .sr(_gnd_net_));
    defparam \spi.RxdData_4_LC_11_29_3 .C_ON=1'b0;
    defparam \spi.RxdData_4_LC_11_29_3 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_4_LC_11_29_3 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_4_LC_11_29_3  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__784),
            .lcout(rx_4),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__930),
            .ce(N__1186),
            .sr(_gnd_net_));
    defparam \spi.RxdData_5_LC_11_29_4 .C_ON=1'b0;
    defparam \spi.RxdData_5_LC_11_29_4 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_5_LC_11_29_4 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_5_LC_11_29_4  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__772),
            .lcout(rx_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__930),
            .ce(N__1186),
            .sr(_gnd_net_));
    defparam \spi.RxdData_1_LC_11_29_5 .C_ON=1'b0;
    defparam \spi.RxdData_1_LC_11_29_5 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_1_LC_11_29_5 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_1_LC_11_29_5  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__816),
            .lcout(rx_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__930),
            .ce(N__1186),
            .sr(_gnd_net_));
    defparam \spi.RxdData_6_LC_11_29_6 .C_ON=1'b0;
    defparam \spi.RxdData_6_LC_11_29_6 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_6_LC_11_29_6 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_6_LC_11_29_6  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__748),
            .lcout(rx_6),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__930),
            .ce(N__1186),
            .sr(_gnd_net_));
    defparam \spi.TxData_6_LC_11_30_1 .C_ON=1'b0;
    defparam \spi.TxData_6_LC_11_30_1 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_6_LC_11_30_1 .LUT_INIT=16'b1100110010101010;
    LogicCell40 \spi.TxData_6_LC_11_30_1  (
            .in0(N__725),
            .in1(N__719),
            .in2(_gnd_net_),
            .in3(N__1177),
            .lcout(\spi.TxDataZ0Z_6 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__933),
            .ce(),
            .sr(N__854));
    defparam \spi.TxData_7_LC_11_30_3 .C_ON=1'b0;
    defparam \spi.TxData_7_LC_11_30_3 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_7_LC_11_30_3 .LUT_INIT=16'b1100110010101010;
    LogicCell40 \spi.TxData_7_LC_11_30_3  (
            .in0(N__710),
            .in1(N__704),
            .in2(_gnd_net_),
            .in3(N__1178),
            .lcout(MISO_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__933),
            .ce(),
            .sr(N__854));
    defparam tx_0_LC_12_28_5.C_ON=1'b0;
    defparam tx_0_LC_12_28_5.SEQ_MODE=4'b1000;
    defparam tx_0_LC_12_28_5.LUT_INIT=16'b1111111100000000;
    LogicCell40 tx_0_LC_12_28_5 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__820),
            .lcout(txZ0Z_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__925),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.index_RNI57R91_2_LC_12_29_0 .C_ON=1'b0;
    defparam \spi.index_RNI57R91_2_LC_12_29_0 .SEQ_MODE=4'b0000;
    defparam \spi.index_RNI57R91_2_LC_12_29_0 .LUT_INIT=16'b0000000000000001;
    LogicCell40 \spi.index_RNI57R91_2_LC_12_29_0  (
            .in0(N__1202),
            .in1(N__989),
            .in2(N__1103),
            .in3(N__865),
            .lcout(),
            .ltout(\spi.SPI_DONE_0_sqmuxa_2_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SCLK_old_RNI5H8V1_LC_12_29_1 .C_ON=1'b0;
    defparam \spi.SCLK_old_RNI5H8V1_LC_12_29_1 .SEQ_MODE=4'b0000;
    defparam \spi.SCLK_old_RNI5H8V1_LC_12_29_1 .LUT_INIT=16'b0101000000000000;
    LogicCell40 \spi.SCLK_old_RNI5H8V1_LC_12_29_1  (
            .in0(N__1079),
            .in1(_gnd_net_),
            .in2(N__878),
            .in3(N__952),
            .lcout(\spi.SPI_DONE_0_sqmuxa ),
            .ltout(\spi.SPI_DONE_0_sqmuxa_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SS_old_RNIBOQN3_LC_12_29_2 .C_ON=1'b0;
    defparam \spi.SS_old_RNIBOQN3_LC_12_29_2 .SEQ_MODE=4'b0000;
    defparam \spi.SS_old_RNIBOQN3_LC_12_29_2 .LUT_INIT=16'b0000111000001011;
    LogicCell40 \spi.SS_old_RNIBOQN3_LC_12_29_2  (
            .in0(N__1165),
            .in1(N__1069),
            .in2(N__875),
            .in3(N__990),
            .lcout(\spi.un1_SPI_DONE_0_sqmuxa_1_0 ),
            .ltout(\spi.un1_SPI_DONE_0_sqmuxa_1_0_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.index_0_LC_12_29_3 .C_ON=1'b0;
    defparam \spi.index_0_LC_12_29_3 .SEQ_MODE=4'b1000;
    defparam \spi.index_0_LC_12_29_3 .LUT_INIT=16'b0011111111001111;
    LogicCell40 \spi.index_0_LC_12_29_3  (
            .in0(_gnd_net_),
            .in1(N__1206),
            .in2(N__872),
            .in3(N__1166),
            .lcout(\spi.indexZ0Z_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__926),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.index_RNO_0_2_LC_12_29_4 .C_ON=1'b0;
    defparam \spi.index_RNO_0_2_LC_12_29_4 .SEQ_MODE=4'b0000;
    defparam \spi.index_RNO_0_2_LC_12_29_4 .LUT_INIT=16'b0101010101011111;
    LogicCell40 \spi.index_RNO_0_2_LC_12_29_4  (
            .in0(N__1164),
            .in1(_gnd_net_),
            .in2(N__1208),
            .in3(N__1098),
            .lcout(),
            .ltout(\spi.CO1_0_1_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.index_2_LC_12_29_5 .C_ON=1'b0;
    defparam \spi.index_2_LC_12_29_5 .SEQ_MODE=4'b1000;
    defparam \spi.index_2_LC_12_29_5 .LUT_INIT=16'b0110100111111111;
    LogicCell40 \spi.index_2_LC_12_29_5  (
            .in0(N__866),
            .in1(N__1167),
            .in2(N__869),
            .in3(N__1114),
            .lcout(\spi.indexZ0Z_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__926),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SCLK_old_RNIKH0V_LC_12_29_6 .C_ON=1'b0;
    defparam \spi.SCLK_old_RNIKH0V_LC_12_29_6 .SEQ_MODE=4'b0000;
    defparam \spi.SCLK_old_RNIKH0V_LC_12_29_6 .LUT_INIT=16'b0000000000100010;
    LogicCell40 \spi.SCLK_old_RNIKH0V_LC_12_29_6  (
            .in0(N__951),
            .in1(N__1078),
            .in2(_gnd_net_),
            .in3(N__988),
            .lcout(\spi.RxdData_0_sqmuxa ),
            .ltout(\spi.RxdData_0_sqmuxa_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SCLK_old_RNIO5681_LC_12_29_7 .C_ON=1'b0;
    defparam \spi.SCLK_old_RNIO5681_LC_12_29_7 .SEQ_MODE=4'b0000;
    defparam \spi.SCLK_old_RNIO5681_LC_12_29_7 .LUT_INIT=16'b0000010100000101;
    LogicCell40 \spi.SCLK_old_RNIO5681_LC_12_29_7  (
            .in0(N__1010),
            .in1(_gnd_net_),
            .in2(N__857),
            .in3(_gnd_net_),
            .lcout(\spi.TxData_5_sn_N_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.RxdData_0_LC_12_30_5 .C_ON=1'b0;
    defparam \spi.RxdData_0_LC_12_30_5 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_0_LC_12_30_5 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_0_LC_12_30_5  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__830),
            .lcout(rx_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__928),
            .ce(N__1187),
            .sr(_gnd_net_));
    defparam \spi.SS_old_LC_13_29_1 .C_ON=1'b0;
    defparam \spi.SS_old_LC_13_29_1 .SEQ_MODE=4'b1000;
    defparam \spi.SS_old_LC_13_29_1 .LUT_INIT=16'b1100110011001100;
    LogicCell40 \spi.SS_old_LC_13_29_1  (
            .in0(_gnd_net_),
            .in1(N__992),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(\spi.SS_oldZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__931),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.index_1_LC_13_29_3 .C_ON=1'b0;
    defparam \spi.index_1_LC_13_29_3 .SEQ_MODE=4'b1000;
    defparam \spi.index_1_LC_13_29_3 .LUT_INIT=16'b1001101011111111;
    LogicCell40 \spi.index_1_LC_13_29_3  (
            .in0(N__1099),
            .in1(N__1207),
            .in2(N__1185),
            .in3(N__1115),
            .lcout(\spi.indexZ0Z_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__931),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SCLK_old_LC_13_29_4 .C_ON=1'b0;
    defparam \spi.SCLK_old_LC_13_29_4 .SEQ_MODE=4'b1000;
    defparam \spi.SCLK_old_LC_13_29_4 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.SCLK_old_LC_13_29_4  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__956),
            .lcout(\spi.SCLK_oldZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__931),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SPI_DONE_LC_13_29_5 .C_ON=1'b0;
    defparam \spi.SPI_DONE_LC_13_29_5 .SEQ_MODE=4'b1000;
    defparam \spi.SPI_DONE_LC_13_29_5 .LUT_INIT=16'b1111111111010100;
    LogicCell40 \spi.SPI_DONE_LC_13_29_5  (
            .in0(N__1070),
            .in1(N__991),
            .in2(N__1035),
            .in3(N__1058),
            .lcout(done),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__931),
            .ce(),
            .sr(_gnd_net_));
    defparam sendData_LC_13_29_6.C_ON=1'b0;
    defparam sendData_LC_13_29_6.SEQ_MODE=4'b1000;
    defparam sendData_LC_13_29_6.LUT_INIT=16'b1111111100000000;
    LogicCell40 sendData_LC_13_29_6 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1028),
            .lcout(sendDataZ0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__931),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SS_latched_LC_13_30_0 .C_ON=1'b0;
    defparam \spi.SS_latched_LC_13_30_0 .SEQ_MODE=4'b1000;
    defparam \spi.SS_latched_LC_13_30_0 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.SS_latched_LC_13_30_0  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1004),
            .lcout(\spi.SS_latchedZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__934),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SCLK_latched_LC_13_30_3 .C_ON=1'b0;
    defparam \spi.SCLK_latched_LC_13_30_3 .SEQ_MODE=4'b1000;
    defparam \spi.SCLK_latched_LC_13_30_3 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.SCLK_latched_LC_13_30_3  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__971),
            .lcout(\spi.SCLK_latchedZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__934),
            .ce(),
            .sr(_gnd_net_));
    defparam CONSTANT_ONE_LUT4_LC_13_30_6.C_ON=1'b0;
    defparam CONSTANT_ONE_LUT4_LC_13_30_6.SEQ_MODE=4'b0000;
    defparam CONSTANT_ONE_LUT4_LC_13_30_6.LUT_INIT=16'b1111111111111111;
    LogicCell40 CONSTANT_ONE_LUT4_LC_13_30_6 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(CONSTANT_ONE_NET),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
endmodule // SPI_TEST_MODULE
