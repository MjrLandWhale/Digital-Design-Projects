`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2016 04:54:37 PM
// Design Name: 
// Module Name: 8bitDReg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module eightBitDReg(
    input SRST,
    input ARST,
    input [7:0] D,
    input CLK,
    output [7:0] Q
    );

    DReg bit0(.SRST(SRST), .ARST(ARST), .D(D[0]), .CLK(CLK), .Q(Q[0]));
    DReg bit1(.SRST(SRST), .ARST(ARST), .D(D[1]), .CLK(CLK), .Q(Q[1]));
    DReg bit2(.SRST(SRST), .ARST(ARST), .D(D[2]), .CLK(CLK), .Q(Q[2]));
    DReg bit3(.SRST(SRST), .ARST(ARST), .D(D[3]), .CLK(CLK), .Q(Q[3]));
    DReg bit4(.SRST(SRST), .ARST(ARST), .D(D[4]), .CLK(CLK), .Q(Q[4]));
    DReg bit5(.SRST(SRST), .ARST(ARST), .D(D[5]), .CLK(CLK), .Q(Q[5]));
    DReg bit6(.SRST(SRST), .ARST(ARST), .D(D[6]), .CLK(CLK), .Q(Q[6]));
    DReg bit7(.SRST(SRST), .ARST(ARST), .D(D[7]), .CLK(CLK), .Q(Q[7]));
    //always @ ( posedge CLK or posedge ARST)

        
    //end
endmodule
