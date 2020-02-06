module Control_Mux_IRL_4bRL_TLCF_C(mode, dual_switches, irl_reg_select, clock, IRL_Selection, IRL_Clock, RL_Selection, RL_Load_En, RL_Clock, TLCF_En, TLCF_Select, TLCF_Clock);
	
	input mode, clock;
	input [3:0]dual_switches, irl_reg_select;
	output IRL_Clock, RL_Clock, RL_Load_En, TLCF_En, TLCF_Clock;
	output [3:0] IRL_Selection, RL_Selection, TLCF_Select;
	
	reg IRL_Clock, RL_Clock, RL_Load_En, TLCF_En, TLCF_Clock;
	reg [3:0] IRL_Selection, RL_Selection, TLCF_Select;
	
	always@(mode or dual_switches or clock or irl_reg_select)
	begin
	
		if (mode == 0) 
			begin
				
				IRL_Selection = dual_switches;
				IRL_Clock = clock;
				RL_Load_En = 1'b 1;
				RL_Selection = irl_reg_select;
				RL_Clock = clock;
				TLCF_En = 1'b 0;
				TLCF_Select = 4'b 0000;
				TLCF_Clock = 1'b 0;
				
			end
		else
			begin
				
				IRL_Selection = 4'b 0000;
				IRL_Clock = 1'b 0;
				RL_Load_En = 1'b 0;
				RL_Selection = dual_switches;
				RL_Clock = 1'b 0;
				TLCF_En = 1'b 1;
				TLCF_Select = dual_switches;
				TLCF_Clock = clock;
				
			end
	end
endmodule