module down_counter(rst, in_clk, out);

	input rst, in_clk;
	output [3:0] out;
	reg[3:0] q, qbar;
	wire clk;
	wire d_dff0, d_dff1, d_dff2, d_dff3, in_xor_dff1, in_xor_dff2, in_xor_dff3;
	
	clock_divide clock1(.in(in_clk), .clk(clk));
	//assign clk = in_clk;
	
	assign d_dff0 = rst ^ q[0];
	
	DFlipFlop dff0 (.q(q[0]), .qBar(qbar[0]), .D(d_dff0), .clk(clk), .rst(rst));	
	
	assign in_xor_dff1 = q[0] & rst;
	assign d_dff1 = in_xor_dff1 ^ q[1];
	
	DFlipFlop dff1 (.q(q[1]), .qBar(qbar[1]), .D(d_dff1), .clk(clk), .rst(rst));	
	
	assign in_xor_dff2 = q[0] & q[1] & rst;
	assign d_dff2 = in_xor_dff2 ^ q[2];
	
	DFlipFlop dff2 (.q(q[2]), .qBar(qbar[2]), .D(d_dff2), .clk(clk), .rst(rst));	
	
	assign in_xor_dff3 = q[1] & q[2] & q[0] & rst;
	assign d_dff3 = in_xor_dff3 ^ q[3];
	
	DFlipFlop dff3 (.q(q[3]), .qBar(qbar[3]), .D(d_dff3), .clk(clk), .rst(rst));
	
	//assign out = !q;
	
	assign out[0] = !q[0] & rst;
	assign out[1] = !q[1] & rst;
	assign out[2] = !q[2] & rst;
	assign out[3] = !q[3] & rst;
	
endmodule

module down_counter_testbench();
	reg in_clk, rst;
	wire[3:0] out;
	
	down_counter dut (.rst, .in_clk, .out(out));
	
	initial begin
	in_clk = 0;
	rst = 0;
	
	#10 rst = 1;
	end
	always #2 in_clk = ~in_clk;
	
	//initial #128  $stop;
	
//	integer i;
//	initial begin
//		clk = 0;
//		rst = 0;
//		for(i=0;i<64;i=i+1) begin
//			clk = i%2; #10;
//		end
//	end
			

endmodule


module clock_divide(in, clk);

input in;
reg in;
output clk;
reg clk;

reg [31:0] a;

initial a = 0;

always @ (posedge (in)) begin
if (a<100000000)
	a <= a +1;
else	
	a <= 0;
	
end 

always @ (a) begin
if (a<50000000)
	clk <= 0;
else
	clk <= 1;
end


endmodule 