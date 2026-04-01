`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2025 21:07:45
// Design Name: 
// Module Name: FullSubtractor
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


module FullSubtractor(
    input a,b,bin,
    output d,br
    );
    wire w1,w2,w3;
    assign w1 = a^b;
    assign w2 = (~a)&b;
    assign d = w1^bin;
    assign w3 = (~w1)&bin;
    assign br = w2|w3;
endmodule
