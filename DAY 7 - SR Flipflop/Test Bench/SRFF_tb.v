`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2025 21:31:12
// Design Name: 
// Module Name: SRFF_tb
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


module SRFF_tb();
reg s,r,clk;
wire q,q_bar;
SRFF_GLM uut(.s(s),
              .r(r),
              .clk(clk),
              .q(q),
              .q_bar(q_bar)
              );
initial
begin
clk = 1'b0;
forever #50 clk = ~clk;
end
initial
begin
s=1;r=0;#100;
s=0;r=0;#100;
s=0;r=1;#100;
s=1;r=0;#100;
s=1;r=1;#100;
$finish;
end
endmodule








