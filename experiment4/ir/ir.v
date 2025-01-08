module ir(clk, ld_ir, a, x);
	input clk, ld_ir;
	input [7:0] a;
	output reg [7:0] x=8'b0000_0000;
always @ (negedge clk)
begin
	if(ld_ir==1'b1)
	begin
		x=a;
	end
end
endmodule