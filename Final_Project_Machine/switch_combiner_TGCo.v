module switch_combiner_TGCo(sw0, sw1, sw2, sw3, SW_Combo);

	input sw0, sw1, sw2, sw3;
	output [3:0] SW_Combo;
	
	assign SW_Combo[3] = sw3;
	assign SW_Combo[2] = sw2;
	assign SW_Combo[1] = sw1;
	assign SW_Combo[0] = sw0;
endmodule