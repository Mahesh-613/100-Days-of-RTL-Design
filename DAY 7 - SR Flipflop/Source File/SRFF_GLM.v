`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2025 21:22:49
// Design Name: 
// Module Name: SRFF_GLM
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


module SRFF_GLM(
    input s,r,clk,
    output q,q_bar
    );
    wire S,R;
    nand n1 (S,s,clk);
    nand n2 (R,r,clk);
    nand n3 (q,S,q_bar);
    nand n4 (q_bar,R,q);
    
endmodule


