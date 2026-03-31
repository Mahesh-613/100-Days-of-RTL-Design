# **Ripple Carry Adder**



The ripple carry adder is implemented by cascade connection of full adders. Suppose we want to build a 4bit ripple carry adder then we have to cascade 4 individual full adder circuit such a way that carry of out of the 1st full adder is given as carry in for the 2nd full adder and so on. As here the carry propagates from 1st full adder to last full adder, like a ripple which travels forward one after another hence the name ripple carry adder.



here i have implemented 16 bit ripple carry adder by instantiating four 4-bit ripple carry adder circuit and the 4bit ripple carry adder are implemented by using four full adder in cascade manner. we can also implement a 16 bit or a 32bit adder by directly declaring the inputs to be 16 bit or 32 bit sizes and then directly add them using behavioral  modeling but i want to ensure that my codes are reusable. So by implementing on previously made code it helps me to identify how can i perfect my design in terms of scalability and reusability. You can find in further modules also that same code of older modules are being used. Hence in total 16 full adder circuits are connected  to build a 16 bit full adder. In the test bench the inputs were given in hexadecimal format and corresponding output can seen  from waveform diagram. 



