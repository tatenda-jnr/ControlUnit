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
 This file contains Fast Corner delays for the design using part EP4CE6E22C6
 with speed grade M, core voltage 1.2V, and temperature 0 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "controlunit";
DATE "10/24/2017 11:59:19";
PROGRAM "Quartus Prime";



INPUT instr[9];
INPUT instr[10];
INPUT instr[8];
INPUT N;
INPUT instr[11];
INPUT Z;
INPUT C;
INPUT instr[15];
INPUT instr[12];
INPUT instr[14];
INPUT instr[13];
INPUT instr[0];
INPUT clk;
INPUT instr[1];
INPUT instr[2];
INPUT instr[3];
INPUT instr[4];
INPUT instr[5];
INPUT instr[6];
INPUT instr[7];
OUTPUT mux1sel;
OUTPUT accLoad;
OUTPUT ALUinsel;
OUTPUT memwrite;
OUTPUT address[15];
OUTPUT address[14];
OUTPUT address[13];
OUTPUT address[12];
OUTPUT address[11];
OUTPUT address[10];
OUTPUT address[9];
OUTPUT address[8];
OUTPUT address[7];
OUTPUT address[6];
OUTPUT address[5];
OUTPUT address[4];
OUTPUT address[3];
OUTPUT address[2];
OUTPUT address[1];
OUTPUT address[0];
OUTPUT Aluopcode[4];
OUTPUT Aluopcode[3];
OUTPUT Aluopcode[2];
OUTPUT Aluopcode[1];
OUTPUT Aluopcode[0];
OUTPUT fromControlUnit[7];
OUTPUT fromControlUnit[6];
OUTPUT fromControlUnit[5];
OUTPUT fromControlUnit[4];
OUTPUT fromControlUnit[3];
OUTPUT fromControlUnit[2];
OUTPUT fromControlUnit[1];
OUTPUT fromControlUnit[0];
OUTPUT mux2sel[1];
OUTPUT mux2sel[0];

/*Arc definitions start here*/
pos_C__clk__setup:		SETUP (POSEDGE) C clk ;
pos_N__clk__setup:		SETUP (POSEDGE) N clk ;
pos_Z__clk__setup:		SETUP (POSEDGE) Z clk ;
pos_instr[0]__clk__setup:		SETUP (POSEDGE) instr[0] clk ;
pos_instr[1]__clk__setup:		SETUP (POSEDGE) instr[1] clk ;
pos_instr[2]__clk__setup:		SETUP (POSEDGE) instr[2] clk ;
pos_instr[3]__clk__setup:		SETUP (POSEDGE) instr[3] clk ;
pos_instr[4]__clk__setup:		SETUP (POSEDGE) instr[4] clk ;
pos_instr[5]__clk__setup:		SETUP (POSEDGE) instr[5] clk ;
pos_instr[6]__clk__setup:		SETUP (POSEDGE) instr[6] clk ;
pos_instr[7]__clk__setup:		SETUP (POSEDGE) instr[7] clk ;
pos_instr[8]__clk__setup:		SETUP (POSEDGE) instr[8] clk ;
pos_instr[9]__clk__setup:		SETUP (POSEDGE) instr[9] clk ;
pos_instr[10]__clk__setup:		SETUP (POSEDGE) instr[10] clk ;
pos_instr[11]__clk__setup:		SETUP (POSEDGE) instr[11] clk ;
pos_instr[12]__clk__setup:		SETUP (POSEDGE) instr[12] clk ;
pos_instr[13]__clk__setup:		SETUP (POSEDGE) instr[13] clk ;
pos_instr[14]__clk__setup:		SETUP (POSEDGE) instr[14] clk ;
pos_instr[15]__clk__setup:		SETUP (POSEDGE) instr[15] clk ;
pos_C__clk__hold:		HOLD (POSEDGE) C clk ;
pos_N__clk__hold:		HOLD (POSEDGE) N clk ;
pos_Z__clk__hold:		HOLD (POSEDGE) Z clk ;
pos_instr[0]__clk__hold:		HOLD (POSEDGE) instr[0] clk ;
pos_instr[1]__clk__hold:		HOLD (POSEDGE) instr[1] clk ;
pos_instr[2]__clk__hold:		HOLD (POSEDGE) instr[2] clk ;
pos_instr[3]__clk__hold:		HOLD (POSEDGE) instr[3] clk ;
pos_instr[4]__clk__hold:		HOLD (POSEDGE) instr[4] clk ;
pos_instr[5]__clk__hold:		HOLD (POSEDGE) instr[5] clk ;
pos_instr[6]__clk__hold:		HOLD (POSEDGE) instr[6] clk ;
pos_instr[7]__clk__hold:		HOLD (POSEDGE) instr[7] clk ;
pos_instr[8]__clk__hold:		HOLD (POSEDGE) instr[8] clk ;
pos_instr[9]__clk__hold:		HOLD (POSEDGE) instr[9] clk ;
pos_instr[10]__clk__hold:		HOLD (POSEDGE) instr[10] clk ;
pos_instr[11]__clk__hold:		HOLD (POSEDGE) instr[11] clk ;
pos_instr[12]__clk__hold:		HOLD (POSEDGE) instr[12] clk ;
pos_instr[13]__clk__hold:		HOLD (POSEDGE) instr[13] clk ;
pos_instr[14]__clk__hold:		HOLD (POSEDGE) instr[14] clk ;
pos_instr[15]__clk__hold:		HOLD (POSEDGE) instr[15] clk ;
pos_clk__address[0]__delay:		DELAY (POSEDGE) clk address[0] ;
pos_clk__address[1]__delay:		DELAY (POSEDGE) clk address[1] ;
pos_clk__address[2]__delay:		DELAY (POSEDGE) clk address[2] ;
pos_clk__address[3]__delay:		DELAY (POSEDGE) clk address[3] ;
pos_clk__address[4]__delay:		DELAY (POSEDGE) clk address[4] ;
pos_clk__address[5]__delay:		DELAY (POSEDGE) clk address[5] ;
pos_clk__address[6]__delay:		DELAY (POSEDGE) clk address[6] ;
pos_clk__address[7]__delay:		DELAY (POSEDGE) clk address[7] ;
pos_clk__address[8]__delay:		DELAY (POSEDGE) clk address[8] ;
pos_clk__address[9]__delay:		DELAY (POSEDGE) clk address[9] ;
pos_clk__address[10]__delay:		DELAY (POSEDGE) clk address[10] ;
pos_clk__address[11]__delay:		DELAY (POSEDGE) clk address[11] ;
pos_clk__address[12]__delay:		DELAY (POSEDGE) clk address[12] ;
pos_clk__address[13]__delay:		DELAY (POSEDGE) clk address[13] ;
pos_clk__address[14]__delay:		DELAY (POSEDGE) clk address[14] ;
pos_clk__address[15]__delay:		DELAY (POSEDGE) clk address[15] ;
___4.117__delay:		DELAY  4.117 ;
___2.685__delay:		DELAY  2.685 ;
___2.626__delay:		DELAY  2.626 ;
___4.107__delay:		DELAY  4.107 ;
___3.935__delay:		DELAY  3.935 ;
___4.171__delay:		DELAY  4.171 ;
___4.419__delay:		DELAY  4.419 ;
___4.473__delay:		DELAY  4.473 ;
___4.381__delay:		DELAY  4.381 ;
_5.483__delay:		DELAY 5.483  ;
___5.055__delay:		DELAY  5.055 ;
___4.105__delay:		DELAY  4.105 ;
_5.610__5.621__delay:		DELAY 5.610 5.621 ;
___5.237__delay:		DELAY  5.237 ;
___4.077__delay:		DELAY  4.077 ;
_5.865__5.876__delay:		DELAY 5.865 5.876 ;
___5.556__delay:		DELAY  5.556 ;
___4.632__delay:		DELAY  4.632 ;
___5.550__delay:		DELAY  5.550 ;
_5.511__delay:		DELAY 5.511  ;
___5.156__delay:		DELAY  5.156 ;
_5.697__5.708__delay:		DELAY 5.697 5.708 ;
___5.287__delay:		DELAY  5.287 ;
___5.034__delay:		DELAY  5.034 ;
___5.108__delay:		DELAY  5.108 ;
_5.079__5.117__delay:		DELAY 5.079 5.117 ;
___5.087__delay:		DELAY  5.087 ;
___4.834__delay:		DELAY  4.834 ;
_5.153__delay:		DELAY 5.153  ;
_4.938__5.014__delay:		DELAY 4.938 5.014 ;
_5.386__delay:		DELAY 5.386  ;
_5.043__delay:		DELAY 5.043  ;
___5.174__delay:		DELAY  5.174 ;
___4.262__delay:		DELAY  4.262 ;
_5.779__5.802__delay:		DELAY 5.779 5.802 ;
_4.987__delay:		DELAY 4.987  ;

ENDMODEL
