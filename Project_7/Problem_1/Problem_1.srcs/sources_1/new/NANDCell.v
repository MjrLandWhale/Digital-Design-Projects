`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2016 04:00:49 PM
// Design Name: 
// Module Name: NANDCell
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


module NANDCell(
    input R,
    input S,
    output QN,
    inout Q
    );
    wire NAND1, NAND2;
    assign #1 NAND1 = ~(R & NAND2);
    assign #1 NAND2 = ~(S & NAND1);
    
    assign Q = NAND2;
    assign QN = NAND1;
endmodule
