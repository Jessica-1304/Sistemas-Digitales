module MAQ_TOP();

reg rClk;
reg rRestart;
reg rPause;
wire [1:0] wValorEstado;


StatueMachine uut (
  .iClk (rClk),
  .iRestart(rRestart),
  .iPause (rPause),
  .oValorEstado (wValorEstado)
);

initial 
begin 

	rRestart = 1;
	rPause = 0;
	#20;
	rRestart = 0;
	rPause = 0;
	#100;
	rRestart = 0;
	rPause = 1;
	#50;
	end 
	always 
	begin
		forever 
		begin 
			rClk = ~rClk;
			#10;
			end
			
		end

endmodule
