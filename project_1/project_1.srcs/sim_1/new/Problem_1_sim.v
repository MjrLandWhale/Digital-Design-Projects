`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2015 07:45:16 PM
// Design Name: 
// Module Name: Problem_1_sim
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


module Problem_1_sim( );
   reg A;
   reg B;
   reg C;
   reg D;
   wire X;
   wire Y;
   //.A imlies the value in dmSource, value in parenthesis comes from this file
   Problem_1 UUT(.A(A), .B(B), .C(C), .D(D), .X(X), .Y(Y) );
   initial begin
   A = 0;
   B = 0;
   C = 0;
   D = 0;
   #10;
   
   D = 1;
   #10;
   
   C = 1;
   D = 0;
   #10;
   
   D = 1;
   #10;
   
   B = 1;
   C = 0;
   D = 0;
   #10;
   
   D = 1;
   #10;
   
   C = 1;
   D = 0;
   #10;
   
   D = 1;
   #10;
   
   A = 1;
   B = 0;
   C = 0;
   D = 0;
   #10;
   D = 1;
   #10;
   
   C = 1;
   D = 0;
   #10;
   
   D = 1;
   #10;
   
   B = 1;
   C = 0;
   D = 0;
   #10;
   
   D = 1;
   #10;
   
   C = 1;
   D = 0;
   #10;
   
   D = 1;
   #10;  
           //delay of 10 nanoseconds
       end
endmodule
