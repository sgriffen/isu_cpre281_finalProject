module Logic_LR(x, W, In);

	input [3:0]x;
	output W;
	output [3:0]In;
	
	assign W = (x[3]) | (x[2]) | (x[1]) | (x[0]);
	
	assign In[3] = W & x[3];
	assign In[2] = W & x[2];
	assign In[1] = W & x[1];
	assign In[0] = W & x[0];
	
endmodule