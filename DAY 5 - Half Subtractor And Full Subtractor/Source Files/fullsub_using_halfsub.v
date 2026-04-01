`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2025 22:55:27
// Design Name: 
// Module Name: fullsub_using_halfsub
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


module fullsub_using_halfsub(
    input a,b,bin,
    output d,br
    );
    wire w1,w2,w3;
    HalfSubtractor h1 (.a(a),.b(b),.d(w1),.br(w2));
    HalfSubtractor h2 (.a(w1),.b(bin),.d(d),.br(w3));
    assign br = w2|w3;
endmodule
