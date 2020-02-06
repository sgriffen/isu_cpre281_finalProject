module Counter_Control_Maker_TLCF(counter_control, select, Result);

	input counter_control, select;
	output [1:0] Result;
	
	assign Result[1] = counter_control;
	assign Result[0] = select;
endmodule