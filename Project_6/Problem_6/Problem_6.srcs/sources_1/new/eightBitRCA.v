`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2016 05:16:40 PM
// Design Name: 
// Module Name: eightBitRCA
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


module eightBitRCA(
    input [7:0] A,
    input [7:0] B,
    input Sub,
    output [7:0] Out,
    output Error
    );
    wire Cout;
    wire burnError, burnOut;
    fourBitRCA block0(.A(A[3:0]), .B(B[3:0]), .Sub(Sub), .Cin(Sub), .Sum(Out[3:0]), .Error(burnError), .COut(Cout));
    fourBitRCA block1(.A(A[7:4]), .B(B[7:4]), .Sub(Sub), .Cin(Cout), .Sum(Out[7:4]), .Error(Error), .COut(burnOut));
    
endmodule
