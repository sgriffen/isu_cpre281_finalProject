module seven_seg_decoder (x, Y);

	input [3:0]x;
	output [6:0]Y;
	
	reg [6:0]Y;
	
	always @(x)
	begin
		case (x)
		
		4'b 0000: Y = 7'b 0000001; // 0
		4'b 0001: Y = 7'b 1001111; // 1
		4'b 0010: Y = 7'b 0010010; // 2
		4'b 0011: Y = 7'b 0000110; // 3
		
		4'b 0100: Y = 7'b 1001100; // 4
		4'b 0101: Y = 7'b 0100100; // 5
		4'b 0110: Y = 7'b 0100000; // 6
		4'b 0111: Y = 7'b 0001111; // 7
		
		4'b 1000: Y = 7'b 0000000; // 8
		4'b 1001: Y = 7'b 0000100; // 9
		4'b 1010: Y = 7'b 0001000; // A
		4'b 1011: Y = 7'b 1100000; // B
		
		4'b 1100: Y = 7'b 0110001; // C
		4'b 1101: Y = 7'b 1000010; // D
		4'b 1110: Y = 7'b 0110000; // E
		4'b 1111: Y = 7'b 0111000; // F
		
		endcase
	end
endmodule