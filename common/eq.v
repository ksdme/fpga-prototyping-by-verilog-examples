// A module to test if two bits are equal.
module eq(
	input wire a,
	input wire b,
	output wire o
);
	assign o = h | l;
	assign h = a & b;
	assign l = ~a & ~b;
endmodule


// A module to test if two 2-bit signals are equal.
module eq2(
	input wire a[1:0],
	input wire b[1:0],
	output wire o
);
	wire x, y;
	assign o = x & y;

	eq p(.a(a[0]), .b(b[0]), .o(x));
	eq q(.a(a[1]), .b(b[1]), .o(y));
endmodule
