`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2016 04:48:52 PM
// Design Name: 
// Module Name: fourBitMultiplierSim
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


module fourBitMultiplierSim( );

    reg [3:0] A, B;
    wire [7:0] Out;
    
    fourBitMultiplier UUT(.A(A), .B(B), .Out(Out));
    
    initial begin
            A=4'b0011;
            B=4'b0100;
            #10;
            B=4'b0110;
            #10;
            B=4'b1100;
            #10;
            
            A=4'b1101;
            B=4'b0011;
            #10;
            B=4'b1000;
            #10;
            B=4'b1111;
            #10;
            
            A=4'b1011;
            B=4'b0100;
            #10;
            B=4'b0111;
            #10;
            B=4'b1100;
            #10;
            
            A=4'b1101;
            B=4'b0111;
            #10;
            B=4'b1010;
            #10;
            B=4'b1111;
            #10;
    
        end
endmodule
