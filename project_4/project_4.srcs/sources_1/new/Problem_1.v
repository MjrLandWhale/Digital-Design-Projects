`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2016 02:00:29 PM
// Design Name: 
// Module Name: Problem_1
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


module Problem_1(
    input [3:0] Bin,
    output reg [6:0] Hex,
    output reg [3:0] An
    );
    
    always@(Bin)
    begin
    An = 4'b1110;
        case({Bin})
            4'b0000: Hex=7'b1000000; //0
            4'b0001: Hex=7'b1111001; //1
            4'b0010: Hex=7'b0100100; //2
            4'b0011: Hex=7'b0110000; //3
            4'b0100: Hex=7'b0011001; //4
            4'b0101: Hex=7'b0010010; //5
            4'b0110: Hex=7'b0000010; //6
            4'b0111: Hex=7'b1111000; //7
            4'b1000: Hex=7'b0000000; //8
            4'b1001: Hex=7'b0011000; //9
            4'b1010: Hex=7'b0001000; //A
            4'b1011: Hex=7'b0000011; //B
            4'b1100: Hex=7'b0100111; //C
            4'b1101: Hex=7'b0100001; //D
            4'b1110: Hex=7'b0000110; //E
            4'b1111: Hex=7'b0001110; //F
        endcase
        
    end
    
    
endmodule
