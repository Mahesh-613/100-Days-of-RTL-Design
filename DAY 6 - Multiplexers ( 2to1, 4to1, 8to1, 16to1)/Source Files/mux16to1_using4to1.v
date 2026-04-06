`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2025 16:59:30
// Design Name: 
// Module Name: mux16to1_using4to1
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


module mux16to1_using4to1(
    input [15:0] in,
    input [3:0] sel,
    output out
    );
    wire [3:0]t;
    
   mux4to1_2to1structural m0(in[3:0],sel[1:0],t[0]);
   mux4to1_2to1structural m1(in[7:4],sel[1:0],t[1]);
   mux4to1_2to1structural m2(in[11:8],sel[1:0],t[2]);
   mux4to1_2to1structural m3(in[15:12],sel[1:0],t[3]);
   mux4to1_2to1structural m4(t[3:0],sel[3:2],out);
endmodule





