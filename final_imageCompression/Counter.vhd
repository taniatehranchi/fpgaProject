library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.ALL;

entity counter is
	Port( 
			clk,enable : in  STD_LOGIC;
         dout: out  std_logic_vector(2 downto 0)
		);
end counter;

architecture Behavioral of counter is
begin
	process(clk)
		variable count:std_logic_vector(2 downto 0):="000";
	begin
		if (clk'event and clk='1') then
			if (enable ='1') then
				dout<=count;
				count:=count+1;
			end if;
		end if;
	end process;
end Behavioral;

