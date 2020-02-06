module Input_Logic_IRL (accepted, select, y, d, X);
	
	input accepted, select, d;
	input [2:0]y;
	output [2:0]X;
	
	reg [2:0]X;
	
	always @(d or accepted or select or y)
	begin
		
		if (d == 0)
			begin
			
				if (select == 1)
					begin
					
						if (accepted == 1)
							begin
							
								case(y)
								
									3'b 000: X = 3'b 001;
									3'b 001: X = 3'b 010;
									3'b 010: X = 3'b 011;
									3'b 011: X = 3'b 100;
									3'b 100: X = 3'b 100;
									3'b 101: X = 3'b 100;
									3'b 110: X = 3'b 100;
									3'b 111: X = 3'b 100;
								
								endcase
							end
						else
							begin
							
								X = y;
							end
					end
				else
					begin
					
						X = y;
					end
			end
		else
			begin
				
				X = y;
			end
	end
endmodule