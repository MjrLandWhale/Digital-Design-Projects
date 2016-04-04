`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2016 03:33:09 PM
// Design Name: 
// Module Name: Problem_2
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


module Problem_2(
    input [7:0] In,
    output reg [2:0] Out,
    input EnableIn,
    output reg EnableOut,
    output reg GroupSig
    );
    always@(In or EnableIn)
    begin
        if(!EnableIn)
        begin
            Out=3'b000;
            EnableOut=0;
            GroupSig=0;
        end
        else if(In[7])
            Out=3'b111;
        else if(In[6])
            Out=3'b110;
        else if(In[5])
            Out=3'b101;
        else if(In[4])
            Out=3'b100;
        else if(In[3])
            Out=3'b011;
        else if(In[2])
            Out=3'b010;
        else if(In[1])
            Out=3'b001;
        else if(In[0])
            Out=3'b000;
        if(EnableIn && In==8'b00000000)
        begin    
            EnableOut=1;
            GroupSig=0;
        end
        else
        begin
            GroupSig=1;
            EnableOut=0;
        end
    end    
endmodule
