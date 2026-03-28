`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2025 21:53:04
// Design Name: 
// Module Name: XNOR_tb
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


module XNOR_tb( );
reg A,B; wire OUT;
XNOR uut(.a(A),.b(B),.out(OUT));
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
