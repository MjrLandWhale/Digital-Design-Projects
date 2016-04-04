`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2015 08:06:58 PM
// Design Name: 
// Module Name: Problem_2_sim
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


module Problem_2_sim( );
   reg A;
   reg B;
   reg C;
   wire X;
   
   Problem_2 UUT(.A(A), .B(B), .C(C), .X(X) );
   initial begin
   A = 0;
   B = 0;
   C = 0;
   #10;
  
   C = 1;
   #10;
  
   B = 1;
   C = 0;
   #10;
  
   C = 1;
   #10;
  
  
   A = 1;
   B = 0;
   C = 0;
   #10;
  
   C = 1;
   #10;
  
  
   B = 1;
   C = 0;
   #10;
  
   C = 1;
   #10;
   
   end
endmodule
