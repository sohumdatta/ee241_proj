//
//This is a SR latch implementation. 
//Assumes XST will infer the latch automatically.

module srlatch(
	input R, 
	input S,
	output Q
);

reg q;
always @(R or S) begin
	q = S | ((~R) & q);
end 
assign Q = q;

endmodule
