`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 23:57:43
// Design Name: 
// Module Name: RippleCarryAdder_16bit
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


module RippleCarryAdder_16bit(
    input [15:0] a,b,
    input c_in,
    output [15:0] s,
    output c_out
    );
    wire [2:0]c;
    FullAdder_4bit f1(a[3:0],b[3:0],c_in,s[3:0],c[0]);
    FullAdder_4bit f2(a[7:4],b[7:4],c[0],s[7:4],c[1]);
    FullAdder_4bit f3(a[11:8],b[11:8],c[1],s[11:8],c[2]);
    FullAdder_4bit f4(a[15:12],b[15:12],c[2],s[15:12],c_out);
endmodule





