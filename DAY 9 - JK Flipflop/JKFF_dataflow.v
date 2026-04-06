`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2025 20:53:56
// Design Name: 
// Module Name: JKFF_dataflow
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


module JKFF_dataflow(
    input j,k,clk,rst,
    output reg q,q_bar
    );
    always @(posedge clk)
    begin
    if (rst) begin
        q = 0;
        q_bar = ~q;
    end
    else begin
    q = (j&(~q))|(q&(~k));
    q_bar = ~q;
    end
    end
endmodule







