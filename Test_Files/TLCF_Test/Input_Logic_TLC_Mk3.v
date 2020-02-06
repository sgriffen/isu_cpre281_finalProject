module Input_Logic_TLC_Mk3 (en, acl_en, w, y, X);
	
	input en, acl_en;
	input [1:0]w;
	input [3:0]y;
	output [3:0]X;
	
	reg [3:0]X;
	
	always @(en or w or y)
	begin
	
		if (en == 1)
			begin
				
				case (w)
				
					//Count up (Add car)
					2'b 01:
						begin
							
							case (y)
							
								4'b 0000: X = 4'b 0001; //Go to State B
								4'b 0001: X = 4'b 0010; //Go to State C
								4'b 0010: X = 4'b 0011; //Go to State D
								4'b 0011: X = 4'b 0100; //Go to State E
								4'b 0100: X = 4'b 0101; //Go to State F
								4'b 0101: X = 4'b 0110; //Go to State G
								4'b 0110: X = 4'b 0111; //Go to State H
								4'b 0111: X = 4'b 1000; //Go to State I
								4'b 1000: X = 4'b 1001; //Go to State J
								4'b 1001: X = 4'b 1010; //Go to State K
								4'b 1010: X = 4'b 1011; //Go to State L
								4'b 1011: X = 4'b 1100; //Go to State M
								4'b 1100: X = 4'b 1101; //Go to State N
								4'b 1101: X = 4'b 1110; //Go to State O
								4'b 1110: X = 4'b 1111; //Go to State P
								4'b 1111: X = 4'b 1111; //Stay in State P
							endcase
						end
					//Count down (Green light)
					2'b 10:
						begin
							
							case(y)
							
								4'b 0000: X = 4'b 0000; //Go to State A
								4'b 0001: X = 4'b 0000; //Go to State A
								4'b 0010: X = 4'b 0001; //Go to State B
								4'b 0011: X = 4'b 0010; //Go to State C
								4'b 0100: X = 4'b 0011; //Go to State D
								4'b 0101: X = 4'b 0100; //Go to State E
								4'b 0110: X = 4'b 0101; //Go to State F
								4'b 0111: X = 4'b 0110; //Go to State G
								4'b 1000: X = 4'b 0111; //Go to State H
								4'b 1001: X = 4'b 1000; //Go to State I
								4'b 1010: X = 4'b 1001; //Go to State J
								4'b 1011: X = 4'b 1010; //Go to State K
								4'b 1100: X = 4'b 1011; //Go to State L
								4'b 1101: X = 4'b 1100; //Go to State M
								4'b 1110: X = 4'b 1101; //Go to State N
								4'b 1111: X = 4'b 1110; //Go to State O
							endcase
						end
						
						default: X = y;
				endcase
			end
		else if (acl_en == 1)
			begin
				
				case (w)
					
					2'b 10:
						begin
							
							case(y)
							
								4'b 0000: X = 4'b 0000; //Go to State A
								4'b 0001: X = 4'b 0000; //Go to State A
								4'b 0010: X = 4'b 0001; //Go to State B
								4'b 0011: X = 4'b 0010; //Go to State C
								4'b 0100: X = 4'b 0011; //Go to State D
								4'b 0101: X = 4'b 0100; //Go to State E
								4'b 0110: X = 4'b 0101; //Go to State F
								4'b 0111: X = 4'b 0110; //Go to State G
								4'b 1000: X = 4'b 0111; //Go to State H
								4'b 1001: X = 4'b 1000; //Go to State I
								4'b 1010: X = 4'b 1001; //Go to State J
								4'b 1011: X = 4'b 1010; //Go to State K
								4'b 1100: X = 4'b 1011; //Go to State L
								4'b 1101: X = 4'b 1100; //Go to State M
								4'b 1110: X = 4'b 1101; //Go to State N
								4'b 1111: X = 4'b 1110; //Go to State O
							endcase
						end
						
						default: X = y;
				endcase
			end
		else
			begin
				
				X = y;
			end
	end
endmodule