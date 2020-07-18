----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:54:21 07/09/2019 
-- Design Name: 
-- Module Name:    RLC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.Pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RLC is
	PORT(
		x					: in 	memArray64;
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

