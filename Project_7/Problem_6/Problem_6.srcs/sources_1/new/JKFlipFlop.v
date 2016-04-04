`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2016 05:21:13 PM
// Design Name: 
// Module Name: JKFlipFlop
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


module JKFlipFlop(
    input J,
    input K,
    input CLK,
    input ARST,
    input SRST,
    output reg Q
    );
    
    always @(posedge CLK or posedge ARST)
    begin
        if(ARST | SRST)
            Q=0;
        else if(~J & K)
            Q=0;
        else if(J & ~K)
            Q=1;
        else if(J & K)
            Q=~Q;
        //store sorts itself out because nothing changes    
        
    end
endmodule
