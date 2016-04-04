`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/28/2015 09:15:26 PM
// Design Name: 
// Module Name: Problem_2
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


module Problem_2(
    input A,
    input B,
    input C,
    input D,
    input E,
    input F,
    output X,
    output Y
    );
    /*Doesn't want to quite work for some reason.  Will output high when 3 inputs are high, but only sometimes.  
      I've been hunting a parenthesis error for like 4 hours.  It isnt working
    assign X = ( A & ( B & ( C & ( D | E | F ) ) | ( D & ( E | F ) | ( E & F ) ) ) | ( C & ( D & ( E | F )  | ( E & F ) ) ) |
     ( D & E & F )  ) | ( B & ( C & ( D & ( E | F ) ) | ( E & F ) ) ) | ( C & D & E & F );
     */
    assign X = ( A & ( B & ( C & ( D | E | F ) | ( D & ( E | F ) | ( E & F ) ) | ( D & E & F ) ) | ( C & ( D & ( E | F ) | ( E & F ) ) ) | ( D & E & F ) ) )
               | ( B & ( C & ( D & ( E | F ) | ( E & F ) ) | ( D & E & F ) ) ) | ( C & D & E & F );
    assign Y =  ~X;
endmodule
