module FullAdder(a, b, carryIn, sum, carryOut);
	input a, b, carryIn;
	output reg sum, carryOut;
	
	reg temp1, temp2, temp3, tempCarry;
	
	assign sum = a^b^carryIn;

	always @(a or b or carryIn)
	begin
		temp1 = a&b;
		temp2 = a&carryIn;
		temp3 = b&carryIn;
		carryOut = temp1|temp2|temp3;
	end
endmodule
