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
 with speed grade 6, core voltage 1.2V, and temperature 0 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "decoder";
DATE "10/27/2017 20:45:35";
PROGRAM "Quartus Prime";



INPUT instruction[14];
INPUT instruction[13];
INPUT N;
INPUT instruction[11];
INPUT instruction[8];
INPUT C;
INPUT Z;
INPUT instruction[9];
INPUT instruction[10];
INPUT instruction[12];
INPUT instruction[15];
INPUT instruction[0];
INPUT instruction[1];
INPUT instruction[2];
INPUT instruction[3];
INPUT instruction[4];
INPUT instruction[5];
INPUT instruction[6];
INPUT instruction[7];
OUTPUT opcode[0];
OUTPUT opcode[1];
OUTPUT opcode[2];
OUTPUT opcode[3];
OUTPUT opcode[4];
OUTPUT controlUnit[0];
OUTPUT controlUnit[1];
OUTPUT controlUnit[2];
OUTPUT controlUnit[3];
OUTPUT controlUnit[4];
OUTPUT controlUnit[5];
OUTPUT controlUnit[6];
OUTPUT controlUnit[7];
OUTPUT mux2sel[0];
OUTPUT mux2sel[1];
OUTPUT branch_offset[0];
OUTPUT branch_offset[1];
OUTPUT branch_offset[2];
OUTPUT branch_offset[3];
OUTPUT branch_offset[4];
OUTPUT branch_offset[5];
OUTPUT branch_offset[6];
OUTPUT branch_offset[7];
OUTPUT branch_offset[8];
OUTPUT branch_offset[9];
OUTPUT branch_offset[10];
OUTPUT branch_offset[11];
OUTPUT branch_offset[12];
OUTPUT branch_offset[13];
OUTPUT branch_offset[14];
OUTPUT branch_offset[15];
OUTPUT pc_opcode[0];
OUTPUT pc_opcode[1];
OUTPUT mux1sel;
OUTPUT accload;
OUTPUT ALUinsel;
OUTPUT memwrite;

/*Arc definitions start here*/
_7.454__7.398__delay:		DELAY 7.454 7.398 ;
_7.315__7.349__delay:		DELAY 7.315 7.349 ;
_7.620__7.571__delay:		DELAY 7.620 7.571 ;
_7.488__7.515__delay:		DELAY 7.488 7.515 ;
_8.168__8.112__delay:		DELAY 8.168 8.112 ;
_8.029__8.063__delay:		DELAY 8.029 8.063 ;
___5.637__delay:		DELAY  5.637 ;
___5.621__delay:		DELAY  5.621 ;
___7.042__delay:		DELAY  7.042 ;
___6.074__delay:		DELAY  6.074 ;
___6.092__delay:		DELAY  6.092 ;
___6.092__delay:		DELAY  6.092 ;
___5.523__delay:		DELAY  5.523 ;
___5.523__delay:		DELAY  5.523 ;
___5.459__delay:		DELAY  5.459 ;
___5.459__delay:		DELAY  5.459 ;
___5.594__delay:		DELAY  5.594 ;
___5.594__delay:		DELAY  5.594 ;
___5.801__delay:		DELAY  5.801 ;
___5.801__delay:		DELAY  5.801 ;
___5.656__delay:		DELAY  5.656 ;
___5.675__delay:		DELAY  5.675 ;
___5.659__delay:		DELAY  5.659 ;
___6.856__delay:		DELAY  6.856 ;
___5.673__delay:		DELAY  5.673 ;
___5.673__delay:		DELAY  5.673 ;
___5.713__delay:		DELAY  5.713 ;
___5.713__delay:		DELAY  5.713 ;
___5.693__delay:		DELAY  5.693 ;
___5.649__delay:		DELAY  5.649 ;
_8.141__delay:		DELAY 8.141  ;
___7.146__delay:		DELAY  7.146 ;
___5.652__delay:		DELAY  5.652 ;
_8.170__8.174__delay:		DELAY 8.170 8.174 ;
_8.091__8.065__delay:		DELAY 8.091 8.065 ;
_7.724__7.787__delay:		DELAY 7.724 7.787 ;
___7.261__delay:		DELAY  7.261 ;
___6.709__delay:		DELAY  6.709 ;
_8.443__8.387__delay:		DELAY 8.443 8.387 ;
_8.304__8.338__delay:		DELAY 8.304 8.338 ;
_7.541__7.617__delay:		DELAY 7.541 7.617 ;
___7.107__delay:		DELAY  7.107 ;
___5.321__delay:		DELAY  5.321 ;
_7.377__7.344__delay:		DELAY 7.377 7.344 ;
_7.261__7.272__delay:		DELAY 7.261 7.272 ;
___7.574__delay:		DELAY  7.574 ;
_6.505__delay:		DELAY 6.505  ;
___5.572__delay:		DELAY  5.572 ;
_7.821__7.748__delay:		DELAY 7.821 7.748 ;
_7.665__7.716__delay:		DELAY 7.665 7.716 ;
___4.791__delay:		DELAY  4.791 ;
_5.368__delay:		DELAY 5.368  ;
___4.455__delay:		DELAY  4.455 ;
___4.471__delay:		DELAY  4.471 ;
___5.831__delay:		DELAY  5.831 ;
_5.748__delay:		DELAY 5.748  ;
___4.899__delay:		DELAY  4.899 ;
_5.441__5.228__delay:		DELAY 5.441 5.228 ;
___5.067__delay:		DELAY  5.067 ;
___4.346__delay:		DELAY  4.346 ;
_5.975__delay:		DELAY 5.975  ;
___5.870__delay:		DELAY  5.870 ;
_6.588__delay:		DELAY 6.588  ;
_6.652__7.119__delay:		DELAY 6.652 7.119 ;
_6.396__delay:		DELAY 6.396  ;
_5.811__delay:		DELAY 5.811  ;
___7.573__delay:		DELAY  7.573 ;
_7.490__delay:		DELAY 7.490  ;
___7.135__delay:		DELAY  7.135 ;
_7.740__7.170__delay:		DELAY 7.740 7.170 ;
_6.709__delay:		DELAY 6.709  ;
___6.321__delay:		DELAY  6.321 ;
___8.169__delay:		DELAY  8.169 ;
_8.086__delay:		DELAY 8.086  ;

ENDMODEL