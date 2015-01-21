module counter_testbench();
	reg clk, rst;
	wire[3:0] out;
	
	counter dut (.clk(clk), .rst(rst), .out(out));
	
	integer i;
	initial begin
		for(i=0;i<16;i=i+1) begin
			clk = i%2; #10;
		end
	end
			

endmodule