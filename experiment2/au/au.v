module au(au_en, ac, a, b, t, gf);
	input wire au_en;
	input wire [3:0] ac;
	input wire [7:0] a;
	input wire [7:0] b;
	output reg [7:0] t;
	output reg gf;
always @ (au_en, ac, a, b)
begin
	gf=1'b0;
	t=8'b0000_0000;
	if(au_en==1'b1)
	begin 
		if(ac==4'b1000)
			begin t=a+b; end
		else if(ac==4'b1001)
			begin 
				t=b+(~a)+8'b0000_0001;
				if(t[7]==0)
					begin gf=1; end
				else if(t[7]==1)
					begin gf=1; end
			end
		else if(ac==4'b0100 || ac==4'b0101 || ac==4'b1101)
			begin t=a; end
		else
			begin t=8'hZZ; end
	end
	else
		begin t=8'hZZ; end
end
endmodule