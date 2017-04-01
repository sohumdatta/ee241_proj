//
//This is RS latch implementation. 
//LDCPE primitive is instantiated.

module rslatch_primitive(
	input R, 
	input S,
	output Q
);

// LDCPE: Transparent latch with Asynchronous Reset, Preset and
// Gate Enable.
// Virtex-4/5, Spartan-3/3E/3A/3A DSP
// Xilinx HDL Libraries Guide, version 11.2

//GE .  G = 0,
//hence, set GE = 0, G = 0
//D is unused, set it to 0
LDCPE #(.INIT(1’b0))	//Initial value of the latch
LDCPE_inst (			
	.Q(Q),				//output
	.CLR(R),			//asynchronous clear
	.D(1'b0),			//data in
	.G(1'b0),			//gate
	.GE(1'b0),			//gate enable
	.PRE(S)				//asynchronous preset
);
endmodule
