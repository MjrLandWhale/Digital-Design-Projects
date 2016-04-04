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


module fourBitRCA(
    input [3:0] A,
    input [3:0] B,
    input Sub,
    input Cin,
    output [3:0] Sum,
    output Error,
    output COut
    );
    wire [3:0] BX;
    assign BX[0]=B[0]^Sub;
    assign BX[1]=B[1]^Sub;
    assign BX[2]=B[2]^Sub;
    assign BX[3]=B[3]^Sub;
    wire [3:0] Cout;
    //CLABlock CLA(.A(A), .B(BX), .baseC(Sub), .C(Cout));
    bitAdder bit0(.A(A[0]), .B(BX[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(Cout[0]));
    bitAdder bit1(.A(A[1]), .B(BX[1]), .Cin(Cout[0]), .Sum(Sum[1]), .Cout(Cout[1]));
    bitAdder bit2(.A(A[2]), .B(BX[2]), .Cin(Cout[1]), .Sum(Sum[2]), .Cout(Cout[2]));
    bitAdder signBit(.A(A[3]), .B(BX[3]), .Cin(Cout[2]), .Sum(Sum[3]), .Cout(Cout[3]));
    
    assign Error = (Cout[2] ^ Cout[3]);
    assign COut=Cout[3];
    
endmodule
