`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2026 00:09:39
// Design Name: 
// Module Name: Fullsubtractor_tb
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


module Fullsubtractor_tb();
reg a,b,b_in;
wire D,bout;

FullSubtractor dut(a,b,b_in,D,bout);

initial begin
#10 a=0;b=0;b_in=0;
#10 a=0;b=0;b_in=1;
#10 a=0;b=1;b_in=0;
#10 a=0;b=1;b_in=1;
#10 a=1;b=0;b_in=0;
#10 a=1;b=0;b_in=1;
#10 a=1;b=1;b_in=0;
#10 a=1;b=1;b_in=1;
#10 $finish;
end
endmodule
