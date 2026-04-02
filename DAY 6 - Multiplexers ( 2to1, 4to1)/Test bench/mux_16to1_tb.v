`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2025 16:12:06
// Design Name: 
// Module Name: mux_16to1_tb
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


module mux_16to1_tb();
reg [15:0]A;
reg [3:0]S;
wire F;

mux16to1_using4to1 M(.in(A),.out(F),.sel(S));

initial
begin
$dumpfile ("mux16to1.vcd");
$dumpvars(0,mux_16to1_tb);
$monitor("time=",$time," A=%h, S=%h, F=%h",A,S,F);

#5 A=16'h3f0a;S=4'h0;
#5 S=4'h1;
#5 S=4'h3;
#5 S=4'h5;
#5 S=4'hc;
#5 $finish;
end
endmodule






