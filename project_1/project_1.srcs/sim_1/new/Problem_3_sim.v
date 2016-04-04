`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2015 08:17:45 PM
// Design Name: 
// Module Name: Problem_3_sim
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


module Problem_3_sim( );
    reg A;
    reg B;
    reg C;
    wire X;
    wire Y;

    Problem_3 UUT(.A(A), .B(B), .C(C), .X(X), .Y(Y) );
    
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
