`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Mitchell Brandone
// 
// Create Date: 12/14/2015 07:15:12 PM
// Design Name:
// Module Name: Problem_1
// Project Name: Project_1
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
    output Y
    );
    //Put your code here dipshit
    assign X = ((!A) & B & C) | (!(A & C)) | (A & C & (!D));
    assign Y = !((A & (!D)) | (!(C & B)));
    assign Z = (! (B & C)) | ((!C) & D & B);
endmodule
