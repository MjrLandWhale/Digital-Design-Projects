`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2016 05:41:26 PM
// Design Name: 
// Module Name: eightBitRCASim
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


module eightBitRCASim( );

    reg [7:0] A, B;
    reg Sub;
    wire [7:0] Out;
    wire Error;
    
    eightBitRCA UUT(.A(A), .B(B), .Sub(Sub), .Out(Out), .Error(Error));
    
    initial begin
        Sub=0;
        A=8'b00000111;
        B=8'b00110101;
        #10;
        
        B=8'b00111101;
        #10;
       
        B=8'b10111101;
        #10;
        
        B=8'b11101101;
        #10;
        
        A=8'b11010011;
        B=8'b00110101;
        #10;
        
        B=8'b00111101;
        #10;
       
        B=8'b10111101;
        #10;
        
        B=8'b11101101;
        #10;
        
        Sub=1;
        A=8'b00000111;
        B=8'b00110101;
        #10;
        
        B=8'b00111101;
        #10;
       
        B=8'b10111101;
        #10;
        
        B=8'b11101101;
        #10;
        
        A=8'b11010011;
        B=8'b00110101;
        #10;
        
        B=8'b00111101;
        #10;
       
        B=8'b10111101;
        #10;
        
        B=8'b11101101;
        #10;
    end
endmodule
