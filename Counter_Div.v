module Counter_Div(
	input iClk,
	input iCE,
	output [3:0]oCuenta
	);
	
	reg[3:0]rCount_D;
	reg[3:0]rCount_Q;
	
	assign oCuenta = rCount_Q;
	
	always @(posedge iClk)
	begin
		if(iCE)
			begin
				rCount_Q <= rCount_D;
			end
		else
			begin
				rCount_Q <= rCount_Q;
			end
		end
		
	always @*
		begin
			rCount_D = rCount_Q + 1'd1;
		end

endmodule
