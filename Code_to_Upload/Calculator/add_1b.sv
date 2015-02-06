module add_1b(S, CO, CI, A, B);
input  A;
input B;
input CI;
output S;
output CO;

wire x, y, z;

and and1 (x, A, B);
and and2 (y, B, CI);
and and3 (z, A, CI);

or or1(CO, x, y, z);
xor xor1 (S, A, B, CI);

endmodule

module add_1b_testbench;

	wire S, CO;
	reg A, B, CI;
	reg notB;
	
	not (notB, B);
	
	parameter ClockDelay = 100;
	
	add_1b dut (.S, .CO, .CI, .A, .B(B));
	
//	tests add	
	initial begin
		A = 0; B = 0; CI = 0; #(ClockDelay);
		A = 0; B = 0; CI = 1; #(ClockDelay);
		A = 0; B = 1; CI = 0; #(ClockDelay);
		A = 0; B = 1; CI = 1; #(ClockDelay);
		A = 1; B = 0; CI = 0; #(ClockDelay);
		A = 1; B = 0; CI = 1; #(ClockDelay);
		A = 1; B = 1; CI = 0; #(ClockDelay);
		A = 1; B = 1; CI = 1; #(ClockDelay);
	end

endmodule