`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2025 17:20:44
// Design Name: 
// Module Name: mux2to1_structural
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


module mux2to1_structural(
    input [1:0] in,
    input sel,
    output out
    );
    wire t1,t2,t3;
    not g1(t1,sel);
    and g2(t2,in[0],t1);
    and g3(t3,in[1],sel);
    or g4(out,t2,t3);
endmodule




