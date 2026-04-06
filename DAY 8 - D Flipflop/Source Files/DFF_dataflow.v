`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.06.2025 11:02:56
// Design Name: 
// Module Name: DFF_dataflow
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


module DFF_dataflow(
    input d,clk,
    output reg q,q_bar
    );
    always @(posedge clk)
    begin
    q <= d;
    q_bar <= ~d;
    end
endmodule
