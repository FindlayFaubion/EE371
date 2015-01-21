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
// CREATED		"Mon Jan 19 12:45:22 2015"

module jkff_a(
	j,
	k,
	clk,
	q,
	qbar
);


input wire	j;
input wire	k;
input wire	clk;
output wire	q;
output wire	qbar;

wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_7;

assign	q = SYNTHESIZED_WIRE_7;
assign	qbar = SYNTHESIZED_WIRE_6;



assign	SYNTHESIZED_WIRE_7 = ~(SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_1);

assign	SYNTHESIZED_WIRE_6 = ~(SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_7);

assign	SYNTHESIZED_WIRE_2 = ~(clk & k & SYNTHESIZED_WIRE_7);

assign	SYNTHESIZED_WIRE_1 = ~(SYNTHESIZED_WIRE_6 & j & clk);


endmodule
