module adder_8b(CO, S, CI, A, B, clk, rst);

	input [7:0] A, B;
	input CI, clk, rst;
	output CO;
	output [7:0] S;

	wire [7:0] tempCO, tempCI;
	wire qBar;
	
	adder Fadder0 (.CO(tempCO[0]), .S(S[0]), .CI(CI), .A(A[0]), .B(B[0]));
	DFlipFlop dff0 (.q(tempCI[1]), .qBar(qBar), .D(tempCO[0]), .clk, .rst);
	
	adder Fadder1 (.CO(tempCO[1]), .S(S[1]), .CI(tempCI[1]), .A(A[1]), .B(B[1]));
	DFlipFlop dff1 (.q(tempCI[2]), .qBar(qBar), .D(tempCO[1]), .clk, .rst);
	
	adder Fadder2 (.CO(tempCO[2]), .S(S[2]), .CI(tempCI[2]), .A(A[2]), .B(B[2]));
	DFlipFlop dff2 (.q(tempCI[3]), .qBar(qBar), .D(tempCO[2]), .clk, .rst);
	
	adder Fadder3 (.CO(tempCO[3]), .S(S[3]), .CI(tempCI[3]), .A(A[3]), .B(B[3]));
	DFlipFlop dff3 (.q(tempCI[4]), .qBar(qBar), .D(tempCO[3]), .clk, .rst);
	
	adder Fadder4 (.CO(tempCO[4]), .S(S[4]), .CI(tempCI[4]), .A(A[4]), .B(B[4]));
	DFlipFlop dff4 (.q(tempCI[5]), .qBar(qBar), .D(tempCO[4]), .clk, .rst);
	
	adder Fadder5 (.CO(tempCO[5]), .S(S[5]), .CI(tempCI[5]), .A(A[5]), .B(B[5]));
	DFlipFlop dff5 (.q(tempCI[6]), .qBar(qBar), .D(tempCO[5]), .clk, .rst);
	
	adder Fadder6 (.CO(tempCO[6]), .S(S[6]), .CI(tempCI[6]), .A(A[6]), .B(B[6]));
	DFlipFlop dff6 (.q(tempCI[7]), .qBar(qBar), .D(tempCO[6]), .clk, .rst);
	
	adder Fadder7 (.CO(tempCO[7]), .S(S[7]), .CI(tempCI[7]), .A(A[7]), .B(B[7]));
	DFlipFlop dff7 (.q(CO), .qBar(qBar), .D(tempCO[7]), .clk, .rst);
	
endmodule

module adder_8b_testbench;
	reg [7:0] A, B;
	reg CI, clk, rst;
	wire [7:0] S;
	wire CO;
	
	adder_8b dut (.CO, .S, .CI, .A, .B, .clk, .rst);
	
	parameter ClockDelay = 100;
	
	initial clk = 0;
	always begin
		#(ClockDelay/10);
		clk = ~clk;
	end
	
	initial begin
		A = 1; B = 1; CI = 0; rst = 1; #(2*ClockDelay);
		A = 10; B = 15; CI = 0; #(2*ClockDelay);
		A = 20; B = ~(15); CI = 1; #(2*ClockDelay);	// using a sub unit
		A = 35; B = ~(25); CI = 1; #(2*ClockDelay);	// using a sub unit
		A = 15; B = ~(15); CI = 1; #(2*ClockDelay);	// using a sub unit
		A = 5; B = ~(15); CI = 1; #(2*ClockDelay);	// using a sub unit
		A = 8; B = 9; CI = 0; #(2*ClockDelay);
	end
endmodule