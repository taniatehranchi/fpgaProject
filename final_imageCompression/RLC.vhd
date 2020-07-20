
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.matrix.all;

entity RLC is
	PORT(
		x					: in 	matrix64;
		y1,y2				: out std_logic_vector (31 downto 0);
		clk,reset,en	: in 	std_logic;
		oe					: out std_logic
		);
end RLC;

architecture Behavioral of RLC is
	

begin
	process(clk,reset)
			variable index : std_logic_vector(5 downto 0) :=(others=>'0');
			variable count : integer range 0 to 64 :=0;
		begin
			if(reset='1')then
				y1<=(others=>'0');
				y2<=(others=>'0');
				index:=(others=>'0');
			elsif(clk' event and clk='1') then
				if(en='1') then
					oe<='1';
					if(conv_integer(x(conv_integer(index)))=0)then
						count:=count+1;
						y2<=(others=>'0');
					else
						y1<=conv_std_logic_vector(count,32);
						y2<=x(conv_integer(index));
						count:=0;
					end if;
					index:=index+'1';
			
				end if;
			end if;
	end process;
end Behavioral;

