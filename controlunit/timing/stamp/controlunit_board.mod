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
___6.385__delay:		DELAY  6.385 ;
___3.974__delay:		DELAY  3.974 ;
___3.908__delay:		DELAY  3.908 ;
___6.372__delay:		DELAY  6.372 ;
___6.072__delay:		DELAY  6.072 ;
___6.457__delay:		DELAY  6.457 ;
___6.836__delay:		DELAY  6.836 ;
___6.947__delay:		DELAY  6.947 ;
___6.799__delay:		DELAY  6.799 ;
_8.792__delay:		DELAY 8.792  ;
___8.082__delay:		DELAY  8.082 ;
___6.340__delay:		DELAY  6.340 ;
_9.037__8.959__delay:		DELAY 9.037 8.959 ;
___8.402__delay:		DELAY  8.402 ;
___6.326__delay:		DELAY  6.326 ;
_9.465__9.384__delay:		DELAY 9.465 9.384 ;
___8.933__delay:		DELAY  8.933 ;
___7.172__delay:		DELAY  7.172 ;
___8.791__delay:		DELAY  8.791 ;
_8.706__delay:		DELAY 8.706  ;
___8.070__delay:		DELAY  8.070 ;
_9.205__9.124__delay:		DELAY 9.205 9.124 ;
___8.494__delay:		DELAY  8.494 ;
___7.871__delay:		DELAY  7.871 ;
___7.992__delay:		DELAY  7.992 ;
_8.114__8.094__delay:		DELAY 8.114 8.094 ;
___8.156__delay:		DELAY  8.156 ;
___7.533__delay:		DELAY  7.533 ;
_8.201__delay:		DELAY 8.201  ;
_7.854__7.863__delay:		DELAY 7.854 7.863 ;
_8.516__delay:		DELAY 8.516  ;
_8.035__delay:		DELAY 8.035  ;
___8.067__delay:		DELAY  8.067 ;
___6.628__delay:		DELAY  6.628 ;
_9.314__9.269__delay:		DELAY 9.314 9.269 ;
_7.768__delay:		DELAY 7.768  ;

ENDMODEL
