`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2016 04:19:32 PM
// Design Name: 
// Module Name: NORCellSim
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


module NORCellSim( );

    reg R,S;
    wire Q, QN;
    
    NORCell UUT(.R(R), .S(S), .QN(QN), .Q(Q));
    initial begin
        R=0;
        S=0;
        #100;
        
        S=1;
        #100;
        
        S=0;
        #100;
        
        R=1;
        #100;
        
        R=0;
        #100;
        
        R=1;
        S=1;
        #100;
        
        R=0;
        S=0;
        #100;
        
        R=1;
        S=1;
        
    
    end
endmodule
