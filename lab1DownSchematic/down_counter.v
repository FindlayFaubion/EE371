// Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus II License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 14.0.0 Build 200 06/17/2014 SJ Full Version"
// CREATED		"Mon Jan 19 12:45:09 2015"

module down_counter(
	clk,
	rst,
	q
);


input 	clk;
input 	rst;
output 	[3:0] q;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;





jkff_a	b2v_inst(
	.j(rst),
	.clk(clk),
	.k(rst),
	.q(q[0]),
	.qbar(SYNTHESIZED_WIRE_10));

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_11;


jkff_a	b2v_inst7(
	.j(SYNTHESIZED_WIRE_10),
	.clk(clk),
	.k(SYNTHESIZED_WIRE_10),
	.q(q[1]),
	.qbar(SYNTHESIZED_WIRE_0));


jkff_a	b2v_inst8(
	.j(SYNTHESIZED_WIRE_11),
	.clk(clk),
	.k(SYNTHESIZED_WIRE_11),
	.q(q[2]),
	.qbar(SYNTHESIZED_WIRE_2));


jkff_a	b2v_inst9(
	.j(SYNTHESIZED_WIRE_12),
	.clk(clk),
	.k(SYNTHESIZED_WIRE_12),
	.q(q[3])
	);


endmodule
