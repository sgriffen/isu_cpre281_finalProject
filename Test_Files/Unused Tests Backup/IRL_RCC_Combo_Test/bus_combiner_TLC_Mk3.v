module bus_combiner_TLC_Mk3(en, x, y, Z);

	input en;
	input [1:0]x;
	input [3:0]y;
	output [6:0]Z;
	
	assign Z[6] = en;
	assign Z[5] = x[1];
	assign Z[4] = x[0];
	assign Z[3] = y[3];
	assign Z[2] = y[2];
	assign Z[1] = y[1];
	assign Z[0] = y[0];
	
endmodule