module multiplication(product, multiplier, multiplicand);
	input [3:0] multiplier, multiplicand;
	output reg [7:0] product;
	
	reg [3:0][3:0] temp;	//temporary partial products
	wire [11:0] sum, c_out;
	
	integer i, j;
	
	always @(multiplier, multiplicand)
	begin
	
		for(i=0; i<=3; i++)
			for(j=0; j<=3; j++)
				temp[i][j] <= multiplicand[j] & multiplier[i];
	end
	
	HalfAdder h11(.a(temp[1][0]), .b(temp[0][1]), .sum(sum[0]), .carryOut(c_out[0]));
	
	FullAdder f21(.a(temp[2][0]), .b(temp[1][1]), .carryIn(c_out[0]), .sum(sum[1]), .carryOut(c_out[1]));
	HalfAdder h21(.a(temp[0][2]), .b(sum[1]), .sum(sum[2]), .carryOut(c_out[2]));
	
	FullAdder f31(.a(temp[3][0]), .b(temp[2][1]), .carryIn(c_out[1]), .sum(sum[3]), .carryOut(c_out[3]));
	FullAdder f32(.a(temp[1][2]), .b(sum[3]), .carryIn(c_out[2]), .sum(sum[4]), .carryOut(c_out[4]));
	HalfAdder h31(.a(temp[0][3]), .b(sum[4]), .sum(sum[5]), .carryOut(c_out[5]));
	
	FullAdder f41(.a(temp[3][1]), .b(temp[2][2]), .carryIn(c_out[3]), .sum(sum[6]), .carryOut(c_out[6]));
	FullAdder f42(.a(temp[1][3]), .b(sum[6]), .carryIn(c_out[4]), .sum(sum[7]), .carryOut(c_out[7]));
	HalfAdder h41(.a(c_out[5]), .b(sum[7]), .sum(sum[8]), .carryOut(c_out[8]));
	
	FullAdder f51(.a(temp[3][2]), .b(temp[2][3]), .carryIn(c_out[6]), .sum(sum[9]), .carryOut(c_out[9]));
	FullAdder f52(.a(c_out[7]), .b(sum[9]), .carryIn(c_out[8]), .sum(sum[10]), .carryOut(c_out[10]));
	
	FullAdder f61(.a(temp[3][3]), .b(c_out[9]), .carryIn(c_out[10]), .sum(sum[11]), .carryOut(c_out[11]));
	
	always @(*)
		product <= {c_out[11],sum[11],sum[10],sum[8],sum[5],sum[2],sum[0],temp[0][0]};
endmodule

module multiplication_testbench;
	reg [3:0] multiplier, multiplicand;
	wire [7:0] product;
	
	multiplication dut (.product, .multiplier, .multiplicand);
	
	parameter ClockDelay = 100;
	
	initial begin
		multiplier = 2; multiplicand = 3; #(ClockDelay);
		multiplier = 12; multiplicand = 3; #(ClockDelay);
		multiplier = 4; multiplicand = 8; #(ClockDelay);
		multiplier = 5; multiplicand = 6; #(ClockDelay);
	end
endmodule