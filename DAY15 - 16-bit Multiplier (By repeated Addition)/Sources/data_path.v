`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 11:33:53
// Design Name: 
// Module Name: data_path
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


module data_path(
    input clk,ldA,ldP,clrP,ldB,decB,
    input [15:0] data_in,
    output eq
    );
    wire [15:0] x,y,z,bout,bus;
    
    PIPO A (.clk(clk),
            .ld(ldA),
            .d_in(data_in),
            .d_out(x)
            );
            
    PIPO_CLR P (.clk(clk),
                .ld(ldP),
                .din(z),
                .dout(y),
                .clrp(clrP)
                );
                
    CNTR B (.ld(ldB),
            .din(data_in),
            .dec(decB),
            .clk(clk),
            .dout(bout)
            );
            
    ADD ad (.in1(y),
            .in2(x),
            .out(z)
            );
            
    EQZ comp(.data(bout),
             .eq(eq)
             );

endmodule
