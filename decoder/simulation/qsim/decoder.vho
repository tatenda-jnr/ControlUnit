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

-- DATE "10/27/2017 20:48:00"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decoder IS
    PORT (
	instruction : IN std_logic_vector(15 DOWNTO 0);
	opcode : OUT std_logic_vector(4 DOWNTO 0);
	controlUnit : OUT std_logic_vector(7 DOWNTO 0);
	mux2sel : OUT std_logic_vector(1 DOWNTO 0);
	N : IN std_logic;
	Z : IN std_logic;
	C : IN std_logic;
	branch_offset : OUT std_logic_vector(15 DOWNTO 0);
	pc_opcode : OUT std_logic_vector(1 DOWNTO 0);
	mux1sel : OUT std_logic;
	accload : OUT std_logic;
	ALUinsel : OUT std_logic;
	memwrite : OUT std_logic
	);
END decoder;

-- Design Ports Information
-- opcode[0]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[4]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlUnit[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlUnit[1]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlUnit[2]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlUnit[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlUnit[4]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlUnit[5]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlUnit[6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- controlUnit[7]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux2sel[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux2sel[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[2]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[3]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[4]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[5]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[6]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[7]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[8]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[9]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[10]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[11]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[12]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[13]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[14]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- branch_offset[15]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_opcode[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_opcode[1]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux1sel	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accload	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUinsel	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memwrite	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[8]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[9]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[10]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[11]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[15]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[0]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[1]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[4]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[6]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[7]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[12]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[13]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[14]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_instruction : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_controlUnit : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mux2sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_N : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_branch_offset : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pc_opcode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_mux1sel : std_logic;
SIGNAL ww_accload : std_logic;
SIGNAL ww_ALUinsel : std_logic;
SIGNAL ww_memwrite : std_logic;
SIGNAL \opcode[0]~output_o\ : std_logic;
SIGNAL \opcode[1]~output_o\ : std_logic;
SIGNAL \opcode[2]~output_o\ : std_logic;
SIGNAL \opcode[3]~output_o\ : std_logic;
SIGNAL \opcode[4]~output_o\ : std_logic;
SIGNAL \controlUnit[0]~output_o\ : std_logic;
SIGNAL \controlUnit[1]~output_o\ : std_logic;
SIGNAL \controlUnit[2]~output_o\ : std_logic;
SIGNAL \controlUnit[3]~output_o\ : std_logic;
SIGNAL \controlUnit[4]~output_o\ : std_logic;
SIGNAL \controlUnit[5]~output_o\ : std_logic;
SIGNAL \controlUnit[6]~output_o\ : std_logic;
SIGNAL \controlUnit[7]~output_o\ : std_logic;
SIGNAL \mux2sel[0]~output_o\ : std_logic;
SIGNAL \mux2sel[1]~output_o\ : std_logic;
SIGNAL \branch_offset[0]~output_o\ : std_logic;
SIGNAL \branch_offset[1]~output_o\ : std_logic;
SIGNAL \branch_offset[2]~output_o\ : std_logic;
SIGNAL \branch_offset[3]~output_o\ : std_logic;
SIGNAL \branch_offset[4]~output_o\ : std_logic;
SIGNAL \branch_offset[5]~output_o\ : std_logic;
SIGNAL \branch_offset[6]~output_o\ : std_logic;
SIGNAL \branch_offset[7]~output_o\ : std_logic;
SIGNAL \branch_offset[8]~output_o\ : std_logic;
SIGNAL \branch_offset[9]~output_o\ : std_logic;
SIGNAL \branch_offset[10]~output_o\ : std_logic;
SIGNAL \branch_offset[11]~output_o\ : std_logic;
SIGNAL \branch_offset[12]~output_o\ : std_logic;
SIGNAL \branch_offset[13]~output_o\ : std_logic;
SIGNAL \branch_offset[14]~output_o\ : std_logic;
SIGNAL \branch_offset[15]~output_o\ : std_logic;
SIGNAL \pc_opcode[0]~output_o\ : std_logic;
SIGNAL \pc_opcode[1]~output_o\ : std_logic;
SIGNAL \mux1sel~output_o\ : std_logic;
SIGNAL \accload~output_o\ : std_logic;
SIGNAL \ALUinsel~output_o\ : std_logic;
SIGNAL \memwrite~output_o\ : std_logic;
SIGNAL \instruction[8]~input_o\ : std_logic;
SIGNAL \instruction[9]~input_o\ : std_logic;
SIGNAL \instruction[10]~input_o\ : std_logic;
SIGNAL \instruction[11]~input_o\ : std_logic;
SIGNAL \instruction[15]~input_o\ : std_logic;
SIGNAL \instruction[0]~input_o\ : std_logic;
SIGNAL \instruction[1]~input_o\ : std_logic;
SIGNAL \instruction[2]~input_o\ : std_logic;
SIGNAL \instruction[3]~input_o\ : std_logic;
SIGNAL \instruction[4]~input_o\ : std_logic;
SIGNAL \instruction[5]~input_o\ : std_logic;
SIGNAL \instruction[6]~input_o\ : std_logic;
SIGNAL \instruction[7]~input_o\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \N~input_o\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \instruction[14]~input_o\ : std_logic;
SIGNAL \instruction[13]~input_o\ : std_logic;
SIGNAL \instruction[12]~input_o\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \memwrite~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~5_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_instruction <= instruction;
opcode <= ww_opcode;
controlUnit <= ww_controlUnit;
mux2sel <= ww_mux2sel;
ww_N <= N;
ww_Z <= Z;
ww_C <= C;
branch_offset <= ww_branch_offset;
pc_opcode <= ww_pc_opcode;
mux1sel <= ww_mux1sel;
accload <= ww_accload;
ALUinsel <= ww_ALUinsel;
memwrite <= ww_memwrite;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux3~5_combout\ <= NOT \Mux3~5_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N2
\opcode[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[8]~input_o\,
	devoe => ww_devoe,
	o => \opcode[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\opcode[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[9]~input_o\,
	devoe => ww_devoe,
	o => \opcode[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\opcode[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[10]~input_o\,
	devoe => ww_devoe,
	o => \opcode[2]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\opcode[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[11]~input_o\,
	devoe => ww_devoe,
	o => \opcode[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\opcode[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[15]~input_o\,
	devoe => ww_devoe,
	o => \opcode[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\controlUnit[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[0]~input_o\,
	devoe => ww_devoe,
	o => \controlUnit[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\controlUnit[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[1]~input_o\,
	devoe => ww_devoe,
	o => \controlUnit[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\controlUnit[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[2]~input_o\,
	devoe => ww_devoe,
	o => \controlUnit[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\controlUnit[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[3]~input_o\,
	devoe => ww_devoe,
	o => \controlUnit[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\controlUnit[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[4]~input_o\,
	devoe => ww_devoe,
	o => \controlUnit[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\controlUnit[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[5]~input_o\,
	devoe => ww_devoe,
	o => \controlUnit[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\controlUnit[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[6]~input_o\,
	devoe => ww_devoe,
	o => \controlUnit[6]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\controlUnit[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[7]~input_o\,
	devoe => ww_devoe,
	o => \controlUnit[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\mux2sel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mux2sel[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\mux2sel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mux2sel[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\branch_offset[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[0]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\branch_offset[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[1]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\branch_offset[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[2]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\branch_offset[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[3]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\branch_offset[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[4]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\branch_offset[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[5]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\branch_offset[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[6]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[6]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\branch_offset[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[7]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\branch_offset[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[7]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[8]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\branch_offset[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[7]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[9]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\branch_offset[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[7]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[10]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\branch_offset[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[7]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[11]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\branch_offset[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[7]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[12]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\branch_offset[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[7]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[13]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\branch_offset[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[7]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[14]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\branch_offset[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[7]~input_o\,
	devoe => ww_devoe,
	o => \branch_offset[15]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\pc_opcode[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~5_combout\,
	devoe => ww_devoe,
	o => \pc_opcode[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\pc_opcode[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~5_combout\,
	devoe => ww_devoe,
	o => \pc_opcode[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\mux1sel~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \mux1sel~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\accload~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~3_combout\,
	devoe => ww_devoe,
	o => \accload~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\ALUinsel~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ALUinsel~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\memwrite~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \memwrite~output_o\);

-- Location: IOIBUF_X28_Y24_N15
\instruction[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(8),
	o => \instruction[8]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\instruction[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(9),
	o => \instruction[9]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\instruction[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(10),
	o => \instruction[10]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\instruction[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(11),
	o => \instruction[11]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\instruction[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(15),
	o => \instruction[15]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\instruction[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(0),
	o => \instruction[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\instruction[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(1),
	o => \instruction[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\instruction[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(2),
	o => \instruction[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\instruction[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(3),
	o => \instruction[3]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\instruction[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(4),
	o => \instruction[4]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\instruction[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(5),
	o => \instruction[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\instruction[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(6),
	o => \instruction[6]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\instruction[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(7),
	o => \instruction[7]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\Z~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X33_Y17_N12
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\instruction[9]~input_o\ & (\Z~input_o\)) # (!\instruction[9]~input_o\ & ((\C~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[9]~input_o\,
	datab => \Z~input_o\,
	datac => \C~input_o\,
	combout => \Mux3~3_combout\);

-- Location: IOIBUF_X34_Y19_N15
\N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N,
	o => \N~input_o\);

-- Location: LCCOMB_X33_Y17_N18
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = \instruction[8]~input_o\ $ (((\instruction[11]~input_o\ & \N~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[8]~input_o\,
	datab => \instruction[11]~input_o\,
	datad => \N~input_o\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X34_Y17_N22
\instruction[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(14),
	o => \instruction[14]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\instruction[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(13),
	o => \instruction[13]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\instruction[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(12),
	o => \instruction[12]~input_o\);

-- Location: LCCOMB_X33_Y17_N10
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (!\instruction[15]~input_o\ & (!\instruction[14]~input_o\ & (\instruction[13]~input_o\ & !\instruction[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[15]~input_o\,
	datab => \instruction[14]~input_o\,
	datac => \instruction[13]~input_o\,
	datad => \instruction[12]~input_o\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X33_Y17_N6
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~6_combout\ & (\Mux3~2_combout\ $ (((!\instruction[10]~input_o\) # (!\Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux3~2_combout\,
	datac => \Mux3~6_combout\,
	datad => \instruction[10]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X33_Y17_N8
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\instruction[11]~input_o\ $ (((!\instruction[10]~input_o\ & \instruction[9]~input_o\)))) # (!\Mux3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \instruction[10]~input_o\,
	datac => \instruction[9]~input_o\,
	datad => \instruction[11]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X33_Y17_N2
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\instruction[12]~input_o\ & (\instruction[13]~input_o\ & !\instruction[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[12]~input_o\,
	datac => \instruction[13]~input_o\,
	datad => \instruction[14]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X33_Y17_N22
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\instruction[8]~input_o\ & !\instruction[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[8]~input_o\,
	datad => \instruction[11]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X33_Y17_N16
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ((\instruction[10]~input_o\ & ((!\instruction[12]~input_o\) # (!\instruction[9]~input_o\))) # (!\instruction[10]~input_o\ & (\instruction[9]~input_o\))) # (!\Mux7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \instruction[10]~input_o\,
	datac => \instruction[9]~input_o\,
	datad => \instruction[12]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X33_Y17_N20
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\instruction[15]~input_o\ & (\instruction[14]~input_o\ & (!\instruction[13]~input_o\ & !\instruction[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[15]~input_o\,
	datab => \instruction[14]~input_o\,
	datac => \instruction[13]~input_o\,
	datad => \instruction[12]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X33_Y17_N24
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\instruction[13]~input_o\ & !\instruction[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction[13]~input_o\,
	datad => \instruction[14]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X33_Y17_N26
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux7~0_combout\) # ((\instruction[15]~input_o\ & (\Mux7~2_combout\ & \Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[15]~input_o\,
	datab => \Mux7~2_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X33_Y17_N28
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\instruction[14]~input_o\ & (\instruction[13]~input_o\ & ((\instruction[15]~input_o\) # (\instruction[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[15]~input_o\,
	datab => \instruction[14]~input_o\,
	datac => \instruction[13]~input_o\,
	datad => \instruction[12]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X33_Y17_N30
\memwrite~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memwrite~0_combout\ = (((\instruction[11]~input_o\) # (!\instruction[9]~input_o\)) # (!\instruction[10]~input_o\)) # (!\instruction[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[8]~input_o\,
	datab => \instruction[10]~input_o\,
	datac => \instruction[9]~input_o\,
	datad => \instruction[11]~input_o\,
	combout => \memwrite~0_combout\);

-- Location: LCCOMB_X33_Y17_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (((\instruction[15]~input_o\ & \memwrite~0_combout\)) # (!\instruction[12]~input_o\)) # (!\Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[15]~input_o\,
	datab => \Mux4~0_combout\,
	datac => \memwrite~0_combout\,
	datad => \instruction[12]~input_o\,
	combout => \Mux6~0_combout\);

ww_opcode(0) <= \opcode[0]~output_o\;

ww_opcode(1) <= \opcode[1]~output_o\;

ww_opcode(2) <= \opcode[2]~output_o\;

ww_opcode(3) <= \opcode[3]~output_o\;

ww_opcode(4) <= \opcode[4]~output_o\;

ww_controlUnit(0) <= \controlUnit[0]~output_o\;

ww_controlUnit(1) <= \controlUnit[1]~output_o\;

ww_controlUnit(2) <= \controlUnit[2]~output_o\;

ww_controlUnit(3) <= \controlUnit[3]~output_o\;

ww_controlUnit(4) <= \controlUnit[4]~output_o\;

ww_controlUnit(5) <= \controlUnit[5]~output_o\;

ww_controlUnit(6) <= \controlUnit[6]~output_o\;

ww_controlUnit(7) <= \controlUnit[7]~output_o\;

ww_mux2sel(0) <= \mux2sel[0]~output_o\;

ww_mux2sel(1) <= \mux2sel[1]~output_o\;

ww_branch_offset(0) <= \branch_offset[0]~output_o\;

ww_branch_offset(1) <= \branch_offset[1]~output_o\;

ww_branch_offset(2) <= \branch_offset[2]~output_o\;

ww_branch_offset(3) <= \branch_offset[3]~output_o\;

ww_branch_offset(4) <= \branch_offset[4]~output_o\;

ww_branch_offset(5) <= \branch_offset[5]~output_o\;

ww_branch_offset(6) <= \branch_offset[6]~output_o\;

ww_branch_offset(7) <= \branch_offset[7]~output_o\;

ww_branch_offset(8) <= \branch_offset[8]~output_o\;

ww_branch_offset(9) <= \branch_offset[9]~output_o\;

ww_branch_offset(10) <= \branch_offset[10]~output_o\;

ww_branch_offset(11) <= \branch_offset[11]~output_o\;

ww_branch_offset(12) <= \branch_offset[12]~output_o\;

ww_branch_offset(13) <= \branch_offset[13]~output_o\;

ww_branch_offset(14) <= \branch_offset[14]~output_o\;

ww_branch_offset(15) <= \branch_offset[15]~output_o\;

ww_pc_opcode(0) <= \pc_opcode[0]~output_o\;

ww_pc_opcode(1) <= \pc_opcode[1]~output_o\;

ww_mux1sel <= \mux1sel~output_o\;

ww_accload <= \accload~output_o\;

ww_ALUinsel <= \ALUinsel~output_o\;

ww_memwrite <= \memwrite~output_o\;
END structure;


