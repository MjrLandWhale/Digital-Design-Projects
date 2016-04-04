`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2016 05:24:32 PM
// Design Name: 
// Module Name: JKFlipFlopSim
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


module JKFlipFlopSim(

    );
    
    reg J, K, CLK, ARST, SRST;
    wire Q;
    
    JKFlipFlop UUT(.J(J), .K(K), .CLK(CLK), .ARST(ARST), .SRST(SRST), .Q(Q));
    
    always
    begin
        #5 CLK=~CLK;
    end
    
    initial begin
        J=0;
        K=0;
        CLK=0;
        ARST=1;
        SRST=0;
        #3;
        
        ARST=0;
        J=1;
        K=0;
        #5;
        
        J=0;
        K=0;
        #5;
        
        SRST=1;
        #5;
        
        SRST=0;
        J=1;
        K=1;
        #10;
        
        
        J=0;
        K=0;
        #10;
        
        J=0;
        K=1;
        #10;
        
    end
endmodule
