module Johnson(
	input iClk,
	output[3:0]Johnson4,
	output[3:0]Johnson5,
	output[3:0]Johnson6
);


	JohnsonCounter #(.N(4)) contador4
	(
		.iClk(iClk),
		.oSalida(Johnson4)
	);
	
	JohnsonCounter #(.N(5)) contador5
	(
		.iClk(iClk),
		.oSalida(Johnson5)
	);
	
	JohnsonCounter #(.N(6)) contador6
	(
		.iClk(iClk),
		.oSalida(Johnson6)
	);
	
	endmodule
	