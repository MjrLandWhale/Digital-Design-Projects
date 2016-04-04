`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2016 02:30:20 PM
// Design Name: 
// Module Name: 4bitCLA
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


module fourBitCLA(
    input [3:0] A,
    input [3:0] B,
    input Sub,
    output [3:0] Sum,
    output Error
    //output COut
    );
    wire [3:0] BX;
    assign BX[0]=B[0]^Sub;
    assign BX[1]=B[1]^Sub;
    assign BX[2]=B[2]^Sub;
    assign BX[3]=B[3]^Sub;
    wire [3:0] Cout;
    
    CLABlock CLA(.A(A), .B(BX), .baseC(Sub), .C(Cout));
    bitAdderCLA bit0(.A(A[0]), .B(BX[0]), .Cin(Sub), .Sum(Sum[0]));
    bitAdderCLA bit1(.A(A[1]), .B(BX[1]), .Cin(Cout[0]), .Sum(Sum[1]));
    bitAdderCLA bit2(.A(A[2]), .B(BX[2]), .Cin(Cout[1]), .Sum(Sum[2]));
    bitAdderCLA signBit(.A(A[3]), .B(BX[3]), .Cin(Cout[2]), .Sum(Sum[3]));
    
    assign Error = (Cout[2] ^Cout[3]);
    //assign COut=Cout[3];
    
endmodule
