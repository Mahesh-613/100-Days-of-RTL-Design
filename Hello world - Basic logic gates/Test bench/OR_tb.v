`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 20:31:16
// Design Name: 
// Module Name: OR_tb
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


module OR_tb;
reg A,B; wire OUT;
OR or1(.a(A),.b(B),.out(OUT));
initial
    begin 
        $monitor("simtime = %g, A = %b, B = %b, OUT = %b",$time,A,B,OUT);
    end
initial
    begin
    #100 A=0;B=0;
    #100 A=0;B=1;
    #100 A=1;B=0;
    #100 A=1;B=1;#100
        $finish;
    end
endmodule










