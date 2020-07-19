library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity quantization is
port(	
		in0,in1,in2,in3,in4,in5,in6,in7: in std_logic_vector(31 downto 0);
		count: in std_logic_vector(2 downto 0);	
		out0,out1,out2,out3,out4,out5,out6,out7: out std_logic_vector(31 downto 0)
);
end quantization;

architecture Behavioral of quantization is

	type matrix8_8 is array(0 to 7,0 to 7) of integer range 0 to 256;
	signal quantization : matrix8_8:=((8,36,36,36,39,45,52,65),
													(36,36,36,37,41,47,56,68),
													(36,36,38,42,47,54,64,78),
													(36,37,42,50,59,69,81,98),
													(39,41,47,54,73,89,108,130),
													(45,47,54,69,89,115,144,178),
													(53,56,64,81,108,144,190,243),
													(65,68,78,98,130,178,243,255));

begin
	process(count,in0,in1,in2,in3,in4,in5,in6,in7)
	
	variable temp0:integer;
	variable temp1:integer;
	variable temp2:integer;
	variable temp3:integer;
	variable temp4:integer;
	variable temp5:integer;
	variable temp6:integer;
	variable temp7:integer;
	

	begin
	
	if count="000" then
		temp0:=conv_integer(in0)/quantization(0,0);
		temp1:=conv_integer(in1)/quantization(0,1);
		temp2:=conv_integer(in2)/quantization(0,2);
		temp3:=conv_integer(in3)/quantization(0,3);
		temp4:=conv_integer(in4)/quantization(0,4);
		temp5:=conv_integer(in5)/quantization(0,5);
		temp6:=conv_integer(in6)/quantization(0,6);
		temp7:=conv_integer(in7)/quantization(0,7);

	
	elsif count="001" then
		temp0:=conv_integer(in0)/quantization(1,0);
		temp1:=conv_integer(in1)/quantization(1,1);
		temp2:=conv_integer(in2)/quantization(1,2);
		temp3:=conv_integer(in3)/quantization(1,3);
		temp4:=conv_integer(in4)/quantization(1,4);
		temp5:=conv_integer(in5)/quantization(1,5);
		temp6:=conv_integer(in6)/quantization(1,6);
		temp7:=conv_integer(in7)/quantization(1,7);
		
	
	elsif count="010" then
		temp0:=conv_integer(in0)/quantization(2,0);
		temp1:=conv_integer(in1)/quantization(2,1);
		temp2:=conv_integer(in2)/quantization(2,2);
		temp3:=conv_integer(in3)/quantization(2,3);
		temp4:=conv_integer(in4)/quantization(2,4);
		temp5:=conv_integer(in5)/quantization(2,5);
		temp6:=conv_integer(in6)/quantization(2,6);
		temp7:=conv_integer(in7)/quantization(2,7);
	
	elsif count="011" then
		temp0:=conv_integer(in0)/quantization(3,0);
		temp1:=conv_integer(in1)/quantization(3,1);
		temp2:=conv_integer(in2)/quantization(3,2);
		temp3:=conv_integer(in3)/quantization(3,3);
		temp4:=conv_integer(in4)/quantization(3,4);
		temp5:=conv_integer(in5)/quantization(3,5);
		temp6:=conv_integer(in6)/quantization(3,6);
		temp7:=conv_integer(in7)/quantization(3,7);
	
	elsif count="100" then
		temp0:=conv_integer(in0)/quantization(4,0);
		temp1:=conv_integer(in1)/quantization(4,1);
		temp2:=conv_integer(in2)/quantization(4,2);
		temp3:=conv_integer(in3)/quantization(4,3);
		temp4:=conv_integer(in4)/quantization(4,4);
		temp5:=conv_integer(in5)/quantization(4,5);
		temp6:=conv_integer(in6)/quantization(4,6);
		temp7:=conv_integer(in7)/quantization(4,7);
	
	elsif count="101" then
		temp0:=conv_integer(in0)/quantization(5,0);
		temp1:=conv_integer(in1)/quantization(5,1);
		temp2:=conv_integer(in2)/quantization(5,2);
		temp3:=conv_integer(in3)/quantization(5,3);
		temp4:=conv_integer(in4)/quantization(5,4);
		temp5:=conv_integer(in5)/quantization(5,5);
		temp6:=conv_integer(in6)/quantization(5,6);
		temp7:=conv_integer(in7)/quantization(5,7);
	
	elsif count="110" then
		temp0:=conv_integer(in0)/quantization(6,0);
		temp1:=conv_integer(in1)/quantization(6,1);
		temp2:=conv_integer(in2)/quantization(6,2);
		temp3:=conv_integer(in3)/quantization(6,3);
		temp4:=conv_integer(in4)/quantization(6,4);
		temp5:=conv_integer(in5)/quantization(6,5);
		temp6:=conv_integer(in6)/quantization(6,6);
		temp7:=conv_integer(in7)/quantization(6,7);

	else
		temp0:=conv_integer(in0)/quantization(7,0);
		temp1:=conv_integer(in1)/quantization(7,1);
		temp2:=conv_integer(in2)/quantization(7,2);
		temp3:=conv_integer(in3)/quantization(7,3);
		temp4:=conv_integer(in4)/quantization(7,4);
		temp5:=conv_integer(in5)/quantization(7,5);
		temp6:=conv_integer(in6)/quantization(7,6);
		temp7:=conv_integer(in7)/quantization(7,7);
		
	end if;
	
	out0<=conv_std_logic_vector(temp0,32);
	out1<=conv_std_logic_vector(temp1,32);
	out2<=conv_std_logic_vector(temp2,32);
	out3<=conv_std_logic_vector(temp3,32);
	out4<=conv_std_logic_vector(temp4,32);
	out5<=conv_std_logic_vector(temp5,32);
	out6<=conv_std_logic_vector(temp6,32);
	out7<=conv_std_logic_vector(temp7,32);
		
	end process;
	
end Behavioral;

