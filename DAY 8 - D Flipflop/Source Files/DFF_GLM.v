`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2025 19:39:11
// Design Name: 
// Module Name: DFF_GLM
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


module DFF_GLM(
    input d,clk,
    output q,q_bar
    );
    wire d1,d2,d_prime;
    not dprime (d_prime,d);
    nand n1 (d1,d,clk);
    nand n2 (d2,d_prime,clk);
    nand n3 (q,d1,q_bar);
    nand n4 (q_bar,d2,q);
   
endmodule
