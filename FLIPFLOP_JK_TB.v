module FlipFlopJK_tb ();

    reg iJ;
	 reg iK;
	 reg iClk = 1'b0;
	 wire oQ;
	 wire oQn;
	 
	 FlipFlopJK uut (
	     .iJ    (iJ),
		  .iK    (iK),
		  .iClk  (iClk),
		  .oQ    (oQ),
		  .oQn   (oQn)
	);
	
	initial
	begin 
	     iJ = 0;
		  iK = 0;
		  #100;
		  iJ = 1;
		  iK = 0;
		  #100;
		  iJ = 0;
		  iK = 1;
		  #100;
		  iJ = 1;
		  iK = 1;
		  #100;
		  iJ = 1;
		  iK = 1;
		  #100;
		  iJ = 1;
		  iK = 1;
		  #100;
	end
	
	always 
	begin 
	   forever 
		begin
		   iClk = ~iClk;
			#50;
		end
	end 
	
	endmodule
	