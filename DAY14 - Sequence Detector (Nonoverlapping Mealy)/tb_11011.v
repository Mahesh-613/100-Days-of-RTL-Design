`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2025 21:52:24
// Design Name: 
// Module Name: tb_11011
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


module tb_11011();
reg clk, x, rst;
wire z;
seq11011_nonoverlapping_melay FSM (x,clk,rst,z);
initial
    begin
    clk = 1'b0; rst = 1'b1;
    #15 rst = 1'b0;
    end

always #5 clk = ~clk;

initial
    begin
    $monitor("x=%b z=%b time=%d",x,z,$time);
    #12 x=0;
    #10 x=1; 
    #10 x=1; 
    #10 x=0; 
    #10 x=1; 
    #10 x=1;
    #10 x=0; 
    #10 x=1; 
    #10 x=1; 
    #10 x=0; 
    #10 x=1;
    #10 x=1; 
    #10 x=0; 
    #10 x=1; 
    #10 x=1; 
    #20$finish;
    end
   
endmodule
