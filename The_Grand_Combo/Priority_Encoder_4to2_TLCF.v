module Priority_Encoder_4to2_TLCF (w, Z);

	input [3:0]w;
	output [1:0]Z;
	
	assign Z[1] = w[3] | w[2];
	assign Z[0] = w[3] | (~w[2] & w[1]);
	
endmodule