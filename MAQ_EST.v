module MAq_EST(
	input iClk,
	input iRestart,
	input iPause,
	output [1:0]oValorEstado


);
	reg [1:0]rValorEstado_D;
	reg [1:0]rValorEstado_Q;
	
	reg [1:0] rEstado_D;
	reg [1:0] rEstado_Q;

 assign oValorEstado = rValorEstado_Q;

	always @(posedge iClk)
	begin 
			rValorEstado_Q <= rValorEstado_D;
			rEstado_Q <= rEstado_D;
		end
		
		always @ *
		begin
		  case(rEstado_Q)
		  2'd0: //First
		  begin
				if(!iRestart && !iPause)
				begin
				     rEstado_D = 2'd1;
					end
					rValorEstado_D = 2'd0;
		  end
		  2'd1: //second
		  begin
					if(!iRestart && !iPause)
					begin
							rEstado_D = 2'd2;
					end
					else if (iRestart)
					begin
							rEstado_D=2'd0;
					
					end
					else 
					begin 
					rEstado_D = rEstado_Q;
					end
					rValorEstado_D = 2'd1;
		  end
		  2'd2: //third
		  begin
				if(!iPause)
				begin 
					rEstado_D =2'd0;
					end
				 else
				 begin 
						rEstado_D =rEstado_Q;
				 end
				 rEstado_D = 2'd2;
				end
				default:
				begin
				rEstado_D = 2'd0;
				rValorEstado_D = 2'd0;
				end
endmodule 