`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mahesh Kumar Sahoo
// 
// Create Date: 31.12.2025 11:10:03
// Design Name: 
// Module Name: mux8to1_using2to1
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


module mux8to1_using2to1(
    input [7:0] in,
    input [2:0] sel,
    output out
    );
    wire [3:0] s0;
    wire [1:0] s1;
    
    mux2to1 m1(in[1:0],sel[0],s0[0]);
    mux2to1 m2(in[3:2],sel[0],s0[1]);
    mux2to1 m3(in[5:4],sel[0],s0[2]);
    mux2to1 m4(in[7:6],sel[0],s0[3]);
    
    mux2to1 m5(s0[1:0],sel[1],s1[0]);
    mux2to1 m6(s0[3:2],sel[1],s1[1]);
    
    mux2to1 m7(s1[1:0],sel[2],out);
endmodule
