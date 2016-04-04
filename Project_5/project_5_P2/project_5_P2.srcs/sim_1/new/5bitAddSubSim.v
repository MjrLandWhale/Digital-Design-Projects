module fourBitAddSubSim( );

    reg [3:0] A;
    reg [3:0] B;
    reg Sub;
    wire [4:0]Sum;
    
    fiveBitAddSub UUT(.A(A), .B(B), .Sub(Sub), .Sum(Sum));
    
    initial begin
        Sub=0;
        A=4'b0011;
        B=4'b0100;
        #10;
        B=4'b0110;
        #10;
        B=4'b1100;
        #10;
        
        A=4'b1101;
        B=4'b0011;
        #10;
        B=4'b1000;
        #10;
        B=4'b1111;
        #10;
        
        Sub=1;
        A=4'b0011;
        B=4'b0100;
        #10;
        B=4'b0110;
        #10;
        B=4'b1100;
        #10;
        
        A=4'b1101;
        B=4'b0011;
        #10;
        B=4'b1000;
        #10;
        B=4'b1111;
        #10;

        
    end
endmodule
