library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bankRegisterUnity is

    generic
    (
        DATA_WIDTH : natural := 32
        
    );
	 
	 port(
		 -- input
		 d   : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
		 clk : IN STD_LOGIC;
		 -- output
		 q   : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0)
		 
	);

end bankRegisterUnity;

architecture arch of bankRegisterUnity is

begin
    process(clk)
    begin
        if rising_edge(clk) then
				q <= d;          
        end if;
    end process;
end architecture;