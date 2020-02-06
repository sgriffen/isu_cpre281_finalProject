module Select_Line_4bRL(w, Z);

	input [2:0]w;
	output [1:0]Z;
	
	assign Z[1] = w[2] | (w[1] & w[0]);
	assign Z[0] = w[2] | (w[1] & ~w[0]);
	
endmodule