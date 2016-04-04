`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2016 05:09:26 PM
// Design Name: 
// Module Name: eightBitDRegSim
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


module eightBitDRegSim(

    );
    
    wire [7:0] Q;
    reg SRST, ARST, CLK;
    reg [7:0] D;
    
    eightBitDReg UUT(.SRST(SRST), .ARST(ARST), .D(D), .CLK(CLK), .Q(Q));
    always
    begin
        #5 CLK=~CLK;
    end
    
    initial begin
        CLK=0;
        SRST=0;
        ARST=1;
        D=8'b00000000;
        #2;
        ARST=0;
        #10;
        D=8'b01101010;
        #10;
        D=8'b00111100;
        #10;
        SRST=1;
        #10;
        
    end
endmodule
