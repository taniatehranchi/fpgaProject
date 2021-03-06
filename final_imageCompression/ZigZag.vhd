
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Pack.all;

entity ZigZag is
	PORT(
		x0,x1,x2,x3,x4,x5,x6,x7	: in 		std_logic_vector(31 downto 0);
		y								: out 	memArray64;
		clk,reset,en				: in 		std_logic;
		oe								: out 	std_logic
	);
end ZigZag;

architecture Behavioral of ZigZag is
	signal 	y0,y1,y2,y3,y4,y5,y6,y7,
				y8,y9,y10,y11,y12,y13,y14,y15,
				y16,y17,y18,y19,y20,y21,y22,y23,
				y24,y25,y26,y27,y28,y29,y30,y31,
				y32,y33,y34,y35,y36,y37,y38,y39,
				y40,y41,y42,y43,y44,y45,y46,y47,
				y48,y49,y50,y51,y52,y53,y54,y55,
				y56,y57,y58,y59,y60,y61,y62,y63 : std_logic_vector(31 downto 0);

begin
	process(clk,reset)
		variable counter : integer range 0 to 8:=0;
		begin
			if(reset='1')then
				y1<=(others=>'0');
			elsif(clk' event and clk='1')then
				if(en='1')then
					if(counter=8) then
						counter:=0;
						oe<='1';
					else
						oe<='0';
						case counter is
							when 0=>
							y0<=x0;
							y1<=x1;
							y5<=x2;
							y6<=x3;
							y14<=x4;
							y15<=x5;
							y27<=x6;
							y28<=x7;
						when 1=>
							y2<=x0;
							y4<=x1;
							y7<=x2;
							y13<=x3;
							y16<=x4;
							y26<=x5;
							y29<=x6;
							y42<=x7;
						when 2=>
							y3<=x0;
							y8<=x1;
							y12<=x2;
							y17<=x3;
							y25<=x4;
							y30<=x5;
							y41<=x6;
							y43<=x7;
						when 3=>
							y9<=x0;
							y11<=x1;
							y18<=x2;
							y24<=x3;
							y31<=x4;
							y40<=x5;
							y44<=x6;
							y53<=x7;
						when 4=>
							y10<=x0;
							y19<=x1;
							y23<=x2;
							y32<=x3;
							y39<=x4;
							y45<=x5;
							y52<=x6;
							y54<=x7;
						when 5=>
							y20<=x0;
							y22<=x1;
							y33<=x2;
							y38<=x3;
							y46<=x4;
							y51<=x5;
							y55<=x6;
							y60<=x7;
						when 6=>
							y21<=x0;
							y34<=x1;
							y37<=x2;
							y47<=x3;
							y50<=x4;
							y56<=x5;
							y59<=x6;
							y61<=x7;
						when 7=>
							y35<=x0;
							y36<=x1;
							y48<=x2;
							y49<=x3;
							y57<=x4;
							y58<=x5;
							y62<=x6;
							y63<=x7;
						when others=>
							oe<='0';
						end case;
						counter:=counter+1;
					end if;
				end if;
			end if;
	end process;
								y(0)<=y0;
								y(1)<=y1;
								y(5)<=y5;
								y(6)<=y6;
								y(14)<=y14;
								y(15)<=y15;
								y(27)<=y27;
								y(28)<=y28;
								y(2)<=y2;
								y(4)<=y4;
								y(7)<=y7;
								y(13)<=y13;
								y(16)<=y16;
								y(26)<=y26;
								y(29)<=y29;
								y(42)<=y42;
								y(3)<=y3;
								y(8)<=y8;
								y(12)<=y12;
								y(17)<=y17;
								y(25)<=y25;
								y(30)<=y30;
								y(41)<=y41;
								y(43)<=y43;
								y(9)<=y9;
								y(11)<=y11;
								y(18)<=y18;
								y(24)<=y24;
								y(31)<=y31;
								y(40)<=y40;
								y(44)<=y44;
								y(53)<=y53;
								y(10)<=y10;
								y(19)<=y19;
								y(23)<=y23;
								y(32)<=y32;
								y(39)<=y39;
								y(45)<=y45;
								y(52)<=y52;
								y(54)<=y54;
								y(20)<=y20;
								y(22)<=y22;
								y(33)<=y33;
								y(38)<=y38;
								y(46)<=y46;
								y(51)<=y51;
								y(55)<=y55;
								y(60)<=y60;
								y(21)<=y21;
								y(34)<=y34;
								y(37)<=y37;
								y(47)<=y47;
								y(50)<=y50;
								y(56)<=y56;
								y(59)<=y59;
								y(61)<=y61;
								y(35)<=y35;
								y(36)<=y36;
								y(48)<=y48;
								y(49)<=y49;
								y(57)<=y57;
								y(58)<=y58;
								y(62)<=y62;
								y(63)<=y63;
end Behavioral;

