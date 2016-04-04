`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2015 01:23:36 PM
// Design Name: 
// Module Name: dmSim
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


module dmSim( );
    reg A;
    reg B;
    reg C;
    reg D;
    wire X;
    wire Y;
    wire Z;
    //.A imlies the value in dmSource, value in parenthesis comes from this file
    dmSource UUT(.A(A), .B(B), .C(C), .D(D), .X(X), .Y(Y), .Z(Z) );
    //Do this following at the begginning only once
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
