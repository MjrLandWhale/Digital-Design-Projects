// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.3 (lin64) Build 1368829 Mon Sep 28 20:06:39 MDT 2015
// Date        : Sun Feb 14 18:03:51 2016
// Host        : Mini-Whale-V5 running 64-bit Linux Mint 17.2 Rafaela
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/mbrandone/Desktop/2015Year/ELEN232/Project_6/Problem_4/Problem_4.sim/sim_1/impl/timing/fourBitMultiplierSim_time_impl.v
// Design      : fourBitMultiplier
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "c4cbdace" *) 
(* NotValidForBitStream *)
module fourBitMultiplier
   (A,
    B,
    Out);
  input [3:0]A;
  input [3:0]B;
  output [7:0]Out;

  wire [3:0]A;
  wire [3:0]A_IBUF;
  wire [3:0]B;
  wire [3:0]B_IBUF;
  wire [7:0]Out;
  wire [7:0]Out_OBUF;
  wire \Out_OBUF[3]_inst_i_2_n_0 ;
  wire \Out_OBUF[3]_inst_i_3_n_0 ;
  wire \Out_OBUF[4]_inst_i_2_n_0 ;
  wire \Out_OBUF[4]_inst_i_3_n_0 ;
  wire \Out_OBUF[7]_inst_i_2_n_0 ;
  wire \Out_OBUF[7]_inst_i_3_n_0 ;
  wire \Out_OBUF[7]_inst_i_4_n_0 ;
  wire \Out_OBUF[7]_inst_i_5_n_0 ;
  wire \Out_OBUF[7]_inst_i_6_n_0 ;
  wire \Out_OBUF[7]_inst_i_7_n_0 ;

initial begin
 $sdf_annotate("fourBitMultiplierSim_time_impl.sdf",,,,"tool_control");
end
  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  OBUF \Out_OBUF[0]_inst 
       (.I(Out_OBUF[0]),
        .O(Out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Out_OBUF[0]_inst_i_1 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .O(Out_OBUF[0]));
  OBUF \Out_OBUF[1]_inst 
       (.I(Out_OBUF[1]),
        .O(Out[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \Out_OBUF[1]_inst_i_1 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[1]),
        .I2(B_IBUF[0]),
        .I3(A_IBUF[1]),
        .O(Out_OBUF[1]));
  OBUF \Out_OBUF[2]_inst 
       (.I(Out_OBUF[2]),
        .O(Out[2]));
  LUT6 #(
    .INIT(64'h553F6AC0AAC06AC0)) 
    \Out_OBUF[2]_inst_i_1 
       (.I0(B_IBUF[2]),
        .I1(B_IBUF[1]),
        .I2(A_IBUF[1]),
        .I3(A_IBUF[0]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[2]),
        .O(Out_OBUF[2]));
  OBUF \Out_OBUF[3]_inst 
       (.I(Out_OBUF[3]),
        .O(Out[3]));
  LUT6 #(
    .INIT(64'h7887877887788778)) 
    \Out_OBUF[3]_inst_i_1 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[0]),
        .I2(\Out_OBUF[3]_inst_i_2_n_0 ),
        .I3(\Out_OBUF[3]_inst_i_3_n_0 ),
        .I4(A_IBUF[1]),
        .I5(B_IBUF[2]),
        .O(Out_OBUF[3]));
  LUT6 #(
    .INIT(64'h9AAACC0066AACC00)) 
    \Out_OBUF[3]_inst_i_2 
       (.I0(A_IBUF[3]),
        .I1(A_IBUF[2]),
        .I2(A_IBUF[0]),
        .I3(B_IBUF[1]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[1]),
        .O(\Out_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA00800000008000)) 
    \Out_OBUF[3]_inst_i_3 
       (.I0(B_IBUF[2]),
        .I1(B_IBUF[1]),
        .I2(A_IBUF[1]),
        .I3(A_IBUF[0]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[2]),
        .O(\Out_OBUF[3]_inst_i_3_n_0 ));
  OBUF \Out_OBUF[4]_inst 
       (.I(Out_OBUF[4]),
        .O(Out[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \Out_OBUF[4]_inst_i_1 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[1]),
        .I2(\Out_OBUF[4]_inst_i_2_n_0 ),
        .I3(\Out_OBUF[4]_inst_i_3_n_0 ),
        .O(Out_OBUF[4]));
  LUT6 #(
    .INIT(64'h5F6060A0A09F9F5F)) 
    \Out_OBUF[4]_inst_i_2 
       (.I0(A_IBUF[2]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[2]),
        .I3(\Out_OBUF[3]_inst_i_3_n_0 ),
        .I4(\Out_OBUF[3]_inst_i_2_n_0 ),
        .I5(\Out_OBUF[7]_inst_i_6_n_0 ),
        .O(\Out_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6999FFFFFFFFFFFF)) 
    \Out_OBUF[4]_inst_i_3 
       (.I0(\Out_OBUF[3]_inst_i_2_n_0 ),
        .I1(\Out_OBUF[3]_inst_i_3_n_0 ),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[2]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[0]),
        .O(\Out_OBUF[4]_inst_i_3_n_0 ));
  OBUF \Out_OBUF[5]_inst 
       (.I(Out_OBUF[5]),
        .O(Out[5]));
  LUT4 #(
    .INIT(16'h6999)) 
    \Out_OBUF[5]_inst_i_1 
       (.I0(\Out_OBUF[7]_inst_i_2_n_0 ),
        .I1(\Out_OBUF[7]_inst_i_3_n_0 ),
        .I2(A_IBUF[2]),
        .I3(B_IBUF[3]),
        .O(Out_OBUF[5]));
  OBUF \Out_OBUF[6]_inst 
       (.I(Out_OBUF[6]),
        .O(Out[6]));
  LUT6 #(
    .INIT(64'h96CC66CC993C963C)) 
    \Out_OBUF[6]_inst_i_1 
       (.I0(A_IBUF[3]),
        .I1(\Out_OBUF[7]_inst_i_4_n_0 ),
        .I2(\Out_OBUF[7]_inst_i_2_n_0 ),
        .I3(B_IBUF[3]),
        .I4(A_IBUF[2]),
        .I5(\Out_OBUF[7]_inst_i_3_n_0 ),
        .O(Out_OBUF[6]));
  OBUF \Out_OBUF[7]_inst 
       (.I(Out_OBUF[7]),
        .O(Out[7]));
  LUT6 #(
    .INIT(64'hFF0000008E000000)) 
    \Out_OBUF[7]_inst_i_1 
       (.I0(\Out_OBUF[7]_inst_i_2_n_0 ),
        .I1(A_IBUF[2]),
        .I2(\Out_OBUF[7]_inst_i_3_n_0 ),
        .I3(A_IBUF[3]),
        .I4(B_IBUF[3]),
        .I5(\Out_OBUF[7]_inst_i_4_n_0 ),
        .O(Out_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h088F)) 
    \Out_OBUF[7]_inst_i_2 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[3]),
        .I2(\Out_OBUF[4]_inst_i_3_n_0 ),
        .I3(\Out_OBUF[4]_inst_i_2_n_0 ),
        .O(\Out_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6669C3336999C333)) 
    \Out_OBUF[7]_inst_i_3 
       (.I0(A_IBUF[3]),
        .I1(\Out_OBUF[7]_inst_i_5_n_0 ),
        .I2(\Out_OBUF[7]_inst_i_6_n_0 ),
        .I3(\Out_OBUF[7]_inst_i_7_n_0 ),
        .I4(B_IBUF[2]),
        .I5(A_IBUF[2]),
        .O(\Out_OBUF[7]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0E0E0A0A0A0A0A0)) 
    \Out_OBUF[7]_inst_i_4 
       (.I0(\Out_OBUF[7]_inst_i_5_n_0 ),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[2]),
        .I3(\Out_OBUF[7]_inst_i_7_n_0 ),
        .I4(\Out_OBUF[7]_inst_i_6_n_0 ),
        .I5(A_IBUF[3]),
        .O(\Out_OBUF[7]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF000800000000000)) 
    \Out_OBUF[7]_inst_i_5 
       (.I0(A_IBUF[0]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[0]),
        .I3(A_IBUF[3]),
        .I4(A_IBUF[2]),
        .I5(B_IBUF[1]),
        .O(\Out_OBUF[7]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4048888808088888)) 
    \Out_OBUF[7]_inst_i_6 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[1]),
        .I2(A_IBUF[2]),
        .I3(A_IBUF[0]),
        .I4(B_IBUF[0]),
        .I5(A_IBUF[1]),
        .O(\Out_OBUF[7]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    \Out_OBUF[7]_inst_i_7 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[2]),
        .I2(\Out_OBUF[3]_inst_i_3_n_0 ),
        .I3(\Out_OBUF[3]_inst_i_2_n_0 ),
        .O(\Out_OBUF[7]_inst_i_7_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
