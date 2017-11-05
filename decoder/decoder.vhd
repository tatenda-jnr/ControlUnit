
---  INSTRUCTION DECODER
---
---  author : Tatenda Muvhu & Ronewa Ndou
---  version : 4-10-17

--- This unit takes in a 16 bit instruction and splits it into opcode and a byte 
--- to the control unit. The upper nybble of the opcode dertermines the type of
--- instruction 
---
--- 0010				- branch instruction
--- 1010				- immediate instruction
--- 0100				- inherent instruction
--- 0011 or 1011	- direct instruction

library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

--- decoder entity
entity decoder is 
Port ( instruction 	: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);  --- 16 bit instruction 
		 opcode 			: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);	  --- 5 bit opcode 
		 controlUnit  	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);	  --- byte from control unit
		 mux2sel 		: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);   --- control lines	 
		 N, Z, C			: IN STD_LOGIC;							  --- status bits 
		 branch_offset : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 pc_opcode	   : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 mux1sel		   : OUT STD_LOGIC;
		 accload 		: OUT STD_LOGIC;
		 ALUinsel		: OUT STD_LOGIC;
		 memwrite		: OUT STD_LOGIC);	 
end decoder;
		 
--- Behavioral description of decoder
architecture behav of decoder is 

	begin 
	process(instruction)
	
		variable instrSpecifierNybble : STD_LOGIC_VECTOR( 3 downto 0 ) := "0000"; --- variable holds upper nybble of opcode which specifies what type of instruction it is
		variable branchTypeSpecifier   : STD_LOGIC_VECTOR( 3 downto 0 ) := "0000"; --- specifies which branch instruction
		variable tempOpcode 				: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";   --- variable to hold opcode 
		
		begin
		   mux1sel 	<= '0';
			mux2sel 	<= "00";
			accload 	<= '0';
			ALUinsel <= '0';
			memwrite	<= '0';
		
			tempOpcode := instruction(15) & instruction(11 downto 8);
			opcode <= tempOpcode;
			
			instrSpecifierNybble  := instruction(15 downto 12);
			branchTypeSpecifier := instruction(11 downto 8);
			controlUnit <= instruction(7 downto 0);
			if ( instruction(7) ='1') then
			   branch_offset <= "11111111" & instruction(7 downto 0);
			else
				branch_offset <= "00000000" & instruction(7 downto 0);
			end if;
			pc_opcode <= "01";
			
			--- check which instruction type
			CASE instrSpecifierNybble IS
			
				WHEN  "0010" =>  		 --- branch instruction
				
				-- mux lines are already default values for this type of instruction already set above
				--	mux1sel 	<= '0';
				--	mux2sel 	<= "00";
				--	accload 	<= '0';
				--	ALUinsel <= '0';
				--	memwrite	<= '0';
					
					CASE branchTypeSpecifier IS
						WHEN "0000" => -- BRA  - always taken
							pc_opcode <= "10";
							
						WHEN "0100" => -- BCC - branch if the carry bit is clear
							if (C = '0') THEN
						     pc_opcode <= "10";
							end if;
							  
						WHEN "0101" => -- BCS - branch if the carry bit is set
						
							 if (C = '1') THEN
						     pc_opcode <= "10";
							end if;
							  
						WHEN "0110"	=>  -- BNE - branch is the zero bit is clear
							
							 if (z = '0') THEN
						     pc_opcode <= "10";
							  end if;
						
							  
						WHEN "0111"	=>  -- BEQ - branch is the zero bit is set
							
							 if (z = '1') THEN
						     pc_opcode <= "10";
							end if;
							
						WHEN "1010"	=>  -- BPL - branch if the negetive bit is clear
							
							 if (N = '0') THEN
						     pc_opcode <= "10";
							end if;
							
						WHEN "1011"	=>  -- BMI - branch if the negetive bit is set
							
							 if (N = '1') THEN
						     pc_opcode <= "10";
							end if;
							
						WHEN OTHERS =>
						  NULL;
						
						END CASE;	  	
				
				WHEN  "1010" =>		---  immediate instruction
				   mux1sel 	<= '0';
					ALUinsel <= '1';
					memwrite	<= '0';
					accload 	<= '1';
					
					if (tempOpcode = "10001") THEN  --- compare instruction
					  	accload 	<= '0';
					END IF;
				
				WHEN  "0100" =>		---  inherent instruction
					accload 	<= '1';
					ALUinsel <= '0';
					memwrite	<= '0';
					
				
				WHEN  "0011" =>		--- direct instruction	( Read modify operand )	
					mux1sel 	<= '1';
					accload 	<= '0';
					ALUinsel <= '1';
					memwrite	<= NOT (instruction(15));
					
					if (tempOpcode = "10001") THEN  -- compare instruction
					  	accload 	<= '0';
					END IF;
					
					if (tempOpcode = "10111") THEN  -- store instruction
					  	accload 	<= '0';
						memwrite <= '1';
					END IF;
					
					
				WHEN  "1011" =>	   --- direct instruction			
					mux1sel 	<= '1';
					accload 	<= '1';
					ALUinsel <= '1';
					memwrite	<= NOT (instruction(15));
					
					if (tempOpcode = "10001") THEN   -- compare instruction
					  	accload 	<= '0';
					END IF;
					
					if (tempOpcode = "10111") THEN -- store instruction
					  	accload 	<= '0';
						memwrite <= '1';
					END IF;
					
				WHEN OTHERS =>
						NULL;
				
			END CASE;
				
	
	END PROCESS;
	
END behav;
		
		 