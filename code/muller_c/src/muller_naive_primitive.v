//
//This is a single latch C gate implementation. 
//LDCPE primitive is instantiated.

module muller_naive(
	input a, 
	input b,
	output c
);

// LDCPE: Transparent latch with Asynchronous Reset, Preset and
// Gate Enable.
// Virtex-4/5, Spartan-3/3E/3A/3A DSP
// Xilinx HDL Libraries Guide, version 11.2

wire gate;
assign gate = ~(a ^ b);

LDCPE #(.INIT(1’b0))	//Initial value of the latch
LDCPE_inst (			
	.Q(c),				//output
	.CLR(1'b0),			//asynchronous clear
	.D(a),				//data in
	.G(gate),			//gate
	.GE(1'b1),			//gate enable
	.PRE(1'b0)			//asynchronous preset
);



endmodule
