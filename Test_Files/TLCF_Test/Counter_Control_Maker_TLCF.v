module Counter_Control_Maker_TLCF(counter_control, select, acl_select, Result);

	input counter_control, select, acl_select;
	output [1:0] Result;
	
	reg [1:0] Result;
	
	always @ (counter_control or select)
	begin
		
		if (counter_control == 1)
			begin
				
				if (acl_select == 1)
					begin
					
						Result[1] = 1;
						Result[0] = select;
					end
				else
					begin
						
						Result[1] = 0;
						Result[0] = select;
					end
			end
		else
			begin
				
				Result[1] = 0;
				Result[0] = select;
			end
	end
endmodule