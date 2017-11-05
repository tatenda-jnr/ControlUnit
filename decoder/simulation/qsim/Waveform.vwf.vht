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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/27/2017 20:47:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          decoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY decoder_vhd_vec_tst IS
END decoder_vhd_vec_tst;
ARCHITECTURE decoder_arch OF decoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL accload : STD_LOGIC;
SIGNAL ALUinsel : STD_LOGIC;
SIGNAL branch_offset : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL C : STD_LOGIC;
SIGNAL controlUnit : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL instruction : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL memwrite : STD_LOGIC;
SIGNAL mux1sel : STD_LOGIC;
SIGNAL mux2sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL N : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL pc_opcode : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Z : STD_LOGIC;
COMPONENT decoder
	PORT (
	accload : OUT STD_LOGIC;
	ALUinsel : OUT STD_LOGIC;
	branch_offset : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	C : IN STD_LOGIC;
	controlUnit : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	instruction : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	memwrite : OUT STD_LOGIC;
	mux1sel : OUT STD_LOGIC;
	mux2sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	N : IN STD_LOGIC;
	opcode : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	pc_opcode : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	Z : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : decoder
	PORT MAP (
-- list connections between master ports and signals
	accload => accload,
	ALUinsel => ALUinsel,
	branch_offset => branch_offset,
	C => C,
	controlUnit => controlUnit,
	instruction => instruction,
	memwrite => memwrite,
	mux1sel => mux1sel,
	mux2sel => mux2sel,
	N => N,
	opcode => opcode,
	pc_opcode => pc_opcode,
	Z => Z
	);
-- instruction[15]
t_prcs_instruction_15: PROCESS
BEGIN
	instruction(15) <= '0';
	WAIT FOR 280000 ps;
	instruction(15) <= '1';
	WAIT FOR 460000 ps;
	instruction(15) <= '0';
WAIT;
END PROCESS t_prcs_instruction_15;
-- instruction[14]
t_prcs_instruction_14: PROCESS
BEGIN
	instruction(14) <= '0';
	WAIT FOR 740000 ps;
	instruction(14) <= '1';
WAIT;
END PROCESS t_prcs_instruction_14;
-- instruction[13]
t_prcs_instruction_13: PROCESS
BEGIN
	instruction(13) <= '1';
	WAIT FOR 740000 ps;
	instruction(13) <= '0';
WAIT;
END PROCESS t_prcs_instruction_13;
-- instruction[12]
t_prcs_instruction_12: PROCESS
BEGIN
	instruction(12) <= '0';
	WAIT FOR 500000 ps;
	instruction(12) <= '1';
	WAIT FOR 240000 ps;
	instruction(12) <= '0';
WAIT;
END PROCESS t_prcs_instruction_12;
-- instruction[11]
t_prcs_instruction_11: PROCESS
BEGIN
	instruction(11) <= '0';
	WAIT FOR 280000 ps;
	instruction(11) <= '1';
	WAIT FOR 220000 ps;
	instruction(11) <= '0';
	WAIT FOR 240000 ps;
	instruction(11) <= '1';
WAIT;
END PROCESS t_prcs_instruction_11;
-- instruction[10]
t_prcs_instruction_10: PROCESS
BEGIN
	instruction(10) <= '1';
	WAIT FOR 280000 ps;
	instruction(10) <= '0';
	WAIT FOR 220000 ps;
	instruction(10) <= '1';
WAIT;
END PROCESS t_prcs_instruction_10;
-- instruction[9]
t_prcs_instruction_9: PROCESS
BEGIN
	instruction(9) <= '1';
WAIT;
END PROCESS t_prcs_instruction_9;
-- instruction[8]
t_prcs_instruction_8: PROCESS
BEGIN
	instruction(8) <= '1';
WAIT;
END PROCESS t_prcs_instruction_8;
-- instruction[7]
t_prcs_instruction_7: PROCESS
BEGIN
	instruction(7) <= '1';
	WAIT FOR 280000 ps;
	instruction(7) <= '0';
WAIT;
END PROCESS t_prcs_instruction_7;
-- instruction[6]
t_prcs_instruction_6: PROCESS
BEGIN
	instruction(6) <= '1';
	WAIT FOR 280000 ps;
	instruction(6) <= '0';
WAIT;
END PROCESS t_prcs_instruction_6;
-- instruction[5]
t_prcs_instruction_5: PROCESS
BEGIN
	instruction(5) <= '1';
	WAIT FOR 500000 ps;
	instruction(5) <= '0';
WAIT;
END PROCESS t_prcs_instruction_5;
-- instruction[4]
t_prcs_instruction_4: PROCESS
BEGIN
	instruction(4) <= '1';
	WAIT FOR 500000 ps;
	instruction(4) <= '0';
WAIT;
END PROCESS t_prcs_instruction_4;
-- instruction[3]
t_prcs_instruction_3: PROCESS
BEGIN
	instruction(3) <= '1';
	WAIT FOR 500000 ps;
	instruction(3) <= '0';
WAIT;
END PROCESS t_prcs_instruction_3;
-- instruction[2]
t_prcs_instruction_2: PROCESS
BEGIN
	instruction(2) <= '0';
	WAIT FOR 280000 ps;
	instruction(2) <= '1';
	WAIT FOR 220000 ps;
	instruction(2) <= '0';
WAIT;
END PROCESS t_prcs_instruction_2;
-- instruction[1]
t_prcs_instruction_1: PROCESS
BEGIN
	instruction(1) <= '1';
	WAIT FOR 500000 ps;
	instruction(1) <= '0';
WAIT;
END PROCESS t_prcs_instruction_1;
-- instruction[0]
t_prcs_instruction_0: PROCESS
BEGIN
	instruction(0) <= '0';
	WAIT FOR 280000 ps;
	instruction(0) <= '1';
	WAIT FOR 460000 ps;
	instruction(0) <= '0';
WAIT;
END PROCESS t_prcs_instruction_0;

-- C
t_prcs_C: PROCESS
BEGIN
	C <= '0';
WAIT;
END PROCESS t_prcs_C;

-- N
t_prcs_N: PROCESS
BEGIN
	N <= '0';
WAIT;
END PROCESS t_prcs_N;

-- Z
t_prcs_Z: PROCESS
BEGIN
	Z <= '1';
	WAIT FOR 280000 ps;
	Z <= '0';
WAIT;
END PROCESS t_prcs_Z;
END decoder_arch;
