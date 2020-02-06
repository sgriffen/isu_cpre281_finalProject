module Logic_LR(x, W, Z);

	input [3:0]x;
	output W;
	output [3:0]Z;
	
	assign W = (x[3]) | (x[2]) | (x[1]) | (x[0]);
	
	assign Z[3] = W & x[3];
	assign Z[2] = W & x[2];
	assign Z[1] = W & x[1];
	assign Z[0] = W & x[0];
	
endmodule