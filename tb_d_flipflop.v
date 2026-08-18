module tb_d_flipflop();
reg d, clk;
wire q;
d_flipflop dut(
.d(d),
.clk(clk),
.q(q) );
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
d=0;#5;
d=1;#5;
d=0;#5;
$finish; #10
end
endmodule
