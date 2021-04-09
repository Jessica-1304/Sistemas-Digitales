module CONVERTIDOR_BCD(
	input iA,
	input iB,
	input iC,
	input iD,
	output oSegA,
	output oSegB
	
);
 // Asiganción continua
	assign oSegA =  rOperacion & (iA | ~iB | iC | iD ) & (iA | ~iB | ~iC | iD);
	assign oSegB = rOperacion;
	
 // Cables y registros
 reg  rOperacion;
 
 // Bloque combinacional 
 always @ * 
 begin 
 
	 rOperacion = (iA | iB |iC | ~iD);
	
 end
 
 
 endmodule