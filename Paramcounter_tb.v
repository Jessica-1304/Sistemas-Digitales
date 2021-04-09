module Paramcounter_tb();
	reg iClk = 1'b0;
	reg iRst;
	wire [3:0]oSalida = 4'd0;
	
ParameterCounter #(.BITS(4)) uut(

	.iClk(iClk),
	.iRst(iRst),
	.oSalida(oSalida)
);

initial
	begin
		iRst = 0;
		#250;
		iRst = 1;
		#150;
		iRst = 0;
	end
	
always 
	begin
		forever
		begin
			iClk = ~iClk;
			#100;
		end
		end
	endmodule 