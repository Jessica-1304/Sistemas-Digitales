module FLIPFLOP_JK(
   input iJ,
	input iK,
	input iClk,
	output oQ,
	output oQn
);

reg rQ = 1'b0;

assign oQ = rQ;
assign oQn = ~rQ;

//bloque secuencial 
always @ (posedge iClk)
begin 
   if(iJ == 0 && iK == 0)
	begin
	   rQ = rQ;
	end 
	else if(iJ == 1 && iK == 0)
	begin
	   rQ = 1'b1;
	end 
	else if(iJ == 0 && iK == 1)
	begin
	   rQ = 1'b0;
	end
	else
	begin
	   rQ = ~rQ;
	end
end

endmodule
