library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity unidadeControleALU is
    Port ( 
	 
           funct   		  : in  STD_LOGIC_VECTOR (5 downto 0) := "000000";
           ulaOP			  : in  std_logic_vector (1 downto 0) := "00";
			  
			  instr   	     : out STD_LOGIC_VECTOR (3 downto 0)

	 );
end entity;

architecture bhv of unidadeControleALU is
begin

				
	instr <= "0010" when ulaOP = "00" else								-- add
				"0110" when ulaOP = "01" else								-- sub
				"0010" when ulaOP = "10" and funct = "100000" else -- add
				"0110" when ulaOP = "10" and funct = "100010" else -- sub
				"0000" when ulaOP = "10" and funct = "100100" else -- and
				"0001" when ulaOP = "10" and funct = "100101" else -- or
				"0111" when ulaOP = "10" and funct = "101010";     -- slt
	
end architecture;