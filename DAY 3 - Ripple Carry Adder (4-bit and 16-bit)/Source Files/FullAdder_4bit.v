`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 23:27:34
// Design Name: 
// Module Name: FullAdder_4bit
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

//4-bit Ripple Carry Adder
module FullAdder_4bit(
    input [3:0] a,b,
    input c_in,
    output [3:0] s,
    output c_out
    );
    wire [2:0] c;
    FullAdder f0(a[0],b[0],c_in,s[0],c[0]);
    FullAdder f1(a[1],b[1],c[0],s[1],c[1]);
    FullAdder f2(a[2],b[2],c[1],s[2],c[2]);
    FullAdder f3(a[3],b[3],c[2],s[3],c_out);
endmodule












