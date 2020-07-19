library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Controller is
	PORT(
		clk			: in std_logic;
		enabled1,enabled2,enabled3	: out std_logic
	);
end Controller;

architecture Behavioral of Controller is
	signal temp1,temp2,temp3 : std_logic:='0';
begin
	process(clk)
		variable cnt :integer range 0 to 3:=0;
		begin
			if(clk' event and clk='1')then
				if cnt > 2 then 
				
					temp1<='1';
					temp2<='1';
					temp3<='1';

				else

					if cnt == 0 then
						temp1 <= '1';
					elsif cnt == 1 then
						temp2 <= '1';
					else
						temp3 <= '1';							
					end if;

					cnt := cnt + 1;

				end if;
			end if;
	end process;

	enabled1 <= temp1;
	enabled2 <= temp2;
	enabled3 <= temp3;
	
end Behavioral;

