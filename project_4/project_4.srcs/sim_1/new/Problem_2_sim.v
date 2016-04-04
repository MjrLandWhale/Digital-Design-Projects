`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2016 03:49:37 PM
// Design Name: 
// Module Name: Problem_2_sim
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


module Problem_2_sim( );

    reg [7:0] In;
    wire [2:0] Out;
    reg EnableIn;
    wire EnableOut;
    wire GroupSig;
    
    Problem_2 UUT( .In(In), .Out(Out), .EnableIn(EnableIn), .EnableOut(EnableOut), .GroupSig(GroupSig) );
    
    initial begin
        EnableIn=0;
        In=8'b00000000;
        #10;
        In=8'b00000001;
        #10;
        In=8'b10000000;
        #10;
        In=8'b11000000;
        #10;

        
        EnableIn=1;
        In=8'b00000000;
        #10;
        In=8'b00000001;
        #10;
        In=8'b00000010;
        #10;
        In=8'b00000100;
        #10;
        In=8'b00001000;
        #10;
        In=8'b00010000;
        #10;
        In=8'b00100000;
        #10;
        In=8'b01000000;
        #10;
        In=8'b10000000;
        #10;
        In=8'b11000000;
        #10;
        In=8'b01100000;
        #10;
        In=8'b00110000;
        #10;
        In=8'b00011000;
        #10;
        In=8'b00001100;
        #10;
        In=8'b00000110;
        #10;
        In=8'b00000011;
        #10;
    
    end
endmodule
