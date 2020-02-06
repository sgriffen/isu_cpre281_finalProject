module w_IRL(a, b, W);

	input a, b;
	output [1:0]W;
	
	assign W[1] = b;
	assign W[0] = a;
	
endmodule