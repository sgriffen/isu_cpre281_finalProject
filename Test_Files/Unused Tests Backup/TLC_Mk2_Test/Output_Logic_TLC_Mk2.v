module Output_Logic_TLC_Mk2 (y, Z);

	input [3:0]y;
	output [3:0]Z;
	
	assign Z[3] = y[3];
	assign Z[2] = y[2];
	assign Z[1] = y[1];
	assign Z[0] = y[0];
	
endmodule