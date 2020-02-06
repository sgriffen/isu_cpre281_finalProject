module load_count_mux(sel, IRL_reg_sel, IRL_reg_in, TCLF_reg_sel, TCLF_reg_in, Z);

	input sel;
	input [1:0]IRL_reg_sel;
	input [3:0]IRL_reg_in;
	input [1:0]TCLF_reg_sel;
	input [3:0]TCLF_reg_in;
	output[5:0] Z;
	
	reg [5:0] Z;
	
	always @(sel or IRL_reg_sel or IRL_reg_in or TCLF_reg_sel or TCLF_reg_in)
	begin
	
		case (sel)
		
			1'b 0: Z = {IRL_reg_in[3], IRL_reg_in[2], IRL_reg_in[1], IRL_reg_in[0], IRL_reg_sel[1], IRL_reg_sel[0]};
			1'b 1: Z = {TCLF_reg_in[3], TCLF_reg_in[2], TCLF_reg_in[1], TCLF_reg_in[0], TCLF_reg_sel[1], TCLF_reg_sel[0]};
			
		endcase
	end
endmodule