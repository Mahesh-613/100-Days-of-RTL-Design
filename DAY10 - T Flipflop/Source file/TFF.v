`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2026 23:25:39
// Design Name: 
// Module Name: TFF
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


module TFF(
    input T,clk,rst,
    output q,q_bar
    );
    JKFF_dataflow T1(.j(T),
                     .k(T),
                     .clk(clk),
                     .rst(rst),
                     .q(q),
                     .q_bar(q_bar)
                     );
                   
                        
endmodule
