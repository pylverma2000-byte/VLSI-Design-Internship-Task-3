module d_flipflop(
input d, clk,
output reg q);
always@(posedege clk)
begin
q <= d;
end
endmodule
