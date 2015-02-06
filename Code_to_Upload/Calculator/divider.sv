//division using non-restoring model
module divider(Q, Dividend, Divisor, clk, remainder);
	
	input [3:0] Dividend, Divisor;
	input clk;
	output reg [3:0] Q, remainder;
	
	reg [3:0] tempQ;
	reg [7:0] dividendCopy, divisorCopy, diff;
	assign remainder = dividendCopy[3:0];
	
	reg [2:0] count;
	
	initial count = 0;
	wire start = !count;
	reg ready;
	initial ready = 1;
	
//	initial
//	begin
//		count = 4;	// possible issue
//				tempQ = 0;
//				dividendCopy = {4'd0, Dividend};
//				divisorCopy = {1'b0, Divisor, 3'd0};
//	end
	
	always @(posedge clk) begin: always_block
		if(start)
			begin
				count = 4;	// possible issue
				tempQ = 0;
				dividendCopy = {4'd0, Dividend};
				divisorCopy = {1'b0, Divisor, 3'd0};
			end
		else
		if(!start)
			begin
				diff = dividendCopy - divisorCopy;
				tempQ = Q << 1;
				
				if(!diff[7])
					begin
						dividendCopy = diff;
						tempQ[0] = 1'd1;
					end
					
				divisorCopy = divisorCopy >> 1;
				count = count - 1;
			end
		if(count == 0)
			disable always_block;
	end		
	assign Q = tempQ;
endmodule

module divider_testbench;
	wire [3:0] Q;
	reg [3:0] Dividend, Divisor;
	reg clk;
	
	divider dut (.Q, .Dividend, .Divisor, .clk);
	
	parameter ClockDelay = 150;
	
	initial clk = 1;
	always begin
		#(ClockDelay/30);
		clk = ~clk;
	end
	
	initial begin
		Dividend = 6; Divisor = 2; #(ClockDelay);
		Dividend = 6; Divisor = 3; #(ClockDelay);
		Dividend = 8; Divisor = 2; #(ClockDelay);
		Dividend = 8; Divisor = 8; #(ClockDelay);
		Dividend = 0; Divisor = 2; #(ClockDelay);
	end
endmodule