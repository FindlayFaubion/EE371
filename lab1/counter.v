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
// CREATED		"Fri Jan 16 13:26:39 2015"

module counter(
	clk,
	rst,
	out
);


input wire	clk;
input wire	rst;
output wire	[3:0] out;

wire	[1:1] gdfx_temp0;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





DFlipFlop	b2v_inst(
	.D(SYNTHESIZED_WIRE_0),
	.clk(clk),
	.rst(rst),
	.q(SYNTHESIZED_WIRE_1),
	.qBar(SYNTHESIZED_WIRE_0));


DFlipFlop	b2v_inst1(
	.D(gdfx_temp0),
	.clk(SYNTHESIZED_WIRE_1),
	.rst(rst),
	.q(gdfx_temp0),
	.qBar(gdfx_temp0));


DFlipFlop	b2v_inst2(
	.D(gdfx_temp0),
	.clk(gdfx_temp0),
	.rst(rst),
	.q(gdfx_temp0),
	.qBar(gdfx_temp0));


DFlipFlop	b2v_inst3(
	.D(SYNTHESIZED_WIRE_2),
	.clk(gdfx_temp0),
	.rst(rst),
	.q(out[3]),
	.qBar(SYNTHESIZED_WIRE_2));

assign	out[1] = gdfx_temp0[1];
assign	out[2] = gdfx_temp0[1];

endmodule
