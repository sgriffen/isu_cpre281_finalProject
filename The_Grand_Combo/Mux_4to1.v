module Mux_4to1(x0, x1, x2, x3, s, Y);

	input [1:0]s;
	input [3:0]x0, x1, x2, x3;
	output [3:0]Y;
	
	reg [3:0]Y;
	
	always @(s or x0 or x1 or x2 or x3)
	begin
		case (s)
		
			2'b 00: Y = x0;
			2'b 01: Y = x1;
			2'b 10: Y = x2;
			2'b 11: Y = x3;
			
		endcase
	end
endmodule