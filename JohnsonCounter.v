module JohnsonCounter #(parameter N = 4)(
	input iClk,
	output [N-1:0] oSalida
	);
	
	reg [N-1:0]rSalida_D = 1'd0;
	reg [N-1:0]rSalida_Q = 1'd0;
	
	assign oSalida = rSalida_Q;
	
	always @(posedge iClk)
	begin
		rSalida_Q <= rSalida_D;
	end
	
	always @*
		begin
			rSalida_D = {~rSalida_Q[0],rSalida_Q[N-1:1]};
		end
	endmodule 