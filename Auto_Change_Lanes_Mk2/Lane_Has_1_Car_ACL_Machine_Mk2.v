module Lane_Has_1_Car_ACL_Machine_Mk2(lane0, lane1, lane2, lane3, Lane0_Has1, Lane1_Has1, Lane2_Has1, Lane3_Has1);

	input[3:0] lane0, lane1, lane2, lane3;
	output Lane0_Has1, Lane1_Has1, Lane2_Has1, Lane3_Has1;
	
	assign Lane0_Has1 = (lane0[3] || lane0[2] || lane0[1] || lane0[0]);
	assign Lane1_Has1 = (lane1[3] || lane1[2] || lane1[1] || lane1[0]);
	assign Lane2_Has1 = (lane2[3] || lane2[2] || lane2[1] || lane2[0]);
	assign Lane3_Has1 = (lane3[3] || lane3[2] || lane3[1] || lane3[0]);
	
endmodule