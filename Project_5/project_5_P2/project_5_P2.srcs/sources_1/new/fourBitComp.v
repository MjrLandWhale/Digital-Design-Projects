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


module fourBitComp(
    input [3:0] A8,
    input [3:0] B8,
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
        
        bitComp bit0 (.A(A8[0]), .B(B8[0]), .GTI(0), .LTI(0), .EQI(1), .GTO(GT0), .LTO(LT0), .EQO(EQ0));
        bitComp bit1 (.A(A8[1]), .B(B8[1]), .GTI(GT0), .LTI(LT0), .EQI(EQ0), .GTO(GT1), .LTO(LT1), .EQO(EQ1));
        bitComp bit2 (.A(A8[2]), .B(B8[2]), .GTI(GT1), .LTI(LT1), .EQI(EQ1), .GTO(GT2), .LTO(LT2), .EQO(EQ2));
        bitComp bit3 (.A(A8[3]), .B(B8[3]), .GTI(GT2), .LTI(LT2), .EQI(EQ2), .GTO(GT3), .LTO(LT3), .EQO(EQ3));
        
        //always@(A8 or B8 or GTF or LTF or EQF )
        //begin
            assign GTF=GT3;
            assign LTF=LT3;
            assign EQF=EQ3;
        //end
    end
endmodule
