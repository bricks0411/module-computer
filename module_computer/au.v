module au(au_en, ac, a, b, t, gf);
	input wire au_en;
	input wire [3:0] ac;
	input wire [7:0] a;
	input wire [7:0] b;
	output reg [7:0] t;
	output reg gf;
always @ (*)
begin
	t=8'b0000_0000;
	gf=1'b0;
	if(au_en == 1'b0)
		begin
			t = 8'hZZ;
		end
	else
		begin
		case(ac)
			4'b1000: begin
				t = a + b;
			end
			4'b1001: begin
				t = b - a;
				if (b[7] == 0 && a[7] == 1)
					begin
						gf = 1'b1;
					end
				else if (b[7] == 1 && a[7] == 0)
					begin
						gf = 1'b0;
					end
				else if (b > a)
					gf = 1'b1;
				else
					gf = 1'b0;
			end
			4'b0100, 4'b0101, 4'b1101: begin
				t = a;
			end
			default: begin
				t = 8'hZZ;
			end
		endcase
		end
end
endmodule