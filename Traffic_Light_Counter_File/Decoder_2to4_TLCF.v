module Decoder_2to4_TLCF(En, w, Y);

	input En;
	input [1:0]w;
	output [3:0]Y;
	
	assign Y[0] = En & (~w[1] & ~w[0]);
	assign Y[1] = En & (~w[1] & w[0]);
	assign Y[2] = En & (w[1] & ~w[0]);
	assign Y[3] = En & (w[1] & w[0]);
	
endmodule