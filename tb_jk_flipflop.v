module tb_jk_flipflop();
reg J, K, clk, reset;
wire Q;
jk_flipflop dut (
.J(J),
.K(K),
.clk(clk),
.reset(reset),
.Q(Q) );
always #5 clk = ~clk;
initial begin
clk = 0;
reset = 1;
J = 0;
K = 0;
#10 reset = 0;
#10 J = 0; K = 0; // No change
#10 J = 0; K = 1; // Reset
#10 J = 1; K = 0; // Set
#10 J = 1; K = 1; // Toggle
#10 $finish;
end
endmodule
