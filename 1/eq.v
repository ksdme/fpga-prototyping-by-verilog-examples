// A module to test if two one big signals are equal.
module eq(
	input wire a,
	input wire b,
	output wire c
);
	assign c = h | l;
	assign h = a & b;
	assign l = ~a & ~b;
endmodule

// Test bench for the eq module.
module test();
	reg a, b;
	wire o;
	eq check(.a(a), .b(b), .c(o));

	initial begin
		a = 0;
		b = 0;
		# 1;
		$display(a, b, o);

		a = 1;
		b = 0;
		# 1;
		$display(a, b, o);

		a = 0;
		b = 1;
		$display(a, b, o);

		a = 1;
		b = 1;
		$display(a, b, o);
	end
endmodule

