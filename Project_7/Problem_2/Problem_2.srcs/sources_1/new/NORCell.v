`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2016 04:17:09 PM
// Design Name: 
// Module Name: NORCell
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


module NORCell(
    input R,
    input S,
    output QN,
    output Q
    );
    
    wire NOR1, NOR2;
    
    assign #1 NOR1 = ~(R | NOR2);
    assign #1 NOR2 = ~(S | NOR1);
    assign Q = NOR1;
    assign QN = NOR2; 
endmodule
