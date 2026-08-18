module tb_register_4bit();
reg clk;
reg [3:0] d;
wire [3:0] q;
register_4bit dut (
 .clk(clk),
 .d(d),
 .q(q) );
initial begin
 clk = 0;
 forever #5 clk = ~clk;
end
initial begin
d = 4'b0000; #10;
d = 4'b1010; #10;
d = 4'b1100; #10;
d = 4'b1111; #10;
$monitor("Time=%0t | CLK=%b | D=%b | Q=%b",
 $time, clk, d, q);
$finish;
end
endmodule
