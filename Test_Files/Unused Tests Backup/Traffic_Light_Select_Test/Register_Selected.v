module Register_Selected (x, Y);

	input [1:0]x;
	output [3:0]Y;
	
	assign Y[3] = x[1] & x[0];
	assign Y[2] = x[1] & ~x[0];
	assign Y[1] = ~x[1] & x[0];
	assign Y[0] = ~x[1] & ~x[0];
	
endmodule