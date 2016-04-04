`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2016 02:08:38 PM
// Design Name: 
// Module Name: P_2
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


module P_2(
    input A,
    input B,
    input C,
    output Y
    );
    wire INV, OR1, OR2, AND;
    assign #1 INV = ~A;
    assign #1 OR1 = INV | B;
    assign #1 OR2 = A | C;
    assign #1 AND = OR1 & OR2;
    assign Y = AND;

endmodule
