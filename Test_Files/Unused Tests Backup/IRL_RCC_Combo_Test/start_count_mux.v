module start_count_mux (sel, x, Y);

	input sel, x;
	output Y;
	
	reg Y;
	
	always @(sel or x)
	begin
		
		case (sel)
		
			1'b 0: Y = 0;
			1'b 1: Y = x;
			
		endcase
	end
endmodule