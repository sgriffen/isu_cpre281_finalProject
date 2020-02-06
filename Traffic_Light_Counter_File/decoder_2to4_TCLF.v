module decoder_2to4_TCLF(en, sel, Selected);

	input en;
	input [1:0] sel;
	output [3:0] Selected;
	
	assign Selected[3] = en & (sel[1] & sel[0]);
	assign Selected[2] = en & (sel[1] & ~sel[0]);
	assign Selected[1] = en & (~sel[1] & sel[0]);
	assign Selected[0] = en & (~sel[1] & ~sel[0]);
	
endmodule