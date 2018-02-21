// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Thu Feb 01 19:07:52 2018
//
// Verilog Description of module spi_test
//

module spi_test (clk, SCK, MOwSI, MISO, SS, LEDR, LEDG);   // ../../../../fpga code/spi/testspi2.vhd(9[8:16])
    input clk;   // ../../../../fpga code/spi/testspi2.vhd(11[3:6])
    input SCK;   // ../../../../fpga code/spi/testspi2.vhd(12[3:6])
    input MOwSI;   // ../../../../fpga code/spi/testspi2.vhd(13[3:8])
    output MISO;   // ../../../../fpga code/spi/testspi2.vhd(14[3:7])
    input SS;   // ../../../../fpga code/spi/testspi2.vhd(15[3:5])
    output LEDR /* synthesis .original_dir=IN_OUT */ ;   // ../../../../fpga code/spi/testspi2.vhd(16[3:7])
    output LEDG /* synthesis .original_dir=IN_OUT */ ;   // ../../../../fpga code/spi/testspi2.vhd(17[3:7])
    
    wire SCK_c /* synthesis SET_AS_NETWORK=SCK_c, is_clock=1 */ ;   // ../../../../fpga code/spi/testspi2.vhd(12[3:6])
    
    wire GND_net, VCC_net, SS_c, LEDR_c, LEDG_c;
    wire [2:0]bit_count;   // ../../../../fpga code/spi/testspi2.vhd(25[9:18])
    
    wire byte_rcvd, LEDR_N_9, n119, LEDR_N_7, n18, n19, n20, n70;
    
    VCC i2 (.Y(VCC_net));
    SB_LUT4 i1_2_lut_4_lut (.I0(byte_rcvd), .I1(bit_count[1]), .I2(bit_count[2]), 
            .I3(bit_count[0]), .O(n119));   // ../../../../fpga code/spi/testspi2.vhd(34[3] 59[10])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h4000;
    SB_LUT4 i94_1_lut (.I0(bit_count[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n20));   // D:/ICEcube2/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i94_1_lut.LUT_INIT = 16'h5555;
    SB_DFF LEDR_36 (.Q(LEDR_c), .C(SCK_c), .D(LEDR_N_7));   // ../../../../fpga code/spi/testspi2.vhd(34[3] 59[10])
    SB_LUT4 i70_3_lut (.I0(LEDG_c), .I1(SS_c), .I2(byte_rcvd), .I3(GND_net), 
            .O(n70));   // ../../../../fpga code/spi/testspi2.vhd(34[3] 59[10])
    defparam i70_3_lut.LUT_INIT = 16'h5959;
    SB_DFF LEDG_34 (.Q(LEDG_c), .C(SCK_c), .D(n70));   // ../../../../fpga code/spi/testspi2.vhd(34[3] 59[10])
    SB_DFFSR bit_count_48__i0 (.Q(bit_count[0]), .C(SCK_c), .D(n20), .R(SS_c));   // D:/ICEcube2/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_IO LEDR_pad (.PACKAGE_PIN(LEDR), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LEDR_c));   // D:/ICEcube2/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LEDR_pad.PIN_TYPE = 6'b011001;
    defparam LEDR_pad.PULLUP = 1'b0;
    defparam LEDR_pad.NEG_TRIGGER = 1'b0;
    defparam LEDR_pad.IO_STANDARD = "SB_LVCMOS";
    GND i1 (.Y(GND_net));
    SB_DFFSR bit_count_48__i2 (.Q(bit_count[2]), .C(SCK_c), .D(n18), .R(SS_c));   // D:/ICEcube2/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_DFFSR bit_count_48__i1 (.Q(bit_count[1]), .C(SCK_c), .D(n19), .R(SS_c));   // D:/ICEcube2/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    SB_IO LEDG_pad (.PACKAGE_PIN(LEDG), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(LEDG_c));   // D:/ICEcube2/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam LEDG_pad.PIN_TYPE = 6'b011001;
    defparam LEDG_pad.PULLUP = 1'b0;
    defparam LEDG_pad.NEG_TRIGGER = 1'b0;
    defparam LEDG_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 LEDR_I_0_40_3_lut (.I0(LEDR_c), .I1(byte_rcvd), .I2(LEDR_N_9), 
            .I3(GND_net), .O(LEDR_N_7));   // ../../../../fpga code/spi/testspi2.vhd(49[4] 57[11])
    defparam LEDR_I_0_40_3_lut.LUT_INIT = 16'h5656;
    SB_DFF byte_rcvd_35 (.Q(byte_rcvd), .C(SCK_c), .D(n119));   // ../../../../fpga code/spi/testspi2.vhd(34[3] 59[10])
    SB_GB_IO SCK_pad (.PACKAGE_PIN(SCK), .OUTPUT_ENABLE(VCC_net), .GLOBAL_BUFFER_OUTPUT(SCK_c));   // ../../../../fpga code/spi/testspi2.vhd(12[3:6])
    defparam SCK_pad.PIN_TYPE = 6'b000001;
    defparam SCK_pad.PULLUP = 1'b0;
    defparam SCK_pad.NEG_TRIGGER = 1'b0;
    defparam SCK_pad.IO_STANDARD = "SB_LVCMOS";
    SB_IO SS_pad (.PACKAGE_PIN(SS), .OUTPUT_ENABLE(VCC_net), .D_IN_0(SS_c));   // D:/ICEcube2/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam SS_pad.PIN_TYPE = 6'b000001;
    defparam SS_pad.PULLUP = 1'b0;
    defparam SS_pad.NEG_TRIGGER = 1'b0;
    defparam SS_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i2_3_lut (.I0(bit_count[1]), .I1(bit_count[2]), .I2(bit_count[0]), 
            .I3(GND_net), .O(LEDR_N_9));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_IO MISO_pad (.PACKAGE_PIN(MISO), .OUTPUT_ENABLE(VCC_net), .D_OUT_0(GND_net));   // D:/ICEcube2/LSE/userware/NT/SYNTHESIS_HEADERS/sb_ice40.v(502[8:13])
    defparam MISO_pad.PIN_TYPE = 6'b011001;
    defparam MISO_pad.PULLUP = 1'b0;
    defparam MISO_pad.NEG_TRIGGER = 1'b0;
    defparam MISO_pad.IO_STANDARD = "SB_LVCMOS";
    SB_LUT4 i96_2_lut (.I0(bit_count[1]), .I1(bit_count[0]), .I2(GND_net), 
            .I3(GND_net), .O(n19));   // D:/ICEcube2/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i96_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i103_3_lut (.I0(bit_count[2]), .I1(bit_count[1]), .I2(bit_count[0]), 
            .I3(GND_net), .O(n18));   // D:/ICEcube2/LSE/vhdl_packages/numeric_std.vhd(1241[12:13])
    defparam i103_3_lut.LUT_INIT = 16'h6a6a;
    
endmodule
