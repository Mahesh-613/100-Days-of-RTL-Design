
module halfadder(
    input a,b,
    output s,c
    );
    xor g1(s,a,b);
    and g2(c,a,b);
endmodule



