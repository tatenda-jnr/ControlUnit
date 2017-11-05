-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/18/2017 14:17:12"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	program_counter IS
    PORT (
	clk : IN std_logic;
	jump_to_address : IN std_logic_vector(15 DOWNTO 0);
	choose_pc_operation : IN std_logic_vector(1 DOWNTO 0);
	pc_output : OUT std_logic_vector(15 DOWNTO 0)
	);
END program_counter;

-- Design Ports Information
-- pc_output[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_output[1]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_output[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_output[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_output[4]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_output[5]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_output[6]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_output[7]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_output[8]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_output[9]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_output[10]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_output[11]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_output[12]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_output[13]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_output[14]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_output[15]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[0]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- choose_pc_operation[1]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- choose_pc_operation[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[1]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[2]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[4]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[5]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[6]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[7]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[8]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[9]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[10]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[11]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[12]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[13]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[14]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jump_to_address[15]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF program_counter IS
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
SIGNAL ww_jump_to_address : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_choose_pc_operation : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_pc_output : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc_output[0]~output_o\ : std_logic;
SIGNAL \pc_output[1]~output_o\ : std_logic;
SIGNAL \pc_output[2]~output_o\ : std_logic;
SIGNAL \pc_output[3]~output_o\ : std_logic;
SIGNAL \pc_output[4]~output_o\ : std_logic;
SIGNAL \pc_output[5]~output_o\ : std_logic;
SIGNAL \pc_output[6]~output_o\ : std_logic;
SIGNAL \pc_output[7]~output_o\ : std_logic;
SIGNAL \pc_output[8]~output_o\ : std_logic;
SIGNAL \pc_output[9]~output_o\ : std_logic;
SIGNAL \pc_output[10]~output_o\ : std_logic;
SIGNAL \pc_output[11]~output_o\ : std_logic;
SIGNAL \pc_output[12]~output_o\ : std_logic;
SIGNAL \pc_output[13]~output_o\ : std_logic;
SIGNAL \pc_output[14]~output_o\ : std_logic;
SIGNAL \pc_output[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \jump_to_address[0]~input_o\ : std_logic;
SIGNAL \choose_pc_operation[1]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \current_pc[0]~16_combout\ : std_logic;
SIGNAL \choose_pc_operation[0]~input_o\ : std_logic;
SIGNAL \current_pc[8]~18_combout\ : std_logic;
SIGNAL \jump_to_address[1]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \current_pc[0]~17\ : std_logic;
SIGNAL \current_pc[1]~19_combout\ : std_logic;
SIGNAL \jump_to_address[2]~input_o\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \current_pc[1]~20\ : std_logic;
SIGNAL \current_pc[2]~21_combout\ : std_logic;
SIGNAL \jump_to_address[3]~input_o\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \current_pc[2]~22\ : std_logic;
SIGNAL \current_pc[3]~23_combout\ : std_logic;
SIGNAL \jump_to_address[4]~input_o\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \current_pc[3]~24\ : std_logic;
SIGNAL \current_pc[4]~25_combout\ : std_logic;
SIGNAL \jump_to_address[5]~input_o\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \current_pc[4]~26\ : std_logic;
SIGNAL \current_pc[5]~27_combout\ : std_logic;
SIGNAL \jump_to_address[6]~input_o\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \current_pc[5]~28\ : std_logic;
SIGNAL \current_pc[6]~29_combout\ : std_logic;
SIGNAL \jump_to_address[7]~input_o\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \current_pc[6]~30\ : std_logic;
SIGNAL \current_pc[7]~31_combout\ : std_logic;
SIGNAL \jump_to_address[8]~input_o\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \current_pc[7]~32\ : std_logic;
SIGNAL \current_pc[8]~33_combout\ : std_logic;
SIGNAL \jump_to_address[9]~input_o\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \current_pc[8]~34\ : std_logic;
SIGNAL \current_pc[9]~35_combout\ : std_logic;
SIGNAL \jump_to_address[10]~input_o\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \current_pc[9]~36\ : std_logic;
SIGNAL \current_pc[10]~37_combout\ : std_logic;
SIGNAL \jump_to_address[11]~input_o\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \current_pc[10]~38\ : std_logic;
SIGNAL \current_pc[11]~39_combout\ : std_logic;
SIGNAL \jump_to_address[12]~input_o\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \current_pc[11]~40\ : std_logic;
SIGNAL \current_pc[12]~41_combout\ : std_logic;
SIGNAL \jump_to_address[13]~input_o\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \current_pc[12]~42\ : std_logic;
SIGNAL \current_pc[13]~43_combout\ : std_logic;
SIGNAL \jump_to_address[14]~input_o\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \current_pc[13]~44\ : std_logic;
SIGNAL \current_pc[14]~45_combout\ : std_logic;
SIGNAL \jump_to_address[15]~input_o\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \current_pc[14]~46\ : std_logic;
SIGNAL \current_pc[15]~47_combout\ : std_logic;
SIGNAL current_pc : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_jump_to_address <= jump_to_address;
ww_choose_pc_operation <= choose_pc_operation;
pc_output <= ww_pc_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N9
\pc_output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(0),
	devoe => ww_devoe,
	o => \pc_output[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\pc_output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(1),
	devoe => ww_devoe,
	o => \pc_output[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\pc_output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(2),
	devoe => ww_devoe,
	o => \pc_output[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\pc_output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(3),
	devoe => ww_devoe,
	o => \pc_output[3]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\pc_output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(4),
	devoe => ww_devoe,
	o => \pc_output[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\pc_output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(5),
	devoe => ww_devoe,
	o => \pc_output[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\pc_output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(6),
	devoe => ww_devoe,
	o => \pc_output[6]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\pc_output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(7),
	devoe => ww_devoe,
	o => \pc_output[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\pc_output[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(8),
	devoe => ww_devoe,
	o => \pc_output[8]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\pc_output[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(9),
	devoe => ww_devoe,
	o => \pc_output[9]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\pc_output[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(10),
	devoe => ww_devoe,
	o => \pc_output[10]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\pc_output[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(11),
	devoe => ww_devoe,
	o => \pc_output[11]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\pc_output[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(12),
	devoe => ww_devoe,
	o => \pc_output[12]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\pc_output[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(13),
	devoe => ww_devoe,
	o => \pc_output[13]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\pc_output[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(14),
	devoe => ww_devoe,
	o => \pc_output[14]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\pc_output[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => current_pc(15),
	devoe => ww_devoe,
	o => \pc_output[15]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y9_N22
\jump_to_address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(0),
	o => \jump_to_address[0]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\choose_pc_operation[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_choose_pc_operation(1),
	o => \choose_pc_operation[1]~input_o\);

-- Location: LCCOMB_X26_Y20_N28
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\jump_to_address[0]~input_o\) # (!\choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jump_to_address[0]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X25_Y20_N0
\current_pc[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[0]~16_combout\ = (\Add0~0_combout\ & (current_pc(0) $ (VCC))) # (!\Add0~0_combout\ & (current_pc(0) & VCC))
-- \current_pc[0]~17\ = CARRY((\Add0~0_combout\ & current_pc(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => current_pc(0),
	datad => VCC,
	combout => \current_pc[0]~16_combout\,
	cout => \current_pc[0]~17\);

-- Location: IOIBUF_X34_Y10_N8
\choose_pc_operation[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_choose_pc_operation(0),
	o => \choose_pc_operation[0]~input_o\);

-- Location: LCCOMB_X26_Y20_N30
\current_pc[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[8]~18_combout\ = \choose_pc_operation[0]~input_o\ $ (\choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \choose_pc_operation[0]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \current_pc[8]~18_combout\);

-- Location: FF_X25_Y20_N1
\current_pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[0]~16_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(0));

-- Location: IOIBUF_X30_Y24_N1
\jump_to_address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(1),
	o => \jump_to_address[1]~input_o\);

-- Location: LCCOMB_X26_Y20_N4
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\jump_to_address[1]~input_o\ & \choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jump_to_address[1]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X25_Y20_N2
\current_pc[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[1]~19_combout\ = (\Add0~1_combout\ & ((current_pc(1) & (\current_pc[0]~17\ & VCC)) # (!current_pc(1) & (!\current_pc[0]~17\)))) # (!\Add0~1_combout\ & ((current_pc(1) & (!\current_pc[0]~17\)) # (!current_pc(1) & ((\current_pc[0]~17\) # 
-- (GND)))))
-- \current_pc[1]~20\ = CARRY((\Add0~1_combout\ & (!current_pc(1) & !\current_pc[0]~17\)) # (!\Add0~1_combout\ & ((!\current_pc[0]~17\) # (!current_pc(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => current_pc(1),
	datad => VCC,
	cin => \current_pc[0]~17\,
	combout => \current_pc[1]~19_combout\,
	cout => \current_pc[1]~20\);

-- Location: FF_X25_Y20_N3
\current_pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[1]~19_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(1));

-- Location: IOIBUF_X34_Y17_N15
\jump_to_address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(2),
	o => \jump_to_address[2]~input_o\);

-- Location: LCCOMB_X33_Y20_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\jump_to_address[2]~input_o\ & \choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jump_to_address[2]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X25_Y20_N4
\current_pc[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[2]~21_combout\ = ((\Add0~2_combout\ $ (current_pc(2) $ (!\current_pc[1]~20\)))) # (GND)
-- \current_pc[2]~22\ = CARRY((\Add0~2_combout\ & ((current_pc(2)) # (!\current_pc[1]~20\))) # (!\Add0~2_combout\ & (current_pc(2) & !\current_pc[1]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => current_pc(2),
	datad => VCC,
	cin => \current_pc[1]~20\,
	combout => \current_pc[2]~21_combout\,
	cout => \current_pc[2]~22\);

-- Location: FF_X25_Y20_N5
\current_pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[2]~21_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(2));

-- Location: IOIBUF_X34_Y9_N8
\jump_to_address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(3),
	o => \jump_to_address[3]~input_o\);

-- Location: LCCOMB_X26_Y20_N18
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\jump_to_address[3]~input_o\ & \choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jump_to_address[3]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X25_Y20_N6
\current_pc[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[3]~23_combout\ = (current_pc(3) & ((\Add0~3_combout\ & (\current_pc[2]~22\ & VCC)) # (!\Add0~3_combout\ & (!\current_pc[2]~22\)))) # (!current_pc(3) & ((\Add0~3_combout\ & (!\current_pc[2]~22\)) # (!\Add0~3_combout\ & ((\current_pc[2]~22\) # 
-- (GND)))))
-- \current_pc[3]~24\ = CARRY((current_pc(3) & (!\Add0~3_combout\ & !\current_pc[2]~22\)) # (!current_pc(3) & ((!\current_pc[2]~22\) # (!\Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_pc(3),
	datab => \Add0~3_combout\,
	datad => VCC,
	cin => \current_pc[2]~22\,
	combout => \current_pc[3]~23_combout\,
	cout => \current_pc[3]~24\);

-- Location: FF_X25_Y20_N7
\current_pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[3]~23_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(3));

-- Location: IOIBUF_X34_Y17_N22
\jump_to_address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(4),
	o => \jump_to_address[4]~input_o\);

-- Location: LCCOMB_X26_Y20_N0
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\jump_to_address[4]~input_o\ & \choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jump_to_address[4]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X25_Y20_N8
\current_pc[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[4]~25_combout\ = ((\Add0~4_combout\ $ (current_pc(4) $ (!\current_pc[3]~24\)))) # (GND)
-- \current_pc[4]~26\ = CARRY((\Add0~4_combout\ & ((current_pc(4)) # (!\current_pc[3]~24\))) # (!\Add0~4_combout\ & (current_pc(4) & !\current_pc[3]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => current_pc(4),
	datad => VCC,
	cin => \current_pc[3]~24\,
	combout => \current_pc[4]~25_combout\,
	cout => \current_pc[4]~26\);

-- Location: FF_X25_Y20_N9
\current_pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[4]~25_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(4));

-- Location: IOIBUF_X34_Y9_N1
\jump_to_address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(5),
	o => \jump_to_address[5]~input_o\);

-- Location: LCCOMB_X26_Y20_N14
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\jump_to_address[5]~input_o\ & \choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jump_to_address[5]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X25_Y20_N10
\current_pc[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[5]~27_combout\ = (current_pc(5) & ((\Add0~5_combout\ & (\current_pc[4]~26\ & VCC)) # (!\Add0~5_combout\ & (!\current_pc[4]~26\)))) # (!current_pc(5) & ((\Add0~5_combout\ & (!\current_pc[4]~26\)) # (!\Add0~5_combout\ & ((\current_pc[4]~26\) # 
-- (GND)))))
-- \current_pc[5]~28\ = CARRY((current_pc(5) & (!\Add0~5_combout\ & !\current_pc[4]~26\)) # (!current_pc(5) & ((!\current_pc[4]~26\) # (!\Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_pc(5),
	datab => \Add0~5_combout\,
	datad => VCC,
	cin => \current_pc[4]~26\,
	combout => \current_pc[5]~27_combout\,
	cout => \current_pc[5]~28\);

-- Location: FF_X25_Y20_N11
\current_pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[5]~27_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(5));

-- Location: IOIBUF_X34_Y18_N1
\jump_to_address[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(6),
	o => \jump_to_address[6]~input_o\);

-- Location: LCCOMB_X26_Y20_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\jump_to_address[6]~input_o\ & \choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jump_to_address[6]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X25_Y20_N12
\current_pc[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[6]~29_combout\ = ((current_pc(6) $ (\Add0~6_combout\ $ (!\current_pc[5]~28\)))) # (GND)
-- \current_pc[6]~30\ = CARRY((current_pc(6) & ((\Add0~6_combout\) # (!\current_pc[5]~28\))) # (!current_pc(6) & (\Add0~6_combout\ & !\current_pc[5]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_pc(6),
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \current_pc[5]~28\,
	combout => \current_pc[6]~29_combout\,
	cout => \current_pc[6]~30\);

-- Location: FF_X25_Y20_N13
\current_pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[6]~29_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(6));

-- Location: IOIBUF_X34_Y18_N15
\jump_to_address[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(7),
	o => \jump_to_address[7]~input_o\);

-- Location: LCCOMB_X33_Y20_N6
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\jump_to_address[7]~input_o\ & \choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \jump_to_address[7]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X25_Y20_N14
\current_pc[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[7]~31_combout\ = (\Add0~7_combout\ & ((current_pc(7) & (\current_pc[6]~30\ & VCC)) # (!current_pc(7) & (!\current_pc[6]~30\)))) # (!\Add0~7_combout\ & ((current_pc(7) & (!\current_pc[6]~30\)) # (!current_pc(7) & ((\current_pc[6]~30\) # 
-- (GND)))))
-- \current_pc[7]~32\ = CARRY((\Add0~7_combout\ & (!current_pc(7) & !\current_pc[6]~30\)) # (!\Add0~7_combout\ & ((!\current_pc[6]~30\) # (!current_pc(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => current_pc(7),
	datad => VCC,
	cin => \current_pc[6]~30\,
	combout => \current_pc[7]~31_combout\,
	cout => \current_pc[7]~32\);

-- Location: FF_X25_Y20_N15
\current_pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[7]~31_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(7));

-- Location: IOIBUF_X34_Y12_N22
\jump_to_address[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(8),
	o => \jump_to_address[8]~input_o\);

-- Location: LCCOMB_X26_Y20_N6
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\jump_to_address[8]~input_o\ & \choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jump_to_address[8]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X25_Y20_N16
\current_pc[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[8]~33_combout\ = ((\Add0~8_combout\ $ (current_pc(8) $ (!\current_pc[7]~32\)))) # (GND)
-- \current_pc[8]~34\ = CARRY((\Add0~8_combout\ & ((current_pc(8)) # (!\current_pc[7]~32\))) # (!\Add0~8_combout\ & (current_pc(8) & !\current_pc[7]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => current_pc(8),
	datad => VCC,
	cin => \current_pc[7]~32\,
	combout => \current_pc[8]~33_combout\,
	cout => \current_pc[8]~34\);

-- Location: FF_X25_Y20_N17
\current_pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[8]~33_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(8));

-- Location: IOIBUF_X34_Y12_N15
\jump_to_address[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(9),
	o => \jump_to_address[9]~input_o\);

-- Location: LCCOMB_X26_Y20_N20
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\jump_to_address[9]~input_o\ & \choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jump_to_address[9]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~9_combout\);

-- Location: LCCOMB_X25_Y20_N18
\current_pc[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[9]~35_combout\ = (\Add0~9_combout\ & ((current_pc(9) & (\current_pc[8]~34\ & VCC)) # (!current_pc(9) & (!\current_pc[8]~34\)))) # (!\Add0~9_combout\ & ((current_pc(9) & (!\current_pc[8]~34\)) # (!current_pc(9) & ((\current_pc[8]~34\) # 
-- (GND)))))
-- \current_pc[9]~36\ = CARRY((\Add0~9_combout\ & (!current_pc(9) & !\current_pc[8]~34\)) # (!\Add0~9_combout\ & ((!\current_pc[8]~34\) # (!current_pc(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => current_pc(9),
	datad => VCC,
	cin => \current_pc[8]~34\,
	combout => \current_pc[9]~35_combout\,
	cout => \current_pc[9]~36\);

-- Location: FF_X25_Y20_N19
\current_pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[9]~35_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(9));

-- Location: IOIBUF_X34_Y17_N1
\jump_to_address[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(10),
	o => \jump_to_address[10]~input_o\);

-- Location: LCCOMB_X33_Y20_N24
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\jump_to_address[10]~input_o\ & \choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jump_to_address[10]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X25_Y20_N20
\current_pc[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[10]~37_combout\ = ((\Add0~10_combout\ $ (current_pc(10) $ (!\current_pc[9]~36\)))) # (GND)
-- \current_pc[10]~38\ = CARRY((\Add0~10_combout\ & ((current_pc(10)) # (!\current_pc[9]~36\))) # (!\Add0~10_combout\ & (current_pc(10) & !\current_pc[9]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => current_pc(10),
	datad => VCC,
	cin => \current_pc[9]~36\,
	combout => \current_pc[10]~37_combout\,
	cout => \current_pc[10]~38\);

-- Location: FF_X25_Y20_N21
\current_pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[10]~37_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(10));

-- Location: IOIBUF_X34_Y12_N8
\jump_to_address[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(11),
	o => \jump_to_address[11]~input_o\);

-- Location: LCCOMB_X26_Y20_N10
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\jump_to_address[11]~input_o\ & \choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \jump_to_address[11]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X25_Y20_N22
\current_pc[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[11]~39_combout\ = (current_pc(11) & ((\Add0~11_combout\ & (\current_pc[10]~38\ & VCC)) # (!\Add0~11_combout\ & (!\current_pc[10]~38\)))) # (!current_pc(11) & ((\Add0~11_combout\ & (!\current_pc[10]~38\)) # (!\Add0~11_combout\ & 
-- ((\current_pc[10]~38\) # (GND)))))
-- \current_pc[11]~40\ = CARRY((current_pc(11) & (!\Add0~11_combout\ & !\current_pc[10]~38\)) # (!current_pc(11) & ((!\current_pc[10]~38\) # (!\Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_pc(11),
	datab => \Add0~11_combout\,
	datad => VCC,
	cin => \current_pc[10]~38\,
	combout => \current_pc[11]~39_combout\,
	cout => \current_pc[11]~40\);

-- Location: FF_X25_Y20_N23
\current_pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[11]~39_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(11));

-- Location: IOIBUF_X34_Y12_N1
\jump_to_address[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(12),
	o => \jump_to_address[12]~input_o\);

-- Location: LCCOMB_X26_Y20_N16
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\jump_to_address[12]~input_o\ & \choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jump_to_address[12]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X25_Y20_N24
\current_pc[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[12]~41_combout\ = ((\Add0~12_combout\ $ (current_pc(12) $ (!\current_pc[11]~40\)))) # (GND)
-- \current_pc[12]~42\ = CARRY((\Add0~12_combout\ & ((current_pc(12)) # (!\current_pc[11]~40\))) # (!\Add0~12_combout\ & (current_pc(12) & !\current_pc[11]~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => current_pc(12),
	datad => VCC,
	cin => \current_pc[11]~40\,
	combout => \current_pc[12]~41_combout\,
	cout => \current_pc[12]~42\);

-- Location: FF_X25_Y20_N25
\current_pc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[12]~41_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(12));

-- Location: IOIBUF_X34_Y19_N15
\jump_to_address[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(13),
	o => \jump_to_address[13]~input_o\);

-- Location: LCCOMB_X26_Y20_N26
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\jump_to_address[13]~input_o\ & \choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jump_to_address[13]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X25_Y20_N26
\current_pc[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[13]~43_combout\ = (current_pc(13) & ((\Add0~13_combout\ & (\current_pc[12]~42\ & VCC)) # (!\Add0~13_combout\ & (!\current_pc[12]~42\)))) # (!current_pc(13) & ((\Add0~13_combout\ & (!\current_pc[12]~42\)) # (!\Add0~13_combout\ & 
-- ((\current_pc[12]~42\) # (GND)))))
-- \current_pc[13]~44\ = CARRY((current_pc(13) & (!\Add0~13_combout\ & !\current_pc[12]~42\)) # (!current_pc(13) & ((!\current_pc[12]~42\) # (!\Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_pc(13),
	datab => \Add0~13_combout\,
	datad => VCC,
	cin => \current_pc[12]~42\,
	combout => \current_pc[13]~43_combout\,
	cout => \current_pc[13]~44\);

-- Location: FF_X25_Y20_N27
\current_pc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[13]~43_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(13));

-- Location: IOIBUF_X30_Y24_N22
\jump_to_address[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(14),
	o => \jump_to_address[14]~input_o\);

-- Location: LCCOMB_X26_Y20_N24
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\jump_to_address[14]~input_o\ & \choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jump_to_address[14]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X25_Y20_N28
\current_pc[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[14]~45_combout\ = ((\Add0~14_combout\ $ (current_pc(14) $ (!\current_pc[13]~44\)))) # (GND)
-- \current_pc[14]~46\ = CARRY((\Add0~14_combout\ & ((current_pc(14)) # (!\current_pc[13]~44\))) # (!\Add0~14_combout\ & (current_pc(14) & !\current_pc[13]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => current_pc(14),
	datad => VCC,
	cin => \current_pc[13]~44\,
	combout => \current_pc[14]~45_combout\,
	cout => \current_pc[14]~46\);

-- Location: FF_X25_Y20_N29
\current_pc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[14]~45_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(14));

-- Location: IOIBUF_X34_Y9_N15
\jump_to_address[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jump_to_address(15),
	o => \jump_to_address[15]~input_o\);

-- Location: LCCOMB_X26_Y20_N22
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\jump_to_address[15]~input_o\ & \choose_pc_operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \jump_to_address[15]~input_o\,
	datad => \choose_pc_operation[1]~input_o\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X25_Y20_N30
\current_pc[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_pc[15]~47_combout\ = current_pc(15) $ (\current_pc[14]~46\ $ (\Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => current_pc(15),
	datad => \Add0~15_combout\,
	cin => \current_pc[14]~46\,
	combout => \current_pc[15]~47_combout\);

-- Location: FF_X25_Y20_N31
\current_pc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_pc[15]~47_combout\,
	ena => \current_pc[8]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_pc(15));

ww_pc_output(0) <= \pc_output[0]~output_o\;

ww_pc_output(1) <= \pc_output[1]~output_o\;

ww_pc_output(2) <= \pc_output[2]~output_o\;

ww_pc_output(3) <= \pc_output[3]~output_o\;

ww_pc_output(4) <= \pc_output[4]~output_o\;

ww_pc_output(5) <= \pc_output[5]~output_o\;

ww_pc_output(6) <= \pc_output[6]~output_o\;

ww_pc_output(7) <= \pc_output[7]~output_o\;

ww_pc_output(8) <= \pc_output[8]~output_o\;

ww_pc_output(9) <= \pc_output[9]~output_o\;

ww_pc_output(10) <= \pc_output[10]~output_o\;

ww_pc_output(11) <= \pc_output[11]~output_o\;

ww_pc_output(12) <= \pc_output[12]~output_o\;

ww_pc_output(13) <= \pc_output[13]~output_o\;

ww_pc_output(14) <= \pc_output[14]~output_o\;

ww_pc_output(15) <= \pc_output[15]~output_o\;
END structure;


