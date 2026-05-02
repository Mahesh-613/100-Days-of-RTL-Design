`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2026 22:41:32
// Design Name: 
// Module Name: MUL_tb
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


module MUL_tb();
    reg [15:0] data_in;
    reg clk, start;
    wire done;
    
    data_path DP (clk,ldA,ldP,clrp,ldB,decB,data_in,eq);
    controller con (clk,eq,start,ldA,ldB,ldP,clrp,decB,done);
    
    initial
        begin
            clk = 1'b0;
            #3 start = 1'b1;
            #500 $finish;
        end
        
    always #5 clk = ~clk;
    
    initial
        begin 
            #17 data_in = 17.5;
            #10 data_in = 5;
        end
    
    initial
        begin
            $monitor ($time,"%d     %b",DP.y,done);
        end
endmodule
