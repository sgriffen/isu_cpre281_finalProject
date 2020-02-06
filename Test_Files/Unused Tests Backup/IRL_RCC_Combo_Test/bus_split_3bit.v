module bus_split_3bit (x, Y, Z);

	input [2:0]x;
	output Z;
	output [1:0]Y;
	
	assign Z = x[2];
	assign Y[1] = x[1];
	assign Y[0] = x[0];
	
endmodule