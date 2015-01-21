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

-- DATE "01/16/2015 13:36:39"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter_ripple_4 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	\out\ : OUT std_logic_vector(3 DOWNTO 0)
	);
END counter_ripple_4;

-- Design Ports Information
-- out[0]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[1]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[2]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter_ripple_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \ww_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \dff0|q~0_combout\ : std_logic;
SIGNAL \dff0|q~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \dff0|q~q\ : std_logic;
SIGNAL \b2v_inst1|q~0_combout\ : std_logic;
SIGNAL \b2v_inst1|q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|q~q\ : std_logic;
SIGNAL \comb_3|q~0_combout\ : std_logic;
SIGNAL \comb_3|q~feeder_combout\ : std_logic;
SIGNAL \comb_3|q~q\ : std_logic;
SIGNAL \b2v_inst3|q~0_combout\ : std_logic;
SIGNAL \b2v_inst3|q~feeder_combout\ : std_logic;
SIGNAL \b2v_inst3|q~q\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \comb_3|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \dff0|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_q~q\ : std_logic;
SIGNAL \comb_3|ALT_INV_q~q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_q~q\ : std_logic;
SIGNAL \dff0|ALT_INV_q~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\b2v_inst3|ALT_INV_q~0_combout\ <= NOT \b2v_inst3|q~0_combout\;
\comb_3|ALT_INV_q~0_combout\ <= NOT \comb_3|q~0_combout\;
\b2v_inst1|ALT_INV_q~0_combout\ <= NOT \b2v_inst1|q~0_combout\;
\dff0|ALT_INV_q~0_combout\ <= NOT \dff0|q~0_combout\;
\b2v_inst3|ALT_INV_q~q\ <= NOT \b2v_inst3|q~q\;
\comb_3|ALT_INV_q~q\ <= NOT \comb_3|q~q\;
\b2v_inst1|ALT_INV_q~q\ <= NOT \b2v_inst1|q~q\;
\dff0|ALT_INV_q~q\ <= NOT \dff0|q~q\;

-- Location: IOOBUF_X58_Y0_N76
\out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dff0|q~q\,
	devoe => ww_devoe,
	o => \ww_out\(0));

-- Location: IOOBUF_X56_Y0_N36
\out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|q~q\,
	devoe => ww_devoe,
	o => \ww_out\(1));

-- Location: IOOBUF_X56_Y0_N53
\out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|q~q\,
	devoe => ww_devoe,
	o => \ww_out\(2));

-- Location: IOOBUF_X56_Y0_N19
\out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|q~q\,
	devoe => ww_devoe,
	o => \ww_out\(3));

-- Location: IOIBUF_X58_Y0_N58
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X57_Y1_N27
\dff0|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dff0|q~0_combout\ = ( !\dff0|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dff0|ALT_INV_q~q\,
	combout => \dff0|q~0_combout\);

-- Location: LABCELL_X57_Y1_N54
\dff0|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dff0|q~feeder_combout\ = ( \dff0|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \dff0|ALT_INV_q~0_combout\,
	combout => \dff0|q~feeder_combout\);

-- Location: IOIBUF_X56_Y0_N1
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X57_Y1_N56
\dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dff0|q~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff0|q~q\);

-- Location: LABCELL_X57_Y1_N0
\b2v_inst1|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~0_combout\ = !\b2v_inst1|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_q~q\,
	combout => \b2v_inst1|q~0_combout\);

-- Location: LABCELL_X57_Y1_N15
\b2v_inst1|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~feeder_combout\ = \b2v_inst1|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_q~0_combout\,
	combout => \b2v_inst1|q~feeder_combout\);

-- Location: FF_X57_Y1_N17
\b2v_inst1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dff0|q~q\,
	d => \b2v_inst1|q~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|q~q\);

-- Location: LABCELL_X56_Y1_N3
\comb_3|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_3|q~0_combout\ = !\comb_3|q~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|ALT_INV_q~q\,
	combout => \comb_3|q~0_combout\);

-- Location: LABCELL_X56_Y1_N54
\comb_3|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb_3|q~feeder_combout\ = \comb_3|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|ALT_INV_q~0_combout\,
	combout => \comb_3|q~feeder_combout\);

-- Location: FF_X56_Y1_N56
\comb_3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~q\,
	d => \comb_3|q~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|q~q\);

-- Location: LABCELL_X56_Y1_N51
\b2v_inst3|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|q~0_combout\ = ( !\b2v_inst3|q~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst3|ALT_INV_q~q\,
	combout => \b2v_inst3|q~0_combout\);

-- Location: LABCELL_X56_Y1_N15
\b2v_inst3|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst3|q~feeder_combout\ = ( \b2v_inst3|q~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst3|ALT_INV_q~0_combout\,
	combout => \b2v_inst3|q~feeder_combout\);

-- Location: FF_X56_Y1_N17
\b2v_inst3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|q~q\,
	d => \b2v_inst3|q~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|q~q\);

-- Location: LABCELL_X16_Y6_N3
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


