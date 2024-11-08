// A decoder that decodes from 2 to 4 bits.
module decoder2(
	input wire enable,
	input wire [1:0] switch,
	output wire [3:0] decoded
);
	assign decoded[3] = enable & switch[1] & switch[0];
	assign decoded[2] = enable & switch[1] & ~switch[0];
	assign decoded[1] = enable & ~switch[1] & switch[0];
	assign decoded[0] = enable & ~switch[1] & ~switch[0];
endmodule


// A decoder that decodes from 3 to 8 bits.
module decoder3(
	input wire enable,
	input wire [2:0] switch,
	output wire [7:0] decoded
);
	wire [3:0] im;
	decoder2 dc2(.enable(enable), .switch(switch[1:0]), .decoded(im));

	assign decoded[7] = im[3] & switch[2];
	assign decoded[6] = im[2] & switch[2];
	assign decoded[5] = im[1] & switch[2];
	assign decoded[4] = im[0] & switch[2];
	assign decoded[3] = im[3] & ~switch[2];
	assign decoded[2] = im[2] & ~switch[2];
	assign decoded[1] = im[1] & ~switch[2];
	assign decoded[0] = im[0] & ~switch[2];
endmodule
