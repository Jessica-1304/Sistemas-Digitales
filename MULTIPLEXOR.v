module MULTIPLEXOR( //sincrono
	input [3:0] iData,
	input [1:0] iSelector,
	input       iClk,
	output 		oSalida
);

reg rSalida_D;
reg rSalida_Q;

assign oSalida = rSalida_Q;

always @ *
begin
	if (iSelector == 2'b00) 
	begin 
		rSalida_D = iData[0];
	end
	else if (iSelector == 2'b01) 
	begin 
		rSalida_D = iData[1];
	end
	else if (iSelector == 2'b10) 
	begin 
		rSalida_D = iData[2];
	end
	else
	begin 
		rSalida_D = iData[3];
	end
	
end
always @(posedge iClk)
begin

	rSalida_Q <= rSalida_D;

end


endmodule
