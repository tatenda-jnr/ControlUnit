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
_5.223__5.277__delay:		DELAY 5.223 5.277 ;
_5.203__5.169__delay:		DELAY 5.203 5.169 ;
_5.335__5.416__delay:		DELAY 5.335 5.416 ;
_5.342__5.281__delay:		DELAY 5.342 5.281 ;
_5.729__5.783__delay:		DELAY 5.729 5.783 ;
_5.709__5.675__delay:		DELAY 5.709 5.675 ;
___4.148__delay:		DELAY  4.148 ;
___4.137__delay:		DELAY  4.137 ;
___5.300__delay:		DELAY  5.300 ;
___4.464__delay:		DELAY  4.464 ;
___4.456__delay:		DELAY  4.456 ;
___4.456__delay:		DELAY  4.456 ;
___4.065__delay:		DELAY  4.065 ;
___4.065__delay:		DELAY  4.065 ;
___4.024__delay:		DELAY  4.024 ;
___4.024__delay:		DELAY  4.024 ;
___4.138__delay:		DELAY  4.138 ;
___4.138__delay:		DELAY  4.138 ;
___4.273__delay:		DELAY  4.273 ;
___4.273__delay:		DELAY  4.273 ;
___4.155__delay:		DELAY  4.155 ;
___4.176__delay:		DELAY  4.176 ;
___4.160__delay:		DELAY  4.160 ;
___5.167__delay:		DELAY  5.167 ;
___4.163__delay:		DELAY  4.163 ;
___4.163__delay:		DELAY  4.163 ;
___4.195__delay:		DELAY  4.195 ;
___4.195__delay:		DELAY  4.195 ;
___4.180__delay:		DELAY  4.180 ;
___4.144__delay:		DELAY  4.144 ;
_5.701__delay:		DELAY 5.701  ;
___5.049__delay:		DELAY  5.049 ;
___4.163__delay:		DELAY  4.163 ;
_5.725__5.817__delay:		DELAY 5.725 5.817 ;
_5.743__5.671__delay:		DELAY 5.743 5.671 ;
_5.470__5.614__delay:		DELAY 5.470 5.614 ;
___5.150__delay:		DELAY  5.150 ;
___4.902__delay:		DELAY  4.902 ;
_5.939__5.993__delay:		DELAY 5.939 5.993 ;
_5.919__5.885__delay:		DELAY 5.919 5.885 ;
_5.336__5.482__delay:		DELAY 5.336 5.482 ;
___5.034__delay:		DELAY  5.034 ;
___3.939__delay:		DELAY  3.939 ;
_5.235__5.299__delay:		DELAY 5.235 5.299 ;
_5.225__5.181__delay:		DELAY 5.225 5.181 ;
___5.397__delay:		DELAY  5.397 ;
_4.709__delay:		DELAY 4.709  ;
___4.117__delay:		DELAY  4.117 ;
_5.472__5.528__delay:		DELAY 5.472 5.528 ;
_5.454__5.418__delay:		DELAY 5.454 5.418 ;
___3.483__delay:		DELAY  3.483 ;
_3.714__delay:		DELAY 3.714  ;
___3.138__delay:		DELAY  3.138 ;
___3.227__delay:		DELAY  3.227 ;
___4.083__delay:		DELAY  4.083 ;
_4.009__delay:		DELAY 4.009  ;
___3.546__delay:		DELAY  3.546 ;
_3.757__3.740__delay:		DELAY 3.757 3.740 ;
___3.531__delay:		DELAY  3.531 ;
___3.153__delay:		DELAY  3.153 ;
_4.118__delay:		DELAY 4.118  ;
___4.064__delay:		DELAY  4.064 ;
_4.698__delay:		DELAY 4.698  ;
_4.719__5.109__delay:		DELAY 4.719 5.109 ;
_4.613__delay:		DELAY 4.613  ;
_4.187__delay:		DELAY 4.187  ;
___5.364__delay:		DELAY  5.364 ;
_5.290__delay:		DELAY 5.290  ;
___5.175__delay:		DELAY  5.175 ;
_5.431__5.185__delay:		DELAY 5.431 5.185 ;
_4.865__delay:		DELAY 4.865  ;
___4.620__delay:		DELAY  4.620 ;
___5.779__delay:		DELAY  5.779 ;
_5.705__delay:		DELAY 5.705  ;

ENDMODEL
