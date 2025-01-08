module sm(clk, sm_en, sm);
	input clk, sm_en;
	output sm;
	reg status=1'b0;
	
always @ (negedge clk)
begin
	if(sm_en==1'b1)
	begin
		status<=~status;
	end
end
assign sm=status;
endmodule