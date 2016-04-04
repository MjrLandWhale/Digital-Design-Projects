`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2016 06:59:40 PM
// Design Name: 
// Module Name: Problem_4_sim
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


module Problem_4_sim(  );
    reg [7:0] A;
    reg [7:0] B;
    wire GT, LT, EQ;
    
    Problem_4 UUT(.A8(A), .B8(B), .GTF(GT), .LTF(LT), .EQF(EQ));
    initial begin
        A=8'b00000000;//base equal case
        B=8'b00000000;
        #20;
        
        A=8'b00000000;//low end less than
        B=8'b00000010;
        #20;
        
        A=8'b00000100;//low end greater than
        B=8'b00000010;
        #20;
        
     //   A=8'b00010100;//bigger greater than
     //   B=8'b00000010;
      //  #20;
        
        A=8'b00000100;//low end equal
        B=8'b00000100;
        #20;
        
        A=8'b10000100;//high end less than
        B=8'b10010010;
        #20;
        
        A=8'b11000100;//high end greater than
        B=8'b01000010;
        #20;
        
        A=8'b10000100;//high end equal
        B=8'b10000100;
        #20;
        
        A=8'b11111111;
        B=8'b11110011;
        #20;
    end
endmodule
