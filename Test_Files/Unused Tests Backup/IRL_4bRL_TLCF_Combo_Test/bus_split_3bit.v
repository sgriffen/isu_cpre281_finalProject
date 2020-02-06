module bus_split_3bit (x, Y, Z);

	input [4:0]x;
	output Z;
	output [3:0]Y;
	
	assign Z = x[4];
	assign Y[3] = x[3];
	assign Y[2] = x[2];
	assign Y[1] = x[1];
	assign Y[0] = x[0];
	
endmodule