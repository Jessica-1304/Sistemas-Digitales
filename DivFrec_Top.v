module DivFrec_Top (
 input iClk,
 output [3:0] oSalida
 );
 
 wire wDiv2Count;
 
 Divisor unHertz(
	.iClk(iClk),
	.oDiv(wDiv2Count)
	);
	
 Counter contador(
	.iClk(iClk),
	.iCE(wDiv2Count),
	.oCuenta(oSalida)
	);
	endmodule
	