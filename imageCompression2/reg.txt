----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:58:44 06/27/2019 
-- Design Name: 
-- Module Name:    Reg8_8 - Behavioral 
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
use work.ArrayPack.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reg8_8 is
    Port ( clk,en:in std_logic;
			  oc:out std_logic;
			  x0,x1,x2,x3,x4,x5,x6,x7 : in  STD_LOGIC_VECTOR (31 downto 0);
           y: out  memory
			  );
end Reg8_8;

architecture Behavioral of Reg8_8 is
signal counter:std_logic_vector(2 downto 0):="000";
begin
process(clk,en)
begin
if(clk'event and clk='1') then
if en='1' then
	if counter="000" then
		y(0)<=x0;
		y(1)<=x1;
		y(2)<=x2;
		y(3)<=x3;
		y(4)<=x4;
		y(5)<=x5;
		y(6)<=x6;
		y(7)<=x7;
		oc<='0';
	elsif counter="001" then
		y(8)<=x0;
		y(9)<=x1;
		y(10)<=x2;
		y(11)<=x3;
		y(12)<=x4;
		y(13)<=x5;
		y(14)<=x6;
		y(15)<=x7;
		oc<='0';
	elsif counter="010" then
		y(16)<=x0;
		y(17)<=x1;
		y(18)<=x2;
		y(19)<=x3;
		y(20)<=x4;
		y(21)<=x5;
		y(22)<=x6;
		y(23)<=x7;
		oc<='0';
	elsif counter="011" then
		y(24)<=x0;
		y(25)<=x1;
		y(26)<=x2;
		y(27)<=x3;
		y(28)<=x4;
		y(29)<=x5;
		y(30)<=x6;
		y(31)<=x7;
		oc<='0';
	elsif counter="100" then
		y(32)<=x0;
		y(33)<=x1;
		y(34)<=x2;
		y(35)<=x3;
		y(36)<=x4;
		y(37)<=x5;
		y(38)<=x6;
		y(39)<=x7;
		oc<='0';
	elsif counter="101" then
		y(40)<=x0;
		y(41)<=x1;
		y(42)<=x2;
		y(43)<=x3;
		y(44)<=x4;
		y(45)<=x5;
		y(46)<=x6;
		y(47)<=x7;
		oc<='0';
	elsif counter="110" then
		y(48)<=x0;
		y(49)<=x1;
		y(50)<=x2;
		y(51)<=x3;
		y(52)<=x4;
		y(53)<=x5;
		y(54)<=x6;
		y(55)<=x7;
		oc<='0';
	elsif counter="111" then
		y(56)<=x0;
		y(57)<=x1;
		y(58)<=x2;
		y(59)<=x3;
		y(60)<=x4;
		y(61)<=x5;
		y(62)<=x6;
		y(63)<=x7;
		oc<='1';
	end if;
	counter <= counter+'1';
elsif en='0' then
oc<='0';
end if;
end if;
end process;

end Behavioral;

