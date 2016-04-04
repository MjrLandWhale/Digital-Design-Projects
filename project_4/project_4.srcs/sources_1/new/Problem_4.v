`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2016 06:30:11 PM
// Design Name: 
// Module Name: Problem_4
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


module Problem_4(
    input [7:0] A8,
    input [7:0] B8,
    output  GTF, 
    output  LTF,
    output  EQF //F stands for final
    );
  //  always@(A8 or B8)
    begin
        wire GT0, LT0, EQ0;
        wire GT1, LT1, EQ1;
        wire GT2, LT2, EQ2;
        wire GT3, LT3, EQ3;
        wire GT4, LT4, EQ4;
        wire GT5, LT5, EQ5;
        wire GT6, LT6, EQ6;
        wire GT7, LT7, EQ7;
        
        bitComp bit0 (.A(A8[0]), .B(B8[0]), .GTI(0), .LTI(0), .EQI(1), .GTO(GT0), .LTO(LT0), .EQO(EQ0));
        bitComp bit1 (.A(A8[1]), .B(B8[1]), .GTI(GT0), .LTI(LT0), .EQI(EQ0), .GTO(GT1), .LTO(LT1), .EQO(EQ1));
        bitComp bit2 (.A(A8[2]), .B(B8[2]), .GTI(GT1), .LTI(LT1), .EQI(EQ1), .GTO(GT2), .LTO(LT2), .EQO(EQ2));
        bitComp bit3 (.A(A8[3]), .B(B8[3]), .GTI(GT2), .LTI(LT2), .EQI(EQ2), .GTO(GT3), .LTO(LT3), .EQO(EQ3));
        bitComp bit4 (.A(A8[4]), .B(B8[4]), .GTI(GT3), .LTI(LT3), .EQI(EQ3), .GTO(GT4), .LTO(LT4), .EQO(EQ4));
        bitComp bit5 (.A(A8[5]), .B(B8[5]), .GTI(GT4), .LTI(LT4), .EQI(EQ4), .GTO(GT5), .LTO(LT5), .EQO(EQ5));
        bitComp bit6 (.A(A8[6]), .B(B8[6]), .GTI(GT5), .LTI(LT5), .EQI(EQ5), .GTO(GT6), .LTO(LT6), .EQO(EQ6));
        bitComp bit7 (.A(A8[7]), .B(B8[7]), .GTI(GT6), .LTI(LT6), .EQI(EQ6), .GTO(GT7), .LTO(LT7), .EQO(EQ7));
        
        //always@(A8 or B8 or GTF or LTF or EQF )
        //begin
            assign GTF=GT7;
            assign LTF=LT7;
            assign EQF=EQ7;
        //end
    end
endmodule
