module CONTADOR (
   input iClk,
	output [3:0]oCuenta
);

reg [3:0]rCuenta_D = 4'd0;
reg [3:0]rCuenta_Q = 4'd0;

assign oCuenta = rCuenta_Q;

always @ (posedge iClk)
begin 
   rCuenta_Q <= rCuenta_D;
end 

always @ *
begin 
   if(rCuenta_Q == 4'd10)
	begin 
	   rCuenta_D = 4'd0;
	end 
	else 
	begin
	   rCuenta_D = rCuenta_Q + 1'd1;
	end 
end

endmodule
