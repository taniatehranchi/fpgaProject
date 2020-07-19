----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:02:41 06/26/2019 
-- Design Name: 
-- Module Name:    Quantization - Behavioral 
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

entity Quantization is
port(clk,en :in std_logic;
x0,x1,x2,x3,x4,x5,x6,x7 :in std_logic_vector(31 downto 0);
y0,y1,y2,y3,y4,y5,y6,y7 :inout std_logic_vector(31 downto 0)
);
end Quantization;

architecture Behavioral of Quantization is

type array8   is array (0 to 7) of integer; 
type array8_8  is array (0 to 7) of array8; 
signal quantization:array8_8:=((8,36,36,36,39,45,52,65),
										 (36,36,36,37,41,47,56,68),
										 (36,36,38,42,47,54,64,78),
										 (36,37,42,50,59,69,81,98),
										 (39,41,47,54,73,89,108,130),
										 (45,47,54,69,89,115,144,178),
										 (53,56,64,81,108,144,190,243),
									    (65,68,78,98,130,178,243,255));

signal counter:std_logic_vector(2 downto 0):="000";
begin
process(clk,en)
begin
if(clk'event and clk='1' and en='1') then
		y0<=conv_std_logic_vector(conv_integer(x0)/quantization(conv_integer(counter))(0),32);
		y1<=conv_std_logic_vector(conv_integer(x1)/quantization(conv_integer(counter))(1),32);
		y2<=conv_std_logic_vector(conv_integer(x2)/quantization(conv_integer(counter))(2),32);
		y3<=conv_std_logic_vector(conv_integer(x3)/quantization(conv_integer(counter))(3),32);
		y4<=conv_std_logic_vector(conv_integer(x4)/quantization(conv_integer(counter))(4),32);
		y5<=conv_std_logic_vector(conv_integer(x5)/quantization(conv_integer(counter))(5),32);
		y6<=conv_std_logic_vector(conv_integer(x6)/quantization(conv_integer(counter))(6),32);
		y7<=conv_std_logic_vector(conv_integer(x7)/quantization(conv_integer(counter))(7),32);
		counter<=counter+'1';
end if;
end process;

end Behavioral;

