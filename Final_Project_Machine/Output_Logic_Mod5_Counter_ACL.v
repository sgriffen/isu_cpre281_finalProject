module Output_Logic_Mod5_Counter_ACL (y, Z);
	
	input [2:0]y;
	output [2:0]Z;
	
	assign Z[2] = y[2];
	assign Z[1] = y[1];
	assign Z[0] = y[0];
	
endmodule