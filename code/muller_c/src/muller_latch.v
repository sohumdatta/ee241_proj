//
//This is a dual latch C gate implementation. 
//Assumes XST will infer the latch automatically for SR and RS.

module muller_latch(
	input a, 
	input b,
	output c
);

wire p;
rslatch my_rslatch(.S(a), .R(~b), .Q(p));
srlatch my_srlatch(.S(p), .R(~a), .Q(c));

endmodule
