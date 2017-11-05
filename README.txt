<10-11-17>
<MVHADM001>  Tatenda Muvhu
<NDXRON002>  Ronewa Ndou

This lab concerns the use of VHDL and graphical entries to synthesize a small control unit which is capable of executing a subset of the Motorola HC08 instruction set

Project file-structure:

── eee3064w_lab7_MVHADM001_NDXRON002/
    ├── controlunit/				<-- top-level entity
    ├── decoder/					<-- subcomponent
    ├── program_counter/				<-- subcomponent
    ├── README.txt				<-- this file
    └── lab7_report_MVHADM001_NDXRON002.pdf	<-- detailed report



The project was created using Quartus prime 17.0. From the given file structure each subcomponent was created as a separate project. To open each component separately a qpf for file is provided in each of the subfolders. 

Simulating the datapath:
University waveforms files can be found in each of the subfolders and the main waveform file for the complete control unit is in the conrol unit folder . Quartus prime 17.0, used to simulate the datapath provides functionality to simulate the components without having to run an external simulating script . 
