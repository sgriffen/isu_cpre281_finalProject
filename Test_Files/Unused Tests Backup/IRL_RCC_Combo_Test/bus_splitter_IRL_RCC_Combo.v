module bus_splitter_IRL_RCC_Combo(x, REG_s, REG_i);

	input[5:0] x;
	output[1:0] REG_s;
	output[3:0] REG_i;
	
	assign REG_i[3] = x[5];
	assign REG_i[2] = x[4];
	assign REG_i[1] = x[3];
	assign REG_i[0] = x[2];
	assign REG_s[1] = x[1];
	assign REG_s[0] = x[0];
	
endmodule