`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2016 04:35:02 PM
// Design Name: 
// Module Name: RET_TFlipFlop
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


module RET_TFlipFlop(
    input T,
    input CLK,
    input R,
    output reg Q
    );
    
    always @ (posedge CLK or posedge R)
    begin
        if (R)
            Q=0;
        else if(T)
            Q=~Q;
    end
endmodule