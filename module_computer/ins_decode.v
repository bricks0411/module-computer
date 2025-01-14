module ins_decode (en,ir,mova,movb,movc,movd,add,sub,jmp,jg,in1,out1,movi,halt);
    input en;
    input [3:0] ir;
    output mova,movb,movc,movd,add,sub,jmp,jg,in1,out1,movi,halt;
    
    reg [11:0] status;
    
always @ (en,ir)
begin
    if(en==0)
		begin status<=12'b0000_0000_0000; end
	else
		begin
        if(ir==4'b0100) 
			begin status<=12'b1000_0000_0000; end
        else if(ir==4'b0101)
			begin status<=12'b0100_0000_0000; end
        else if(ir==4'b0110)
			begin status<=12'b0010_0000_0000; end
        else if(ir==4'b0111)
			begin status<=12'b0001_0000_0000; end
        else if(ir==4'b1000)
			begin status<=12'b0000_1000_0000; end
        else if(ir==4'b1001)
			begin status<=12'b0000_0100_0000; end
        else if(ir==4'b1010)
			begin status<=12'b0000_0010_0000; end
        else if(ir==4'b1011)
			begin status<=12'b0000_0001_0000; end
        else if(ir==4'b1100)
			begin status<=12'b0000_0000_1000; end
        else if(ir==4'b1101)
			begin status<=12'b0000_0000_0100; end
        else if(ir==8'b1110)
			begin status<=12'b0000_0000_0010; end
        else if(ir==4'b1111)
			begin status<=12'b0000_0000_0001; end
        else 
			begin status<=12'b0000_0000_0000; end
		end
end
assign {mova,movb,movc,movd,add,sub,jmp,jg,in1,out1,movi,halt}=status;
endmodule