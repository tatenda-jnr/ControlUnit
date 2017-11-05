/*
 Copyright (C) 2017  Intel Corporation. All rights reserved.
 Your use of Intel Corporation's design tools, logic functions 
 and other software and tools, and its AMPP partner logic 
 functions, and any output files from any of the foregoing 
 (including device programming or simulation files), and any 
 associated documentation or information are expressly subject 
 to the terms and conditions of the Intel Program License 
 Subscription Agreement, the Intel Quartus Prime License Agreement,
 the Intel MegaCore Function License Agreement, or other 
 applicable license agreement, including, without limitation, 
 that your use is for the sole purpose of programming logic 
 devices manufactured by Intel and sold by Intel or its 
 authorized distributors.  Please refer to the applicable 
 agreement for further details.
*/
MODEL
/*MODEL HEADER*/
/*
 This file contains Slow Corner delays for the design using part EP4CE6E22C6
 with speed grade 6, core voltage 1.2V, and temperature 85 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "program_counter";
DATE "10/18/2017 14:17:12";
PROGRAM "Quartus Prime";



INPUT choose_pc_operation[1];
INPUT choose_pc_operation[0];
INPUT jump_to_address[0];
INPUT clk;
INPUT jump_to_address[1];
INPUT jump_to_address[2];
INPUT jump_to_address[3];
INPUT jump_to_address[4];
INPUT jump_to_address[5];
INPUT jump_to_address[6];
INPUT jump_to_address[7];
INPUT jump_to_address[8];
INPUT jump_to_address[9];
INPUT jump_to_address[10];
INPUT jump_to_address[11];
INPUT jump_to_address[12];
INPUT jump_to_address[13];
INPUT jump_to_address[14];
INPUT jump_to_address[15];
OUTPUT pc_output[0];
OUTPUT pc_output[1];
OUTPUT pc_output[2];
OUTPUT pc_output[3];
OUTPUT pc_output[4];
OUTPUT pc_output[5];
OUTPUT pc_output[6];
OUTPUT pc_output[7];
OUTPUT pc_output[8];
OUTPUT pc_output[9];
OUTPUT pc_output[10];
OUTPUT pc_output[11];
OUTPUT pc_output[12];
OUTPUT pc_output[13];
OUTPUT pc_output[14];
OUTPUT pc_output[15];

/*Arc definitions start here*/
pos_choose_pc_operation[0]__clk__setup:		SETUP (POSEDGE) choose_pc_operation[0] clk ;
pos_choose_pc_operation[1]__clk__setup:		SETUP (POSEDGE) choose_pc_operation[1] clk ;
pos_jump_to_address[0]__clk__setup:		SETUP (POSEDGE) jump_to_address[0] clk ;
pos_jump_to_address[1]__clk__setup:		SETUP (POSEDGE) jump_to_address[1] clk ;
pos_jump_to_address[2]__clk__setup:		SETUP (POSEDGE) jump_to_address[2] clk ;
pos_jump_to_address[3]__clk__setup:		SETUP (POSEDGE) jump_to_address[3] clk ;
pos_jump_to_address[4]__clk__setup:		SETUP (POSEDGE) jump_to_address[4] clk ;
pos_jump_to_address[5]__clk__setup:		SETUP (POSEDGE) jump_to_address[5] clk ;
pos_jump_to_address[6]__clk__setup:		SETUP (POSEDGE) jump_to_address[6] clk ;
pos_jump_to_address[7]__clk__setup:		SETUP (POSEDGE) jump_to_address[7] clk ;
pos_jump_to_address[8]__clk__setup:		SETUP (POSEDGE) jump_to_address[8] clk ;
pos_jump_to_address[9]__clk__setup:		SETUP (POSEDGE) jump_to_address[9] clk ;
pos_jump_to_address[10]__clk__setup:		SETUP (POSEDGE) jump_to_address[10] clk ;
pos_jump_to_address[11]__clk__setup:		SETUP (POSEDGE) jump_to_address[11] clk ;
pos_jump_to_address[12]__clk__setup:		SETUP (POSEDGE) jump_to_address[12] clk ;
pos_jump_to_address[13]__clk__setup:		SETUP (POSEDGE) jump_to_address[13] clk ;
pos_jump_to_address[14]__clk__setup:		SETUP (POSEDGE) jump_to_address[14] clk ;
pos_jump_to_address[15]__clk__setup:		SETUP (POSEDGE) jump_to_address[15] clk ;
pos_choose_pc_operation[0]__clk__hold:		HOLD (POSEDGE) choose_pc_operation[0] clk ;
pos_choose_pc_operation[1]__clk__hold:		HOLD (POSEDGE) choose_pc_operation[1] clk ;
pos_jump_to_address[0]__clk__hold:		HOLD (POSEDGE) jump_to_address[0] clk ;
pos_jump_to_address[1]__clk__hold:		HOLD (POSEDGE) jump_to_address[1] clk ;
pos_jump_to_address[2]__clk__hold:		HOLD (POSEDGE) jump_to_address[2] clk ;
pos_jump_to_address[3]__clk__hold:		HOLD (POSEDGE) jump_to_address[3] clk ;
pos_jump_to_address[4]__clk__hold:		HOLD (POSEDGE) jump_to_address[4] clk ;
pos_jump_to_address[5]__clk__hold:		HOLD (POSEDGE) jump_to_address[5] clk ;
pos_jump_to_address[6]__clk__hold:		HOLD (POSEDGE) jump_to_address[6] clk ;
pos_jump_to_address[7]__clk__hold:		HOLD (POSEDGE) jump_to_address[7] clk ;
pos_jump_to_address[8]__clk__hold:		HOLD (POSEDGE) jump_to_address[8] clk ;
pos_jump_to_address[9]__clk__hold:		HOLD (POSEDGE) jump_to_address[9] clk ;
pos_jump_to_address[10]__clk__hold:		HOLD (POSEDGE) jump_to_address[10] clk ;
pos_jump_to_address[11]__clk__hold:		HOLD (POSEDGE) jump_to_address[11] clk ;
pos_jump_to_address[12]__clk__hold:		HOLD (POSEDGE) jump_to_address[12] clk ;
pos_jump_to_address[13]__clk__hold:		HOLD (POSEDGE) jump_to_address[13] clk ;
pos_jump_to_address[14]__clk__hold:		HOLD (POSEDGE) jump_to_address[14] clk ;
pos_jump_to_address[15]__clk__hold:		HOLD (POSEDGE) jump_to_address[15] clk ;
pos_clk__pc_output[0]__delay:		DELAY (POSEDGE) clk pc_output[0] ;
pos_clk__pc_output[1]__delay:		DELAY (POSEDGE) clk pc_output[1] ;
pos_clk__pc_output[2]__delay:		DELAY (POSEDGE) clk pc_output[2] ;
pos_clk__pc_output[3]__delay:		DELAY (POSEDGE) clk pc_output[3] ;
pos_clk__pc_output[4]__delay:		DELAY (POSEDGE) clk pc_output[4] ;
pos_clk__pc_output[5]__delay:		DELAY (POSEDGE) clk pc_output[5] ;
pos_clk__pc_output[6]__delay:		DELAY (POSEDGE) clk pc_output[6] ;
pos_clk__pc_output[7]__delay:		DELAY (POSEDGE) clk pc_output[7] ;
pos_clk__pc_output[8]__delay:		DELAY (POSEDGE) clk pc_output[8] ;
pos_clk__pc_output[9]__delay:		DELAY (POSEDGE) clk pc_output[9] ;
pos_clk__pc_output[10]__delay:		DELAY (POSEDGE) clk pc_output[10] ;
pos_clk__pc_output[11]__delay:		DELAY (POSEDGE) clk pc_output[11] ;
pos_clk__pc_output[12]__delay:		DELAY (POSEDGE) clk pc_output[12] ;
pos_clk__pc_output[13]__delay:		DELAY (POSEDGE) clk pc_output[13] ;
pos_clk__pc_output[14]__delay:		DELAY (POSEDGE) clk pc_output[14] ;
pos_clk__pc_output[15]__delay:		DELAY (POSEDGE) clk pc_output[15] ;

ENDMODEL
