`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2025 20:51:35
// Design Name: 
// Module Name: JKFF_tb
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


module JKFF_tb();
reg j,k,clk,rst;
wire q,q_bar;
JKFF_dataflow uut (.j(j), .k(k), .clk(clk), .rst(rst), .q(q), .q_bar(q_bar));

initial
begin
clk = 1;
forever #50 clk = ~clk;
end
initial
begin
rst = 1; #100;
rst = 0;
j=1;k=0;#100;
j=0;k=0;#100; 
j=0;k=1;#100;
j=1;k=0;#100;
j=1;k=1;#100;
$finish;
end
endmodule


