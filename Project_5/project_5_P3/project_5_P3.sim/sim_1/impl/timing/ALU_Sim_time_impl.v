// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.3 (lin64) Build 1368829 Mon Sep 28 20:06:39 MDT 2015
// Date        : Thu Feb  4 11:47:15 2016
// Host        : Mini-Whale-V5 running 64-bit Linux Mint 17.2 Rafaela
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/mbrandone/Desktop/2015Year/ELEN232/project_5_P3/project_5_P3.sim/sim_1/impl/timing/ALU_Sim_time_impl.v
// Design      : ALU
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "cf9b0ed0" *) 
(* NotValidForBitStream *)
module ALU
   (OPC,
    A,
    B,
    Out,
    error);
  input [2:0]OPC;
  input [3:0]A;
  input [3:0]B;
  output [3:0]Out;
  output error;

  wire [3:0]A;
  wire [3:0]A_IBUF;
  wire [3:0]B;
  wire [3:0]B_IBUF;
  wire [2:0]OPC;
  wire [1:0]OPC_IBUF;
  wire \OPC_IBUF[2] ;
  wire \OPC_IBUF_BUFG[2] ;
  wire [3:0]Out;
  wire [3:0]Out_OBUF;
  wire \Out_OBUF[1]_inst_i_2_n_0 ;
  wire \Out_OBUF[2]_inst_i_2_n_0 ;
  wire \Out_OBUF[2]_inst_i_3_n_0 ;
  wire \Out_OBUF[3]_inst_i_2_n_0 ;
  wire \Out_OBUF[3]_inst_i_3_n_0 ;
  wire \Out_OBUF[3]_inst_i_4_n_0 ;
  wire \Out_OBUF[3]_inst_i_5_n_0 ;
  wire \Out_OBUF[3]_inst_i_6_n_0 ;
  wire Sub;
  wire error;
  wire error_OBUF;
  wire error_OBUF_inst_i_2_n_0;
  wire useOne;

initial begin
 $sdf_annotate("ALU_Sim_time_impl.sdf",,,,"tool_control");
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
  IBUF \OPC_IBUF[0]_inst 
       (.I(OPC[0]),
        .O(OPC_IBUF[0]));
  IBUF \OPC_IBUF[1]_inst 
       (.I(OPC[1]),
        .O(OPC_IBUF[1]));
  IBUF \OPC_IBUF[2]_inst 
       (.I(OPC[2]),
        .O(\OPC_IBUF[2] ));
  BUFG \OPC_IBUF_BUFG[2]_inst 
       (.I(\OPC_IBUF[2] ),
        .O(\OPC_IBUF_BUFG[2] ));
  OBUF \Out_OBUF[0]_inst 
       (.I(Out_OBUF[0]),
        .O(Out[0]));
  LUT6 #(
    .INIT(64'h0077FF8B3047CCBB)) 
    \Out_OBUF[0]_inst_i_1 
       (.I0(useOne),
        .I1(\OPC_IBUF[2] ),
        .I2(OPC_IBUF[1]),
        .I3(A_IBUF[0]),
        .I4(B_IBUF[0]),
        .I5(OPC_IBUF[0]),
        .O(Out_OBUF[0]));
  OBUF \Out_OBUF[1]_inst 
       (.I(Out_OBUF[1]),
        .O(Out[1]));
  LUT6 #(
    .INIT(64'h88BBB888BB8B8BBB)) 
    \Out_OBUF[1]_inst_i_1 
       (.I0(\Out_OBUF[1]_inst_i_2_n_0 ),
        .I1(\OPC_IBUF[2] ),
        .I2(OPC_IBUF[1]),
        .I3(B_IBUF[1]),
        .I4(OPC_IBUF[0]),
        .I5(A_IBUF[1]),
        .O(Out_OBUF[1]));
  LUT6 #(
    .INIT(64'hB04F4AB5E51A1FE0)) 
    \Out_OBUF[1]_inst_i_2 
       (.I0(useOne),
        .I1(A_IBUF[0]),
        .I2(B_IBUF[0]),
        .I3(B_IBUF[1]),
        .I4(Sub),
        .I5(A_IBUF[1]),
        .O(\Out_OBUF[1]_inst_i_2_n_0 ));
  OBUF \Out_OBUF[2]_inst 
       (.I(Out_OBUF[2]),
        .O(Out[2]));
  LUT6 #(
    .INIT(64'h88BBB888BB8B8BBB)) 
    \Out_OBUF[2]_inst_i_1 
       (.I0(\Out_OBUF[2]_inst_i_2_n_0 ),
        .I1(\OPC_IBUF[2] ),
        .I2(OPC_IBUF[1]),
        .I3(B_IBUF[2]),
        .I4(OPC_IBUF[0]),
        .I5(A_IBUF[2]),
        .O(Out_OBUF[2]));
  LUT6 #(
    .INIT(64'h47B8B847748B8B74)) 
    \Out_OBUF[2]_inst_i_2 
       (.I0(\Out_OBUF[2]_inst_i_3_n_0 ),
        .I1(useOne),
        .I2(\Out_OBUF[3]_inst_i_6_n_0 ),
        .I3(B_IBUF[2]),
        .I4(Sub),
        .I5(A_IBUF[2]),
        .O(\Out_OBUF[2]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h17)) 
    \Out_OBUF[2]_inst_i_3 
       (.I0(B_IBUF[1]),
        .I1(Sub),
        .I2(B_IBUF[0]),
        .O(\Out_OBUF[2]_inst_i_3_n_0 ));
  OBUF \Out_OBUF[3]_inst 
       (.I(Out_OBUF[3]),
        .O(Out[3]));
  LUT6 #(
    .INIT(64'h6F60FFFF6F600000)) 
    \Out_OBUF[3]_inst_i_1 
       (.I0(\Out_OBUF[3]_inst_i_2_n_0 ),
        .I1(\Out_OBUF[3]_inst_i_3_n_0 ),
        .I2(useOne),
        .I3(\Out_OBUF[3]_inst_i_4_n_0 ),
        .I4(\OPC_IBUF[2] ),
        .I5(\Out_OBUF[3]_inst_i_5_n_0 ),
        .O(Out_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Out_OBUF[3]_inst_i_2 
       (.I0(B_IBUF[3]),
        .I1(Sub),
        .O(\Out_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hECC8)) 
    \Out_OBUF[3]_inst_i_3 
       (.I0(B_IBUF[2]),
        .I1(Sub),
        .I2(B_IBUF[1]),
        .I3(B_IBUF[0]),
        .O(\Out_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \Out_OBUF[3]_inst_i_4 
       (.I0(\Out_OBUF[3]_inst_i_6_n_0 ),
        .I1(B_IBUF[2]),
        .I2(A_IBUF[2]),
        .I3(B_IBUF[3]),
        .I4(Sub),
        .I5(A_IBUF[3]),
        .O(\Out_OBUF[3]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h38D7)) 
    \Out_OBUF[3]_inst_i_5 
       (.I0(OPC_IBUF[1]),
        .I1(B_IBUF[3]),
        .I2(OPC_IBUF[0]),
        .I3(A_IBUF[3]),
        .O(\Out_OBUF[3]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFF80D80)) 
    \Out_OBUF[3]_inst_i_6 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .I2(B_IBUF[1]),
        .I3(Sub),
        .I4(A_IBUF[1]),
        .O(\Out_OBUF[3]_inst_i_6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    Sub_reg
       (.CLR(1'b0),
        .D(OPC_IBUF[0]),
        .G(\OPC_IBUF_BUFG[2] ),
        .GE(1'b1),
        .Q(Sub));
  OBUF error_OBUF_inst
       (.I(error_OBUF),
        .O(error));
  LUT6 #(
    .INIT(64'h222EE22200000000)) 
    error_OBUF_inst_i_1
       (.I0(error_OBUF_inst_i_2_n_0),
        .I1(useOne),
        .I2(Sub),
        .I3(B_IBUF[3]),
        .I4(\Out_OBUF[3]_inst_i_3_n_0 ),
        .I5(\OPC_IBUF[2] ),
        .O(error_OBUF));
  LUT6 #(
    .INIT(64'h01138C0840C43220)) 
    error_OBUF_inst_i_2
       (.I0(A_IBUF[2]),
        .I1(Sub),
        .I2(B_IBUF[2]),
        .I3(\Out_OBUF[3]_inst_i_6_n_0 ),
        .I4(A_IBUF[3]),
        .I5(B_IBUF[3]),
        .O(error_OBUF_inst_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    useOne_reg
       (.CLR(1'b0),
        .D(OPC_IBUF[1]),
        .G(\OPC_IBUF_BUFG[2] ),
        .GE(1'b1),
        .Q(useOne));
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
