module mux3_1(a, b, c, s, y);
	
	input wire [7:0] a;
	input wire [7:0] b;
	input wire [7:0] c;
	input wire [1:0] s;
	
	output reg [7:0] y;
always @ (s, y)
begin
	if(s==2'b00)
		begin y=a; end
	else if(s==2'b01)
		begin y=b; end
	else if(s==2'b10)
		begin y=c; end
	else
		begin y=a; end
end
endmodule