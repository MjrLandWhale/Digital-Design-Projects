`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2016 02:04:15 PM
// Design Name: 
// Module Name: bitAdder
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


module bitAdder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    //These 2 will be if Cin is low.
    //Due to 2's compliment, this implements subtraction
    assign Sum = (~A & ~B & Cin) | (~A & B & ~Cin) | (A & ~B & ~Cin) | (A & B & Cin);
    assign Cout = (B & Cin) | (A & B) | (A & Cin);
    
endmodule
