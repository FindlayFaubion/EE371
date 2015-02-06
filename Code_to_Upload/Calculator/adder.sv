module adder(CO, S, CI, A, B);

	input CI, A, B;
	output CO, S;
	
	add_1b add0(.S, .CO, .CI, .A, .B);
	
endmodule