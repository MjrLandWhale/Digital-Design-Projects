// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.3 (lin64) Build 1368829 Mon Sep 28 20:06:39 MDT 2015
// Date        : Sun Feb 14 18:04:22 2016
// Host        : Mini-Whale-V5 running 64-bit Linux Mint 17.2 Rafaela
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/mbrandone/Desktop/2015Year/ELEN232/Project_6/Problem_6/Problem_6.sim/sim_1/impl/timing/eightBitRCASim_time_impl.v
// Design      : eightBitRCA
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "7f02c20e" *) 
(* NotValidForBitStream *)
module eightBitRCA
   (A,
    B,
    Sub,
    Out,
    Error);
  input [7:0]A;
  input [7:0]B;
  input Sub;
  output [7:0]Out;
  output Error;

  wire [7:0]A;
  wire [7:0]A_IBUF;
  wire [7:0]B;
  wire [7:0]B_IBUF;
  wire Error;
  wire Error_OBUF;
  wire [7:0]Out;
  wire [7:0]Out_OBUF;
  wire \Out_OBUF[3]_inst_i_2_n_0 ;
  wire \Out_OBUF[5]_inst_i_2_n_0 ;
  wire \Out_OBUF[7]_inst_i_2_n_0 ;
  wire Sub;
  wire Sub_IBUF;

initial begin
 $sdf_annotate("eightBitRCASim_time_impl.sdf",,,,"tool_control");
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
  IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
  IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
  IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
  IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
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
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  OBUF Error_OBUF_inst
       (.I(Error_OBUF),
        .O(Error));
  LUT6 #(
    .INIT(64'h010740D0B0200E08)) 
    Error_OBUF_inst_i_1
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .I2(Sub_IBUF),
        .I3(\Out_OBUF[7]_inst_i_2_n_0 ),
        .I4(B_IBUF[7]),
        .I5(A_IBUF[7]),
        .O(Error_OBUF));
  OBUF \Out_OBUF[0]_inst 
       (.I(Out_OBUF[0]),
        .O(Out[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \Out_OBUF[0]_inst_i_1 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .O(Out_OBUF[0]));
  OBUF \Out_OBUF[1]_inst 
       (.I(Out_OBUF[1]),
        .O(Out[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \Out_OBUF[1]_inst_i_1 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .I2(Sub_IBUF),
        .I3(B_IBUF[1]),
        .I4(A_IBUF[1]),
        .O(Out_OBUF[1]));
  OBUF \Out_OBUF[2]_inst 
       (.I(Out_OBUF[2]),
        .O(Out[2]));
  LUT4 #(
    .INIT(16'h9669)) 
    \Out_OBUF[2]_inst_i_1 
       (.I0(\Out_OBUF[3]_inst_i_2_n_0 ),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[2]),
        .I3(Sub_IBUF),
        .O(Out_OBUF[2]));
  OBUF \Out_OBUF[3]_inst 
       (.I(Out_OBUF[3]),
        .O(Out[3]));
  LUT6 #(
    .INIT(64'hB24D4DB28E71718E)) 
    \Out_OBUF[3]_inst_i_1 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .I2(\Out_OBUF[3]_inst_i_2_n_0 ),
        .I3(A_IBUF[3]),
        .I4(B_IBUF[3]),
        .I5(Sub_IBUF),
        .O(Out_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h41D74747)) 
    \Out_OBUF[3]_inst_i_2 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .I2(Sub_IBUF),
        .I3(A_IBUF[0]),
        .I4(B_IBUF[0]),
        .O(\Out_OBUF[3]_inst_i_2_n_0 ));
  OBUF \Out_OBUF[4]_inst 
       (.I(Out_OBUF[4]),
        .O(Out[4]));
  LUT4 #(
    .INIT(16'h9669)) 
    \Out_OBUF[4]_inst_i_1 
       (.I0(\Out_OBUF[5]_inst_i_2_n_0 ),
        .I1(A_IBUF[4]),
        .I2(B_IBUF[4]),
        .I3(Sub_IBUF),
        .O(Out_OBUF[4]));
  OBUF \Out_OBUF[5]_inst 
       (.I(Out_OBUF[5]),
        .O(Out[5]));
  LUT6 #(
    .INIT(64'hB24D4DB28E71718E)) 
    \Out_OBUF[5]_inst_i_1 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[4]),
        .I2(\Out_OBUF[5]_inst_i_2_n_0 ),
        .I3(A_IBUF[5]),
        .I4(B_IBUF[5]),
        .I5(Sub_IBUF),
        .O(Out_OBUF[5]));
  LUT6 #(
    .INIT(64'hB200FF2B002BB2FF)) 
    \Out_OBUF[5]_inst_i_2 
       (.I0(\Out_OBUF[3]_inst_i_2_n_0 ),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[2]),
        .I3(Sub_IBUF),
        .I4(A_IBUF[3]),
        .I5(B_IBUF[3]),
        .O(\Out_OBUF[5]_inst_i_2_n_0 ));
  OBUF \Out_OBUF[6]_inst 
       (.I(Out_OBUF[6]),
        .O(Out[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \Out_OBUF[6]_inst_i_1 
       (.I0(\Out_OBUF[7]_inst_i_2_n_0 ),
        .I1(Sub_IBUF),
        .I2(B_IBUF[6]),
        .I3(A_IBUF[6]),
        .O(Out_OBUF[6]));
  OBUF \Out_OBUF[7]_inst 
       (.I(Out_OBUF[7]),
        .O(Out[7]));
  LUT6 #(
    .INIT(64'h6999669699966966)) 
    \Out_OBUF[7]_inst_i_1 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[7]),
        .I2(\Out_OBUF[7]_inst_i_2_n_0 ),
        .I3(Sub_IBUF),
        .I4(B_IBUF[6]),
        .I5(A_IBUF[6]),
        .O(Out_OBUF[7]));
  LUT6 #(
    .INIT(64'h4DFF00D4FFD44D00)) 
    \Out_OBUF[7]_inst_i_2 
       (.I0(\Out_OBUF[5]_inst_i_2_n_0 ),
        .I1(A_IBUF[4]),
        .I2(B_IBUF[4]),
        .I3(Sub_IBUF),
        .I4(A_IBUF[5]),
        .I5(B_IBUF[5]),
        .O(\Out_OBUF[7]_inst_i_2_n_0 ));
  IBUF Sub_IBUF_inst
       (.I(Sub),
        .O(Sub_IBUF));
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
