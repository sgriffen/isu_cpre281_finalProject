module Input_Logic_IRL(LR, w, y, X);

	input LR, w;
	input [2:0]y;
	output [2:0]X;
	
	assign X[2] = (y[2]) | (LR & w & y[1] & y[0]);
	assign X[1] = (~LR & y[1]) | (~w & y[1]) | (y[1] & ~y[0]) | (LR & w & ~y[1] & y[0]);
	assign X[0] = (~w & y[0]) | (~LR & y[0]) | (LR & w & y[2] & ~y[0]);
	
endmodule