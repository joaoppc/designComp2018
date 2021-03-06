library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity extensor is
	Port (
		s16 : in std_logic_vector( 15 downto 0 );
		s32 : out std_logic_vector( 31 downto 0 )
	); 
	
end entity;

architecture behavioral of extensor is
begin
		s32 <= X"0000" & s16;
		
end architecture;