module ParameterCounter(
	input iClk,
	input iRst,
	output [3:0] oSalida
);

	reg [3:0] rCuenta_D = 4'd0;
	reg [3:0] rCuenta_Q = 4'd0;
	
	assign oSalida = rCuenta_Q;
	
	always @(posedge iClk)
	begin
		if(iRst)
			begin
				rCuenta_Q <= 4'd0;
			end
		else
			begin
				rCuenta_Q <= rCuenta_D;
			end
	end
	
	always @*
		begin 
		rCuenta_D = rCuenta_Q + 4'd1;
		end
		endmodule 