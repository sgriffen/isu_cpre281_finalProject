module Counter_State_TLC_Mk3(state, load, next_state, Counter_Load);

	input state;
	input [3:0] load;
	input [3:0] next_state;
	output[3:0]Counter_Load;
	
	reg [3:0]Counter_Load;
	
	always @(state or load or next_state)
	begin
		
		case(state)
		
			1'b 0: Counter_Load = load;
			1'b 1: Counter_Load = next_state;
			
		endcase
	end
endmodule
	
	