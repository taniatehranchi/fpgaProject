----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:29:02 06/27/2019 
-- Design Name: 
-- Module Name:    ZigZag - Behavioral 
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
use work.ArrayPack.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ZigZag is
    Port ( en : in  STD_LOGIC;
			  a: in  memory;
			  y: out  memory
			  );
end ZigZag;

architecture Behavioral of ZigZag is

begin
process(en)
begin
if(en'event and en='1') then
	y(0)<=a(0);
	y(1)<=a(1);
	y(2)<=a(8);
	y(3)<=a(16);
	y(4)<=a(9);
	y(5)<=a(2);
	y(6)<=a(3);
	y(7)<=a(10);
	y(8)<=a(17);
	y(9)<=a(24);
	y(10)<=a(32);
	y(11)<=a(25);
	y(12)<=a(18);
	y(13)<=a(11);
	y(14)<=a(4);
	y(15)<=a(5);
	y(16)<=a(12);
	y(17)<=a(19);
	y(18)<=a(26);
	y(19)<=a(33);
	y(20)<=a(40);
	y(21)<=a(48);
	y(22)<=a(41);
	y(23)<=a(34);
	y(24)<=a(27);
	y(25)<=a(20);
	y(26)<=a(13);
	y(27)<=a(6);
	y(28)<=a(7);
	y(29)<=a(14);
	y(30)<=a(21);
	y(31)<=a(28);
	y(32)<=a(35);
	y(33)<=a(42);
	y(34)<=a(49);
	y(35)<=a(56);
	y(36)<=a(57);
	y(37)<=a(50);
	y(38)<=a(43);
	y(39)<=a(36);
	y(40)<=a(29);
	y(41)<=a(22);
	y(42)<=a(15);
	y(43)<=a(23);
	y(44)<=a(30);
	y(45)<=a(37);
	y(46)<=a(44);
	y(47)<=a(51);
	y(48)<=a(58);
	y(49)<=a(59);
	y(50)<=a(52);
	y(51)<=a(45);
	y(52)<=a(38);
	y(53)<=a(31);
	y(54)<=a(39);
	y(55)<=a(46);
	y(56)<=a(53);
	y(57)<=a(60);
	y(58)<=a(61);
	y(59)<=a(54);
	y(60)<=a(47);
	y(61)<=a(55);
	y(62)<=a(62);
	y(63)<=a(63);
end if;
end process;


end Behavioral;

