//
//This is RS latch implementation. 
//Assumes XST will infer the latch automatically.

module rslatch(
	input R, 
	input S,
	output Q
);

reg q;
always @(R or S) begin
	q = (~R) & (S | q);
end 
assign Q = q;

endmodule
