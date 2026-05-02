`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2026 22:26:21
// Design Name: 
// Module Name: controller
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


module controller(
    input clk,eqz,start,
    output reg ldA,ldB,ldP,clrp,decB,done
    );
    reg [2:0] state;
    parameter s0 = 3'b000,s1 = 3'b001,s2 = 3'b010,s3 = 3'b011,s4 = 3'b100;
    
    always @(posedge clk)
        begin
            case (state)
                s0 :    if (start) state <= s1;
                s1 :    state <= s2;
                s2 :    state <= s3;
                s3 :    #2 if (eqz) state <= s4;
                s4 :    state <= s4;
                default: state <= s0;
            endcase
       end
    always @(state)
        begin
            case (state)
                s0 :   begin #1 ldA=0; ldB=0; ldP=0; clrp=0; decB=0; end
                s1 :   begin #1 ldA=1; end
                s2 :   begin #1 ldA=0; ldB=1; clrp=1; end
                s3 :   begin #1 ldB=0; ldP=1; clrp=0; decB=1; end
                s4 :   begin #1 done=1; ldB=0; ldP=0; clrp=0; decB=0; end
                default: begin #1 ldA=0; ldB=0; ldP=0; clrp=0; decB=0; end
            endcase
        end
endmodule










