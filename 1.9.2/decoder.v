module decoder2_test();
	reg enable;
	reg [1:0] switch;
	wire [3:0] decoded;
	decoder2 uut(enable, switch, decoded);

	initial begin
		enable = 1'b0;
		switch[1] = 1'b1;
		switch[0] = 1'b0;
		# 1
		$display("decoder2 ", enable, " ", switch, " ", decoded);
	end
endmodule


module decoder3_test();
	reg enable;
	reg [2:0] switch;
	wire [7:0] decoded;
	decoder3 uut(enable, switch, decoded);

	initial begin
		enable = 1'b1;
		switch[2] = 1'b1;
		switch[1] = 1'b1;
		switch[0] = 1'b1;
		# 1
		$display("decoder3 ", enable, " ", switch, " ", decoded);
	end
endmodule
