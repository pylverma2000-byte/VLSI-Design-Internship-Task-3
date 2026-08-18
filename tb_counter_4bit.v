module tb_counter_4bit( );
reg clk, reset;
wire [3:0]q;
counter_4bit dut(
.clk(clk),
.reset(reset),
.q(q) );
initial begin
 clk = 0;
 forever #5 clk = ~clk;
end
initial begin
 reset = 1; #10;
 reset = 0; #10;
 reset = 1; #10;
 $monitor ( "clk:%b,reset:%b,q:%b",clk,q,reset);
 $finish; #10;
end
endmodule
