`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2016 03:35:31 PM
// Design Name: 
// Module Name: fourBitMultiplier
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


module fourBitMultiplier(
    input [3:0] A,
    input [3:0] B,
    output [7:0] Out
    );
    wire [3:0] Prop0, Prop1, Prop2, Prop3;
    wire [3:0] Sum0, Sum1, Sum2;
    wire [2:0] Cout;    
    wire Error;
    
        multPreRun Pre(.A(A), .B(B), .Out0(Prop0), .Out1(Prop1), .Out2(Prop2), .Out3(Prop3));
    
    wire [3:0] block0A;
    assign block0A[0]=Prop0[1];
    assign block0A[1]=Prop0[2];
    assign block0A[2]=Prop0[3];
    assign block0A[3]=1'b0;
    
        fourBitRCA block0(.A(block0A), .B(Prop1), .Sub(1'b0), .Cin(1'b0), .Sum(Sum0), .Error(Error), .COut(Cout[0]));
    
    wire [3:0] block1B;
    assign block1B[0]=Sum0[1];
    assign block1B[1]=Sum0[2];
    assign block1B[2]=Sum0[3];
    assign block1B[3]=Cout[0];
    
        fourBitRCA block1(.A(Prop2), .B(block1B), .Sub(1'b0), .Cin(1'b0), .Sum(Sum1), .Error(Error), .COut(Cout[1]));
        
    wire [3:0] block2B;
    assign block2B[0]=Sum1[1];
    assign block2B[1]=Sum1[2];
    assign block2B[2]=Sum1[3];
    assign block2B[3]=Cout[1];
    
        fourBitRCA block2(.A(Prop3), .B(block2B), .Sub(1'b0), .Cin(1'b0), .Sum(Sum2), .Error(Error), .COut(Cout[2]));
    
    assign Out[0] = Prop0[0];
    assign Out[1] = Sum0[0];
    assign Out[2] = Sum1[0];
    assign Out[3] = Sum2[0];
    assign Out[4] = Sum2[1];
    assign Out[5] = Sum2[2];
    assign Out[6] = Sum2[3];
    assign Out[7] = Cout[2];
endmodule
