library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.matrix.all;


entity reg is
port(
	din0,din1,din2,din3,din4,din5,din6,din7: in std_logic_vector(31 downto 0);
	clk: in std_logic;
	out_enable: out std_logic;
	dout: out vector
);
end reg;

architecture Behavioral of reg is

begin

process(clk)
variable count:std_logic_vector(2 downto 0);
begin
if (clk'event and clk='1') then
	case count is
	when "000"=>
		dout(0)<=din0;
		dout(1)<=din1;
		dout(2)<=din2;
		dout(3)<=din3;
		dout(4)<=din4;
		dout(5)<=din5;
		dout(6)<=din6;
		dout(7)<=din7;
		count:=count+1;
		out_enable<='0';
	when "001"=>
		dout(8)<=din0;
		dout(9)<=din1;
		dout(10)<=din2;
		dout(11)<=din3;
		dout(12)<=din4;
		dout(13)<=din5;
		dout(14)<=din6;
		dout(15)<=din7;
		count:=count+1;
		out_enable<='0';
	when "010"=>
		dout(16)<=din0;
		dout(17)<=din1;
		dout(18)<=din2;
		dout(19)<=din3;
		dout(20)<=din4;
		dout(21)<=din5;
		dout(22)<=din6;
		dout(23)<=din7;
		count:=count+1;
		out_enable<='0';
	when "011"=>
		dout(24)<=din0;
		dout(25)<=din1;
		dout(26)<=din2;
		dout(27)<=din3;
		dout(28)<=din4;
		dout(29)<=din5;
		dout(30)<=din6;
		dout(31)<=din7;
		count:=count+1;
		out_enable<='0';
	when "100"=>
		dout(32)<=din0;
		dout(33)<=din1;
		dout(34)<=din2;
		dout(35)<=din3;
		dout(36)<=din4;
		dout(37)<=din5;
		dout(38)<=din6;
		dout(39)<=din7;
		count:=count+1;
		out_enable<='0';
	when "101"=>
		dout(40)<=din0;
		dout(41)<=din1;
		dout(42)<=din2;
		dout(43)<=din3;
		dout(44)<=din4;
		dout(45)<=din5;
		dout(46)<=din6;
		dout(47)<=din7;
		count:=count+1;
		out_enable<='0';
	when "110"=>
		dout(48)<=din0;
		dout(49)<=din1;
		dout(50)<=din2;
		dout(51)<=din3;
		dout(52)<=din4;
		dout(53)<=din5;
		dout(54)<=din6;
		dout(55)<=din7;
		count:=count+1;
		out_enable<='0';
	when "111"=>
		dout(56)<=din0;
		dout(57)<=din1;
		dout(58)<=din2;
		dout(59)<=din3;
		dout(60)<=din4;
		dout(61)<=din5;
		dout(62)<=din6;
		dout(63)<=din7;
		count:=count+1;
		out_enable<='0';
	when others=>
		out_enable<='1';
		count:="000";
	end case;
end if;
end process;
end Behavioral;

