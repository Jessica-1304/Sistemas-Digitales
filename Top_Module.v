module Top_module(
	input iA,
	input iB,
	inout iC,
	output oSalida

);

wire wSalidaAndEntradaOr;

moduloAnd miModulo(
	.iA(iA),
	.B(iB),
	.iClk(iClk),
	.oSalida(wSalidaAndEntradaOr)
	);

moduloOr Ormodulo(
	.iA(iC),
	.iB(wSalidaAndEntradaOr),
	.oSalida(oSalida)
	);
	
endmodule 
	