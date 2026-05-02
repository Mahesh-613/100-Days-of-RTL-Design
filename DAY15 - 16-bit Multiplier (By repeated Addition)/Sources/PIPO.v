`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 01:03:54
// Design Name: 
// Module Name: PIPO
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Parallel in Parallel out
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PIPO(
    input clk,ld,
    input [15:0] d_in,
    output reg [15:0] d_out
    );
    always @(posedge clk) begin
        if (ld)
            d_out <= d_in;  
    end
endmodule


