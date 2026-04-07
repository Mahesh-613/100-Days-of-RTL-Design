`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2026 23:28:03
// Design Name: 
// Module Name: TFF_tb
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


module TFF_tb();
reg T,clk,rst;
wire q,q_bar;
TFF uut (.T(T), .clk(clk), .rst(rst), .q(q), .q_bar(q_bar));

initial
begin
clk = 1;
forever #50 clk = ~clk;
end
initial
begin
rst = 1; #100;
rst = 0;
T=0;#100;
T=0;#100; 
T=1;#100;
T=0;#100;
T=1;#100;
$finish;
end
endmodule
