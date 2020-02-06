module Input_Logic_Mod5_Counter_ACL (w, y, X);
	
	input w;
	input[2:0]y;
	output [2:0]X;
	
	assign X[2] = (w & y[2]) | (w & y[1] & y[0]);
	assign X[1] = (~w & y[1]) | (y[1] & ~y[0]) | (w & ~y[2] & ~y[1] & y[0]);
	assign X[0] = (~w & y[0]) | (w & ~y[2] & ~y[0]);
	
endmodule