`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2016 06:21:05 PM
// Design Name: 
// Module Name: 1bitComp
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


module bitComp(
    input A,
    input B,
    input GTI,
    input LTI,
    input EQI,
    output reg GTO,
    output reg LTO,
    output reg EQO
    );
    
    always@(GTI or LTI or EQI or A or B)
    begin
        if(A===B)
        begin
            GTO=GTI;
            LTO=LTI;
            EQO=EQI;
        end
        else if(A>B)
        begin
            GTO=1;
            LTO=0;
            EQO=0;
        end
        else
        begin
            GTO=0;
            LTO=1;
            EQO=0;
        end
    end
    

endmodule
