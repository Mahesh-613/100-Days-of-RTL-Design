



































































`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mahesh Kumar Sahoo
// 
// Create Date: 15.08.2025 19:44:27
// Design Name: 
// Module Name: seq11011_nonoverlapping_melay
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
module seq11011_overlapping_melay(
    input x,clk,rst,
    output reg z
    );
    parameter A=3'b000,B=3'b001,C=3'b010,D=3'b011,E=3'b100;
    reg [0:2] ps, ns;
    
    always @(posedge clk or negedge rst)
    begin
    if(rst) ps<=A;
    else    ps<=ns;
    end
   
    always @(ps,x)
        case(ps)
            A : begin//initial state of  FSM
                z = 0;
                ns = x ? B : A;
                end  
            B : begin//1
                z = 0;
                ns = x ? C : A;
                end  
            C : begin//11
                z = 0;
                ns = x ? C : D;
                end  
            D : begin//110
                z = 0;
                ns = x ? E : A;
                end 
            E : begin//1101
                ns = x ? C : A;
                if(x) z=1;
                else z=0;
                end
            default begin
                z=0;
                ns = A;
                end   
        endcase
endmodule
