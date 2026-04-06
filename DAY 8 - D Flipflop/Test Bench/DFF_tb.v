`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2025 19:43:11
// Design Name: 
// Module Name: DFF_tb
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


module DFF_tb();
reg d,clk;
wire q,q_bar;
DFF_dataflow DUT(.d(d), .clk(clk), .q(q), .q_bar(q_bar));
initial 
begin
clk = 1'b0;
forever #50 clk = ~clk;
end
initial
begin
#100 d = 1'b1;
#100 d = 1'b1;
#100 d = 1'b0;
#100 d = 1'b1;
#100 d = 1'b0;
#100 d = 1'b1;
#100 d = 1'b0;
#100 d = 1'b0;
end
endmodule








