module Mux_3to1_TGC (sel, x, y, z, Out);

	input [1:0]sel;
	input x, y, z;
	
	output [2:0]Out;
	
	reg [2:0]Out;
	
	always @(sel or x or y or z)
	begin
		case(sel)
			
			2'b 00: Out = 3'b 001;
			2'b 01: Out = 3'b 010;
			2'b 10: Out = 3'b 100;
			2'b 11: Out = Out;
			
		endcase
	end
endmodule