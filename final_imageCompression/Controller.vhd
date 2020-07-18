
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Controller is
	PORT(
		clk			: in std_logic;
		en1,en2,en3	: out std_logic
	);
end Controller;

architecture Behavioral of Controller is
	signal y1,y2,y3 : std_logic:='0';
begin
	process(clk)
		variable counter :integer range 0 to 3:=0;
		begin
			if(clk' event and clk='1')then
				case counter is	
					when 0=>
						y1<='1';
						counter:= counter+1;
					when 1=>
						y2<='1';
						counter:= counter+1;
					when 2=>
						y3<='1';
						counter:= counter+1;
					when others=>
						y1<='1';
						y2<='1';
						y3<='1';
				end case;
			end if;
	end process;

	en1<=y1;
	en2<=y2;
	en3<=y3;
	
end Behavioral;

