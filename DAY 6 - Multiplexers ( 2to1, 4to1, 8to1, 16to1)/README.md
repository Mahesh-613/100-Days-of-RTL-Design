# Multiplexers



Multiplexer is a combinational circuit that selects from one of the many input lines and directs it to a single output line. The selection of a particular input line is controlled by the set of selection line or input given to the multiplexer. Generally for a 2^n input lines multiplexer there will be n selection lines. The bit combination of selection line determines which input to be selected as output. So they also called as Data Selectors.



Multiplexers can be used to realize different Boolean functions, or other combinational circuits such as adders, subtractors etc. Hence multiplexers are widely used in digital design.



Here i have implemented 2to1 mux, 4to1 mux, 8to1 mux, 16to1 mux in different modeling styles. They all works the same but the key thing to note here is  how we can realize the same circuit the same operation in different ways. I have also implemented 4to1, 8to1, 16to1 using 2to1 muxes and 4to1 muxes. The test bench is available only for 8to1 and 16to one mux. if you want to apply test bench to particular 8to1 or 16to1 mux file just change the DUT module name in test bench to the corresponding module name it will work perfectly.



And also i have not added the output waveform images cause i was lazy and forgot to take screenshots while running each modules. But i can ensure all the codes works properly and correctly. 

