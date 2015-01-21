module johnson_counter(rst, clk, q);
	input rst, clk;
	output[3:0] q;
	reg [3:0] q;
	
	always @(negedge rst or posedge clk)
	if(!rst)
		q <= 0;
	else
		q <= {{q[2:0]}, {~q[3]}};
endmodule

module johnson_counter_testbench();
	reg clk, rst;
	wire[3:0] out;
	
	johnson_counter dut (.rst, .clk, .q(out));
	
	initial begin
	clk = 0;
	rst = 0;
	
	#6 rst = 1;
	end
	always #2 clk = ~clk;
	
	initial #128  $stop;
	
//	integer i;
//	initial begin
//		clk = 0;
//		rst = 0;
//		for(i=0;i<64;i=i+1) begin
//			clk = i%2; #10;
//		end
//	end
			

endmodule