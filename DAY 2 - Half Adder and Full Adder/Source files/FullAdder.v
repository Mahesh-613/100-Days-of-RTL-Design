
module FullAdder(
    input a,b,c_in,
    output s,c_out
    );
    wire t1,t2,t3;
    xor g1(t1,a,b),
        g2(s,t1,c_in);
    and g3(t2,a,b),
        g4(t3,c_in,t1);
    or  g5(c_out,t2,t3);
endmodule







