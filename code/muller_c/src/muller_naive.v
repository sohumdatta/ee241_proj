//
//This is a single latch C gate implementation. 
//Assumes XST will infer the latch automatically.

module muller_naive(
	input a, 
	input b,
	output c
);

reg q;
always @(a or b) begin
	if (a == b) q = a;
end 
assign c = q;

endmodule
