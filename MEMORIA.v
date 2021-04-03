module MEMORIA(
input iClk,
output [7:0] ovalor

);


//Comando $readmemh sirve para alamcenar datos de un archivo y guardarlo en una variable.
	reg ex1_memory [7:0];//Arreglo, la variable ex1_memory es de 8 bits y hay 4 variables de 8 bits.
	
	reg [7:0] rMemory_D;
	reg [7:0] rMemory_Q;
	
	//Contador en este caso es para que en vez de que se saque la info, sean variables que cambien con el tiempo
	reg [3:0] rCounter_D = 2'd0;
	reg [3:0] rCounter_Q = 2'd0;
	
	assign ovalor = rMemory_Q;
	
	initial //Para que se ejecute solo una vez
	begin
		$readmemh("ex1.mem.txt",ex1_memory);
	end
	
	always @(posedge iClk)
	begin
		rMemory_Q <= rMemory_D;
		rCounter_Q <= rCounter_D;
	end
	
	always @* //Bloque Combinacional
	begin
	   rMemory_D = ex1_memory[rCounter_Q];
		rCounter_D = rCounter_Q + 2'd1;
	end
	
endmodule 