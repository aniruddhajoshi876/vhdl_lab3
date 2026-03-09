-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/06/2026 16:40:52"

-- 
-- Device: Altera 5CGXFC7C6U19A7 Package UFBGA484
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

ENTITY 	bcd_adder_structural IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	S : BUFFER std_logic_vector(3 DOWNTO 0);
	C : BUFFER std_logic
	);
END bcd_adder_structural;

-- Design Ports Information
-- S[0]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcd_adder_structural IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \RCA1|HA0|s~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \RCA1|FA1|s~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \carry_bcd~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \RCA1|FA2|c_out~combout\ : std_logic;
SIGNAL \RCA2|FA1|s~0_combout\ : std_logic;
SIGNAL \RCA1|FA1|c_out~combout\ : std_logic;
SIGNAL \RCA2|FA2|s~combout\ : std_logic;
SIGNAL \RCA2|FA3|s~0_combout\ : std_logic;
SIGNAL \carry_bcd~1_combout\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \RCA1|FA1|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ALT_INV_carry_bcd~0_combout\ : std_logic;
SIGNAL \RCA1|FA2|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \RCA1|FA1|ALT_INV_s~combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
S <= ww_S;
C <= ww_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\RCA1|FA1|ALT_INV_c_out~combout\ <= NOT \RCA1|FA1|c_out~combout\;
\ALT_INV_carry_bcd~0_combout\ <= NOT \carry_bcd~0_combout\;
\RCA1|FA2|ALT_INV_c_out~combout\ <= NOT \RCA1|FA2|c_out~combout\;
\RCA1|FA1|ALT_INV_s~combout\ <= NOT \RCA1|FA1|s~combout\;

-- Location: IOOBUF_X89_Y25_N56
\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RCA1|HA0|s~combout\,
	devoe => ww_devoe,
	o => ww_S(0));

-- Location: IOOBUF_X89_Y25_N5
\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RCA2|FA1|s~0_combout\,
	devoe => ww_devoe,
	o => ww_S(1));

-- Location: IOOBUF_X89_Y25_N22
\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RCA2|FA2|s~combout\,
	devoe => ww_devoe,
	o => ww_S(2));

-- Location: IOOBUF_X89_Y25_N39
\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RCA2|FA3|s~0_combout\,
	devoe => ww_devoe,
	o => ww_S(3));

-- Location: IOOBUF_X89_Y23_N39
\C~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \carry_bcd~1_combout\,
	devoe => ww_devoe,
	o => ww_C);

-- Location: IOIBUF_X89_Y20_N44
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X88_Y23_N0
\RCA1|HA0|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA1|HA0|s~combout\ = ( !\A[0]~input_o\ & ( \B[0]~input_o\ ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \RCA1|HA0|s~combout\);

-- Location: IOIBUF_X89_Y23_N4
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X88_Y23_N39
\RCA1|FA1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA1|FA1|s~combout\ = ( \B[1]~input_o\ & ( !\A[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\))) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\B[0]~input_o\) # (!\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101011110000101001011111000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \RCA1|FA1|s~combout\);

-- Location: IOIBUF_X89_Y21_N55
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X88_Y23_N18
\carry_bcd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_bcd~0_combout\ = ( \A[2]~input_o\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & (!\A[1]~input_o\ & ((!\B[0]~input_o\) # (!\A[0]~input_o\)))) ) ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & (\B[0]~input_o\ & 
-- \A[0]~input_o\))) # (\B[1]~input_o\ & (!\A[1]~input_o\ $ (((!\B[0]~input_o\) # (!\A[0]~input_o\))))) ) ) ) # ( \A[2]~input_o\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\))) # (\B[1]~input_o\ & 
-- (!\A[1]~input_o\ $ (((!\B[0]~input_o\) # (!\A[0]~input_o\))))) ) ) ) # ( !\A[2]~input_o\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (!\A[1]~input_o\ & ((!\B[0]~input_o\) # (!\A[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000000100010001011000010001000101101000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \carry_bcd~0_combout\);

-- Location: IOIBUF_X89_Y23_N55
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X88_Y23_N12
\RCA1|FA2|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA1|FA2|c_out~combout\ = ( \A[2]~input_o\ & ( \B[2]~input_o\ ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\ & \A[0]~input_o\)) # 
-- (\A[1]~input_o\))) ) ) ) # ( \A[2]~input_o\ & ( !\B[2]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\ & \A[0]~input_o\)) # (\A[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001011100010001000101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \RCA1|FA2|c_out~combout\);

-- Location: LABCELL_X88_Y23_N54
\RCA2|FA1|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA2|FA1|s~0_combout\ = ( \A[3]~input_o\ & ( \RCA1|FA2|c_out~combout\ & ( !\RCA1|FA1|s~combout\ ) ) ) # ( !\A[3]~input_o\ & ( \RCA1|FA2|c_out~combout\ & ( !\RCA1|FA1|s~combout\ $ (((!\B[3]~input_o\ & \carry_bcd~0_combout\))) ) ) ) # ( \A[3]~input_o\ & ( 
-- !\RCA1|FA2|c_out~combout\ & ( !\RCA1|FA1|s~combout\ $ (((!\B[3]~input_o\ & \carry_bcd~0_combout\))) ) ) ) # ( !\A[3]~input_o\ & ( !\RCA1|FA2|c_out~combout\ & ( !\RCA1|FA1|s~combout\ $ (((!\B[3]~input_o\) # (\carry_bcd~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001101100011110001101100011011000110110001101100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \RCA1|FA1|ALT_INV_s~combout\,
	datac => \ALT_INV_carry_bcd~0_combout\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \RCA1|FA2|ALT_INV_c_out~combout\,
	combout => \RCA2|FA1|s~0_combout\);

-- Location: LABCELL_X88_Y23_N36
\RCA1|FA1|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA1|FA1|c_out~combout\ = ( \B[1]~input_o\ & ( ((\B[0]~input_o\ & \A[0]~input_o\)) # (\A[1]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (\B[0]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100110011011101110011001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \RCA1|FA1|c_out~combout\);

-- Location: LABCELL_X88_Y23_N30
\RCA2|FA2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA2|FA2|s~combout\ = ( \A[3]~input_o\ & ( \B[2]~input_o\ & ( !\A[2]~input_o\ $ (!\RCA1|FA1|c_out~combout\ $ (\RCA1|FA1|s~combout\)) ) ) ) # ( !\A[3]~input_o\ & ( \B[2]~input_o\ & ( (!\A[2]~input_o\ & (!\RCA1|FA1|c_out~combout\ $ (((\B[3]~input_o\ & 
-- !\RCA1|FA1|s~combout\))))) # (\A[2]~input_o\ & ((!\RCA1|FA1|c_out~combout\ & (\B[3]~input_o\ & !\RCA1|FA1|s~combout\)) # (\RCA1|FA1|c_out~combout\ & ((\RCA1|FA1|s~combout\))))) ) ) ) # ( \A[3]~input_o\ & ( !\B[2]~input_o\ & ( (!\A[2]~input_o\ & 
-- ((!\RCA1|FA1|c_out~combout\ & (\B[3]~input_o\ & !\RCA1|FA1|s~combout\)) # (\RCA1|FA1|c_out~combout\ & ((\RCA1|FA1|s~combout\))))) # (\A[2]~input_o\ & (!\RCA1|FA1|c_out~combout\ $ (((!\RCA1|FA1|s~combout\))))) ) ) ) # ( !\A[3]~input_o\ & ( !\B[2]~input_o\ 
-- & ( (!\A[2]~input_o\ & (\RCA1|FA1|c_out~combout\ & ((!\B[3]~input_o\) # (\RCA1|FA1|s~combout\)))) # (\A[2]~input_o\ & (!\RCA1|FA1|c_out~combout\ $ (((\B[3]~input_o\ & !\RCA1|FA1|s~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100110000110010110011010000110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \RCA1|FA1|ALT_INV_c_out~combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \RCA1|FA1|ALT_INV_s~combout\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \RCA2|FA2|s~combout\);

-- Location: LABCELL_X88_Y23_N9
\RCA2|FA3|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RCA2|FA3|s~0_combout\ = ( \A[3]~input_o\ & ( \RCA1|FA2|c_out~combout\ & ( !\carry_bcd~0_combout\ $ (\B[3]~input_o\) ) ) ) # ( !\A[3]~input_o\ & ( \RCA1|FA2|c_out~combout\ & ( !\carry_bcd~0_combout\ $ (!\B[3]~input_o\) ) ) ) # ( \A[3]~input_o\ & ( 
-- !\RCA1|FA2|c_out~combout\ & ( !\carry_bcd~0_combout\ $ (!\B[3]~input_o\) ) ) ) # ( !\A[3]~input_o\ & ( !\RCA1|FA2|c_out~combout\ & ( (\carry_bcd~0_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101011010101001010101101010101010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry_bcd~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \RCA1|FA2|ALT_INV_c_out~combout\,
	combout => \RCA2|FA3|s~0_combout\);

-- Location: LABCELL_X88_Y23_N45
\carry_bcd~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \carry_bcd~1_combout\ = ( \A[3]~input_o\ & ( \RCA1|FA2|c_out~combout\ ) ) # ( !\A[3]~input_o\ & ( \RCA1|FA2|c_out~combout\ & ( (!\carry_bcd~0_combout\) # (\B[3]~input_o\) ) ) ) # ( \A[3]~input_o\ & ( !\RCA1|FA2|c_out~combout\ & ( (!\carry_bcd~0_combout\) 
-- # (\B[3]~input_o\) ) ) ) # ( !\A[3]~input_o\ & ( !\RCA1|FA2|c_out~combout\ & ( (!\carry_bcd~0_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010101010101111111110101010111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_carry_bcd~0_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \RCA1|FA2|ALT_INV_c_out~combout\,
	combout => \carry_bcd~1_combout\);

-- Location: MLABCELL_X82_Y16_N0
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


