module FLIPFLOPD (
input [2:0] A, 
input CLK,
output reg [1:0] out
);

always @(A)
begin
case (A)
3'b000: out = 2'b11;
3'b001: out = 2'b11;
3'b010: out = 2'b10;
3'b011: out = 2'b10;
3'b100: out = 2'b01;
3'b101: out = 2'b01;
3'b110:
@(posedge CLK) out = 2'b01;  
 3'b111:
@(posedge CLK) out = 2'b10;
endcase
end
endmodule
