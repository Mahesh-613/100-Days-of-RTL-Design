`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 15:21:49
// Design Name: 
// Module Name: top
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


module top(
    input [7:0] a,b,x,y,
    input clk,sel,
    output reg [15:0] z
    );
    always @(posedge clk)
    begin
    if (sel == 1'b0) z = a*b;
    else z = x*y;
    end
endmodule





