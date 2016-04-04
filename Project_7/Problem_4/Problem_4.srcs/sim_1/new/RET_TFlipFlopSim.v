`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2016 04:38:04 PM
// Design Name: 
// Module Name: RET_TFlipFlopSim
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


module RET_TFlipFlopSim(    );

    wire Q;
    reg CLK, T, R;
    
    RET_TFlipFlop UUT(.T(T), .CLK(CLK), .R(R), .Q(Q));
    always
    begin
        #10 CLK= ~CLK;
    end
    
    initial begin
        CLK=0;
        R=1;
        T=0;
        #7;
        R=0;
        T=1;
        #20;
        T=0;
        #20;
        T=1;
    end
endmodule
