module pc(ld_pc, in_pc, clk, a, c);
	input ld_pc, in_pc, clk;
	input [7:0] a;
	output reg [7:0] c=8'b0000_0000;
always @ (negedge clk)
begin
	if(in_pc==1'b1 && ld_pc==1'b0)
	begin
		c=c+8'b0000_0001;
	end
	else if(in_pc==1'b0 && ld_pc==1'b1)
	begin
		c=a;
	end
end
endmodule