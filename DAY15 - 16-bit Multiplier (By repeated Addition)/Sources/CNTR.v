`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2026 21:58:55
// Design Name: 
// Module Name: CNTR
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


module CNTR(
    input [15:0] din,
    input ld,dec,clk,
    output reg [15:0] dout
    );
    always @(posedge clk)
        if (ld) dout <= din;
        else if (dec) dout <= dout - 1;
endmodule
