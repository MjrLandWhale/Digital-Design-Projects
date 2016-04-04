`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2015 07:31:37 PM
// Design Name: 
// Module Name: Problem_2
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


module Problem_2(
    input A,
    input B,
    input C,
    output X
    );
    assign X = ~(A | B) & (~A | ~B | C) & (A | ~C);
endmodule
