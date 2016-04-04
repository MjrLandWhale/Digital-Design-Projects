`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2015 08:43:45 PM
// Design Name: 
// Module Name: Problem_4_sim
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


module Problem_4_sim( );
    reg A;
    reg B;
    reg C;
    reg D;
    reg E;
    wire X;
    
     Problem_4 UUT(.A(A), .B(B), .C(C), .D(D), .E(E), .X(X) );
     initial begin
    A=0;
    B=0;
    C=0;
    D=0;
    E=0;
    #10;
    
    E = 1;
    #10;
    
    D = 1;
    E = 0;
    #10;
    
    E = 1;
    #10;
    
    C = 1;
    D = 0;
    E = 0;
    #10;
    
    E = 1;
    #10;
    
    D = 1;
    E = 0;
    #10;
    
    E = 1;
    #10;
    
    B = 1;
    C = 0;
    D = 0;
    E = 0;
    #10;
    E = 1;
    #10;
    
    D = 1;
    E = 0;
    #10;
    
    E = 1;
    #10;
    
    C = 1;
    D = 0;
    E = 0;
    #10;
    
    E = 1;
    #10;
    
    D = 1;
    E = 0;
    #10;
    
    E = 1;
    #10; 
    
    
    
    A = 1;
    B = 0;
    C = 0;
    D = 0;
    E = 0;
    #10;
    
    E = 1;
    #10;
    
    D = 1;
    E = 0;
    #10;
    
    E = 1;
    #10;
    
    C = 1;
    D = 0;
    E = 0;
    #10;
    
    E = 1;
    #10;
    
    D = 1;
    E = 0;
    #10;
    
    E = 1;
    #10;
    
    B = 1;
    C = 0;
    D = 0;
    E = 0;
    #10;
    E = 1;
    #10;
    
    D = 1;
    E = 0;
    #10;
    
    E = 1;
    #10;
    
    C = 1;
    D = 0;
    E = 0;
    #10;
    
    E = 1;
    #10;
    
    D = 1;
    E = 0;
    #10;
    
    E = 1;
    #10;   
     end
endmodule
