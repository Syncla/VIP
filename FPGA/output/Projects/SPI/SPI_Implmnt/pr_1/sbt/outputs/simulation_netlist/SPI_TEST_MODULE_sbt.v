// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 11 2017 17:30:03

// File Generated:     Feb 5 2018 19:20:50

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

    wire N__1337;
    wire N__1323;
    wire N__1322;
    wire N__1321;
    wire N__1314;
    wire N__1313;
    wire N__1312;
    wire N__1305;
    wire N__1304;
    wire N__1303;
    wire N__1296;
    wire N__1295;
    wire N__1294;
    wire N__1287;
    wire N__1286;
    wire N__1285;
    wire N__1278;
    wire N__1277;
    wire N__1276;
    wire N__1259;
    wire N__1256;
    wire N__1253;
    wire N__1250;
    wire N__1247;
    wire N__1244;
    wire N__1241;
    wire N__1238;
    wire N__1235;
    wire N__1232;
    wire N__1229;
    wire N__1226;
    wire N__1223;
    wire N__1220;
    wire N__1217;
    wire N__1216;
    wire N__1213;
    wire N__1210;
    wire N__1205;
    wire N__1202;
    wire N__1201;
    wire N__1198;
    wire N__1197;
    wire N__1194;
    wire N__1191;
    wire N__1188;
    wire N__1185;
    wire N__1178;
    wire N__1177;
    wire N__1176;
    wire N__1175;
    wire N__1172;
    wire N__1169;
    wire N__1164;
    wire N__1157;
    wire N__1154;
    wire N__1153;
    wire N__1150;
    wire N__1147;
    wire N__1142;
    wire N__1141;
    wire N__1138;
    wire N__1135;
    wire N__1130;
    wire N__1127;
    wire N__1124;
    wire N__1121;
    wire N__1118;
    wire N__1115;
    wire N__1112;
    wire N__1109;
    wire N__1108;
    wire N__1107;
    wire N__1102;
    wire N__1099;
    wire N__1094;
    wire N__1093;
    wire N__1090;
    wire N__1087;
    wire N__1084;
    wire N__1081;
    wire N__1076;
    wire N__1073;
    wire N__1070;
    wire N__1067;
    wire N__1064;
    wire N__1061;
    wire N__1058;
    wire N__1055;
    wire N__1052;
    wire N__1051;
    wire N__1048;
    wire N__1045;
    wire N__1040;
    wire N__1039;
    wire N__1038;
    wire N__1037;
    wire N__1036;
    wire N__1035;
    wire N__1034;
    wire N__1033;
    wire N__1032;
    wire N__1031;
    wire N__1030;
    wire N__1007;
    wire N__1004;
    wire N__1001;
    wire N__1000;
    wire N__997;
    wire N__994;
    wire N__991;
    wire N__988;
    wire N__987;
    wire N__986;
    wire N__985;
    wire N__984;
    wire N__983;
    wire N__982;
    wire N__981;
    wire N__980;
    wire N__979;
    wire N__978;
    wire N__977;
    wire N__976;
    wire N__975;
    wire N__972;
    wire N__969;
    wire N__966;
    wire N__961;
    wire N__948;
    wire N__943;
    wire N__940;
    wire N__937;
    wire N__920;
    wire N__919;
    wire N__916;
    wire N__913;
    wire N__908;
    wire N__907;
    wire N__904;
    wire N__901;
    wire N__896;
    wire N__895;
    wire N__892;
    wire N__889;
    wire N__884;
    wire N__883;
    wire N__880;
    wire N__877;
    wire N__872;
    wire N__869;
    wire N__866;
    wire N__865;
    wire N__864;
    wire N__863;
    wire N__860;
    wire N__857;
    wire N__854;
    wire N__851;
    wire N__842;
    wire N__839;
    wire N__836;
    wire N__833;
    wire N__830;
    wire N__827;
    wire N__824;
    wire N__821;
    wire N__818;
    wire N__815;
    wire N__812;
    wire N__809;
    wire N__806;
    wire N__803;
    wire N__800;
    wire N__797;
    wire N__794;
    wire N__791;
    wire N__788;
    wire N__785;
    wire N__782;
    wire N__779;
    wire N__776;
    wire N__773;
    wire N__770;
    wire N__767;
    wire N__764;
    wire N__761;
    wire N__758;
    wire N__755;
    wire N__752;
    wire N__751;
    wire N__750;
    wire N__749;
    wire N__748;
    wire N__741;
    wire N__736;
    wire N__731;
    wire N__730;
    wire N__727;
    wire N__724;
    wire N__719;
    wire N__718;
    wire N__715;
    wire N__712;
    wire N__707;
    wire N__706;
    wire N__703;
    wire N__700;
    wire N__695;
    wire N__692;
    wire N__689;
    wire N__686;
    wire N__683;
    wire N__680;
    wire N__677;
    wire N__674;
    wire N__673;
    wire N__672;
    wire N__669;
    wire N__664;
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
    wire N__610;
    wire N__607;
    wire N__604;
    wire N__599;
    wire N__596;
    wire \mypll_inst.outclk ;
    wire VCCG0;
    wire GNDG0;
    wire CONSTANT_ONE_NET;
    wire \spi.TxDataZ0Z_0 ;
    wire LEDG_c;
    wire txZ0Z_1;
    wire \spi.un3_ss_old_cascade_ ;
    wire \spi.RxdData_0_sqmuxa_cascade_ ;
    wire LEDR_c;
    wire \spi.SPI_DONE_0_sqmuxa_2_cascade_ ;
    wire \spi.SPI_DONE_0_sqmuxa ;
    wire \spi.SPI_DONE_0_sqmuxa_cascade_ ;
    wire \spi.un1_SPI_DONE_0_sqmuxa_1_0_cascade_ ;
    wire SS_c;
    wire \spi.SS_latchedZ0 ;
    wire \spi.SS_oldZ0 ;
    wire \spi.SCLK_oldZ0 ;
    wire rx_4;
    wire rx_3;
    wire rx_6;
    wire rx_5;
    wire rx_2;
    wire rx_7;
    wire done;
    wire txZ0Z_5;
    wire txZ0Z_7;
    wire MISO_c;
    wire txZ0Z_4;
    wire \spi.TxDataZ0Z_4 ;
    wire txZ0Z_3;
    wire \spi.TxDataZ0Z_3 ;
    wire txZ0Z_6;
    wire \spi.TxDataZ0Z_5 ;
    wire \spi.TxDataZ0Z_6 ;
    wire txZ0Z_2;
    wire \spi.TxDataZ0Z_1 ;
    wire \spi.TxDataZ0Z_2 ;
    wire \spi.TxData_1_sqmuxa_i ;
    wire \spi.indexZ0Z_1 ;
    wire \spi.indexZ0Z_0 ;
    wire \spi.CO1_0_1_cascade_ ;
    wire \spi.un1_SPI_DONE_0_sqmuxa_1_0 ;
    wire \spi.indexZ0Z_2 ;
    wire SCK_c;
    wire \spi.SCLK_latchedZ0 ;
    wire rx_1;
    wire \spi.MOSI_latchedZ0 ;
    wire rx_0;
    wire outclk_g;
    wire \spi.RxdData_0_sqmuxa ;
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
            .RESETB(N__644),
            .PLLOUTCORE(\mypll_inst.outclk ),
            .LOCK(),
            .SDO(),
            .SCLK(GNDG0),
            .LATCHINPUTVALUE(GNDG0),
            .EXTFEEDBACK(GNDG0),
            .DYNAMICDELAY({GNDG0,GNDG0,GNDG0,GNDG0,GNDG0,GNDG0,GNDG0,GNDG0}),
            .PLLIN(N__1337));
    IO_PAD \mypll_inst.mypll_inst_iopad  (
            .OE(VCCG0),
            .DIN(),
            .DOUT(N__1337),
            .PACKAGEPIN(clk));
    IO_PAD LEDR_obuf_iopad (
            .OE(N__1323),
            .DIN(N__1322),
            .DOUT(N__1321),
            .PACKAGEPIN(LEDR));
    defparam LEDR_obuf_preio.NEG_TRIGGER=1'b0;
    defparam LEDR_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO LEDR_obuf_preio (
            .PADOEN(N__1323),
            .PADOUT(N__1322),
            .PADIN(N__1321),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__689),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD MOSI_ibuf_iopad (
            .OE(N__1314),
            .DIN(N__1313),
            .DOUT(N__1312),
            .PACKAGEPIN(MOSI));
    defparam MOSI_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam MOSI_ibuf_preio.PIN_TYPE=6'b000000;
    PRE_IO MOSI_ibuf_preio (
            .PADOEN(N__1314),
            .PADOUT(N__1313),
            .PADIN(N__1312),
            .CLOCKENABLE(VCCG0),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(\spi.MOSI_latchedZ0 ),
            .DOUT0(),
            .INPUTCLK(N__1040),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD MISO_obuf_iopad (
            .OE(N__1305),
            .DIN(N__1304),
            .DOUT(N__1303),
            .PACKAGEPIN(MISO));
    defparam MISO_obuf_preio.NEG_TRIGGER=1'b0;
    defparam MISO_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO MISO_obuf_preio (
            .PADOEN(N__1305),
            .PADOUT(N__1304),
            .PADIN(N__1303),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__830),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD SCK_ibuf_iopad (
            .OE(N__1296),
            .DIN(N__1295),
            .DOUT(N__1294),
            .PACKAGEPIN(SCK));
    defparam SCK_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam SCK_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO SCK_ibuf_preio (
            .PADOEN(N__1296),
            .PADOUT(N__1295),
            .PADIN(N__1294),
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
            .OE(N__1287),
            .DIN(N__1286),
            .DOUT(N__1285),
            .PACKAGEPIN(SS));
    defparam SS_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam SS_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO SS_ibuf_preio (
            .PADOEN(N__1287),
            .PADOUT(N__1286),
            .PADIN(N__1285),
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
            .OE(N__1278),
            .DIN(N__1277),
            .DOUT(N__1276),
            .PACKAGEPIN(LEDG));
    defparam LEDG_obuf_preio.NEG_TRIGGER=1'b0;
    defparam LEDG_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO LEDG_obuf_preio (
            .PADOEN(N__1278),
            .PADOUT(N__1277),
            .PADIN(N__1276),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__626),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    CascadeMux I__273 (
            .O(N__1259),
            .I(N__1256));
    InMux I__272 (
            .O(N__1256),
            .I(N__1253));
    LocalMux I__271 (
            .O(N__1253),
            .I(txZ0Z_6));
    InMux I__270 (
            .O(N__1250),
            .I(N__1247));
    LocalMux I__269 (
            .O(N__1247),
            .I(\spi.TxDataZ0Z_5 ));
    InMux I__268 (
            .O(N__1244),
            .I(N__1241));
    LocalMux I__267 (
            .O(N__1241),
            .I(\spi.TxDataZ0Z_6 ));
    InMux I__266 (
            .O(N__1238),
            .I(N__1235));
    LocalMux I__265 (
            .O(N__1235),
            .I(txZ0Z_2));
    InMux I__264 (
            .O(N__1232),
            .I(N__1229));
    LocalMux I__263 (
            .O(N__1229),
            .I(N__1226));
    Odrv4 I__262 (
            .O(N__1226),
            .I(\spi.TxDataZ0Z_1 ));
    InMux I__261 (
            .O(N__1223),
            .I(N__1220));
    LocalMux I__260 (
            .O(N__1220),
            .I(\spi.TxDataZ0Z_2 ));
    CEMux I__259 (
            .O(N__1217),
            .I(N__1213));
    CEMux I__258 (
            .O(N__1216),
            .I(N__1210));
    LocalMux I__257 (
            .O(N__1213),
            .I(N__1205));
    LocalMux I__256 (
            .O(N__1210),
            .I(N__1205));
    Odrv4 I__255 (
            .O(N__1205),
            .I(\spi.TxData_1_sqmuxa_i ));
    CascadeMux I__254 (
            .O(N__1202),
            .I(N__1198));
    CascadeMux I__253 (
            .O(N__1201),
            .I(N__1194));
    InMux I__252 (
            .O(N__1198),
            .I(N__1191));
    InMux I__251 (
            .O(N__1197),
            .I(N__1188));
    InMux I__250 (
            .O(N__1194),
            .I(N__1185));
    LocalMux I__249 (
            .O(N__1191),
            .I(\spi.indexZ0Z_1 ));
    LocalMux I__248 (
            .O(N__1188),
            .I(\spi.indexZ0Z_1 ));
    LocalMux I__247 (
            .O(N__1185),
            .I(\spi.indexZ0Z_1 ));
    InMux I__246 (
            .O(N__1178),
            .I(N__1172));
    InMux I__245 (
            .O(N__1177),
            .I(N__1169));
    InMux I__244 (
            .O(N__1176),
            .I(N__1164));
    InMux I__243 (
            .O(N__1175),
            .I(N__1164));
    LocalMux I__242 (
            .O(N__1172),
            .I(\spi.indexZ0Z_0 ));
    LocalMux I__241 (
            .O(N__1169),
            .I(\spi.indexZ0Z_0 ));
    LocalMux I__240 (
            .O(N__1164),
            .I(\spi.indexZ0Z_0 ));
    CascadeMux I__239 (
            .O(N__1157),
            .I(\spi.CO1_0_1_cascade_ ));
    InMux I__238 (
            .O(N__1154),
            .I(N__1150));
    InMux I__237 (
            .O(N__1153),
            .I(N__1147));
    LocalMux I__236 (
            .O(N__1150),
            .I(\spi.un1_SPI_DONE_0_sqmuxa_1_0 ));
    LocalMux I__235 (
            .O(N__1147),
            .I(\spi.un1_SPI_DONE_0_sqmuxa_1_0 ));
    InMux I__234 (
            .O(N__1142),
            .I(N__1138));
    InMux I__233 (
            .O(N__1141),
            .I(N__1135));
    LocalMux I__232 (
            .O(N__1138),
            .I(\spi.indexZ0Z_2 ));
    LocalMux I__231 (
            .O(N__1135),
            .I(\spi.indexZ0Z_2 ));
    InMux I__230 (
            .O(N__1130),
            .I(N__1127));
    LocalMux I__229 (
            .O(N__1127),
            .I(N__1124));
    Span4Mux_h I__228 (
            .O(N__1124),
            .I(N__1121));
    Span4Mux_v I__227 (
            .O(N__1121),
            .I(N__1118));
    Span4Mux_v I__226 (
            .O(N__1118),
            .I(N__1115));
    Span4Mux_v I__225 (
            .O(N__1115),
            .I(N__1112));
    Odrv4 I__224 (
            .O(N__1112),
            .I(SCK_c));
    InMux I__223 (
            .O(N__1109),
            .I(N__1102));
    InMux I__222 (
            .O(N__1108),
            .I(N__1102));
    InMux I__221 (
            .O(N__1107),
            .I(N__1099));
    LocalMux I__220 (
            .O(N__1102),
            .I(\spi.SCLK_latchedZ0 ));
    LocalMux I__219 (
            .O(N__1099),
            .I(\spi.SCLK_latchedZ0 ));
    InMux I__218 (
            .O(N__1094),
            .I(N__1090));
    InMux I__217 (
            .O(N__1093),
            .I(N__1087));
    LocalMux I__216 (
            .O(N__1090),
            .I(N__1084));
    LocalMux I__215 (
            .O(N__1087),
            .I(N__1081));
    Span4Mux_v I__214 (
            .O(N__1084),
            .I(N__1076));
    Span4Mux_h I__213 (
            .O(N__1081),
            .I(N__1076));
    Odrv4 I__212 (
            .O(N__1076),
            .I(rx_1));
    InMux I__211 (
            .O(N__1073),
            .I(N__1070));
    LocalMux I__210 (
            .O(N__1070),
            .I(N__1067));
    Span4Mux_h I__209 (
            .O(N__1067),
            .I(N__1064));
    Sp12to4 I__208 (
            .O(N__1064),
            .I(N__1061));
    Odrv12 I__207 (
            .O(N__1061),
            .I(\spi.MOSI_latchedZ0 ));
    InMux I__206 (
            .O(N__1058),
            .I(N__1055));
    LocalMux I__205 (
            .O(N__1055),
            .I(N__1052));
    Span4Mux_h I__204 (
            .O(N__1052),
            .I(N__1048));
    InMux I__203 (
            .O(N__1051),
            .I(N__1045));
    Odrv4 I__202 (
            .O(N__1048),
            .I(rx_0));
    LocalMux I__201 (
            .O(N__1045),
            .I(rx_0));
    ClkMux I__200 (
            .O(N__1040),
            .I(N__1007));
    ClkMux I__199 (
            .O(N__1039),
            .I(N__1007));
    ClkMux I__198 (
            .O(N__1038),
            .I(N__1007));
    ClkMux I__197 (
            .O(N__1037),
            .I(N__1007));
    ClkMux I__196 (
            .O(N__1036),
            .I(N__1007));
    ClkMux I__195 (
            .O(N__1035),
            .I(N__1007));
    ClkMux I__194 (
            .O(N__1034),
            .I(N__1007));
    ClkMux I__193 (
            .O(N__1033),
            .I(N__1007));
    ClkMux I__192 (
            .O(N__1032),
            .I(N__1007));
    ClkMux I__191 (
            .O(N__1031),
            .I(N__1007));
    ClkMux I__190 (
            .O(N__1030),
            .I(N__1007));
    GlobalMux I__189 (
            .O(N__1007),
            .I(N__1004));
    gio2CtrlBuf I__188 (
            .O(N__1004),
            .I(outclk_g));
    CEMux I__187 (
            .O(N__1001),
            .I(N__997));
    CEMux I__186 (
            .O(N__1000),
            .I(N__994));
    LocalMux I__185 (
            .O(N__997),
            .I(N__991));
    LocalMux I__184 (
            .O(N__994),
            .I(N__988));
    Span4Mux_h I__183 (
            .O(N__991),
            .I(N__972));
    Span4Mux_h I__182 (
            .O(N__988),
            .I(N__969));
    InMux I__181 (
            .O(N__987),
            .I(N__966));
    InMux I__180 (
            .O(N__986),
            .I(N__961));
    InMux I__179 (
            .O(N__985),
            .I(N__961));
    InMux I__178 (
            .O(N__984),
            .I(N__948));
    InMux I__177 (
            .O(N__983),
            .I(N__948));
    InMux I__176 (
            .O(N__982),
            .I(N__948));
    InMux I__175 (
            .O(N__981),
            .I(N__948));
    InMux I__174 (
            .O(N__980),
            .I(N__948));
    InMux I__173 (
            .O(N__979),
            .I(N__948));
    InMux I__172 (
            .O(N__978),
            .I(N__943));
    InMux I__171 (
            .O(N__977),
            .I(N__943));
    InMux I__170 (
            .O(N__976),
            .I(N__940));
    InMux I__169 (
            .O(N__975),
            .I(N__937));
    Odrv4 I__168 (
            .O(N__972),
            .I(\spi.RxdData_0_sqmuxa ));
    Odrv4 I__167 (
            .O(N__969),
            .I(\spi.RxdData_0_sqmuxa ));
    LocalMux I__166 (
            .O(N__966),
            .I(\spi.RxdData_0_sqmuxa ));
    LocalMux I__165 (
            .O(N__961),
            .I(\spi.RxdData_0_sqmuxa ));
    LocalMux I__164 (
            .O(N__948),
            .I(\spi.RxdData_0_sqmuxa ));
    LocalMux I__163 (
            .O(N__943),
            .I(\spi.RxdData_0_sqmuxa ));
    LocalMux I__162 (
            .O(N__940),
            .I(\spi.RxdData_0_sqmuxa ));
    LocalMux I__161 (
            .O(N__937),
            .I(\spi.RxdData_0_sqmuxa ));
    InMux I__160 (
            .O(N__920),
            .I(N__916));
    InMux I__159 (
            .O(N__919),
            .I(N__913));
    LocalMux I__158 (
            .O(N__916),
            .I(rx_3));
    LocalMux I__157 (
            .O(N__913),
            .I(rx_3));
    InMux I__156 (
            .O(N__908),
            .I(N__904));
    InMux I__155 (
            .O(N__907),
            .I(N__901));
    LocalMux I__154 (
            .O(N__904),
            .I(rx_6));
    LocalMux I__153 (
            .O(N__901),
            .I(rx_6));
    InMux I__152 (
            .O(N__896),
            .I(N__892));
    InMux I__151 (
            .O(N__895),
            .I(N__889));
    LocalMux I__150 (
            .O(N__892),
            .I(rx_5));
    LocalMux I__149 (
            .O(N__889),
            .I(rx_5));
    InMux I__148 (
            .O(N__884),
            .I(N__880));
    InMux I__147 (
            .O(N__883),
            .I(N__877));
    LocalMux I__146 (
            .O(N__880),
            .I(rx_2));
    LocalMux I__145 (
            .O(N__877),
            .I(rx_2));
    InMux I__144 (
            .O(N__872),
            .I(N__869));
    LocalMux I__143 (
            .O(N__869),
            .I(rx_7));
    CEMux I__142 (
            .O(N__866),
            .I(N__860));
    CEMux I__141 (
            .O(N__865),
            .I(N__857));
    InMux I__140 (
            .O(N__864),
            .I(N__854));
    InMux I__139 (
            .O(N__863),
            .I(N__851));
    LocalMux I__138 (
            .O(N__860),
            .I(done));
    LocalMux I__137 (
            .O(N__857),
            .I(done));
    LocalMux I__136 (
            .O(N__854),
            .I(done));
    LocalMux I__135 (
            .O(N__851),
            .I(done));
    InMux I__134 (
            .O(N__842),
            .I(N__839));
    LocalMux I__133 (
            .O(N__839),
            .I(txZ0Z_5));
    InMux I__132 (
            .O(N__836),
            .I(N__833));
    LocalMux I__131 (
            .O(N__833),
            .I(txZ0Z_7));
    IoInMux I__130 (
            .O(N__830),
            .I(N__827));
    LocalMux I__129 (
            .O(N__827),
            .I(N__824));
    IoSpan4Mux I__128 (
            .O(N__824),
            .I(N__821));
    Sp12to4 I__127 (
            .O(N__821),
            .I(N__818));
    Span12Mux_s6_v I__126 (
            .O(N__818),
            .I(N__815));
    Odrv12 I__125 (
            .O(N__815),
            .I(MISO_c));
    CascadeMux I__124 (
            .O(N__812),
            .I(N__809));
    InMux I__123 (
            .O(N__809),
            .I(N__806));
    LocalMux I__122 (
            .O(N__806),
            .I(txZ0Z_4));
    InMux I__121 (
            .O(N__803),
            .I(N__800));
    LocalMux I__120 (
            .O(N__800),
            .I(\spi.TxDataZ0Z_4 ));
    InMux I__119 (
            .O(N__797),
            .I(N__794));
    LocalMux I__118 (
            .O(N__794),
            .I(txZ0Z_3));
    InMux I__117 (
            .O(N__791),
            .I(N__788));
    LocalMux I__116 (
            .O(N__788),
            .I(\spi.TxDataZ0Z_3 ));
    CascadeMux I__115 (
            .O(N__785),
            .I(\spi.SPI_DONE_0_sqmuxa_2_cascade_ ));
    InMux I__114 (
            .O(N__782),
            .I(N__779));
    LocalMux I__113 (
            .O(N__779),
            .I(\spi.SPI_DONE_0_sqmuxa ));
    CascadeMux I__112 (
            .O(N__776),
            .I(\spi.SPI_DONE_0_sqmuxa_cascade_ ));
    CascadeMux I__111 (
            .O(N__773),
            .I(\spi.un1_SPI_DONE_0_sqmuxa_1_0_cascade_ ));
    InMux I__110 (
            .O(N__770),
            .I(N__767));
    LocalMux I__109 (
            .O(N__767),
            .I(N__764));
    Span4Mux_v I__108 (
            .O(N__764),
            .I(N__761));
    Span4Mux_h I__107 (
            .O(N__761),
            .I(N__758));
    Sp12to4 I__106 (
            .O(N__758),
            .I(N__755));
    Odrv12 I__105 (
            .O(N__755),
            .I(SS_c));
    InMux I__104 (
            .O(N__752),
            .I(N__741));
    InMux I__103 (
            .O(N__751),
            .I(N__741));
    InMux I__102 (
            .O(N__750),
            .I(N__741));
    InMux I__101 (
            .O(N__749),
            .I(N__736));
    InMux I__100 (
            .O(N__748),
            .I(N__736));
    LocalMux I__99 (
            .O(N__741),
            .I(\spi.SS_latchedZ0 ));
    LocalMux I__98 (
            .O(N__736),
            .I(\spi.SS_latchedZ0 ));
    InMux I__97 (
            .O(N__731),
            .I(N__727));
    InMux I__96 (
            .O(N__730),
            .I(N__724));
    LocalMux I__95 (
            .O(N__727),
            .I(\spi.SS_oldZ0 ));
    LocalMux I__94 (
            .O(N__724),
            .I(\spi.SS_oldZ0 ));
    InMux I__93 (
            .O(N__719),
            .I(N__715));
    InMux I__92 (
            .O(N__718),
            .I(N__712));
    LocalMux I__91 (
            .O(N__715),
            .I(\spi.SCLK_oldZ0 ));
    LocalMux I__90 (
            .O(N__712),
            .I(\spi.SCLK_oldZ0 ));
    InMux I__89 (
            .O(N__707),
            .I(N__703));
    InMux I__88 (
            .O(N__706),
            .I(N__700));
    LocalMux I__87 (
            .O(N__703),
            .I(rx_4));
    LocalMux I__86 (
            .O(N__700),
            .I(rx_4));
    CascadeMux I__85 (
            .O(N__695),
            .I(\spi.un3_ss_old_cascade_ ));
    CascadeMux I__84 (
            .O(N__692),
            .I(\spi.RxdData_0_sqmuxa_cascade_ ));
    IoInMux I__83 (
            .O(N__689),
            .I(N__686));
    LocalMux I__82 (
            .O(N__686),
            .I(N__683));
    Span4Mux_s3_v I__81 (
            .O(N__683),
            .I(N__680));
    Span4Mux_v I__80 (
            .O(N__680),
            .I(N__677));
    Span4Mux_v I__79 (
            .O(N__677),
            .I(N__674));
    Span4Mux_h I__78 (
            .O(N__674),
            .I(N__669));
    InMux I__77 (
            .O(N__673),
            .I(N__664));
    InMux I__76 (
            .O(N__672),
            .I(N__664));
    Odrv4 I__75 (
            .O(N__669),
            .I(LEDR_c));
    LocalMux I__74 (
            .O(N__664),
            .I(LEDR_c));
    IoInMux I__73 (
            .O(N__659),
            .I(N__656));
    LocalMux I__72 (
            .O(N__656),
            .I(N__653));
    Span12Mux_s8_v I__71 (
            .O(N__653),
            .I(N__650));
    Span12Mux_v I__70 (
            .O(N__650),
            .I(N__647));
    Odrv12 I__69 (
            .O(N__647),
            .I(\mypll_inst.outclk ));
    IoInMux I__68 (
            .O(N__644),
            .I(N__641));
    LocalMux I__67 (
            .O(N__641),
            .I(N__638));
    Span4Mux_s0_v I__66 (
            .O(N__638),
            .I(N__635));
    Odrv4 I__65 (
            .O(N__635),
            .I(CONSTANT_ONE_NET));
    InMux I__64 (
            .O(N__632),
            .I(N__629));
    LocalMux I__63 (
            .O(N__629),
            .I(\spi.TxDataZ0Z_0 ));
    IoInMux I__62 (
            .O(N__626),
            .I(N__623));
    LocalMux I__61 (
            .O(N__623),
            .I(N__620));
    IoSpan4Mux I__60 (
            .O(N__620),
            .I(N__617));
    Span4Mux_s2_v I__59 (
            .O(N__617),
            .I(N__614));
    Sp12to4 I__58 (
            .O(N__614),
            .I(N__611));
    Span12Mux_v I__57 (
            .O(N__611),
            .I(N__607));
    InMux I__56 (
            .O(N__610),
            .I(N__604));
    Odrv12 I__55 (
            .O(N__607),
            .I(LEDG_c));
    LocalMux I__54 (
            .O(N__604),
            .I(LEDG_c));
    InMux I__53 (
            .O(N__599),
            .I(N__596));
    LocalMux I__52 (
            .O(N__596),
            .I(txZ0Z_1));
    ICE_GB \mypll_inst.PLLOUTCORE_derived_clock_RNIF7IB  (
            .USERSIGNALTOGLOBALBUFFER(N__659),
            .GLOBALBUFFEROUTPUT(outclk_g));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam CONSTANT_ONE_LUT4_LC_12_30_2.C_ON=1'b0;
    defparam CONSTANT_ONE_LUT4_LC_12_30_2.SEQ_MODE=4'b0000;
    defparam CONSTANT_ONE_LUT4_LC_12_30_2.LUT_INIT=16'b1111111111111111;
    LogicCell40 CONSTANT_ONE_LUT4_LC_12_30_2 (
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
    defparam LEDRZ0_LC_13_14_7.C_ON=1'b0;
    defparam LEDRZ0_LC_13_14_7.SEQ_MODE=4'b1000;
    defparam LEDRZ0_LC_13_14_7.LUT_INIT=16'b1111111100000000;
    LogicCell40 LEDRZ0_LC_13_14_7 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__864),
            .lcout(LEDR_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1030),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.TxData_1_LC_13_15_0 .C_ON=1'b0;
    defparam \spi.TxData_1_LC_13_15_0 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_1_LC_13_15_0 .LUT_INIT=16'b1100110010101010;
    LogicCell40 \spi.TxData_1_LC_13_15_0  (
            .in0(N__599),
            .in1(N__632),
            .in2(_gnd_net_),
            .in3(N__977),
            .lcout(\spi.TxDataZ0Z_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1031),
            .ce(N__1216),
            .sr(_gnd_net_));
    defparam \spi.TxData_0_LC_13_15_5 .C_ON=1'b0;
    defparam \spi.TxData_0_LC_13_15_5 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_0_LC_13_15_5 .LUT_INIT=16'b1111111110101010;
    LogicCell40 \spi.TxData_0_LC_13_15_5  (
            .in0(N__978),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__610),
            .lcout(\spi.TxDataZ0Z_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1031),
            .ce(N__1216),
            .sr(_gnd_net_));
    defparam LEDGZ0_LC_13_16_5.C_ON=1'b0;
    defparam LEDGZ0_LC_13_16_5.SEQ_MODE=4'b1000;
    defparam LEDGZ0_LC_13_16_5.LUT_INIT=16'b1111111100000000;
    LogicCell40 LEDGZ0_LC_13_16_5 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1058),
            .lcout(LEDG_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1033),
            .ce(N__865),
            .sr(_gnd_net_));
    defparam tx_1_LC_13_16_6.C_ON=1'b0;
    defparam tx_1_LC_13_16_6.SEQ_MODE=4'b1000;
    defparam tx_1_LC_13_16_6.LUT_INIT=16'b1111111100000000;
    LogicCell40 tx_1_LC_13_16_6 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1093),
            .lcout(txZ0Z_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1033),
            .ce(N__865),
            .sr(_gnd_net_));
    defparam \spi.RxdData_4_LC_14_14_1 .C_ON=1'b0;
    defparam \spi.RxdData_4_LC_14_14_1 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_4_LC_14_14_1 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_4_LC_14_14_1  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__919),
            .lcout(rx_4),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1032),
            .ce(N__1000),
            .sr(_gnd_net_));
    defparam \spi.RxdData_5_LC_14_14_3 .C_ON=1'b0;
    defparam \spi.RxdData_5_LC_14_14_3 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_5_LC_14_14_3 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_5_LC_14_14_3  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__706),
            .lcout(rx_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1032),
            .ce(N__1000),
            .sr(_gnd_net_));
    defparam \spi.RxdData_2_LC_14_14_4 .C_ON=1'b0;
    defparam \spi.RxdData_2_LC_14_14_4 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_2_LC_14_14_4 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_2_LC_14_14_4  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1094),
            .lcout(rx_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1032),
            .ce(N__1000),
            .sr(_gnd_net_));
    defparam \spi.RxdData_3_LC_14_14_5 .C_ON=1'b0;
    defparam \spi.RxdData_3_LC_14_14_5 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_3_LC_14_14_5 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_3_LC_14_14_5  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__883),
            .lcout(rx_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1032),
            .ce(N__1000),
            .sr(_gnd_net_));
    defparam \spi.RxdData_7_LC_14_14_6 .C_ON=1'b0;
    defparam \spi.RxdData_7_LC_14_14_6 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_7_LC_14_14_6 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_7_LC_14_14_6  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__907),
            .lcout(rx_7),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1032),
            .ce(N__1000),
            .sr(_gnd_net_));
    defparam \spi.RxdData_6_LC_14_14_7 .C_ON=1'b0;
    defparam \spi.RxdData_6_LC_14_14_7 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_6_LC_14_14_7 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_6_LC_14_14_7  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__895),
            .lcout(rx_6),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1032),
            .ce(N__1000),
            .sr(_gnd_net_));
    defparam \spi.SPI_DONE_RNO_0_LC_14_15_1 .C_ON=1'b0;
    defparam \spi.SPI_DONE_RNO_0_LC_14_15_1 .SEQ_MODE=4'b0000;
    defparam \spi.SPI_DONE_RNO_0_LC_14_15_1 .LUT_INIT=16'b0101010100000000;
    LogicCell40 \spi.SPI_DONE_RNO_0_LC_14_15_1  (
            .in0(N__749),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__731),
            .lcout(),
            .ltout(\spi.un3_ss_old_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SPI_DONE_LC_14_15_2 .C_ON=1'b0;
    defparam \spi.SPI_DONE_LC_14_15_2 .SEQ_MODE=4'b1000;
    defparam \spi.SPI_DONE_LC_14_15_2 .LUT_INIT=16'b1100110111001100;
    LogicCell40 \spi.SPI_DONE_LC_14_15_2  (
            .in0(N__673),
            .in1(N__782),
            .in2(N__695),
            .in3(N__863),
            .lcout(done),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1034),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SCLK_old_RNIKH0V_LC_14_15_6 .C_ON=1'b0;
    defparam \spi.SCLK_old_RNIKH0V_LC_14_15_6 .SEQ_MODE=4'b0000;
    defparam \spi.SCLK_old_RNIKH0V_LC_14_15_6 .LUT_INIT=16'b0000000001000100;
    LogicCell40 \spi.SCLK_old_RNIKH0V_LC_14_15_6  (
            .in0(N__718),
            .in1(N__1107),
            .in2(_gnd_net_),
            .in3(N__748),
            .lcout(\spi.RxdData_0_sqmuxa ),
            .ltout(\spi.RxdData_0_sqmuxa_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SCLK_old_RNIRCN41_LC_14_15_7 .C_ON=1'b0;
    defparam \spi.SCLK_old_RNIRCN41_LC_14_15_7 .SEQ_MODE=4'b0000;
    defparam \spi.SCLK_old_RNIRCN41_LC_14_15_7 .LUT_INIT=16'b1111111111110000;
    LogicCell40 \spi.SCLK_old_RNIRCN41_LC_14_15_7  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__692),
            .in3(N__672),
            .lcout(\spi.TxData_1_sqmuxa_i ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.index_RNI57R91_2_LC_14_16_0 .C_ON=1'b0;
    defparam \spi.index_RNI57R91_2_LC_14_16_0 .SEQ_MODE=4'b0000;
    defparam \spi.index_RNI57R91_2_LC_14_16_0 .LUT_INIT=16'b0000000000000001;
    LogicCell40 \spi.index_RNI57R91_2_LC_14_16_0  (
            .in0(N__1175),
            .in1(N__750),
            .in2(N__1201),
            .in3(N__1141),
            .lcout(),
            .ltout(\spi.SPI_DONE_0_sqmuxa_2_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SCLK_old_RNI5H8V1_LC_14_16_1 .C_ON=1'b0;
    defparam \spi.SCLK_old_RNI5H8V1_LC_14_16_1 .SEQ_MODE=4'b0000;
    defparam \spi.SCLK_old_RNI5H8V1_LC_14_16_1 .LUT_INIT=16'b0000000010100000;
    LogicCell40 \spi.SCLK_old_RNI5H8V1_LC_14_16_1  (
            .in0(N__1108),
            .in1(_gnd_net_),
            .in2(N__785),
            .in3(N__719),
            .lcout(\spi.SPI_DONE_0_sqmuxa ),
            .ltout(\spi.SPI_DONE_0_sqmuxa_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SS_old_RNIBOQN3_LC_14_16_2 .C_ON=1'b0;
    defparam \spi.SS_old_RNIBOQN3_LC_14_16_2 .SEQ_MODE=4'b0000;
    defparam \spi.SS_old_RNIBOQN3_LC_14_16_2 .LUT_INIT=16'b0000111000001101;
    LogicCell40 \spi.SS_old_RNIBOQN3_LC_14_16_2  (
            .in0(N__730),
            .in1(N__976),
            .in2(N__776),
            .in3(N__751),
            .lcout(\spi.un1_SPI_DONE_0_sqmuxa_1_0 ),
            .ltout(\spi.un1_SPI_DONE_0_sqmuxa_1_0_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.index_0_LC_14_16_3 .C_ON=1'b0;
    defparam \spi.index_0_LC_14_16_3 .SEQ_MODE=4'b1000;
    defparam \spi.index_0_LC_14_16_3 .LUT_INIT=16'b0011111111001111;
    LogicCell40 \spi.index_0_LC_14_16_3  (
            .in0(_gnd_net_),
            .in1(N__1176),
            .in2(N__773),
            .in3(N__985),
            .lcout(\spi.indexZ0Z_0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1036),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SS_latched_LC_14_16_4 .C_ON=1'b0;
    defparam \spi.SS_latched_LC_14_16_4 .SEQ_MODE=4'b1000;
    defparam \spi.SS_latched_LC_14_16_4 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.SS_latched_LC_14_16_4  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__770),
            .lcout(\spi.SS_latchedZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1036),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SS_old_LC_14_16_5 .C_ON=1'b0;
    defparam \spi.SS_old_LC_14_16_5 .SEQ_MODE=4'b1000;
    defparam \spi.SS_old_LC_14_16_5 .LUT_INIT=16'b1010101010101010;
    LogicCell40 \spi.SS_old_LC_14_16_5  (
            .in0(N__752),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(\spi.SS_oldZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1036),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SCLK_old_LC_14_16_6 .C_ON=1'b0;
    defparam \spi.SCLK_old_LC_14_16_6 .SEQ_MODE=4'b1000;
    defparam \spi.SCLK_old_LC_14_16_6 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.SCLK_old_LC_14_16_6  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1109),
            .lcout(\spi.SCLK_oldZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1036),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.index_1_LC_14_16_7 .C_ON=1'b0;
    defparam \spi.index_1_LC_14_16_7 .SEQ_MODE=4'b1000;
    defparam \spi.index_1_LC_14_16_7 .LUT_INIT=16'b1011010011111111;
    LogicCell40 \spi.index_1_LC_14_16_7  (
            .in0(N__1178),
            .in1(N__986),
            .in2(N__1202),
            .in3(N__1153),
            .lcout(\spi.indexZ0Z_1 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1036),
            .ce(),
            .sr(_gnd_net_));
    defparam tx_4_LC_15_14_0.C_ON=1'b0;
    defparam tx_4_LC_15_14_0.SEQ_MODE=4'b1000;
    defparam tx_4_LC_15_14_0.LUT_INIT=16'b1100110011001100;
    LogicCell40 tx_4_LC_15_14_0 (
            .in0(_gnd_net_),
            .in1(N__707),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(txZ0Z_4),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1035),
            .ce(N__866),
            .sr(_gnd_net_));
    defparam tx_3_LC_15_14_3.C_ON=1'b0;
    defparam tx_3_LC_15_14_3.SEQ_MODE=4'b1000;
    defparam tx_3_LC_15_14_3.LUT_INIT=16'b1111111100000000;
    LogicCell40 tx_3_LC_15_14_3 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__920),
            .lcout(txZ0Z_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1035),
            .ce(N__866),
            .sr(_gnd_net_));
    defparam tx_6_LC_15_14_4.C_ON=1'b0;
    defparam tx_6_LC_15_14_4.SEQ_MODE=4'b1000;
    defparam tx_6_LC_15_14_4.LUT_INIT=16'b1111111100000000;
    LogicCell40 tx_6_LC_15_14_4 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__908),
            .lcout(txZ0Z_6),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1035),
            .ce(N__866),
            .sr(_gnd_net_));
    defparam tx_5_LC_15_14_5.C_ON=1'b0;
    defparam tx_5_LC_15_14_5.SEQ_MODE=4'b1000;
    defparam tx_5_LC_15_14_5.LUT_INIT=16'b1111111100000000;
    LogicCell40 tx_5_LC_15_14_5 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__896),
            .lcout(txZ0Z_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1035),
            .ce(N__866),
            .sr(_gnd_net_));
    defparam tx_2_LC_15_14_6.C_ON=1'b0;
    defparam tx_2_LC_15_14_6.SEQ_MODE=4'b1000;
    defparam tx_2_LC_15_14_6.LUT_INIT=16'b1111111100000000;
    LogicCell40 tx_2_LC_15_14_6 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__884),
            .lcout(txZ0Z_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1035),
            .ce(N__866),
            .sr(_gnd_net_));
    defparam tx_7_LC_15_14_7.C_ON=1'b0;
    defparam tx_7_LC_15_14_7.SEQ_MODE=4'b1000;
    defparam tx_7_LC_15_14_7.LUT_INIT=16'b1111111100000000;
    LogicCell40 tx_7_LC_15_14_7 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__872),
            .lcout(txZ0Z_7),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1035),
            .ce(N__866),
            .sr(_gnd_net_));
    defparam \spi.TxData_5_LC_15_15_0 .C_ON=1'b0;
    defparam \spi.TxData_5_LC_15_15_0 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_5_LC_15_15_0 .LUT_INIT=16'b1110111001000100;
    LogicCell40 \spi.TxData_5_LC_15_15_0  (
            .in0(N__982),
            .in1(N__842),
            .in2(_gnd_net_),
            .in3(N__803),
            .lcout(\spi.TxDataZ0Z_5 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1037),
            .ce(N__1217),
            .sr(_gnd_net_));
    defparam \spi.TxData_7_LC_15_15_1 .C_ON=1'b0;
    defparam \spi.TxData_7_LC_15_15_1 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_7_LC_15_15_1 .LUT_INIT=16'b1100110010101010;
    LogicCell40 \spi.TxData_7_LC_15_15_1  (
            .in0(N__836),
            .in1(N__1244),
            .in2(_gnd_net_),
            .in3(N__984),
            .lcout(MISO_c),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1037),
            .ce(N__1217),
            .sr(_gnd_net_));
    defparam \spi.TxData_4_LC_15_15_4 .C_ON=1'b0;
    defparam \spi.TxData_4_LC_15_15_4 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_4_LC_15_15_4 .LUT_INIT=16'b1111101001010000;
    LogicCell40 \spi.TxData_4_LC_15_15_4  (
            .in0(N__981),
            .in1(_gnd_net_),
            .in2(N__812),
            .in3(N__791),
            .lcout(\spi.TxDataZ0Z_4 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1037),
            .ce(N__1217),
            .sr(_gnd_net_));
    defparam \spi.TxData_3_LC_15_15_5 .C_ON=1'b0;
    defparam \spi.TxData_3_LC_15_15_5 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_3_LC_15_15_5 .LUT_INIT=16'b1100110010101010;
    LogicCell40 \spi.TxData_3_LC_15_15_5  (
            .in0(N__797),
            .in1(N__1223),
            .in2(_gnd_net_),
            .in3(N__980),
            .lcout(\spi.TxDataZ0Z_3 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1037),
            .ce(N__1217),
            .sr(_gnd_net_));
    defparam \spi.TxData_6_LC_15_15_6 .C_ON=1'b0;
    defparam \spi.TxData_6_LC_15_15_6 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_6_LC_15_15_6 .LUT_INIT=16'b1111101001010000;
    LogicCell40 \spi.TxData_6_LC_15_15_6  (
            .in0(N__983),
            .in1(_gnd_net_),
            .in2(N__1259),
            .in3(N__1250),
            .lcout(\spi.TxDataZ0Z_6 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1037),
            .ce(N__1217),
            .sr(_gnd_net_));
    defparam \spi.TxData_2_LC_15_15_7 .C_ON=1'b0;
    defparam \spi.TxData_2_LC_15_15_7 .SEQ_MODE=4'b1000;
    defparam \spi.TxData_2_LC_15_15_7 .LUT_INIT=16'b1100110010101010;
    LogicCell40 \spi.TxData_2_LC_15_15_7  (
            .in0(N__1238),
            .in1(N__1232),
            .in2(_gnd_net_),
            .in3(N__979),
            .lcout(\spi.TxDataZ0Z_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1037),
            .ce(N__1217),
            .sr(_gnd_net_));
    defparam \spi.index_RNO_0_2_LC_15_16_0 .C_ON=1'b0;
    defparam \spi.index_RNO_0_2_LC_15_16_0 .SEQ_MODE=4'b0000;
    defparam \spi.index_RNO_0_2_LC_15_16_0 .LUT_INIT=16'b0101010101110111;
    LogicCell40 \spi.index_RNO_0_2_LC_15_16_0  (
            .in0(N__975),
            .in1(N__1197),
            .in2(_gnd_net_),
            .in3(N__1177),
            .lcout(),
            .ltout(\spi.CO1_0_1_cascade_ ),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.index_2_LC_15_16_1 .C_ON=1'b0;
    defparam \spi.index_2_LC_15_16_1 .SEQ_MODE=4'b1000;
    defparam \spi.index_2_LC_15_16_1 .LUT_INIT=16'b0110100111111111;
    LogicCell40 \spi.index_2_LC_15_16_1  (
            .in0(N__987),
            .in1(N__1142),
            .in2(N__1157),
            .in3(N__1154),
            .lcout(\spi.indexZ0Z_2 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1038),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.SCLK_latched_LC_15_16_2 .C_ON=1'b0;
    defparam \spi.SCLK_latched_LC_15_16_2 .SEQ_MODE=4'b1000;
    defparam \spi.SCLK_latched_LC_15_16_2 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.SCLK_latched_LC_15_16_2  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1130),
            .lcout(\spi.SCLK_latchedZ0 ),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1038),
            .ce(),
            .sr(_gnd_net_));
    defparam \spi.RxdData_1_LC_15_17_2 .C_ON=1'b0;
    defparam \spi.RxdData_1_LC_15_17_2 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_1_LC_15_17_2 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_1_LC_15_17_2  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1051),
            .lcout(rx_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1039),
            .ce(N__1001),
            .sr(_gnd_net_));
    defparam \spi.RxdData_0_LC_15_17_7 .C_ON=1'b0;
    defparam \spi.RxdData_0_LC_15_17_7 .SEQ_MODE=4'b1000;
    defparam \spi.RxdData_0_LC_15_17_7 .LUT_INIT=16'b1111111100000000;
    LogicCell40 \spi.RxdData_0_LC_15_17_7  (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1073),
            .lcout(rx_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1039),
            .ce(N__1001),
            .sr(_gnd_net_));
endmodule // SPI_TEST_MODULE
