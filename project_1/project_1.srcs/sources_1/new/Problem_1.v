`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2015 07:31:37 PM
// Design Name: 
// Module Name: Problem_1
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


module Problem_1(
    input A,
    input B,
    input C,
    input D,
    output X,
    output Y
    );
    
    assign X = (~A & C) | (A & ~B & ~D) ^ (A & C & D) ^ (A & ~B) | (B & D);
    assign Y = (C & D) | (A & B) ^ (A & ~C) | (~A & ~B);
endmodule
