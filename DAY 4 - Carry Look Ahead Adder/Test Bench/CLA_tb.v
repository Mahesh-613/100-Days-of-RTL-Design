`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2026 00:44:43
// Design Name: 
// Module Name: CLA_tb
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


module CLA_tb();
reg [15:0] a,b;
reg c_in;
wire [15:0]s;
wire c_out;

CLA16 DUT (a,b,c_in,s,c_out);

initial begin
$monitor("a=%b,b=%b,c_in=%b,s=%b,c_out=%b",a,b,c_in,s,c_out);
c_in=0;
#10 a=16'h1111;b=16'h2222;
#10 a=16'h1111;b=16'h1111;
#10 a=16'h1111;b=16'haaaa;
#10 a=16'h1111;b=16'heeee;
#10 $finish;
end
endmodule
