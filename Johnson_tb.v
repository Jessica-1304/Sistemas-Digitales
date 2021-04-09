module Johnsontb();

reg iClk = 1'b0;
wire[3:0]Johnson4;
wire[4:0]Johnson5;
wire[5:0]Johnson6;

wire[6:0]Johnson7;

Johnson uuttop (
	.iClk(iClk),
	.Johnson4(Johnson4),
	.Johnson5(Johnson5),
	.Johnson6(Johnson6)
	);
	
JohnsonCounter #(.N(7)) uutCont7
(
		.iClk(iClk),
		.oSalida(Johnson7)
);


initial
	begin
		iClk = 1;
		#15;
		iClk = 0;
		#10;
	end
	
always
	begin
	forever
		begin
			iClk = ~iClk;
			#50;
		end
	
	end
endmodule	