module down_counter_testbench();
	reg clk, rst;
	wire[3:0] out;
	
	down_counter dut (.rst, .clk, .q(out));
	
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