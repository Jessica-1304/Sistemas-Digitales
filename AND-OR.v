module CompuertaAnd_Or(
	input [2:0] iA,
	input iClk,
	output oSalida

);

wire wSalidaAndEntradaOr;


//nombre del module       Etiqueta 
CompuertaAnd            Micompuerta1(
	.iA      ({iA[1],iA[0]}),
	.iClk    (iClk),
	.oSalida (wSalidaAndEntradaOr)

);
CompuertaOr              LaCompuertaOr(
	.iA         ({wSalidaAndEntradaOr,iA[2]}),
	.iClk       (iClk),
	.oSalida    (oSalida),
);
endmodule
