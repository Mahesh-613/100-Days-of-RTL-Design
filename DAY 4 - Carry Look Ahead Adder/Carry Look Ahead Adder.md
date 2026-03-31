# **Carry Look Ahead Adder**



We have implemented a 16bit adder(ripple carry adder) which is slower in terms of carry propagation. that is the next full adder have to wait for the present full adder until the computation is completed so that the carry is generated. Likewise the last full adder have to wait for the entire computational time until the carry is propagated to its carry in. This leads to slower computation and larger propagation delays. So can we come up with a solution that the adders need not to wait for their previous adders to generate its carry ?



This is when carry look ahead adder comes into picture. As the name suggest it calculates the carry in advance by looking at the input bits. The exact working principle you can check from online articles or you tube videos cause it will be lengthy and may get boring and i need to type so many things which i do not want to. So you can infer that it sees the current input bits then some logic is applied to know whether the carry will be generated or being propagated. The main problem here is as size of adder increases the circuit complexity increases significantly. So the tradeoff it provide is with faster computational speed it requires more chip area and consumes more power.  

