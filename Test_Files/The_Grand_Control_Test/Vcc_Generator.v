module Vcc_Generator (w, x, y, z, Out);

	input w, x, y, z;
	output [3:0]Out;
	
	assign Out[3] = w;
	assign Out[2] = x;
	assign Out[1] = y;
	assign Out[0] = z;
	
endmodule