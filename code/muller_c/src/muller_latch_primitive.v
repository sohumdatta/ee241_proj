//
//This is a dual latch C gate implementation. 
//LDCPE primitive is used

module muller_latch_primitive(
	input a, 
	input b,
	output c
);

wire p;
rslatch_primitive my_rslatch(.S(a), .R(~b), .Q(p));
srlatch_primitive my_srlatch(.S(p), .R(~a), .Q(c));

endmodule
