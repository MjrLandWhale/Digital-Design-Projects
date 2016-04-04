`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2015 01:15:12 PM
// Design Name: 
// Module Name: dmSource
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


module dmSource(
    input A,
    input B,
    input C,
    input D,
    output X,
    output Y,
    output Z
    );
    //Put your code here dipshit
    assign X = ((!A) & B & C) | (!(A & C)) | (A & C & (!D));
    assign Y = !((A & (!D)) | (!(C & B)));
    assign Z = (! (B & C)) | ((!C) & D & B);
endmodule
