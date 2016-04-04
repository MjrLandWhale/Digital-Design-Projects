`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2016 02:33:02 PM
// Design Name: 
// Module Name: fourBitAddSub
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


module fourBitAddSub(
    input [3:0] A,
    input [3:0] B,
    input Sub,
    output [3:0] Sum,
    output Error
    );
    wire B0=B[0]^Sub;
    wire B1=B[1]^Sub;
    wire B2=B[2]^Sub;
    wire B3=B[3]^Sub;
    wire [3:0] Cout;
    
    bitAdder bit0(.A(A[0]), .B(B0), .Cin(Sub), .Sum(Sum[0]), .Cout(Cout[0]));
    bitAdder bit1(.A(A[1]), .B(B1), .Cin(Cout[0]), .Sum(Sum[1]), .Cout(Cout[1]));
    bitAdder bit2(.A(A[2]), .B(B2), .Cin(Cout[1]), .Sum(Sum[2]), .Cout(Cout[2]));
    bitAdder signBit(.A(A[3]), .B(B3), .Cin(Cout[2]), .Sum(Sum[3]), .Cout(Cout[3]));
    
    assign Error = (Cout[2] ^ Cout[3]);

endmodule
