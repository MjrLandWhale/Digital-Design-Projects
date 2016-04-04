`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2016 02:12:34 PM
// Design Name: 
// Module Name: P_2_Sim
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


module P_2_Sim( );

    reg A, B, C;
    wire Y;
    reg [3:0] i;
    P_2 UUT(.A(A), .B(B), .C(C), .Y(Y));
    
    initial begin
        for(i=0; i< 4'b1000; i=i+1)
        begin
            A= i[2];
            B= i[1];
            C= i[0];
            #5;
        end
        
    end
endmodule
