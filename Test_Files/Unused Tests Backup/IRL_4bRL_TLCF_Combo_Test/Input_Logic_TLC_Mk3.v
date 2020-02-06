module Input_Logic_TLC_Mk3 (en, w, y, X);
	
	input en;
	input [1:0]w;
	input [3:0]y;
	output [3:0]X;
	
	reg [3:0]X;
	
	always @(en or w or y)
	begin
		case({en, w, y})
			
			//Count up (Add car)
			7'b 1010000: X = 4'b 0001; //Go to State B
			7'b 1010001: X = 4'b 0010; //Go to State C
			7'b 1010010: X = 4'b 0011; //Go to State D
			7'b 1010011: X = 4'b 0100; //Go to State E
			7'b 1010100: X = 4'b 0101; //Go to State F
			7'b 1010101: X = 4'b 0110; //Go to State G
			7'b 1010110: X = 4'b 0111; //Go to State H
			7'b 1010111: X = 4'b 1000; //Go to State I
			7'b 1011000: X = 4'b 1001; //Go to State J
			7'b 1011001: X = 4'b 1010; //Go to State K
			7'b 1011010: X = 4'b 1011; //Go to State L
			7'b 1011011: X = 4'b 1100; //Go to State M
			7'b 1011100: X = 4'b 1101; //Go to State N
			7'b 1011101: X = 4'b 1110; //Go to State O
			7'b 1011110: X = 4'b 1111; //Go to State P
			7'b 1011111: X = 4'b 1111; //Go to State P
			
			//Count down (Green light)
			7'b 1100000: X = 4'b 0000; //Go to State A
			7'b 1100001: X = 4'b 0000; //Go to State A
			7'b 1100010: X = 4'b 0001; //Go to State B
			7'b 1100011: X = 4'b 0010; //Go to State C
			7'b 1100100: X = 4'b 0011; //Go to State D
			7'b 1100101: X = 4'b 0100; //Go to State E
			7'b 1100110: X = 4'b 0101; //Go to State F
			7'b 1100111: X = 4'b 0110; //Go to State G
			7'b 1101000: X = 4'b 0111; //Go to State H
			7'b 1101001: X = 4'b 1000; //Go to State I
			7'b 1101010: X = 4'b 1001; //Go to State J
			7'b 1101011: X = 4'b 1010; //Go to State K
			7'b 1101100: X = 4'b 1011; //Go to State L
			7'b 1101101: X = 4'b 1100; //Go to State M
			7'b 1101110: X = 4'b 1101; //Go to State N
			7'b 1101111: X = 4'b 1110; //Go to State O
			
			default: X = y;
			
		endcase
	end
endmodule