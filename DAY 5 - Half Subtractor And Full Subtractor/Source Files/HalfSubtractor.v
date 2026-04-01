`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2025 21:07:45
// Design Name: 
// Module Name: HalfSubtractor
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


module HalfSubtractor(
    input a,b,
    output d,br
    );
    assign d = a^b;
    assign br = (~a)&b;
endmodule
