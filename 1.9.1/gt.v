module gt2_test();
	reg [1:0] a, b;
	wire o;
	gt2 check(a, b, o);

	initial begin
		a[0] = 1'b1;
		a[1] = 1'b1;
		b[0] = 1'b0;
		b[1] = 1'b1;
		# 1
		$display(o);
	end
endmodule


module gt4_test();
	reg [3:0] a, b;
	wire o;
	gt4 check(a, b, o);

	initial begin
		a[3] = 1'b0;
		a[2] = 1'b1;
		a[1] = 1'b0;
		a[0] = 1'b0;

		b[3] = 1'b1;
		b[2] = 1'b1;
		b[1] = 1'b0;
		b[0] = 1'b1;
		# 1
		$display(o);
	end
endmodule
