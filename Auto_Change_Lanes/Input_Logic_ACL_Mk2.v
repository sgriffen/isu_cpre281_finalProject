module Input_Logic_ACL_Mk2 (count, lane0_has1, lane1_has1, lane2_has1, lane3_has1, cur_state, Next_State, Count_Clear);
	
	input count, lane0_has1, lane1_has1, lane2_has1, lane3_has1;
	input [1:0]cur_state;
	output Count_Clear;
	output [1:0]Next_State;
	
	reg Count_Clear;
	reg [1:0]Next_State;
	
	always @(count or lane0_has1 or lane1_has1 or lane2_has1 or lane3_has1 or cur_state)
	begin
		
		if (count == 1)
			begin
				
				case(cur_state)
					
					2'b 00:
						begin
							
							if (lane1_has1 == 1)
								begin
									
									Next_State = 2'b 01;
								end
							else if (lane2_has1 == 1)
								begin
									
									Next_State = 2'b 10;
								end
							else if (lane3_has1 == 1)
								begin
									
									Next_State = 2'b 11;
								end
							else
								begin
									
									Next_State = cur_state;
								end
						end
						
					2'b 01:
						begin
							
							if (lane2_has1 == 1)
								begin
									
									Next_State = 2'b 10;
								end
							else if (lane3_has1 == 1)
								begin
									
									Next_State = 2'b 11;
								end
							else if (lane0_has1 == 1)
								begin
									
									Next_State = 2'b 00;
								end
							else
								begin
									
									Next_State = cur_state;
								end
						end
						
					2'b 10:
						begin
							
							if (lane3_has1 == 1)
								begin
									
									Next_State = 2'b 11;
								end
							else if (lane0_has1 == 1)
								begin
									
									Next_State = 2'b 00;
								end
							else if (lane1_has1 == 1)
								begin
									
									Next_State = 2'b 01;
								end
							else
								begin
									
									Next_State = cur_state;
									Count_Clear = 1;
								end
						end
						
					2'b 11:
						begin
							
							if (lane0_has1 == 1)
								begin
									
									Next_State = 2'b 00;
								end
							else if (lane1_has1 == 1)
								begin
									
									Next_State = 2'b 01;
								end
							else if (lane2_has1 == 1)
								begin
									
									Next_State = 2'b 10;
								end
							else
								begin
									
									Next_State = cur_state;
									Count_Clear = 1;
								end
						end
				endcase
			end
		//If counter reaches 0 before 5 clock cycles
		else
			begin
				
				case(cur_state)
					
					2'b 00:
						begin
							
							if (lane0_has1 == 0)
								begin
									
									if (lane1_has1 == 1)
										begin
									
											Next_State = 2'b 01;
											Count_Clear = 0;
										end
									else if (lane2_has1 == 1)
										begin
									
											Next_State = 2'b 10;
											Count_Clear = 0;
										end
									else if (lane3_has1 == 1)
										begin
									
											Next_State = 2'b 11;
											Count_Clear = 0;
										end
									else
										begin
									
											Next_State = cur_state;
											Count_Clear = 1;
										end
								end
							else
								begin
									
									Next_State = cur_state;
									Count_Clear = 1;
								end
						end
						
					2'b 01:
						begin
							
							if (lane1_has1 == 0)
								begin
									
									if (lane2_has1 == 1)
										begin
									
											Next_State = 2'b 10;
											Count_Clear = 0;
										end
									else if (lane3_has1 == 1)
										begin
									
											Next_State = 2'b 11;
											Count_Clear = 0;
										end
									else if (lane0_has1 == 1)
										begin
									
											Next_State = 2'b 00;
											Count_Clear = 0;
										end
									else
										begin
									
											Next_State = cur_state;
											Count_Clear = 1;
										end
								end
							else
								begin
									
									Next_State = cur_state;
									Count_Clear = 1;
								end
						end
						
					2'b 10:
						begin
							
							if (lane2_has1 == 0)
								begin
									
									if (lane3_has1 == 1)
										begin
									
											Next_State = 2'b 11;
											Count_Clear = 0;
										end
									else if (lane0_has1 == 1)
										begin
									
											Next_State = 2'b 00;
											Count_Clear = 0;
										end
									else if (lane1_has1 == 1)
										begin
									
											Next_State = 2'b 01;
											Count_Clear = 0;
										end
									else
										begin
									
											Next_State = cur_state;
											Count_Clear = 0;
										end
								end
							else
								begin
									
									Next_State = cur_state;
									Count_Clear = 1;
								end
						end
						
					2'b 11:
						begin
							
							if (lane3_has1 == 0)
								begin
									
									if (lane0_has1 == 1)
										begin
									
											Next_State = 2'b 00;
											Count_Clear = 0;
										end
									else if (lane1_has1 == 1)
										begin
									
											Next_State = 2'b 01;
											Count_Clear = 0;
										end
									else if (lane2_has1 == 1)
										begin
									
											Next_State = 2'b 10;
											Count_Clear = 0;
										end
									else
										begin
									
											Next_State = cur_state;
											Count_Clear = 0;
										end
								end
							else
								begin
									
									Next_State = cur_state;
									Count_Clear = 1;
								end
						end
				endcase
			end
	end
endmodule