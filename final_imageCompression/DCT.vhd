
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DCT is
	port(
		in0,in1,in2,in3,in4,in5,in6,in7: in std_logic_vector(7 downto 0);
		out0,out1,out2,out3,out4,out5,out6,out7: out std_logic_vector(31 downto 0):= (others => '0')
	);
	
end DCT;

architecture Behavioral of DCT is
	type matrix8_8 is array(0 to 7,0 to 7) of integer;
	constant DCT: matrix8_8:=((707,707,707,707,0,0,0,0),
											(924,383,383,924,0,0,0,0),
											(707,707,707,707,0,0,0,0),
											(383,924,924,383,0,0,0,0),
											(0,0,0,0,981,831,556,195),
											(0,0,0,0,831,195,981,556),
											(0,0,0,0,556,981,195,831),
											(0,0,0,0,195,556,831,981)
											);
	signal temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8 : std_logic_vector(8 downto 0);
	signal test:integer;
	
										
begin

	temp1<=(in0(7)&in0)+(in7(7)&in7);
	temp2<=(in1(7)&in1)+(in6(7)&in6);
	temp3<=(in2(7)&in2)+(in5(7)&in5);
	temp4<=(in3(7)&in3)+(in4(7)&in4);
	temp5<=(in0(7)&in0)-(in7(7)&in7);
	temp6<=(in1(7)&in1)-(in6(7)&in6);
	temp7<=(in2(7)&in2)-(in5(7)&in5);
	temp8<=(in3(7)&in3)-(in4(7)&in4);
	
	test<=DCT(1,0);
	out0<=conv_std_logic_vector(conv_integer((("000000"&temp1)*conv_std_logic_vector(DCT(0,0),15))+(("000000"&temp2)*conv_std_logic_vector(DCT(0,1),15))+(("000000"&temp3)*conv_std_logic_vector(DCT(0,2),15))+(("000000"&temp4)*conv_std_logic_vector(DCT(0,3),15)))/2000,32);
	out1<=conv_std_logic_vector(conv_integer((("000000"&temp1)*conv_std_logic_vector(DCT(1,0),15))+(("000000"&temp2)*conv_std_logic_vector(DCT(1,1),15))-(("000000"&temp3)*conv_std_logic_vector(DCT(1,2),15))-(("000000"&temp4)*conv_std_logic_vector(DCT(1,3),15)))/2000,32);
	out2<=conv_std_logic_vector(conv_integer((("000000"&temp1)*conv_std_logic_vector(DCT(2,0),15))-(("000000"&temp2)*conv_std_logic_vector(DCT(2,1),15))-(("000000"&temp3)*conv_std_logic_vector(DCT(2,2),15))+(("000000"&temp4)*conv_std_logic_vector(DCT(2,3),15)))/2000,32);
	out3<=conv_std_logic_vector(conv_integer((("000000"&temp1)*conv_std_logic_vector(DCT(3,0),15))-(("000000"&temp2)*conv_std_logic_vector(DCT(3,1),15))+(("000000"&temp3)*conv_std_logic_vector(DCT(3,2),15))-(("000000"&temp4)*conv_std_logic_vector(DCT(3,3),15)))/2000,32);
	out4<=conv_std_logic_vector(conv_integer((("000000"&temp5)*conv_std_logic_vector(DCT(4,4),15))+(("000000"&temp6)*conv_std_logic_vector(DCT(4,5),15))+(("000000"&temp7)*conv_std_logic_vector(DCT(4,6),15))+(("000000"&temp8)*conv_std_logic_vector(DCT(4,7),15)))/2000,32);
	out5<=conv_std_logic_vector(conv_integer((("000000"&temp5)*conv_std_logic_vector(DCT(5,4),15))-(("000000"&temp6)*conv_std_logic_vector(DCT(5,5),15))-(("000000"&temp7)*conv_std_logic_vector(DCT(5,6),15))-(("000000"&temp8)*conv_std_logic_vector(DCT(5,7),15)))/2000,32);
	out6<=conv_std_logic_vector(conv_integer((("000000"&temp5)*conv_std_logic_vector(DCT(6,4),15))-(("000000"&temp6)*conv_std_logic_vector(DCT(6,5),15))+(("000000"&temp7)*conv_std_logic_vector(DCT(6,6),15))+(("000000"&temp8)*conv_std_logic_vector(DCT(6,7),15)))/2000,32);
	out7<=conv_std_logic_vector(conv_integer((("000000"&temp5)*conv_std_logic_vector(DCT(7,4),15))-(("000000"&temp6)*conv_std_logic_vector(DCT(7,5),15))+(("000000"&temp7)*conv_std_logic_vector(DCT(7,6),15))-(("000000"&temp8)*conv_std_logic_vector(DCT(7,7),15)))/2000,32);


end Behavioral;

