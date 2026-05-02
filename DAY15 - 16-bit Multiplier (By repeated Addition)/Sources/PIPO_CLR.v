`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2026 21:58:55
// Design Name: 
// Module Name: PIPO_CLR
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


module PIPO_CLR(
    input [15:0] din,
    input ld,clrp,clk,
    output reg [15:0] dout
    );
    always @(posedge clk)
        if (clrp) dout <= 16'b0;
        else if (ld) dout <= din;
endmodule











