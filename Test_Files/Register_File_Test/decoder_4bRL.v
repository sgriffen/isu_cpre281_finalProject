module Decoder_4bRL(En, w, Y);

	input En;
	input [2:0]w;
	output [3:0]Y;
	
	assign Y[0] = En & (~w[2] & ~w[1] & w[0]);
	assign Y[1] = En & (~w[2] & w[1] & ~w[0]);
	assign Y[2] = En & (~w[2] & w[1] & w[0]);
	assign Y[3] = En & (w[2] & ~w[1] & ~w[0]);
	
endmodule