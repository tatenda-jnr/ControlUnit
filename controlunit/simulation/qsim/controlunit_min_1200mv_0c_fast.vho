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

-- DATE "10/24/2017 10:59:03"

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

ENTITY 	controlunit IS
    PORT (
	mux1sel : OUT std_logic;
	N : IN std_logic;
	Z : IN std_logic;
	C : IN std_logic;
	instr : IN std_logic_vector(15 DOWNTO 0);
	accLoad : OUT std_logic;
	ALUinsel : OUT std_logic;
	memwrite : OUT std_logic;
	address : OUT std_logic_vector(15 DOWNTO 0);
	clk : IN std_logic;
	Aluopcode : OUT std_logic_vector(4 DOWNTO 0);
	fromControlUnit : OUT std_logic_vector(7 DOWNTO 0);
	mux2sel : OUT std_logic_vector(1 DOWNTO 0)
	);
END controlunit;

-- Design Ports Information
-- mux1sel	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accLoad	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUinsel	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memwrite	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[15]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[14]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[13]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[12]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[11]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[10]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[9]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[8]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aluopcode[4]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aluopcode[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aluopcode[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aluopcode[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Aluopcode[0]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fromControlUnit[7]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fromControlUnit[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fromControlUnit[5]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fromControlUnit[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fromControlUnit[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fromControlUnit[2]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fromControlUnit[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fromControlUnit[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux2sel[1]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mux2sel[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[12]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[13]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[15]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[14]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[11]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[8]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[10]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[9]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[7]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[6]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[5]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[4]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[2]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[1]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instr[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controlunit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mux1sel : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_instr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_accLoad : std_logic;
SIGNAL ww_ALUinsel : std_logic;
SIGNAL ww_memwrite : std_logic;
SIGNAL ww_address : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_Aluopcode : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_fromControlUnit : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mux2sel : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mux1sel~output_o\ : std_logic;
SIGNAL \accLoad~output_o\ : std_logic;
SIGNAL \ALUinsel~output_o\ : std_logic;
SIGNAL \memwrite~output_o\ : std_logic;
SIGNAL \address[15]~output_o\ : std_logic;
SIGNAL \address[14]~output_o\ : std_logic;
SIGNAL \address[13]~output_o\ : std_logic;
SIGNAL \address[12]~output_o\ : std_logic;
SIGNAL \address[11]~output_o\ : std_logic;
SIGNAL \address[10]~output_o\ : std_logic;
SIGNAL \address[9]~output_o\ : std_logic;
SIGNAL \address[8]~output_o\ : std_logic;
SIGNAL \address[7]~output_o\ : std_logic;
SIGNAL \address[6]~output_o\ : std_logic;
SIGNAL \address[5]~output_o\ : std_logic;
SIGNAL \address[4]~output_o\ : std_logic;
SIGNAL \address[3]~output_o\ : std_logic;
SIGNAL \address[2]~output_o\ : std_logic;
SIGNAL \address[1]~output_o\ : std_logic;
SIGNAL \address[0]~output_o\ : std_logic;
SIGNAL \Aluopcode[4]~output_o\ : std_logic;
SIGNAL \Aluopcode[3]~output_o\ : std_logic;
SIGNAL \Aluopcode[2]~output_o\ : std_logic;
SIGNAL \Aluopcode[1]~output_o\ : std_logic;
SIGNAL \Aluopcode[0]~output_o\ : std_logic;
SIGNAL \fromControlUnit[7]~output_o\ : std_logic;
SIGNAL \fromControlUnit[6]~output_o\ : std_logic;
SIGNAL \fromControlUnit[5]~output_o\ : std_logic;
SIGNAL \fromControlUnit[4]~output_o\ : std_logic;
SIGNAL \fromControlUnit[3]~output_o\ : std_logic;
SIGNAL \fromControlUnit[2]~output_o\ : std_logic;
SIGNAL \fromControlUnit[1]~output_o\ : std_logic;
SIGNAL \fromControlUnit[0]~output_o\ : std_logic;
SIGNAL \mux2sel[1]~output_o\ : std_logic;
SIGNAL \mux2sel[0]~output_o\ : std_logic;
SIGNAL \instr[14]~input_o\ : std_logic;
SIGNAL \instr[15]~input_o\ : std_logic;
SIGNAL \instr[12]~input_o\ : std_logic;
SIGNAL \instr[13]~input_o\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \instr[9]~input_o\ : std_logic;
SIGNAL \instr[10]~input_o\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \instr[11]~input_o\ : std_logic;
SIGNAL \instr[8]~input_o\ : std_logic;
SIGNAL \inst|Mux7~1_combout\ : std_logic;
SIGNAL \inst|Mux7~2_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux6~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|current_pc[0]~16_combout\ : std_logic;
SIGNAL \instr[0]~input_o\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \N~input_o\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst|Mux0~3_combout\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \inst|Mux0~4_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|current_pc[0]~17\ : std_logic;
SIGNAL \inst1|current_pc[1]~18_combout\ : std_logic;
SIGNAL \instr[1]~input_o\ : std_logic;
SIGNAL \inst1|Add1~1\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|current_pc[1]~19\ : std_logic;
SIGNAL \inst1|current_pc[2]~20_combout\ : std_logic;
SIGNAL \instr[2]~input_o\ : std_logic;
SIGNAL \inst1|Add1~3\ : std_logic;
SIGNAL \inst1|Add1~4_combout\ : std_logic;
SIGNAL \inst1|current_pc[2]~21\ : std_logic;
SIGNAL \inst1|current_pc[3]~22_combout\ : std_logic;
SIGNAL \instr[3]~input_o\ : std_logic;
SIGNAL \inst1|Add1~5\ : std_logic;
SIGNAL \inst1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|current_pc[3]~23\ : std_logic;
SIGNAL \inst1|current_pc[4]~24_combout\ : std_logic;
SIGNAL \instr[4]~input_o\ : std_logic;
SIGNAL \inst1|Add1~7\ : std_logic;
SIGNAL \inst1|Add1~8_combout\ : std_logic;
SIGNAL \inst1|current_pc[4]~25\ : std_logic;
SIGNAL \inst1|current_pc[5]~26_combout\ : std_logic;
SIGNAL \instr[5]~input_o\ : std_logic;
SIGNAL \inst1|Add1~9\ : std_logic;
SIGNAL \inst1|Add1~10_combout\ : std_logic;
SIGNAL \inst1|current_pc[5]~27\ : std_logic;
SIGNAL \inst1|current_pc[6]~28_combout\ : std_logic;
SIGNAL \instr[6]~input_o\ : std_logic;
SIGNAL \inst1|Add1~11\ : std_logic;
SIGNAL \inst1|Add1~12_combout\ : std_logic;
SIGNAL \inst1|current_pc[6]~29\ : std_logic;
SIGNAL \inst1|current_pc[7]~30_combout\ : std_logic;
SIGNAL \instr[7]~input_o\ : std_logic;
SIGNAL \inst1|Add1~13\ : std_logic;
SIGNAL \inst1|Add1~14_combout\ : std_logic;
SIGNAL \inst1|current_pc[7]~31\ : std_logic;
SIGNAL \inst1|current_pc[8]~32_combout\ : std_logic;
SIGNAL \inst1|Add1~15\ : std_logic;
SIGNAL \inst1|Add1~16_combout\ : std_logic;
SIGNAL \inst1|current_pc[8]~33\ : std_logic;
SIGNAL \inst1|current_pc[9]~34_combout\ : std_logic;
SIGNAL \inst1|Add1~17\ : std_logic;
SIGNAL \inst1|Add1~18_combout\ : std_logic;
SIGNAL \inst1|current_pc[9]~35\ : std_logic;
SIGNAL \inst1|current_pc[10]~36_combout\ : std_logic;
SIGNAL \inst1|Add1~19\ : std_logic;
SIGNAL \inst1|Add1~20_combout\ : std_logic;
SIGNAL \inst1|current_pc[10]~37\ : std_logic;
SIGNAL \inst1|current_pc[11]~38_combout\ : std_logic;
SIGNAL \inst1|Add1~21\ : std_logic;
SIGNAL \inst1|Add1~22_combout\ : std_logic;
SIGNAL \inst1|current_pc[11]~39\ : std_logic;
SIGNAL \inst1|current_pc[12]~40_combout\ : std_logic;
SIGNAL \inst1|Add1~23\ : std_logic;
SIGNAL \inst1|Add1~24_combout\ : std_logic;
SIGNAL \inst1|current_pc[12]~41\ : std_logic;
SIGNAL \inst1|current_pc[13]~42_combout\ : std_logic;
SIGNAL \inst1|Add1~25\ : std_logic;
SIGNAL \inst1|Add1~26_combout\ : std_logic;
SIGNAL \inst1|current_pc[13]~43\ : std_logic;
SIGNAL \inst1|current_pc[14]~44_combout\ : std_logic;
SIGNAL \inst1|Add1~27\ : std_logic;
SIGNAL \inst1|Add1~28_combout\ : std_logic;
SIGNAL \inst1|current_pc[14]~45\ : std_logic;
SIGNAL \inst1|current_pc[15]~46_combout\ : std_logic;
SIGNAL \inst1|Add1~29\ : std_logic;
SIGNAL \inst1|Add1~30_combout\ : std_logic;
SIGNAL \inst1|current_pc\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_Mux6~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

mux1sel <= ww_mux1sel;
ww_N <= N;
ww_Z <= Z;
ww_C <= C;
ww_instr <= instr;
accLoad <= ww_accLoad;
ALUinsel <= ww_ALUinsel;
memwrite <= ww_memwrite;
address <= ww_address;
ww_clk <= clk;
Aluopcode <= ww_Aluopcode;
fromControlUnit <= ww_fromControlUnit;
mux2sel <= ww_mux2sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst|ALT_INV_Mux6~1_combout\ <= NOT \inst|Mux6~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y24_N16
\mux1sel~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \mux1sel~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\accLoad~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux7~2_combout\,
	devoe => ww_devoe,
	o => \accLoad~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\ALUinsel~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ALUinsel~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\memwrite~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux6~1_combout\,
	devoe => ww_devoe,
	o => \memwrite~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\address[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(15),
	devoe => ww_devoe,
	o => \address[15]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\address[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(14),
	devoe => ww_devoe,
	o => \address[14]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\address[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(13),
	devoe => ww_devoe,
	o => \address[13]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\address[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(12),
	devoe => ww_devoe,
	o => \address[12]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\address[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(11),
	devoe => ww_devoe,
	o => \address[11]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\address[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(10),
	devoe => ww_devoe,
	o => \address[10]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\address[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(9),
	devoe => ww_devoe,
	o => \address[9]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\address[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(8),
	devoe => ww_devoe,
	o => \address[8]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\address[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(7),
	devoe => ww_devoe,
	o => \address[7]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\address[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(6),
	devoe => ww_devoe,
	o => \address[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\address[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(5),
	devoe => ww_devoe,
	o => \address[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\address[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(4),
	devoe => ww_devoe,
	o => \address[4]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\address[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(3),
	devoe => ww_devoe,
	o => \address[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\address[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(2),
	devoe => ww_devoe,
	o => \address[2]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\address[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(1),
	devoe => ww_devoe,
	o => \address[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\address[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|current_pc\(0),
	devoe => ww_devoe,
	o => \address[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\Aluopcode[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[15]~input_o\,
	devoe => ww_devoe,
	o => \Aluopcode[4]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\Aluopcode[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[11]~input_o\,
	devoe => ww_devoe,
	o => \Aluopcode[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\Aluopcode[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[10]~input_o\,
	devoe => ww_devoe,
	o => \Aluopcode[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\Aluopcode[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[9]~input_o\,
	devoe => ww_devoe,
	o => \Aluopcode[1]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\Aluopcode[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[8]~input_o\,
	devoe => ww_devoe,
	o => \Aluopcode[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\fromControlUnit[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[7]~input_o\,
	devoe => ww_devoe,
	o => \fromControlUnit[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\fromControlUnit[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[6]~input_o\,
	devoe => ww_devoe,
	o => \fromControlUnit[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\fromControlUnit[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[5]~input_o\,
	devoe => ww_devoe,
	o => \fromControlUnit[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\fromControlUnit[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[4]~input_o\,
	devoe => ww_devoe,
	o => \fromControlUnit[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\fromControlUnit[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[3]~input_o\,
	devoe => ww_devoe,
	o => \fromControlUnit[3]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\fromControlUnit[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[2]~input_o\,
	devoe => ww_devoe,
	o => \fromControlUnit[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\fromControlUnit[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[1]~input_o\,
	devoe => ww_devoe,
	o => \fromControlUnit[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\fromControlUnit[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instr[0]~input_o\,
	devoe => ww_devoe,
	o => \fromControlUnit[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
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

-- Location: IOOBUF_X5_Y0_N23
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

-- Location: IOIBUF_X28_Y24_N8
\instr[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(14),
	o => \instr[14]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\instr[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(15),
	o => \instr[15]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\instr[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(12),
	o => \instr[12]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\instr[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(13),
	o => \instr[13]~input_o\);

-- Location: LCCOMB_X22_Y23_N0
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (!\instr[14]~input_o\ & (!\instr[15]~input_o\ & (\instr[12]~input_o\ & \instr[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[14]~input_o\,
	datab => \instr[15]~input_o\,
	datac => \instr[12]~input_o\,
	datad => \instr[13]~input_o\,
	combout => \inst|Mux4~0_combout\);

-- Location: IOIBUF_X13_Y24_N15
\instr[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(9),
	o => \instr[9]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\instr[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(10),
	o => \instr[10]~input_o\);

-- Location: LCCOMB_X22_Y23_N22
\inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\instr[13]~input_o\ & ((\instr[9]~input_o\ & ((!\instr[10]~input_o\) # (!\instr[12]~input_o\))) # (!\instr[9]~input_o\ & ((\instr[10]~input_o\))))) # (!\instr[13]~input_o\ & (((\instr[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[9]~input_o\,
	datab => \instr[13]~input_o\,
	datac => \instr[12]~input_o\,
	datad => \instr[10]~input_o\,
	combout => \inst|Mux7~0_combout\);

-- Location: IOIBUF_X9_Y24_N8
\instr[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(11),
	o => \instr[11]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\instr[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(8),
	o => \instr[8]~input_o\);

-- Location: LCCOMB_X22_Y23_N28
\inst|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~1_combout\ = (\inst|Mux7~0_combout\ & (!\instr[15]~input_o\)) # (!\inst|Mux7~0_combout\ & (\instr[15]~input_o\ & (!\instr[11]~input_o\ & \instr[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \instr[15]~input_o\,
	datac => \instr[11]~input_o\,
	datad => \instr[8]~input_o\,
	combout => \inst|Mux7~1_combout\);

-- Location: LCCOMB_X22_Y23_N26
\inst|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~2_combout\ = (!\inst|Mux7~1_combout\ & ((\instr[14]~input_o\ & (!\instr[13]~input_o\ & !\instr[15]~input_o\)) # (!\instr[14]~input_o\ & (\instr[13]~input_o\ & \instr[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[14]~input_o\,
	datab => \instr[13]~input_o\,
	datac => \instr[15]~input_o\,
	datad => \inst|Mux7~1_combout\,
	combout => \inst|Mux7~2_combout\);

-- Location: LCCOMB_X22_Y23_N12
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (!\instr[14]~input_o\ & (\instr[13]~input_o\ & ((\instr[15]~input_o\) # (\instr[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[14]~input_o\,
	datab => \instr[15]~input_o\,
	datac => \instr[12]~input_o\,
	datad => \instr[13]~input_o\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y23_N6
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\instr[14]~input_o\) # ((!\instr[12]~input_o\) # (!\instr[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[14]~input_o\,
	datab => \instr[13]~input_o\,
	datac => \instr[12]~input_o\,
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y23_N8
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\instr[9]~input_o\ & (!\instr[11]~input_o\ & \instr[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[9]~input_o\,
	datac => \instr[11]~input_o\,
	datad => \instr[10]~input_o\,
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y23_N2
\inst|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~1_combout\ = (\inst|Mux6~0_combout\) # ((\instr[15]~input_o\ & ((!\instr[8]~input_o\) # (!\inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~0_combout\,
	datab => \instr[15]~input_o\,
	datac => \inst|Mux0~0_combout\,
	datad => \instr[8]~input_o\,
	combout => \inst|Mux6~1_combout\);

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

-- Location: LCCOMB_X30_Y3_N0
\inst1|current_pc[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[0]~16_combout\ = \inst1|current_pc\(0) $ (VCC)
-- \inst1|current_pc[0]~17\ = CARRY(\inst1|current_pc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|current_pc\(0),
	datad => VCC,
	combout => \inst1|current_pc[0]~16_combout\,
	cout => \inst1|current_pc[0]~17\);

-- Location: IOIBUF_X16_Y0_N8
\instr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(0),
	o => \instr[0]~input_o\);

-- Location: LCCOMB_X31_Y3_N0
\inst1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = (\inst1|current_pc\(0) & (\instr[0]~input_o\ $ (VCC))) # (!\inst1|current_pc\(0) & (\instr[0]~input_o\ & VCC))
-- \inst1|Add1~1\ = CARRY((\inst1|current_pc\(0) & \instr[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|current_pc\(0),
	datab => \instr[0]~input_o\,
	datad => VCC,
	combout => \inst1|Add1~0_combout\,
	cout => \inst1|Add1~1\);

-- Location: IOIBUF_X18_Y24_N22
\Z~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: LCCOMB_X22_Y23_N30
\inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = \Z~input_o\ $ (!\instr[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Z~input_o\,
	datad => \instr[8]~input_o\,
	combout => \inst|Mux0~1_combout\);

-- Location: IOIBUF_X23_Y24_N1
\N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N,
	o => \N~input_o\);

-- Location: LCCOMB_X22_Y23_N24
\inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = (!\instr[10]~input_o\ & (\instr[9]~input_o\ & (\N~input_o\ $ (!\instr[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[10]~input_o\,
	datab => \N~input_o\,
	datac => \instr[9]~input_o\,
	datad => \instr[8]~input_o\,
	combout => \inst|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y23_N10
\inst|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~3_combout\ = (\inst|Mux0~1_combout\ & ((\inst|Mux0~0_combout\) # ((\instr[11]~input_o\ & \inst|Mux0~2_combout\)))) # (!\inst|Mux0~1_combout\ & (((\instr[11]~input_o\ & \inst|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~1_combout\,
	datab => \inst|Mux0~0_combout\,
	datac => \instr[11]~input_o\,
	datad => \inst|Mux0~2_combout\,
	combout => \inst|Mux0~3_combout\);

-- Location: IOIBUF_X23_Y24_N8
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X22_Y23_N20
\inst|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~4_combout\ = (!\instr[11]~input_o\ & (\instr[8]~input_o\ $ (((!\C~input_o\) # (!\instr[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[10]~input_o\,
	datab => \C~input_o\,
	datac => \instr[11]~input_o\,
	datad => \instr[8]~input_o\,
	combout => \inst|Mux0~4_combout\);

-- Location: LCCOMB_X22_Y23_N16
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (!\instr[14]~input_o\ & (!\instr[15]~input_o\ & (!\instr[12]~input_o\ & \instr[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instr[14]~input_o\,
	datab => \instr[15]~input_o\,
	datac => \instr[12]~input_o\,
	datad => \instr[13]~input_o\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y23_N18
\inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst|Mux2~0_combout\ & ((\inst|Mux0~3_combout\) # ((\inst|Mux0~4_combout\ & !\instr[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~3_combout\,
	datab => \inst|Mux0~4_combout\,
	datac => \instr[9]~input_o\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst|Mux2~1_combout\);

-- Location: FF_X30_Y3_N1
\inst1|current_pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[0]~16_combout\,
	asdata => \inst1|Add1~0_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(0));

-- Location: LCCOMB_X30_Y3_N2
\inst1|current_pc[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[1]~18_combout\ = (\inst1|current_pc\(1) & (!\inst1|current_pc[0]~17\)) # (!\inst1|current_pc\(1) & ((\inst1|current_pc[0]~17\) # (GND)))
-- \inst1|current_pc[1]~19\ = CARRY((!\inst1|current_pc[0]~17\) # (!\inst1|current_pc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|current_pc\(1),
	datad => VCC,
	cin => \inst1|current_pc[0]~17\,
	combout => \inst1|current_pc[1]~18_combout\,
	cout => \inst1|current_pc[1]~19\);

-- Location: IOIBUF_X34_Y12_N1
\instr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(1),
	o => \instr[1]~input_o\);

-- Location: LCCOMB_X31_Y3_N2
\inst1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~2_combout\ = (\inst1|current_pc\(1) & ((\instr[1]~input_o\ & (\inst1|Add1~1\ & VCC)) # (!\instr[1]~input_o\ & (!\inst1|Add1~1\)))) # (!\inst1|current_pc\(1) & ((\instr[1]~input_o\ & (!\inst1|Add1~1\)) # (!\instr[1]~input_o\ & ((\inst1|Add1~1\) 
-- # (GND)))))
-- \inst1|Add1~3\ = CARRY((\inst1|current_pc\(1) & (!\instr[1]~input_o\ & !\inst1|Add1~1\)) # (!\inst1|current_pc\(1) & ((!\inst1|Add1~1\) # (!\instr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|current_pc\(1),
	datab => \instr[1]~input_o\,
	datad => VCC,
	cin => \inst1|Add1~1\,
	combout => \inst1|Add1~2_combout\,
	cout => \inst1|Add1~3\);

-- Location: FF_X30_Y3_N3
\inst1|current_pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[1]~18_combout\,
	asdata => \inst1|Add1~2_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(1));

-- Location: LCCOMB_X30_Y3_N4
\inst1|current_pc[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[2]~20_combout\ = (\inst1|current_pc\(2) & (\inst1|current_pc[1]~19\ $ (GND))) # (!\inst1|current_pc\(2) & (!\inst1|current_pc[1]~19\ & VCC))
-- \inst1|current_pc[2]~21\ = CARRY((\inst1|current_pc\(2) & !\inst1|current_pc[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|current_pc\(2),
	datad => VCC,
	cin => \inst1|current_pc[1]~19\,
	combout => \inst1|current_pc[2]~20_combout\,
	cout => \inst1|current_pc[2]~21\);

-- Location: IOIBUF_X34_Y12_N8
\instr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(2),
	o => \instr[2]~input_o\);

-- Location: LCCOMB_X31_Y3_N4
\inst1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~4_combout\ = ((\instr[2]~input_o\ $ (\inst1|current_pc\(2) $ (!\inst1|Add1~3\)))) # (GND)
-- \inst1|Add1~5\ = CARRY((\instr[2]~input_o\ & ((\inst1|current_pc\(2)) # (!\inst1|Add1~3\))) # (!\instr[2]~input_o\ & (\inst1|current_pc\(2) & !\inst1|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instr[2]~input_o\,
	datab => \inst1|current_pc\(2),
	datad => VCC,
	cin => \inst1|Add1~3\,
	combout => \inst1|Add1~4_combout\,
	cout => \inst1|Add1~5\);

-- Location: FF_X30_Y3_N5
\inst1|current_pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[2]~20_combout\,
	asdata => \inst1|Add1~4_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(2));

-- Location: LCCOMB_X30_Y3_N6
\inst1|current_pc[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[3]~22_combout\ = (\inst1|current_pc\(3) & (!\inst1|current_pc[2]~21\)) # (!\inst1|current_pc\(3) & ((\inst1|current_pc[2]~21\) # (GND)))
-- \inst1|current_pc[3]~23\ = CARRY((!\inst1|current_pc[2]~21\) # (!\inst1|current_pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|current_pc\(3),
	datad => VCC,
	cin => \inst1|current_pc[2]~21\,
	combout => \inst1|current_pc[3]~22_combout\,
	cout => \inst1|current_pc[3]~23\);

-- Location: IOIBUF_X18_Y0_N15
\instr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(3),
	o => \instr[3]~input_o\);

-- Location: LCCOMB_X31_Y3_N6
\inst1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = (\instr[3]~input_o\ & ((\inst1|current_pc\(3) & (\inst1|Add1~5\ & VCC)) # (!\inst1|current_pc\(3) & (!\inst1|Add1~5\)))) # (!\instr[3]~input_o\ & ((\inst1|current_pc\(3) & (!\inst1|Add1~5\)) # (!\inst1|current_pc\(3) & 
-- ((\inst1|Add1~5\) # (GND)))))
-- \inst1|Add1~7\ = CARRY((\instr[3]~input_o\ & (!\inst1|current_pc\(3) & !\inst1|Add1~5\)) # (!\instr[3]~input_o\ & ((!\inst1|Add1~5\) # (!\inst1|current_pc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instr[3]~input_o\,
	datab => \inst1|current_pc\(3),
	datad => VCC,
	cin => \inst1|Add1~5\,
	combout => \inst1|Add1~6_combout\,
	cout => \inst1|Add1~7\);

-- Location: FF_X30_Y3_N7
\inst1|current_pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[3]~22_combout\,
	asdata => \inst1|Add1~6_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(3));

-- Location: LCCOMB_X30_Y3_N8
\inst1|current_pc[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[4]~24_combout\ = (\inst1|current_pc\(4) & (\inst1|current_pc[3]~23\ $ (GND))) # (!\inst1|current_pc\(4) & (!\inst1|current_pc[3]~23\ & VCC))
-- \inst1|current_pc[4]~25\ = CARRY((\inst1|current_pc\(4) & !\inst1|current_pc[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|current_pc\(4),
	datad => VCC,
	cin => \inst1|current_pc[3]~23\,
	combout => \inst1|current_pc[4]~24_combout\,
	cout => \inst1|current_pc[4]~25\);

-- Location: IOIBUF_X32_Y0_N8
\instr[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(4),
	o => \instr[4]~input_o\);

-- Location: LCCOMB_X31_Y3_N8
\inst1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~8_combout\ = ((\inst1|current_pc\(4) $ (\instr[4]~input_o\ $ (!\inst1|Add1~7\)))) # (GND)
-- \inst1|Add1~9\ = CARRY((\inst1|current_pc\(4) & ((\instr[4]~input_o\) # (!\inst1|Add1~7\))) # (!\inst1|current_pc\(4) & (\instr[4]~input_o\ & !\inst1|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|current_pc\(4),
	datab => \instr[4]~input_o\,
	datad => VCC,
	cin => \inst1|Add1~7\,
	combout => \inst1|Add1~8_combout\,
	cout => \inst1|Add1~9\);

-- Location: FF_X30_Y3_N9
\inst1|current_pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[4]~24_combout\,
	asdata => \inst1|Add1~8_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(4));

-- Location: LCCOMB_X30_Y3_N10
\inst1|current_pc[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[5]~26_combout\ = (\inst1|current_pc\(5) & (!\inst1|current_pc[4]~25\)) # (!\inst1|current_pc\(5) & ((\inst1|current_pc[4]~25\) # (GND)))
-- \inst1|current_pc[5]~27\ = CARRY((!\inst1|current_pc[4]~25\) # (!\inst1|current_pc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|current_pc\(5),
	datad => VCC,
	cin => \inst1|current_pc[4]~25\,
	combout => \inst1|current_pc[5]~26_combout\,
	cout => \inst1|current_pc[5]~27\);

-- Location: IOIBUF_X34_Y17_N22
\instr[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(5),
	o => \instr[5]~input_o\);

-- Location: LCCOMB_X31_Y3_N10
\inst1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~10_combout\ = (\inst1|current_pc\(5) & ((\instr[5]~input_o\ & (\inst1|Add1~9\ & VCC)) # (!\instr[5]~input_o\ & (!\inst1|Add1~9\)))) # (!\inst1|current_pc\(5) & ((\instr[5]~input_o\ & (!\inst1|Add1~9\)) # (!\instr[5]~input_o\ & 
-- ((\inst1|Add1~9\) # (GND)))))
-- \inst1|Add1~11\ = CARRY((\inst1|current_pc\(5) & (!\instr[5]~input_o\ & !\inst1|Add1~9\)) # (!\inst1|current_pc\(5) & ((!\inst1|Add1~9\) # (!\instr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|current_pc\(5),
	datab => \instr[5]~input_o\,
	datad => VCC,
	cin => \inst1|Add1~9\,
	combout => \inst1|Add1~10_combout\,
	cout => \inst1|Add1~11\);

-- Location: FF_X30_Y3_N11
\inst1|current_pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[5]~26_combout\,
	asdata => \inst1|Add1~10_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(5));

-- Location: LCCOMB_X30_Y3_N12
\inst1|current_pc[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[6]~28_combout\ = (\inst1|current_pc\(6) & (\inst1|current_pc[5]~27\ $ (GND))) # (!\inst1|current_pc\(6) & (!\inst1|current_pc[5]~27\ & VCC))
-- \inst1|current_pc[6]~29\ = CARRY((\inst1|current_pc\(6) & !\inst1|current_pc[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|current_pc\(6),
	datad => VCC,
	cin => \inst1|current_pc[5]~27\,
	combout => \inst1|current_pc[6]~28_combout\,
	cout => \inst1|current_pc[6]~29\);

-- Location: IOIBUF_X23_Y0_N8
\instr[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(6),
	o => \instr[6]~input_o\);

-- Location: LCCOMB_X31_Y3_N12
\inst1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~12_combout\ = ((\inst1|current_pc\(6) $ (\instr[6]~input_o\ $ (!\inst1|Add1~11\)))) # (GND)
-- \inst1|Add1~13\ = CARRY((\inst1|current_pc\(6) & ((\instr[6]~input_o\) # (!\inst1|Add1~11\))) # (!\inst1|current_pc\(6) & (\instr[6]~input_o\ & !\inst1|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|current_pc\(6),
	datab => \instr[6]~input_o\,
	datad => VCC,
	cin => \inst1|Add1~11\,
	combout => \inst1|Add1~12_combout\,
	cout => \inst1|Add1~13\);

-- Location: FF_X30_Y3_N13
\inst1|current_pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[6]~28_combout\,
	asdata => \inst1|Add1~12_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(6));

-- Location: LCCOMB_X30_Y3_N14
\inst1|current_pc[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[7]~30_combout\ = (\inst1|current_pc\(7) & (!\inst1|current_pc[6]~29\)) # (!\inst1|current_pc\(7) & ((\inst1|current_pc[6]~29\) # (GND)))
-- \inst1|current_pc[7]~31\ = CARRY((!\inst1|current_pc[6]~29\) # (!\inst1|current_pc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|current_pc\(7),
	datad => VCC,
	cin => \inst1|current_pc[6]~29\,
	combout => \inst1|current_pc[7]~30_combout\,
	cout => \inst1|current_pc[7]~31\);

-- Location: IOIBUF_X34_Y9_N15
\instr[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instr(7),
	o => \instr[7]~input_o\);

-- Location: LCCOMB_X31_Y3_N14
\inst1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~14_combout\ = (\inst1|current_pc\(7) & ((\instr[7]~input_o\ & (\inst1|Add1~13\ & VCC)) # (!\instr[7]~input_o\ & (!\inst1|Add1~13\)))) # (!\inst1|current_pc\(7) & ((\instr[7]~input_o\ & (!\inst1|Add1~13\)) # (!\instr[7]~input_o\ & 
-- ((\inst1|Add1~13\) # (GND)))))
-- \inst1|Add1~15\ = CARRY((\inst1|current_pc\(7) & (!\instr[7]~input_o\ & !\inst1|Add1~13\)) # (!\inst1|current_pc\(7) & ((!\inst1|Add1~13\) # (!\instr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|current_pc\(7),
	datab => \instr[7]~input_o\,
	datad => VCC,
	cin => \inst1|Add1~13\,
	combout => \inst1|Add1~14_combout\,
	cout => \inst1|Add1~15\);

-- Location: FF_X30_Y3_N15
\inst1|current_pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[7]~30_combout\,
	asdata => \inst1|Add1~14_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(7));

-- Location: LCCOMB_X30_Y3_N16
\inst1|current_pc[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[8]~32_combout\ = (\inst1|current_pc\(8) & (\inst1|current_pc[7]~31\ $ (GND))) # (!\inst1|current_pc\(8) & (!\inst1|current_pc[7]~31\ & VCC))
-- \inst1|current_pc[8]~33\ = CARRY((\inst1|current_pc\(8) & !\inst1|current_pc[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|current_pc\(8),
	datad => VCC,
	cin => \inst1|current_pc[7]~31\,
	combout => \inst1|current_pc[8]~32_combout\,
	cout => \inst1|current_pc[8]~33\);

-- Location: LCCOMB_X31_Y3_N16
\inst1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~16_combout\ = ((\inst1|current_pc\(8) $ (\instr[7]~input_o\ $ (!\inst1|Add1~15\)))) # (GND)
-- \inst1|Add1~17\ = CARRY((\inst1|current_pc\(8) & ((\instr[7]~input_o\) # (!\inst1|Add1~15\))) # (!\inst1|current_pc\(8) & (\instr[7]~input_o\ & !\inst1|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|current_pc\(8),
	datab => \instr[7]~input_o\,
	datad => VCC,
	cin => \inst1|Add1~15\,
	combout => \inst1|Add1~16_combout\,
	cout => \inst1|Add1~17\);

-- Location: FF_X30_Y3_N17
\inst1|current_pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[8]~32_combout\,
	asdata => \inst1|Add1~16_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(8));

-- Location: LCCOMB_X30_Y3_N18
\inst1|current_pc[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[9]~34_combout\ = (\inst1|current_pc\(9) & (!\inst1|current_pc[8]~33\)) # (!\inst1|current_pc\(9) & ((\inst1|current_pc[8]~33\) # (GND)))
-- \inst1|current_pc[9]~35\ = CARRY((!\inst1|current_pc[8]~33\) # (!\inst1|current_pc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|current_pc\(9),
	datad => VCC,
	cin => \inst1|current_pc[8]~33\,
	combout => \inst1|current_pc[9]~34_combout\,
	cout => \inst1|current_pc[9]~35\);

-- Location: LCCOMB_X31_Y3_N18
\inst1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~18_combout\ = (\instr[7]~input_o\ & ((\inst1|current_pc\(9) & (\inst1|Add1~17\ & VCC)) # (!\inst1|current_pc\(9) & (!\inst1|Add1~17\)))) # (!\instr[7]~input_o\ & ((\inst1|current_pc\(9) & (!\inst1|Add1~17\)) # (!\inst1|current_pc\(9) & 
-- ((\inst1|Add1~17\) # (GND)))))
-- \inst1|Add1~19\ = CARRY((\instr[7]~input_o\ & (!\inst1|current_pc\(9) & !\inst1|Add1~17\)) # (!\instr[7]~input_o\ & ((!\inst1|Add1~17\) # (!\inst1|current_pc\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instr[7]~input_o\,
	datab => \inst1|current_pc\(9),
	datad => VCC,
	cin => \inst1|Add1~17\,
	combout => \inst1|Add1~18_combout\,
	cout => \inst1|Add1~19\);

-- Location: FF_X30_Y3_N19
\inst1|current_pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[9]~34_combout\,
	asdata => \inst1|Add1~18_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(9));

-- Location: LCCOMB_X30_Y3_N20
\inst1|current_pc[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[10]~36_combout\ = (\inst1|current_pc\(10) & (\inst1|current_pc[9]~35\ $ (GND))) # (!\inst1|current_pc\(10) & (!\inst1|current_pc[9]~35\ & VCC))
-- \inst1|current_pc[10]~37\ = CARRY((\inst1|current_pc\(10) & !\inst1|current_pc[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|current_pc\(10),
	datad => VCC,
	cin => \inst1|current_pc[9]~35\,
	combout => \inst1|current_pc[10]~36_combout\,
	cout => \inst1|current_pc[10]~37\);

-- Location: LCCOMB_X31_Y3_N20
\inst1|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~20_combout\ = ((\instr[7]~input_o\ $ (\inst1|current_pc\(10) $ (!\inst1|Add1~19\)))) # (GND)
-- \inst1|Add1~21\ = CARRY((\instr[7]~input_o\ & ((\inst1|current_pc\(10)) # (!\inst1|Add1~19\))) # (!\instr[7]~input_o\ & (\inst1|current_pc\(10) & !\inst1|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instr[7]~input_o\,
	datab => \inst1|current_pc\(10),
	datad => VCC,
	cin => \inst1|Add1~19\,
	combout => \inst1|Add1~20_combout\,
	cout => \inst1|Add1~21\);

-- Location: FF_X30_Y3_N21
\inst1|current_pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[10]~36_combout\,
	asdata => \inst1|Add1~20_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(10));

-- Location: LCCOMB_X30_Y3_N22
\inst1|current_pc[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[11]~38_combout\ = (\inst1|current_pc\(11) & (!\inst1|current_pc[10]~37\)) # (!\inst1|current_pc\(11) & ((\inst1|current_pc[10]~37\) # (GND)))
-- \inst1|current_pc[11]~39\ = CARRY((!\inst1|current_pc[10]~37\) # (!\inst1|current_pc\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|current_pc\(11),
	datad => VCC,
	cin => \inst1|current_pc[10]~37\,
	combout => \inst1|current_pc[11]~38_combout\,
	cout => \inst1|current_pc[11]~39\);

-- Location: LCCOMB_X31_Y3_N22
\inst1|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~22_combout\ = (\instr[7]~input_o\ & ((\inst1|current_pc\(11) & (\inst1|Add1~21\ & VCC)) # (!\inst1|current_pc\(11) & (!\inst1|Add1~21\)))) # (!\instr[7]~input_o\ & ((\inst1|current_pc\(11) & (!\inst1|Add1~21\)) # (!\inst1|current_pc\(11) & 
-- ((\inst1|Add1~21\) # (GND)))))
-- \inst1|Add1~23\ = CARRY((\instr[7]~input_o\ & (!\inst1|current_pc\(11) & !\inst1|Add1~21\)) # (!\instr[7]~input_o\ & ((!\inst1|Add1~21\) # (!\inst1|current_pc\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instr[7]~input_o\,
	datab => \inst1|current_pc\(11),
	datad => VCC,
	cin => \inst1|Add1~21\,
	combout => \inst1|Add1~22_combout\,
	cout => \inst1|Add1~23\);

-- Location: FF_X30_Y3_N23
\inst1|current_pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[11]~38_combout\,
	asdata => \inst1|Add1~22_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(11));

-- Location: LCCOMB_X30_Y3_N24
\inst1|current_pc[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[12]~40_combout\ = (\inst1|current_pc\(12) & (\inst1|current_pc[11]~39\ $ (GND))) # (!\inst1|current_pc\(12) & (!\inst1|current_pc[11]~39\ & VCC))
-- \inst1|current_pc[12]~41\ = CARRY((\inst1|current_pc\(12) & !\inst1|current_pc[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|current_pc\(12),
	datad => VCC,
	cin => \inst1|current_pc[11]~39\,
	combout => \inst1|current_pc[12]~40_combout\,
	cout => \inst1|current_pc[12]~41\);

-- Location: LCCOMB_X31_Y3_N24
\inst1|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~24_combout\ = ((\instr[7]~input_o\ $ (\inst1|current_pc\(12) $ (!\inst1|Add1~23\)))) # (GND)
-- \inst1|Add1~25\ = CARRY((\instr[7]~input_o\ & ((\inst1|current_pc\(12)) # (!\inst1|Add1~23\))) # (!\instr[7]~input_o\ & (\inst1|current_pc\(12) & !\inst1|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instr[7]~input_o\,
	datab => \inst1|current_pc\(12),
	datad => VCC,
	cin => \inst1|Add1~23\,
	combout => \inst1|Add1~24_combout\,
	cout => \inst1|Add1~25\);

-- Location: FF_X30_Y3_N25
\inst1|current_pc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[12]~40_combout\,
	asdata => \inst1|Add1~24_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(12));

-- Location: LCCOMB_X30_Y3_N26
\inst1|current_pc[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[13]~42_combout\ = (\inst1|current_pc\(13) & (!\inst1|current_pc[12]~41\)) # (!\inst1|current_pc\(13) & ((\inst1|current_pc[12]~41\) # (GND)))
-- \inst1|current_pc[13]~43\ = CARRY((!\inst1|current_pc[12]~41\) # (!\inst1|current_pc\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|current_pc\(13),
	datad => VCC,
	cin => \inst1|current_pc[12]~41\,
	combout => \inst1|current_pc[13]~42_combout\,
	cout => \inst1|current_pc[13]~43\);

-- Location: LCCOMB_X31_Y3_N26
\inst1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~26_combout\ = (\inst1|current_pc\(13) & ((\instr[7]~input_o\ & (\inst1|Add1~25\ & VCC)) # (!\instr[7]~input_o\ & (!\inst1|Add1~25\)))) # (!\inst1|current_pc\(13) & ((\instr[7]~input_o\ & (!\inst1|Add1~25\)) # (!\instr[7]~input_o\ & 
-- ((\inst1|Add1~25\) # (GND)))))
-- \inst1|Add1~27\ = CARRY((\inst1|current_pc\(13) & (!\instr[7]~input_o\ & !\inst1|Add1~25\)) # (!\inst1|current_pc\(13) & ((!\inst1|Add1~25\) # (!\instr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|current_pc\(13),
	datab => \instr[7]~input_o\,
	datad => VCC,
	cin => \inst1|Add1~25\,
	combout => \inst1|Add1~26_combout\,
	cout => \inst1|Add1~27\);

-- Location: FF_X30_Y3_N27
\inst1|current_pc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[13]~42_combout\,
	asdata => \inst1|Add1~26_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(13));

-- Location: LCCOMB_X30_Y3_N28
\inst1|current_pc[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[14]~44_combout\ = (\inst1|current_pc\(14) & (\inst1|current_pc[13]~43\ $ (GND))) # (!\inst1|current_pc\(14) & (!\inst1|current_pc[13]~43\ & VCC))
-- \inst1|current_pc[14]~45\ = CARRY((\inst1|current_pc\(14) & !\inst1|current_pc[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|current_pc\(14),
	datad => VCC,
	cin => \inst1|current_pc[13]~43\,
	combout => \inst1|current_pc[14]~44_combout\,
	cout => \inst1|current_pc[14]~45\);

-- Location: LCCOMB_X31_Y3_N28
\inst1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~28_combout\ = ((\instr[7]~input_o\ $ (\inst1|current_pc\(14) $ (!\inst1|Add1~27\)))) # (GND)
-- \inst1|Add1~29\ = CARRY((\instr[7]~input_o\ & ((\inst1|current_pc\(14)) # (!\inst1|Add1~27\))) # (!\instr[7]~input_o\ & (\inst1|current_pc\(14) & !\inst1|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instr[7]~input_o\,
	datab => \inst1|current_pc\(14),
	datad => VCC,
	cin => \inst1|Add1~27\,
	combout => \inst1|Add1~28_combout\,
	cout => \inst1|Add1~29\);

-- Location: FF_X30_Y3_N29
\inst1|current_pc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[14]~44_combout\,
	asdata => \inst1|Add1~28_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(14));

-- Location: LCCOMB_X30_Y3_N30
\inst1|current_pc[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|current_pc[15]~46_combout\ = \inst1|current_pc\(15) $ (\inst1|current_pc[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|current_pc\(15),
	cin => \inst1|current_pc[14]~45\,
	combout => \inst1|current_pc[15]~46_combout\);

-- Location: LCCOMB_X31_Y3_N30
\inst1|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~30_combout\ = \instr[7]~input_o\ $ (\inst1|Add1~29\ $ (\inst1|current_pc\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instr[7]~input_o\,
	datad => \inst1|current_pc\(15),
	cin => \inst1|Add1~29\,
	combout => \inst1|Add1~30_combout\);

-- Location: FF_X30_Y3_N31
\inst1|current_pc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|current_pc[15]~46_combout\,
	asdata => \inst1|Add1~30_combout\,
	sload => \inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|current_pc\(15));

ww_mux1sel <= \mux1sel~output_o\;

ww_accLoad <= \accLoad~output_o\;

ww_ALUinsel <= \ALUinsel~output_o\;

ww_memwrite <= \memwrite~output_o\;

ww_address(15) <= \address[15]~output_o\;

ww_address(14) <= \address[14]~output_o\;

ww_address(13) <= \address[13]~output_o\;

ww_address(12) <= \address[12]~output_o\;

ww_address(11) <= \address[11]~output_o\;

ww_address(10) <= \address[10]~output_o\;

ww_address(9) <= \address[9]~output_o\;

ww_address(8) <= \address[8]~output_o\;

ww_address(7) <= \address[7]~output_o\;

ww_address(6) <= \address[6]~output_o\;

ww_address(5) <= \address[5]~output_o\;

ww_address(4) <= \address[4]~output_o\;

ww_address(3) <= \address[3]~output_o\;

ww_address(2) <= \address[2]~output_o\;

ww_address(1) <= \address[1]~output_o\;

ww_address(0) <= \address[0]~output_o\;

ww_Aluopcode(4) <= \Aluopcode[4]~output_o\;

ww_Aluopcode(3) <= \Aluopcode[3]~output_o\;

ww_Aluopcode(2) <= \Aluopcode[2]~output_o\;

ww_Aluopcode(1) <= \Aluopcode[1]~output_o\;

ww_Aluopcode(0) <= \Aluopcode[0]~output_o\;

ww_fromControlUnit(7) <= \fromControlUnit[7]~output_o\;

ww_fromControlUnit(6) <= \fromControlUnit[6]~output_o\;

ww_fromControlUnit(5) <= \fromControlUnit[5]~output_o\;

ww_fromControlUnit(4) <= \fromControlUnit[4]~output_o\;

ww_fromControlUnit(3) <= \fromControlUnit[3]~output_o\;

ww_fromControlUnit(2) <= \fromControlUnit[2]~output_o\;

ww_fromControlUnit(1) <= \fromControlUnit[1]~output_o\;

ww_fromControlUnit(0) <= \fromControlUnit[0]~output_o\;

ww_mux2sel(1) <= \mux2sel[1]~output_o\;

ww_mux2sel(0) <= \mux2sel[0]~output_o\;
END structure;


