`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2015 08:00:51 PM
// Design Name: 
// Module Name: Problem_1
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


module Problem_1(
    input A,
    input B,
    input C,
    input D,
    output Y
    );
    //assign X = (A&B&C&~D) | (~A&~C&D) | (~A&B&C&D) | (~C&~B&A) | (B&D&~A&~C) | (~B&C) | (B&D&~A) | (B&~A&~C&~D);
    //assign Y = (~A&D&(B | ~C)) | (A&(B&C&~D | ~B&~C)) | ~B&C;
    //assign Y = (~A&B&D) | (~A&B&~C) | (A&B&C&~D) | (A&~B&~C) | (~B&C);
    //assign Y = (B&~C) | (A&~C&D) | (A&B&D) | (A&B&C&~D) | (~B&C);
    assign Y = (~A&D) | (~A&B&~C&~D) | (A&~B) | (A&C&~D) | (~B&C);
endmodule
