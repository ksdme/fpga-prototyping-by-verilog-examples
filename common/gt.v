// A module that compares if a is greater than b.
module gt2(
	input wire [1:0] a,
	input wire [1:0] b,
	output wire o
);
	// 0 when a=00
	// 1 when a=01 and b=00
	// 1 when a=10 and b=00, b=01
	// 1 when a=11 and b=00, b=01, b=10
	wire x, y, z;
	assign o = x | y | z;

	assign x = ~a[0] & a[1] & ~b[0] & ~b[1];
	assign y = a[0] & ~b[0];
	assign z = a[0] & a[1] & b[0] & ~b[1];
endmodule
