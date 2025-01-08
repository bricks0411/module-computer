module reg_group(we, clk, sr, dr, i, s, d);
	input we, clk;
	input [1:0] sr, dr;
	input [7:0] i;
	output reg [7:0] s, d;
	reg [7:0] r0=8'b0000_0001, r1=8'b0000_0000, r2=8'b0000_0000, r3=8'b0000_0111;
always @ (*)
begin
	if(sr==2'b00)
		s=r0;
	else if(sr==2'b10)
		s=r2;
	else if(sr==2'b01)
		s=r1;
	else 
		s=r3;
	
	if(dr==2'b00)
		d=r0;
	else if(dr==2'b10)
		d=r2;
	else if(dr==2'b01)
		d=r1;
	else
		d=r3;
end
always @ (negedge clk)
begin
	if(we==1'b1)
	begin
		if(dr==2'b00)
			r0=i;
		else if(dr==2'b10)
			r2=i;
		else if(dr==2'b01)
			r1=i;
		else
			r3=i;	
	end
end
endmodule