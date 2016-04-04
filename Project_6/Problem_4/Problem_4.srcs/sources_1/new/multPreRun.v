`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2016 03:39:34 PM
// Design Name: 
// Module Name: multPreRun
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


module multPreRun(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Out0,
    output [3:0] Out1,
    output [3:0] Out2,
    output [3:0] Out3
    );
    
    assign Out0[0] = A[0] &B[0]; //00
    assign Out1[0] = A[0] &B[1]; //10
    assign Out2[0] = A[0] &B[2]; //20
    assign Out3[0] = A[0] &B[3]; //30
    assign Out0[1] = A[1] &B[0]; //01
    assign Out1[1] = A[1] &B[1]; //11
    assign Out2[1] = A[1] &B[2]; //21
    assign Out3[1] = A[1] &B[3]; //31
    assign Out0[2] = A[2] &B[0]; //02
    assign Out1[2] = A[2] &B[1]; //12
    assign Out2[2] = A[2] &B[2]; //22
    assign Out3[2] = A[2] &B[3]; //32
    assign Out0[3] = A[3] &B[0]; //03
    assign Out1[3] = A[3] &B[1]; //13
    assign Out2[3] = A[3] &B[2]; //23
    assign Out3[3] = A[3] &B[3]; //33
    
endmodule
