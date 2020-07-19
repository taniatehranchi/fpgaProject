----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:14:44 07/19/2020 
-- Design Name: 
-- Module Name:    register_88 - Behavioral 
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
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.matrix.ALL;

entity register_88 is
port(
	input0,input1,input2,input3,input4,input5,input6,input7: in std_logic_vector(31 downto 0);
	clk,enable:in std_logic;
	
	oe:out std_logic;
   y: out  matrix64
);
end register_88;

architecture Behavioral of register_88 is

begin

	process(clk)
		variable count: std_logic_vector(2 downto 0);
	begin

	if(clk'event and clk='1') then
		if(enable='1') then
			case count is
			when "000"=>
				y(0)<=input0;
				y(1)<=input1;
				y(2)<=input2;
				y(3)<=input3;
				y(4)<=input4;
				y(5)<=input5;
				y(6)<=input6;
				y(7)<=input7;
				count:=count+1;
				oe<='0';
			when "001"=>
				y(8)<=input0;
				y(9)<=input1;
				y(10)<=input2;
				y(11)<=input3;
				y(12)<=input4;
				y(13)<=input5;
				y(14)<=input6;
				y(15)<=input7;
				count:=count+1;
				oe<='0';
			when "010"=>
				y(16)<=input0;
				y(17)<=input1;
				y(18)<=input2;
				y(19)<=input3;
				y(20)<=input4;
				y(21)<=input5;
				y(22)<=input6;
				y(23)<=input7;
				count:=count+1;
				oe<='0';
			when "011"=>
				y(24)<=input0;
				y(25)<=input1;
				y(26)<=input2;
				y(27)<=input3;
				y(28)<=input4;
				y(29)<=input5;
				y(30)<=input6;
				y(31)<=input7;
				count:=count+1;
				oe<='0';
			when "100"=>
				y(32)<=input0;
				y(33)<=input1;
				y(34)<=input2;
				y(35)<=input3;
				y(36)<=input4;
				y(37)<=input5;
				y(38)<=input6;
				y(39)<=input7;
				count:=count+1;
				oe<='0';
			when "101"=>
				y(40)<=input0;
				y(41)<=input1;
				y(42)<=input2;
				y(43)<=input3;
				y(44)<=input4;
				y(45)<=input5;
				y(46)<=input6;
				y(47)<=input7;
				count:=count+1;
				oe<='0';
			when "110"=>
				y(48)<=input0;
				y(49)<=input1;
				y(50)<=input2;
				y(51)<=input3;
				y(52)<=input4;
				y(53)<=input5;
				y(54)<=input6;
				y(55)<=input7;
				count:=count+1;
				oe<='0';
			when others=>
				y(56)<=input0;
				y(57)<=input1;
				y(58)<=input2;
				y(59)<=input3;
				y(60)<=input4;
				y(61)<=input5;
				y(62)<=input5;
				y(63)<=input5;
				count:=count+1;
				oe<='1';
			end case;
		end if;
	end if;
	end process;


end Behavioral;


