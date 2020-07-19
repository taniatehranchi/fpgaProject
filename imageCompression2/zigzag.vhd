library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.matrix.ALL;

entity zigzag is
	port(
			input : in matrix64;
			enable: in std_logic;
			output : out matrix64
		);
end zigzag;

architecture Behavioral of zigzag is
	
begin

	process(enable)--1clk tool mikeshe ta vurudi dar khuruji gharar begirad
	begin
		if(enable'event and enable='1') then
		output(0)<=input(0);
		output(1)<=input(1);
		output(2)<=input(8);
		output(3)<=input(16);
		output(4)<=input(9);
		output(5)<=input(2);
		output(6)<=input(3);
		output(7)<=input(10);
		output(8)<=input(17);
		output(9)<=input(24);
		output(10)<=input(32);
		output(11)<=input(25);
		output(12)<=input(18);
		output(13)<=input(11);
		output(14)<=input(4);
		output(15)<=input(5);
		output(16)<=input(12);
		output(17)<=input(19);
		output(18)<=input(26);
		output(19)<=input(33);
		output(20)<=input(40);
		output(21)<=input(48);
		output(22)<=input(41);
		output(23)<=input(34);
		output(24)<=input(27);
		output(25)<=input(20);
		output(26)<=input(13);
		output(27)<=input(6);
		output(28)<=input(7);
		output(29)<=input(14);
		output(30)<=input(21);
		output(31)<=input(28);
		output(32)<=input(35);
		output(33)<=input(42);
		output(34)<=input(49);
		output(35)<=input(56);
		output(36)<=input(57);
		output(37)<=input(50);
		output(38)<=input(43);
		output(39)<=input(36);
		output(40)<=input(29);
		output(41)<=input(22);
		output(42)<=input(15);
		output(43)<=input(23);
		output(44)<=input(30);
		output(45)<=input(37);
		output(46)<=input(44);
		output(47)<=input(51);
		output(48)<=input(58);
		output(49)<=input(59);
		output(50)<=input(52);
		output(51)<=input(45);
		output(52)<=input(38);
		output(53)<=input(31);
		output(54)<=input(39);
		output(55)<=input(46);
		output(56)<=input(53);
		output(57)<=input(60);
		output(58)<=input(61);
		output(59)<=input(54);
		output(60)<=input(47);
		output(61)<=input(55);
		output(62)<=input(62);
		output(63)<=input(63);
		end if;

	end process;


end Behavioral;

