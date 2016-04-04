`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2016 04:54:37 PM
// Design Name: 
// Module Name: DReg
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


module DReg(
    input SRST,
    input ARST,
    input D,
    input CLK,
    output reg Q
    );
    
    always @ ( posedge CLK or posedge ARST)
    begin
        if(ARST | SRST)
            Q=0;
        else
            Q=D;
    end
endmodule
