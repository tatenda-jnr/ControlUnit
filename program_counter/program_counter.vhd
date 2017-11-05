
--- PROGRAM COUNTER

--- author : Tatenda Muvhu & Ronewa Ndou
--- version : 11-10-17

--- This unit takes in a clock signal, an address to incase of a branch
--- a 2 bit choose_pc_operation opcode to dertermine which operation it will perform 
--- outputs a 16 bit pc_output address

--- Operations performed by this PC 
---
--- 1 ) increment current address by one
--- 2 ) increment current address by supplied offset
--- 3 ) reset current address to zero
--- 4 ) otherwise do nothing
 

library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

--- program counter entity
entity program_counter is
    Port ( clk : in STD_LOGIC;
			jump_to_address : in  STD_LOGIC_VECTOR (15 downto 0); --- offset to jump to
           choose_pc_operation : in  STD_LOGIC_VECTOR (1 downto 0); --- opcode to choose operation to be performed by PC
           pc_output : out  STD_LOGIC_VECTOR (15 downto 0) --- output address of PC
           );
end program_counter;


--- behavioral description of decoder 
architecture behave of program_counter is

  
  
begin
 
  process (clk)
  -- signal to hold current program counter value 
  variable current_pc: std_logic_vector( 15 downto 0) := X"0000";
  
  begin

    if rising_edge(clk) then
      case choose_pc_operation is	    
        when "01" =>   -- increment by one
		     current_pc := unsigned(current_pc) + 1;
          current_pc := std_logic_vector(current_pc);
			 
        when "10" =>    -- set address to jump to by adding offset
          current_pc := unsigned(current_pc) + unsigned(jump_to_address);
			  current_pc := std_logic_vector(current_pc);
			-- current_pc :=  current_pc + jump_to_address;
			 	 
        when others =>   -- otherwise do nothing
				NULL;
		  
      end case;
		
		end if;
		pc_output <= current_pc;
		
  end process;
 
  
 
end behave;
