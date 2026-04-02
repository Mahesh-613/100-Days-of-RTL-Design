`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 19:18:10
// Design Name: 
// Module Name: mux8to1_using4to1
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


module mux8to1(
    input [7:0] in,
    input [2:0] sel,
    output out
    );
    wire [1:0]t;
    mux4to1_using2to1 m1(in[3:0],sel[1:0],t[0]);
    mux4to1_using2to1 m2(in[7:4],sel[1:0],t[1]);
    mux2to1 m3(t[1:0],sel[2],out);
endmodule







