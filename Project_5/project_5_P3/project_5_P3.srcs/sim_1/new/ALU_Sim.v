`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2016 01:59:54 PM
// Design Name: 
// Module Name: ALU_Sim
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


module ALU_Sim( );
    reg [2:0] OPC;
    reg [3:0] A;
    reg [3:0] B;
    wire [3:0] Out;
    wire error;
    reg [3:0] i; //Always give this an extra bit, otherwise for loops wont recognize as completed 
    
    ALU UUT( .OPC(OPC), .A(A), .B(B), .Out(Out), .error(error) );
    
    initial begin
        B=4'b0000;
        // NOT 0000
        A=4'b0000;
        OPC=3'b000;
        #10;
        
        //NOT 1010
        A=4'b1010;
        OPC=3'b000;
        #10;
        
        // 0111 NAND 1101
        A=4'b0111;
        B=4'b1101;
        OPC=3'b001;
        #10;
        
        // 0110 NOR 1100
        A=4'b0110;
        B=4'b1100;
        OPC=3'b010;
        #10;
        
        // 0111 XOR 0101
        A=4'b0111;
        B=4'b0101;
        OPC=3'b011;
        #10;
        
        // 0111 + 0011 will error
        A=4'b0111;
        B=4'b0011;
        OPC=3'b100;
        #10;
        
        //0010 + 0011 wont error
        A=4'b0010;
        B=4'b0011;
        OPC=3'b100;
        #10;
        
        //1100 + 0101 wont error
        A=4'b1100;
        B=4'b0101;
        OPC=3'b100;
        #10;
        
        //1100 + 1101 will error
        A=4'b1100;
        B=4'b1101;
        OPC=3'b100;
        #10;
        
        // 0111 - 0011 wont error
        A=4'b0111;
        B=4'b0011;
        OPC=3'b101;
        #10;
        
        //0010 - 0011 wont error
        A=4'b0010;
        B=4'b0011;
        OPC=3'b101;
        #10;
        
        //1100 - 0101 will error
        A=4'b1100;
        B=4'b0101;
        OPC=3'b101;
        #10;
        
        //1100 - 1100 wont error
        A=4'b1100;
        B=4'b1100;
        OPC=3'b101;
        #10;
        
        //-4 + -6 should error
        A=4'b1100;
        B=4'b1010;
        OPC=3'b100;
        #20;
    end
endmodule
