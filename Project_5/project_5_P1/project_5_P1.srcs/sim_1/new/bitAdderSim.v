`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2016 02:23:56 PM
// Design Name: 
// Module Name: bitAdderSim
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


module bitAdderSim( );

    reg A;
    reg B;
    reg Cin;
    wire Cout;
    wire Sum;
    bitAdder UUT (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
    initial begin
        A=0;
        B=0;
        Cin=0;
        #10;
        
        A=0;
        B=1;
        Cin=0;
        #10;
        
        A=1;
        B=0;
        Cin=0;
        #10;
        
        A=1;
        B=1;
        Cin=0;
        #10;
        
        A=0;
        B=0;
        Cin=1;
        #10;
        
        A=0;
        B=1;
        Cin=1;
        #10;
        
        A=1;
        B=0;
        Cin=1;
        #10;
        
        A=1;
        B=1;
        Cin=1;
        #10;
        end
endmodule
