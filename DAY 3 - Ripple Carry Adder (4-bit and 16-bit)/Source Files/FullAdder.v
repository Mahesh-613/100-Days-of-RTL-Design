`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 23:27:34
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
    input a,b,c_in,
    output s,c_out
    );
    wire t1,t2,t3;
    xor g1(t1,a,b),
        g2(s,t1,c_in);
    and g3(t2,a,b),
        g4(t3,c_in,t1);
    or  g5(c_out,t2,t3);
endmodule







