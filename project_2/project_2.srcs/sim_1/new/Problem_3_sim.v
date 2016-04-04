`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2016 04:30:36 PM
// Design Name: 
// Module Name: Problem_3_sim
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


module Problem_3_sim(  );
       reg A;
 reg B;
 reg C;
 reg D;
 reg E;
 wire pos;
 wire sop;
 Problem_3 UUT(.A(A), .B(B), .C(C), .D(D), .E(E), .pos(pos), .sop(sop) );
 
 initial begin
 A = 0;
 B = 0;
 C = 0;
 D = 0;
 E = 0;
 #10;
 
 A = 0;
 B = 0;
 C = 0;
 D = 0;
 E = 1;
 #10;
 
 A = 0;
 B = 0;
 C = 0;
 D = 1;
 E = 0;
 #10;
 
 A = 0;
 B = 0;
 C = 0;
 D = 1;
 E = 1;
 #10;
 
 A = 0;
 B = 0;
 C = 1;
 D = 0;
 E = 0;
 #10;
 
 A = 0;
 B = 0;
 C = 1;
 D = 0;
 E = 1;
 #10;
 
 A = 0;
 B = 0;
 C = 1;
 D = 1;
 E = 0;
 #10;
 
 A = 0;
 B = 0;
 C = 1;
 D = 1;
 E = 1;
 #10;
 
 A = 0;
 B = 1;
 C = 0;
 D = 0;
 E = 0;
 #10;
 
 A = 0;
 B = 1;
 C = 0;
 D = 0;
 E = 1;
 #10;
 
 A = 0;
 B = 1;
 C = 0;
 D = 1;
 E = 0;
 #10;
 
 A = 0;
 B = 1;
 C = 0;
 D = 1;
 E = 1;
 #10;
 
 A = 0;
 B = 1;
 C = 1;
 D = 0;
 E = 0;
 #10;
 
 A = 0;
 B = 1;
 C = 1;
 D = 0;
 E = 1;
 #10;
 
 A = 0;
 B = 1;
 C = 1;
 D = 1;
 E = 0;
 #10;
 
 A = 0;
 B = 1;
 C = 1;
 D = 1;
 E = 1;
 #10;
 
 A = 1;
 B = 0;
 C = 0;
 D = 0;
 E = 0;
 #10;
 
 A = 1;
 B = 0;
 C = 0;
 D = 0;
 E = 1;
 #10;
 
 A = 1;
 B = 0;
 C = 0;
 D = 1;
 E = 0;
 #10;
 
 A = 1;
 B = 0;
 C = 0;
 D = 1;
 E = 1;
 #10;
 
 A = 1;
 B = 0;
 C = 1;
 D = 0;
 E = 0;
 #10;
 
 A = 1;
 B = 0;
 C = 1;
 D = 0;
 E = 1;
 #10;
 
 A = 1;
 B = 0;
 C = 1;
 D = 1;
 E = 0;
 #10;
 
 A = 1;
 B = 0;
 C = 1;
 D = 1;
 E = 1;
 #10;
 
 A = 1;
 B = 1;
 C = 0;
 D = 0;
 E = 0;
 #10;
 
 A = 1;
 B = 1;
 C = 0;
 D = 0;
 E = 1;
 #10;
 
 A = 1;
 B = 1;
 C = 0;
 D = 1;
 E = 0;
 #10;
 
 A = 1;
 B = 1;
 C = 0;
 D = 1;
 E = 1;
 #10;
 
 A = 1;
 B = 1;
 C = 1;
 D = 0;
 E = 0;
 #10;
 
 A = 1;
 B = 1;
 C = 1;
 D = 0;
 E = 1;
 #10;
 
 A = 1;
 B = 1;
 C = 1;
 D = 1;
 E = 0;
 #10;
 
 A = 1;
 B = 1;
 C = 1;
 D = 1;
 E = 1;
 #10;

end
endmodule
