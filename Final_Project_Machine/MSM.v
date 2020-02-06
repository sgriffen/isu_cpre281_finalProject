module MSM(tgc_out, control_switches, clock, control_button, irl_load, irl_selected, TLCF_Select, TLCF_Control, TLCF_Enable, TLCF_Clock, 
				RF_Enable, RF_Select, RF_Clock, RF_In, ACL_Clock, IRL_Clock, IRL_Select, IRL_Capacity);
	
	input clock, control_button;
	input [1:0]tgc_out;
	input [3:0] control_switches, irl_load, irl_selected;
	output TLCF_Clock, TLCF_Enable, TLCF_Control, ACL_Clock, RF_Enable, RF_Clock, IRL_Clock, IRL_Select;
	output [3:0]TLCF_Select, RF_Select, RF_In, IRL_Capacity;
	
	reg TLCF_Clock, TLCF_Enable, TLCF_Control, ACL_Clock, RF_Enable, RF_Clock, IRL_Clock, IRL_Select;
	reg [3:0]TLCF_Select, RF_Select, RF_In, IRL_Capacity;
	
	always@ (tgc_out or control_switches or clock or control_button or irl_load or irl_selected)
	begin
	
		case(tgc_out)
			
			//Initial load capacity to register file
			2'b 00:
				begin
					
					IRL_Capacity = control_switches;
					IRL_Select = control_button;
					IRL_Clock = clock;
					TLCF_Clock = 0;
					TLCF_Control = 0;
					TLCF_Select = 4'b 0000;
					TLCF_Enable = 0;
					RF_Enable = 1;
					RF_Clock = clock;
					RF_Select = irl_selected;
					RF_In = irl_load;
					ACL_Clock = 0;
				end
			//Mode A (All lanes have red light)
			2'b 01:
				begin
					
					IRL_Capacity = 4'b 0000;
					IRL_Select = 0;
					IRL_Clock = 0;
					TLCF_Clock = clock;
					TLCF_Control = 0; //Add cars
					TLCF_Select = control_switches;
					TLCF_Enable = 1;
					RF_Enable = 0;
					RF_Clock = 0;
					RF_Select = control_switches;
					RF_In = 4'b 0000;
					ACL_Clock = 0;
				end
			//Mode B (1 lane has green light)
			2'b 10:
				begin
					
					IRL_Capacity = 4'b 0000;
					IRL_Select = 0;
					IRL_Clock = 0;
					TLCF_Clock = clock;
					TLCF_Control = 1; //Green light
					TLCF_Select = control_switches;
					TLCF_Enable = 1;
					RF_Enable = 0;
					RF_Clock = 0;
					RF_Select = control_switches;
					RF_In = 4'b 0000;
					ACL_Clock = clock;
				end
		endcase
	end
endmodule
				