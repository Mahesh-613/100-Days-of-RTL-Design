
module halfadder_tb();
reg a,b;
wire s,c;

halfadder h1(a,b,s,c);

initial begin
#10 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10 $finish;
end
endmodule







