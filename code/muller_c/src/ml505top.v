//
//This module does a basic test for the muller C gate on FPGA.
//
//It tests 4 implementations of Muller C gate with 2 inputs:
//	A: C gate with one inferred latch
//	B: C gate with one LDCPE latch primitive
//	C: C gate with inferred SR and RS latches
//	D: C gate with SR and RS latches as configured LDCPE primitives
//
//	The inputs are supplied by GPIO Switches (GPIO_DIP[7:0])
//	The outputs are usually 
//	The outputs and inputs are as follows:
//
//	Design A: Input GPIO_DIP[1:0], output GPIO_LED[1:0]
//	Design B: Input GPIO_DIP[3:2], output GPIO_LED[3:2]
//	Design C: Input GPIO_DIP[5:4], output GPIO_LED[5:4]
//	Design D: Input GPIO_DIP[7:6], output GPIO_LED[7:6]

module ml505top (
	input  [4:0] GPIO_COMPSW,
	input  CLK_33MHZ_FPGA,
    input  [7:0] GPIO_DIP,
    output [7:0] GPIO_LED
);

	wire output_A, output_B, output_C, output_D;

	muller_naive(.a(GPIO_DIP[0]), .b(GPIO_DIP[1]), .c(output_A));
	muller_naive(.a(GPIO_DIP[2]), .b(GPIO_DIP[3]), .c(output_B));
	muller_naive(.a(GPIO_DIP[4]), .b(GPIO_DIP[5]), .c(output_C));
	muller_naive(.a(GPIO_DIP[6]), .b(GPIO_DIP[7]), .c(output_D));
    
    assign GPIO_LED[7:0] = {2 {output_D}, 2 {output_C}, 
							2 {output_B}, 2 {output_A}};

endmodule
