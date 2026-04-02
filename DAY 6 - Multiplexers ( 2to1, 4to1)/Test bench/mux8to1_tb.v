`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 19:29:00
// Design Name: 
// Module Name: mux8to1_tb
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


module mux8to1_tb();
reg [7:0]in;
reg [2:0]sel;
wire out;

mux8to1_using2to1 dut (in,sel,out);
initial
begin
$monitor("time=",$time,"in=%b,sel=%b,out=%b",in,sel,out);

in = 8'b10101010;   sel = 3'b001;
#200 sel = 3'b010;
#200 sel = 3'b101;
#200 sel = 3'b110;
#200 sel = 3'b111;
end
endmodule








