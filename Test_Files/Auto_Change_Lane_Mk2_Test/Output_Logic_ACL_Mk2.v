module Output_Logic_ACL_Mk2 (y, Z);

	input[1:0]y;
	output[3:0]Z;
	
	reg [3:0]Z;
	
	always @(y)
	begin
		
		case(y)
			
			2'b 00: Z = 4'b 0001;
			2'b 01: Z = 4'b 0010;
			2'b 10: Z = 4'b 0100;
			2'b 11: Z = 4'b 1000;
			
		endcase
	end
endmodule