module HalfAdder(a, b, sum, carryOut);
	input a, b;
	output sum, carryOut;
	
	assign sum = a^b;
	assign carryOut = a&b;
endmodule