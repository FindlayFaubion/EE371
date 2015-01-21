module counter_ripple_4(
	clk,
	rst,
	out
);


input clk;
input rst;
output [3:0] out;

wire dq0, q0;
wire dq1, q1;
wire dq2, q2;
wire dq3, q3;

DFlipFlop	dff0(
	.D(dq0),
	.clk(clk),
	.rst(!rst),
	.q(q0),
	.qBar(dq0));


DFlipFlop	dff1(
	.D(dq1),
	.clk(q0),
	.rst(!rst),
	.q(q1),
	.qBar(dq1));


DFlipFlop	dff2(
	.D(dq2),
	.clk(q1),
	.rst(!rst),
	.q(q2),
	.qBar(dq2));


DFlipFlop	dff3(
	.D(dq3),
	.clk(q2),
	.rst(!rst),
	.q(q3),
	.qBar(dq3));

assign	out[0] = dq0;
assign	out[1] = dq1;
assign	out[2] = dq2;
assign	out[3] = dq3;

endmodule


module counter_testbench();
	reg clk, rst;
	wire[3:0] out;
	
	counter_ripple_4 dut (.clk(clk), .rst(rst), .out(out));
	
	integer i;
	initial begin
		clk = 0;
		rst = 0;
		#5 rst = 1;
		#10 rst = 0;
		
	end
	
	always begin 
		#5 clk = ~clk;
	end
			

endmodule
