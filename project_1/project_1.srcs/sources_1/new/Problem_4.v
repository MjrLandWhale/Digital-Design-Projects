`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2015 07:31:37 PM
// Design Name: 
// Module Name: Problem_4
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


module Problem_4(
    input A,
    input B,
    input C,
    input D,
    input E,
    output X

    );
    assign X = (~A & ~B & ~C & D & ~E) | (~A & ~B & ~C & D & E) | (~A & ~B & C & ~D & E) | (~A & ~B & C & D & E) | (~A & B & ~C & D & E) 
    | (~A & B & C & ~D & E) | (A & ~B & ~C & ~D & E) | (A & ~B & ~C & D & E) | (A & ~B & C & D & E) | (A & B & C & ~D & E) 
    | (A & B & C & D & E);
endmodule
