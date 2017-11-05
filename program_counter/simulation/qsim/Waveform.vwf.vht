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
-- Generated on "10/27/2017 20:06:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          program_counter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY program_counter_vhd_vec_tst IS
END program_counter_vhd_vec_tst;
ARCHITECTURE program_counter_arch OF program_counter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL choose_pc_operation : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL jump_to_address : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pc_output : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT program_counter
	PORT (
	choose_pc_operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	clk : IN STD_LOGIC;
	jump_to_address : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : program_counter
	PORT MAP (
-- list connections between master ports and signals
	choose_pc_operation => choose_pc_operation,
	clk => clk,
	jump_to_address => jump_to_address,
	pc_output => pc_output
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 100000 ps;
	clk <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- choose_pc_operation[1]
t_prcs_choose_pc_operation_1: PROCESS
BEGIN
	choose_pc_operation(1) <= '0';
	WAIT FOR 400000 ps;
	choose_pc_operation(1) <= '1';
	WAIT FOR 420000 ps;
	choose_pc_operation(1) <= '0';
WAIT;
END PROCESS t_prcs_choose_pc_operation_1;
-- choose_pc_operation[0]
t_prcs_choose_pc_operation_0: PROCESS
BEGIN
	choose_pc_operation(0) <= '1';
	WAIT FOR 400000 ps;
	choose_pc_operation(0) <= '0';
WAIT;
END PROCESS t_prcs_choose_pc_operation_0;
-- jump_to_address[15]
t_prcs_jump_to_address_15: PROCESS
BEGIN
	jump_to_address(15) <= '0';
	WAIT FOR 600000 ps;
	jump_to_address(15) <= '1';
	WAIT FOR 160000 ps;
	jump_to_address(15) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_15;
-- jump_to_address[14]
t_prcs_jump_to_address_14: PROCESS
BEGIN
	jump_to_address(14) <= '0';
	WAIT FOR 600000 ps;
	jump_to_address(14) <= '1';
	WAIT FOR 160000 ps;
	jump_to_address(14) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_14;
-- jump_to_address[13]
t_prcs_jump_to_address_13: PROCESS
BEGIN
	jump_to_address(13) <= '0';
	WAIT FOR 600000 ps;
	jump_to_address(13) <= '1';
	WAIT FOR 160000 ps;
	jump_to_address(13) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_13;
-- jump_to_address[12]
t_prcs_jump_to_address_12: PROCESS
BEGIN
	jump_to_address(12) <= '0';
	WAIT FOR 600000 ps;
	jump_to_address(12) <= '1';
	WAIT FOR 160000 ps;
	jump_to_address(12) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_12;
-- jump_to_address[11]
t_prcs_jump_to_address_11: PROCESS
BEGIN
	jump_to_address(11) <= '0';
	WAIT FOR 600000 ps;
	jump_to_address(11) <= '1';
	WAIT FOR 160000 ps;
	jump_to_address(11) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_11;
-- jump_to_address[10]
t_prcs_jump_to_address_10: PROCESS
BEGIN
	jump_to_address(10) <= '0';
	WAIT FOR 600000 ps;
	jump_to_address(10) <= '1';
	WAIT FOR 160000 ps;
	jump_to_address(10) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_10;
-- jump_to_address[9]
t_prcs_jump_to_address_9: PROCESS
BEGIN
	jump_to_address(9) <= '0';
	WAIT FOR 600000 ps;
	jump_to_address(9) <= '1';
	WAIT FOR 160000 ps;
	jump_to_address(9) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_9;
-- jump_to_address[8]
t_prcs_jump_to_address_8: PROCESS
BEGIN
	jump_to_address(8) <= '0';
	WAIT FOR 600000 ps;
	jump_to_address(8) <= '1';
	WAIT FOR 160000 ps;
	jump_to_address(8) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_8;
-- jump_to_address[7]
t_prcs_jump_to_address_7: PROCESS
BEGIN
	jump_to_address(7) <= '0';
	WAIT FOR 600000 ps;
	jump_to_address(7) <= '1';
	WAIT FOR 160000 ps;
	jump_to_address(7) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_7;
-- jump_to_address[6]
t_prcs_jump_to_address_6: PROCESS
BEGIN
	jump_to_address(6) <= '0';
	WAIT FOR 600000 ps;
	jump_to_address(6) <= '1';
	WAIT FOR 160000 ps;
	jump_to_address(6) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_6;
-- jump_to_address[5]
t_prcs_jump_to_address_5: PROCESS
BEGIN
	jump_to_address(5) <= '0';
	WAIT FOR 600000 ps;
	jump_to_address(5) <= '1';
	WAIT FOR 160000 ps;
	jump_to_address(5) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_5;
-- jump_to_address[4]
t_prcs_jump_to_address_4: PROCESS
BEGIN
	jump_to_address(4) <= '0';
	WAIT FOR 600000 ps;
	jump_to_address(4) <= '1';
	WAIT FOR 160000 ps;
	jump_to_address(4) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_4;
-- jump_to_address[3]
t_prcs_jump_to_address_3: PROCESS
BEGIN
	jump_to_address(3) <= '0';
	WAIT FOR 600000 ps;
	jump_to_address(3) <= '1';
	WAIT FOR 160000 ps;
	jump_to_address(3) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_3;
-- jump_to_address[2]
t_prcs_jump_to_address_2: PROCESS
BEGIN
	jump_to_address(2) <= '0';
	WAIT FOR 400000 ps;
	jump_to_address(2) <= '1';
	WAIT FOR 200000 ps;
	jump_to_address(2) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_2;
-- jump_to_address[1]
t_prcs_jump_to_address_1: PROCESS
BEGIN
	jump_to_address(1) <= '0';
	WAIT FOR 400000 ps;
	jump_to_address(1) <= '1';
	WAIT FOR 360000 ps;
	jump_to_address(1) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_1;
-- jump_to_address[0]
t_prcs_jump_to_address_0: PROCESS
BEGIN
	jump_to_address(0) <= '0';
	WAIT FOR 400000 ps;
	jump_to_address(0) <= '1';
	WAIT FOR 360000 ps;
	jump_to_address(0) <= '0';
WAIT;
END PROCESS t_prcs_jump_to_address_0;
END program_counter_arch;
