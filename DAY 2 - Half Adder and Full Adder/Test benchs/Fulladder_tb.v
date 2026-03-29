
module Fulladder_tb();
reg a,b,c_in;
wire d,br;

FullAdder dut(a,b,c_in,s,cout);

initial begin
#10 a=0;b=0;c_in=0;
#10 a=0;b=0;c_in=1;
#10 a=0;b=1;c_in=0;
#10 a=0;b=1;c_in=1;
#10 a=1;b=0;c_in=0;
#10 a=1;b=0;c_in=1;
#10 a=1;b=1;c_in=0;
#10 a=1;b=1;c_in=1;
#10 $finish;
end
endmodule








