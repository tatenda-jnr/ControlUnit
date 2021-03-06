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
_8.439__8.394__delay:		DELAY 8.439 8.394 ;
_8.307__8.345__delay:		DELAY 8.307 8.345 ;
_8.606__8.579__delay:		DELAY 8.606 8.579 ;
_8.492__8.512__delay:		DELAY 8.492 8.512 ;
_9.240__9.195__delay:		DELAY 9.240 9.195 ;
_9.108__9.146__delay:		DELAY 9.108 9.146 ;
___6.432__delay:		DELAY  6.432 ;
___6.414__delay:		DELAY  6.414 ;
___8.081__delay:		DELAY  8.081 ;
___6.930__delay:		DELAY  6.930 ;
___6.947__delay:		DELAY  6.947 ;
___6.947__delay:		DELAY  6.947 ;
___6.307__delay:		DELAY  6.307 ;
___6.307__delay:		DELAY  6.307 ;
___6.242__delay:		DELAY  6.242 ;
___6.242__delay:		DELAY  6.242 ;
___6.390__delay:		DELAY  6.390 ;
___6.390__delay:		DELAY  6.390 ;
___6.611__delay:		DELAY  6.611 ;
___6.611__delay:		DELAY  6.611 ;
___6.458__delay:		DELAY  6.458 ;
___6.478__delay:		DELAY  6.478 ;
___6.460__delay:		DELAY  6.460 ;
___7.859__delay:		DELAY  7.859 ;
___6.477__delay:		DELAY  6.477 ;
___6.477__delay:		DELAY  6.477 ;
___6.517__delay:		DELAY  6.517 ;
___6.517__delay:		DELAY  6.517 ;
___6.495__delay:		DELAY  6.495 ;
___6.456__delay:		DELAY  6.456 ;
_9.221__delay:		DELAY 9.221  ;
___8.091__delay:		DELAY  8.091 ;
___6.446__delay:		DELAY  6.446 ;
_9.244__9.265__delay:		DELAY 9.244 9.265 ;
_9.178__9.150__delay:		DELAY 9.178 9.150 ;
_8.732__8.828__delay:		DELAY 8.732 8.828 ;
___8.207__delay:		DELAY  8.207 ;
___7.626__delay:		DELAY  7.626 ;
_9.547__9.502__delay:		DELAY 9.547 9.502 ;
_9.415__9.453__delay:		DELAY 9.415 9.453 ;
_8.555__8.666__delay:		DELAY 8.555 8.666 ;
___8.062__delay:		DELAY  8.062 ;
___6.080__delay:		DELAY  6.080 ;
_8.365__8.345__delay:		DELAY 8.365 8.345 ;
_8.258__8.271__delay:		DELAY 8.258 8.271 ;
___8.598__delay:		DELAY  8.598 ;
_7.410__delay:		DELAY 7.410  ;
___6.348__delay:		DELAY  6.348 ;
_8.850__8.791__delay:		DELAY 8.850 8.791 ;
_8.704__8.756__delay:		DELAY 8.704 8.756 ;
___5.325__delay:		DELAY  5.325 ;
_5.922__delay:		DELAY 5.922  ;
___4.912__delay:		DELAY  4.912 ;
___4.962__delay:		DELAY  4.962 ;
___6.450__delay:		DELAY  6.450 ;
_6.363__delay:		DELAY 6.363  ;
___5.450__delay:		DELAY  5.450 ;
_6.008__5.803__delay:		DELAY 6.008 5.803 ;
___5.608__delay:		DELAY  5.608 ;
___4.822__delay:		DELAY  4.822 ;
_6.613__delay:		DELAY 6.613  ;
___6.519__delay:		DELAY  6.519 ;
_7.468__delay:		DELAY 7.468  ;
_7.547__8.095__delay:		DELAY 7.547 8.095 ;
_7.288__delay:		DELAY 7.288  ;
_6.613__delay:		DELAY 6.613  ;
___8.579__delay:		DELAY  8.579 ;
_8.492__delay:		DELAY 8.492  ;
___8.111__delay:		DELAY  8.111 ;
_8.742__8.135__delay:		DELAY 8.742 8.135 ;
_7.629__delay:		DELAY 7.629  ;
___7.202__delay:		DELAY  7.202 ;
___9.234__delay:		DELAY  9.234 ;
_9.147__delay:		DELAY 9.147  ;

ENDMODEL
