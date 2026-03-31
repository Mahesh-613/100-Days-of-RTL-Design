`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 21:24:08
// Design Name: 
// Module Name: CLA16
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


module CLA16(
    input [15:0] a,b,
    input c_in,
    output [15:0] s,
    //ONLY USE FLAGS WHEN NUMBERS ARE IN 2'S COMPLEMENT OTHERWISE SOME WRONG VALUES CAN BE ASSIGNED
    output c_out//,sign,zero,parity,overflow
    );
    wire [4:0]c;
    parameter n = 4;
    assign c[0] = c_in;
    assign c_out = c[n];
    genvar p;
    generate for(p=0; p<n; p=p+1)
        begin 
            CLA4 Ad1 (a[n*(p+1)-1:n*p],b[n*(p+1)-1:n*p],c[p],s[n*(p+1)-1:n*p],c[p+1]);
        end
   endgenerate
    //different flags to indicate the properties of the output z
//      assign sign = s[15]; //if s is +ve sign is 0 if -ve then 1
//      assign zero = ~|s;   //if s is sero then sero parity will be 1
//      assign parity = ~^s; //wheather the number of 1's in the s is even or odd. if even then 1 if odd then 0
//      assign overflow = (a[15] & b[15] & (~s[15]))|(~a[15] & (~b[15]) & s[15]);
//             //if a15 and b15 are negative that is 1 and s is 0 then ip is -ve but op is +ve or vice versa then overflow has occurred 
endmodule
