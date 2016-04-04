`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2015 07:31:37 PM
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
    output X,
    output Y
    );
    assign X = (~A & ~B & ~C) | (~A & ~B & C) | (~A & B & C) | (A & ~B & C) | (A & B & ~C);
    assign Y = (~A & ~B & C) | (A & ~B & ~C) | (A & B & ~C) | (A & B & C);
endmodule
