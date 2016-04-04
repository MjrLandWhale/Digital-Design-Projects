`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2016 02:47:04 PM
// Design Name: 
// Module Name: fourBitAddSubSim
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


module fourBitCLASim( );

    reg [3:0] A;
    reg [3:0] B;
    reg Sub;
    wire [3:0]Sum;
    wire Error;
    
    fourBitCLA UUT(.A(A), .B(B), .Sub(Sub), .Sum(Sum), .Error(Error));
    
    initial begin
        Sub=0;
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
        
        Sub=1;
        A=4'b0011;
        B=4'b0100;
        #10;
        B=4'b0110;
        #10;
        B=4'b1100;
        #10;
        
        A=4'b1101;
        B=4'b0111;
        #10;
        B=4'b1000;
        #10;
        B=4'b1111;
        #10;

    end
endmodule
