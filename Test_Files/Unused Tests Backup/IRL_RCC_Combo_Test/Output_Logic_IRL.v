module Output_Logic_IRL (y, Z);

	input [2:0]y;
	output [2:0]Z;
	
	reg [2:0]Z;
	
	always @(y)
	begin
		case(y)
			
			3'b 000: Z = 3'b 000;
			3'b 001: Z = 3'b 001;
			3'b 010: Z = 3'b 010;
			3'b 011: Z = 3'b 011;
			3'b 100: Z = 3'b 100;
			3'b 101: Z = 3'b 100;
			3'b 110: Z = 3'b 100;
			3'b 111: Z = 3'b 100;
			
		endcase
	end
endmodule