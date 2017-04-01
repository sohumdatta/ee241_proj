//
//This is SR Latch implementation. 
//LDCPE primitive is instantiated.

module srlatch_primitive(
	input R, 
	input S,
	output Q
);

// LDCPE: Transparent latch with Asynchronous Reset, Preset and
// Gate Enable.
// Virtex-4/5, Spartan-3/3E/3A/3A DSP
// Xilinx HDL Libraries Guide, version 11.2

//GE .  G = R,
//hence, set GE = 1, G = R
LDCPE #(.INIT(1’b0))	//Initial value of the latch
LDCPE_inst (			
	.Q(Q),				//output
	.CLR(1'b0),			//asynchronous clear
	.D(1'b0),			//data in
	.G(R),			//gate
	.GE(1'b1),			//gate enable
	.PRE(S)				//asynchronous preset
);
endmodule
