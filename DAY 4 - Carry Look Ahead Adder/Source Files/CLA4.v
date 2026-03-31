`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 20:33:57
// Design Name: 
// Module Name: CLA4
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


module CLA4(
    input [3:0] a,b,
    input c_in,
    output [3:0] s,
    output c_out
    );
    
    wire [3:0] p,g;
    wire [2:0] c;
    assign p[0]=a[0]^b[0],
           p[1]=a[1]^b[1],
           p[2]=a[2]^b[2],
           p[3]=a[3]^b[3];
           
    assign g[0]=a[0]&b[0],
           g[1]=a[1]&b[1],
           g[2]=a[2]&b[2],
           g[3]=a[3]&b[3];
           
    assign c[0]=g[0]|(p[0]&c_in),
           c[1]=g[1]|(p[1]&c[0]),
           c[2]=g[2]|(p[2]&c[1]),
           c_out=g[3]|(p[3]&c[2]);
           
    assign s[0]=p[0]^c_in,
           s[1]=p[1]^c[0],
           s[2]=p[2]^c[1],
           s[3]=p[3]^c[2];
           
endmodule






