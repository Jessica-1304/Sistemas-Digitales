always @*
begin 
	if(count_Q < 10)
	begin
	  prender_led
	end
	count_D = count_Q + 1;
end
