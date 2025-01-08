module psw(clk, g, g_en, gf);
	input clk, g, g_en;
	output reg gf=1'b0;
always @ (negedge clk)
begin
	if(g_en==1'b1)
	begin
		gf=g;
	end
end
endmodule