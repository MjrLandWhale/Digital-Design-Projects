`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/28/2015 09:12:50 PM
// Design Name: 
// Module Name: Problem_3
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


module Problem_3(
    input A,
    input B,
    input C,
    input D,
    input E,
    output pos,
    output sop
    );
    
    assign pos = ( ~B & ( C | D ) ) &  ( C | ~D | ~E ) & ( ~A | ~C | E | B );
    assign sop = ( A & ( ~B & (~C & (  ( D & ~E ) | ~E ) | ( C & E ) ) ) ) | ~A & ( ~B & (C | ~E ) ) | ( B & C & D );
endmodule
