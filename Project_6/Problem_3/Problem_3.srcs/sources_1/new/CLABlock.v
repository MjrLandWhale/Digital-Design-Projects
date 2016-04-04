`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2016 02:32:01 PM
// Design Name: 
// Module Name: CLABlock
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


module CLABlock(
    input [3:0] A,
    input [3:0] B,
    input baseC,
    output [3:0] C
    );
    wire [3:0] G, P;
    assign G[0]= A[0] & B[0];
    assign G[1]= A[1] & B[1];
    assign G[2]= A[2] & B[2];
    assign G[3]= A[3] & B[3];
    
    assign P[0]=A[0] ^ B[0];
    assign P[1]=A[1] ^ B[1];
    assign P[2]=A[2] ^ B[2];
    assign P[3]=A[3] ^ B[3];
    
    assign C[0] = G[0] | (P[0] & baseC);
    assign C[1] = G[1] | (P[1] & C[0]);
    assign C[2] = G[2] | (P[2] & C[1]);
    assign C[3] = G[3] | (P[3] & C[2]);
    
endmodule
