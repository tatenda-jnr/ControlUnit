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
-- Generated on "10/18/2017 15:26:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          controlunit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY controlunit_vhd_vec_tst IS
END controlunit_vhd_vec_tst;
ARCHITECTURE controlunit_arch OF controlunit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL accLoad : STD_LOGIC;
SIGNAL address : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ALUinsel : STD_LOGIC;
SIGNAL Aluopcode : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL C : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL controlUnit : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL instr : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL memwrite : STD_LOGIC;
SIGNAL mux1sel : STD_LOGIC;
SIGNAL mux2sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL N : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT controlunit
	PORT (
	accLoad : OUT STD_LOGIC;
	address : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ALUinsel : OUT STD_LOGIC;
	Aluopcode : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	C : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	controlUnit : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	instr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	memwrite : OUT STD_LOGIC;
	mux1sel : OUT STD_LOGIC;
	mux2sel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	N : IN STD_LOGIC;
	Z : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : controlunit
	PORT MAP (
-- list connections between master ports and signals
	accLoad => accLoad,
	address => address,
	ALUinsel => ALUinsel,
	Aluopcode => Aluopcode,
	C => C,
	clk => clk,
	controlUnit => controlUnit,
	instr => instr,
	memwrite => memwrite,
	mux1sel => mux1sel,
	mux2sel => mux2sel,
	N => N,
	Z => Z
	);

-- C
t_prcs_C: PROCESS
BEGIN
	C <= '0';
WAIT;
END PROCESS t_prcs_C;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- instr[15]
t_prcs_instr_15: PROCESS
BEGIN
	instr(15) <= '1';
WAIT;
END PROCESS t_prcs_instr_15;
-- instr[14]
t_prcs_instr_14: PROCESS
BEGIN
	instr(14) <= '0';
WAIT;
END PROCESS t_prcs_instr_14;
-- instr[13]
t_prcs_instr_13: PROCESS
BEGIN
	instr(13) <= '1';
WAIT;
END PROCESS t_prcs_instr_13;
-- instr[12]
t_prcs_instr_12: PROCESS
BEGIN
	instr(12) <= '1';
WAIT;
END PROCESS t_prcs_instr_12;
-- instr[11]
t_prcs_instr_11: PROCESS
BEGIN
	instr(11) <= '0';
WAIT;
END PROCESS t_prcs_instr_11;
-- instr[10]
t_prcs_instr_10: PROCESS
BEGIN
	instr(10) <= '1';
WAIT;
END PROCESS t_prcs_instr_10;
-- instr[9]
t_prcs_instr_9: PROCESS
BEGIN
	instr(9) <= '1';
WAIT;
END PROCESS t_prcs_instr_9;
-- instr[8]
t_prcs_instr_8: PROCESS
BEGIN
	instr(8) <= '0';
WAIT;
END PROCESS t_prcs_instr_8;
-- instr[7]
t_prcs_instr_7: PROCESS
BEGIN
	instr(7) <= '0';
WAIT;
END PROCESS t_prcs_instr_7;
-- instr[6]
t_prcs_instr_6: PROCESS
BEGIN
	instr(6) <= '0';
WAIT;
END PROCESS t_prcs_instr_6;
-- instr[5]
t_prcs_instr_5: PROCESS
BEGIN
	instr(5) <= '0';
WAIT;
END PROCESS t_prcs_instr_5;
-- instr[4]
t_prcs_instr_4: PROCESS
BEGIN
	instr(4) <= '1';
WAIT;
END PROCESS t_prcs_instr_4;
-- instr[3]
t_prcs_instr_3: PROCESS
BEGIN
	instr(3) <= '0';
WAIT;
END PROCESS t_prcs_instr_3;
-- instr[2]
t_prcs_instr_2: PROCESS
BEGIN
	instr(2) <= '1';
WAIT;
END PROCESS t_prcs_instr_2;
-- instr[1]
t_prcs_instr_1: PROCESS
BEGIN
	instr(1) <= '0';
WAIT;
END PROCESS t_prcs_instr_1;
-- instr[0]
t_prcs_instr_0: PROCESS
BEGIN
	instr(0) <= '0';
WAIT;
END PROCESS t_prcs_instr_0;

-- N
t_prcs_N: PROCESS
BEGIN
	N <= '0';
WAIT;
END PROCESS t_prcs_N;

-- Z
t_prcs_Z: PROCESS
BEGIN
	Z <= '0';
WAIT;
END PROCESS t_prcs_Z;
END controlunit_arch;
