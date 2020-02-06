module Output_Logic_TLS (y, Z);

	input[1:0]y;
	output[1:0]Z;
	
	assign Z[1] = y[1];
	assign Z[0] = y[0];
	
endmodule
