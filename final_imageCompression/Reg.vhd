----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:12:18 07/04/2019 
-- Design Name: 
-- Module Name:    Reg - Behavioral 
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
USE ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reg is
	GENERIC(
		n		: integer range 1 to 32:=8
		);
	PORT(
		x0,x1,x2,x3,x4,x5,x6,x7 : in std_logic_vector(n-1 downto 0);
		clk							: in std_logic;
		clr 							: in std_logic;
		en								: in std_logic;
		y0,y1,y2,y3,y4,y5,y6,y7	: out std_logic_vector(n-1 downto 0)
	);
end Reg;

architecture Behavioral of Reg is
	signal reg0,reg1,reg2,reg3,reg4,reg5,reg6,reg7 : std_logic_vector(n-1 downto 0):=std_logic_vector(to_unsigned(0,x0'Length));
	
begin
	process(clk)
	begin
		if (clk' event and clk='1') then
			if(en='1') then
				if(clr='1') then
					reg0<= std_logic_vector(to_unsigned(0,y0'Length));
					reg1<= std_logic_vector(to_unsigned(0,y0'Length));
					reg2<= std_logic_vector(to_unsigned(0,y0'Length));
					reg3<= std_logic_vector(to_unsigned(0,y0'Length));
					reg4<= std_logic_vector(to_unsigned(0,y0'Length));
					reg5<= std_logic_vector(to_unsigned(0,y0'Length));
					reg6<= std_logic_vector(to_unsigned(0,y0'Length));
					reg7<= std_logic_vector(to_unsigned(0,y0'Length));
				else
					reg0 <= x0;
					reg1 <= x1;
					reg2 <= x2;
					reg3 <= x3;
					reg4 <= x4;
					reg5 <= x5;
					reg6 <= x6;
					reg7 <= x7;
				end if;
			else
				reg0<= std_logic_vector(to_unsigned(0,y0'Length));
				reg1<= std_logic_vector(to_unsigned(0,y0'Length));
				reg2<= std_logic_vector(to_unsigned(0,y0'Length));
				reg3<= std_logic_vector(to_unsigned(0,y0'Length));
				reg4<= std_logic_vector(to_unsigned(0,y0'Length));
				reg5<= std_logic_vector(to_unsigned(0,y0'Length));
				reg6<= std_logic_vector(to_unsigned(0,y0'Length));
				reg7<= std_logic_vector(to_unsigned(0,y0'Length));
			end if;
		end if;
		
	end process;
	y0<=reg0;
	y1<=reg1;
	y2<=reg2;
	y3<=reg3;
	y4<=reg4;
	y5<=reg5;
	y6<=reg6;
	y7<=reg7;

end Behavioral;
