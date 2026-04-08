# SEQUENCE DETECTOR

##### 

A sequence detector is sequential circuit which detects a particular sequence from the given set of input data. The output of the circuit goes high when the desired sequence is detected. The sequence detection can be of two types, that is overlapping and Non overlapping type.



An overlapping sequence detector identifies a specific pattern of bits in a serial input stream, allowing the final bits of one detected pattern to serve as the start of the next sequence. 



Here i have implemented an overlapping Type sequence detector to detect a particular sequence **11011.** The sequence detector was designed by realizing it into A Moore type Finite state machine. The FSM was implemented by using case statement which demonstrates the  behavioral RTL modeling. The required testbench was also designed in order to verify the functionality of the module. The sequence detector module takes the serial data, clock and reset signal as input and gives a serial single bit data output. The testbench implements a 100Mhz clock and gives input bits with a interval of 10ns . The output waveform can be observed from the waveform diagram. 

