module Input_Logic_IRL (w, y, d, X);
	
	input d;
	input [1:0]w;
	input [2:0]y;
	output [2:0]X;
	
	reg [2:0]X;
	
	always @(w or y)
	begin
		
		case({d, w, y})
			
			//Load cases
			6'b 011000: X = 3'b 001; //A
			6'b 011001: X = 3'b 010; //B
			6'b 011010: X = 3'b 011; //C
			6'b 011011: X = 3'b 100; //D
			6'b 011100: X = 3'b 101; //E
			6'b 011101: X = 3'b 000;
			6'b 011110: X = 3'b 000;
			6'b 011111: X = 3'b 000;
			
			
			//Default cases
			6'b 000000: X = 3'b 000;
			6'b 000001: X = 3'b 001;
			6'b 000010: X = 3'b 010;
			6'b 000011: X = 3'b 011;
			6'b 000100: X = 3'b 100;
			6'b 000101: X = 3'b 000;
			6'b 000110: X = 3'b 000;
			6'b 000111: X = 3'b 000;
			
			6'b 001000: X = 3'b 000;
			6'b 001001: X = 3'b 001;
			6'b 001010: X = 3'b 010;
			6'b 001011: X = 3'b 011;
			6'b 001100: X = 3'b 100;
			6'b 001101: X = 3'b 000;
			6'b 001110: X = 3'b 000;
			6'b 001111: X = 3'b 000;
		
			6'b 010000: X = 3'b 000;
			6'b 010001: X = 3'b 001;
			6'b 010010: X = 3'b 010;
			6'b 010011: X = 3'b 011;
			6'b 010100: X = 3'b 100;
			6'b 010101: X = 3'b 000;
			6'b 010110: X = 3'b 000;
			6'b 010111: X = 3'b 000;
			
			6'b 100000: X = 3'b 000;
			6'b 100001: X = 3'b 001;
			6'b 100010: X = 3'b 010;
			6'b 100011: X = 3'b 011;
			6'b 100100: X = 3'b 100;
			6'b 100101: X = 3'b 000;
			6'b 100110: X = 3'b 000;
			6'b 100111: X = 3'b 000;
			
			6'b 101000: X = 3'b 000;
			6'b 101001: X = 3'b 001;
			6'b 101010: X = 3'b 010;
			6'b 101011: X = 3'b 011;
			6'b 101100: X = 3'b 100;
			6'b 101101: X = 3'b 000;
			6'b 101110: X = 3'b 000;
			6'b 101111: X = 3'b 000;
		
			6'b 110000: X = 3'b 100;
			6'b 110001: X = 3'b 101;
			6'b 110010: X = 3'b 110;
			6'b 110011: X = 3'b 111;
			6'b 110100: X = 3'b 100;
			6'b 110101: X = 3'b 100;
			6'b 110110: X = 3'b 100;
			6'b 110111: X = 3'b 100;
			6'b 110000: X = 3'b 100;
			6'b 110001: X = 3'b 101;
			6'b 110010: X = 3'b 110;
			6'b 110011: X = 3'b 111;
			6'b 110100: X = 3'b 100;
			6'b 110101: X = 3'b 100;
			6'b 110110: X = 3'b 100;
			6'b 110111: X = 3'b 100;
		
		endcase
	end
endmodule