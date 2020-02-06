module Counter_Control1_Maker_TLCF(counter_control, select, Result);

	input counter_control;
	input [3:0]select;
	output [1:0] Result;
	
	assign Result[1] = counter_control;
	assign Result[0] = select[1];
endmodule