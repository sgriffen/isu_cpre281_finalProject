module Capacity_Check_TCL_Mk3(cap_max, cap_curr, cap_des, Next_State);

	input [3:0]cap_max, cap_curr, cap_des;
	output [3:0]Next_State;
	
	reg [3:0]Next_State;
	
	always @(cap_max or cap_curr or cap_des)
	begin
	
		if (cap_des <= cap_max)
			begin
			
				Next_State = cap_des;
			end
		else
			begin
				
				Next_State = cap_curr;
			end
	end
endmodule