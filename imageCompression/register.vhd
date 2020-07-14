----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:05:04 06/11/2019 
-- Design Name: 
-- Module Name:    DCT - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DCT is
port(clk,en :in std_logic;
x0,x1,x2,x3,x4,x5,x6,x7 :in std_logic_vector(8 downto 0);
y0,y1,y2,y3,y4,y5,y6,y7 :out std_logic_vector(31 downto 0):=(others=>'0')
);
end DCT;

rchitecture Behavioral of DCT is

type array8   is array (1 to 8) of integer; 
type array8_8  is array (1 to 8) of array8; 
signal dct:array8_8:=((7071,7071,7071,7071,0,0,0,0),
							(9239,3827,3827,9239,0,0,0,0),
							(7071,7071,7071,7071,0,0,0,0),
							(3827,9239,9239,3827,0,0,0,0),
							(0,0,0,0,9808,8315,5556,1951),
							(0,0,0,0,8315,1951,9808,5556),
							(0,0,0,0,5556,9808,1951,9239),
							(0,0,0,0,1951,5556,9239,9808));
							
signal hold :integer range 0 to 255;    
begin

process(clk)
begin
	if(clk'event and clk='1' and en='1')then
		y0<=conv_std_logic_vector(conv_integer("00000000"&((x0+x7)*conv_std_logic_vector(dct(1)(1),15))+((x1+x6)*conv_std_logic_vector(dct(1)(2),15))+((x2+x5)*conv_std_logic_vector(dct(1)(3),15))+((x3+x4)*conv_std_logic_vector(dct(1)(4),15)))/20000,32);
		y1<=conv_std_logic_vector(conv_integer("00000000"&((x0+x7)*conv_std_logic_vector(dct(2)(1),15))+((x1+x6)*conv_std_logic_vector(dct(2)(2),15))-((x2+x5)*conv_std_logic_vector(dct(2)(3),15))-((x3+x4)*conv_std_logic_vector(dct(2)(4),15)))/20000,32);
		y2<=conv_std_logic_vector(conv_integer("00000000"&((x0+x7)*conv_std_logic_vector(dct(3)(1),15))-((x1+x6)*conv_std_logic_vector(dct(3)(2),15))-((x2+x5)*conv_std_logic_vector(dct(3)(3),15))+((x3+x4)*conv_std_logic_vector(dct(3)(4),15)))/20000,32);
		y3<=conv_std_logic_vector(conv_integer("00000000"&((x0+x7)*conv_std_logic_vector(dct(4)(1),15))-((x1+x6)*conv_std_logic_vector(dct(4)(2),15))+((x2+x5)*conv_std_logic_vector(dct(4)(3),15))-((x3+x4)*conv_std_logic_vector(dct(4)(4),15)))/20000,32);
		y4<=conv_std_logic_vector(conv_integer("00000000"&((x0-x7)*conv_std_logic_vector(dct(5)(5),15))+((x1-x6)*conv_std_logic_vector(dct(5)(6),15))+((x2-x5)*conv_std_logic_vector(dct(5)(7),15))+((x3-x4)*conv_std_logic_vector(dct(5)(8),15)))/20000,32);
		y5<=conv_std_logic_vector(conv_integer("00000000"&((x0-x7)*conv_std_logic_vector(dct(6)(5),15))-((x1-x6)*conv_std_logic_vector(dct(6)(6),15))-((x2-x5)*conv_std_logic_vector(dct(6)(7),15))-((x3-x4)*conv_std_logic_vector(dct(6)(8),15)))/20000,32);
		y6<=conv_std_logic_vector(conv_integer("00000000"&((x0-x7)*conv_std_logic_vector(dct(7)(5),15))-((x1-x6)*conv_std_logic_vector(dct(7)(6),15))+((x2-x5)*conv_std_logic_vector(dct(7)(7),15))+((x3-x4)*conv_std_logic_vector(dct(7)(8),15)))/20000,32);
		y7<=conv_std_logic_vector(conv_integer("00000000"&((x0-x7)*conv_std_logic_vector(dct(8)(5),15))+((x1-x6)*conv_std_logic_vector(dct(8)(6),15))+((x2-x5)*conv_std_logic_vector(dct(8)(7),15))-((x3-x4)*conv_std_logic_vector(dct(8)(8),15)))/20000,32);

end if;
end process;

end Behavioral;

