module Priority_Encoder_TLCF (w, Z);

	input [3:0]w;
	output [2:0]Z;
	
	reg [2:0]Z;
	
	always @(w)
	begin
		
		if (w[3] == 1)
			begin
				
				Z = 3'b 100;
			end
		else if (w[2] == 1)
			begin
				
				Z = 3'b 011;
			end
		else if (w[1] == 1)
			begin
				
				Z = 3'b 010;
			end
		else if (w[0] == 1)
			begin
				
				Z = 3'b 001;
			end
		else
			begin
				
				Z = 3'b 000;
			end
	end
endmodule