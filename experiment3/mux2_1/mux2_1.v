module mux2_1(a, b, s, y);
	
	input wire [7:0] a;
	input wire [7:0] b;
	input s;
	output reg [7:0] y;

always @ (a, b, s)
begin
	if(s==1'b0)
		begin y=a; end
	else
		begin y=b; end
end

endmodule