module Output_Logic_IRL (y, Loaded, Select);

	input [2:0]y;
	output Loaded;
	output [3:0]Select;
	
	reg Loaded;
	reg [3:0]Select;
	
	always @(y)
	begin
		case(y)
			
			3'b 000:
				begin
					
					Loaded = 0;
					Select = 4'b 0001;
				end
			3'b 001:
				begin
					
					Loaded = 0;
					Select = 4'b 0010;
				end
			3'b 010:
				begin
					
					Loaded = 0;
					Select = 4'b 0100;
				end
			3'b 011:
				begin
					
					Loaded = 0;
					Select = 4'b 1000;
				end
			3'b 100:
				begin
					
					Loaded = 1;
					Select = 4'b 0000;
				end
			3'b 101:
				begin
					
					Loaded = 1;
					Select = 4'b 0000;
				end
			3'b 110:
				begin
					
					Loaded = 1;
					Select = 4'b 0000;
				end
			3'b 111:
				begin
					
					Loaded = 1;
					Select = 4'b 0000;
				end
		endcase
	end
endmodule