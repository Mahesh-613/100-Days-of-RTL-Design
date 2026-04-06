`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2025 21:16:06
// Design Name: 
// Module Name: SRFF_bhv
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


module SRFF_bhv(
    input s,r,clk,
    output reg q,q_bar
    );
    always @ (posedge clk)
    begin
    case({s,r})
    2'b00 : begin q=q; q_bar=q_bar;end
    2'b01 : begin q=1'b0; q_bar=1'b1;end
    2'b10 : begin q=1'b1; q_bar=1'b0;end
    2'b11 : begin q=1'bx; q_bar=1'bx;end
    endcase
    end
endmodule








