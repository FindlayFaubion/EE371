-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Full Version"

-- DATE "01/19/2015 13:13:29"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	down_counter IS
    PORT (
	q : OUT std_logic_vector(3 DOWNTO 0);
	rst : IN std_logic;
	clk : IN std_logic
	);
END down_counter;

-- Design Ports Information
-- q[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF down_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst9|inst~1_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \inst|inst4~combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \inst9|ALT_INV_inst~1_combout\ : std_logic;

BEGIN

q <= ww_q;
ww_rst <= rst;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\inst9|ALT_INV_inst~1_combout\ <= NOT \inst9|inst~1_combout\;

-- Location: IOOBUF_X54_Y81_N2
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_inst~1_combout\,
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOOBUF_X52_Y81_N2
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk~input_o\,
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X54_Y81_N36
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk~input_o\,
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X56_Y81_N36
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4~combout\,
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOIBUF_X54_Y81_N18
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X55_Y80_N33
\inst9|inst~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst9|inst~1_combout\ = ( \inst9|inst~1_combout\ & ( !\clk~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	dataf => \inst9|ALT_INV_inst~1_combout\,
	combout => \inst9|inst~1_combout\);

-- Location: IOIBUF_X56_Y81_N52
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LABCELL_X55_Y80_N30
\inst|inst4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|inst4~combout\ = ( \rst~input_o\ & ( \clk~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \inst|inst4~combout\);

-- Location: MLABCELL_X78_Y74_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


