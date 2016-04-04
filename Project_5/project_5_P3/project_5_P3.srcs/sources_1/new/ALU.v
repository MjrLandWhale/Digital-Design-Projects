`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2016 10:19:37 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [2:0] OPC,
    input [3:0] A,
    input [3:0] B,
    output reg [3:0] Out,
    output reg error
    );
    
    wire [3:0] Cout;
    wire [3:0] Sum, Sun;
    reg Sub;
    reg sumTake, useOne;
    reg [2:0] i;
    wire error1, error2;
    fourBitAddSub add(.A(A), .B(B), .Sub(Sub), .Sum(Sum), .Error(error1));
    fourBitAddSub one(.A(B), .B(4'b0001), .Sub(Sub), .Sum(Sun), .Error(error2));
    
    always @ (OPC or A or B or Sum or Sun or error1 or error2)
    begin
        case({OPC})
            3'b000: //NOT A
            begin
                for(i=0; i< 4; i=i+1)
                begin
                    if(A[i])
                    begin
                        Out[i]=0;
                    end
                    else
                    begin
                        Out[i]=1;
                    end
                end
                sumTake=0;
                error=0;
            end
            3'b001: //A NAND B
            begin
                for(i=0; i< 4; i=i+1)
                begin
                    if(A[i] && B[i])
                    begin
                        Out[i]=0;
                    end
                    else
                    begin
                        Out[i]=1;
                    end
                end
                sumTake=0;
                error=0;
            end
            3'b010: //A NOR B
            begin
                for(i=0; i< 4; i=i+1)
                begin
                    if((A[i] && B[i]) || (!A[i] && !B[i]))
                    begin
                        Out[i]=1;
                    end
                    else
                    begin
                        Out[i]=0;
                    end
                end
                sumTake=0;
                error=0;
            end
            3'b011: //A XOR B
            begin
                for(i=0; i< 4; i=i+1)
                begin
                    if((A[i] && B[i]) || (!A[i] && !B[i]))
                    begin
                        Out[i]=0;
                    end
                    else
                    begin
                        Out[i]=1;
                    end
                end
                sumTake=0;
                error=0;
            end
            3'b100: //A + B
            begin
                sumTake=1;
                Sub=0;
                useOne=0;
            end
            3'b101: //A - B
            begin
                sumTake=1;
                Sub=1;
                useOne=0;
            end
            3'b110: //B + 1
            begin
                sumTake=1;
                useOne=1;
                Sub=0;
            end
            3'b111: //B - 1
            begin
                sumTake=1;
                useOne=1;
                Sub=1;
            end
            
        endcase
        if(sumTake)
            begin
                if(useOne)
                begin
                    Out=Sun;
                    error=error2;
                end
                else
                begin
                    Out=Sum;
                    error=error1;
                end
            end
    end
    
    
endmodule
