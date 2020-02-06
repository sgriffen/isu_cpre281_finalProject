module Input_Logic_TLS (w, y, X);

	input[1:0]w, y;
	output[1:0]X;
	
	assign X[1] = w[1];
	assign X[0] = w[0];
	
endmodule

