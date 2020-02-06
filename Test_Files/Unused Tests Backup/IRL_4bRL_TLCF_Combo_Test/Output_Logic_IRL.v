module Output_Logic_IRL (y, Z);

	input [2:0]y;
	output [4:0]Z;
	
	reg [4:0]Z;
	
	always @(y)
	begin
		case(y)
			
			3'b 000: Z = 5'b 00000;
			3'b 001: Z = 5'b 00001;
			3'b 010: Z = 5'b 00010;
			3'b 011: Z = 5'b 00100;
			3'b 100: Z = 5'b 10000;
			3'b 101: Z = 5'b 10000;
			3'b 110: Z = 5'b 10000;
			3'b 111: Z = 5'b 10000;
			
		endcase
	end
endmodule