----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:37:42 06/11/2020 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.textio.all;
use work.matrix.all;

entity DCT is
	port(
		in0,in1,in2,in3,in4,in5,in6,in7: in std_logic_vector(7 downto 0);
		out0,out1,out2,out3,out4,out5,out6,out7: out std_logic_vector(31 downto 0)
	);
	
end DCT;

architecture Behavioral of DCT is
	type matrix8_8 is array(7 downto 0,7 downto 0) of integer;
	constant DCT: matrix8_8:=((707,707,707,707,0,0,0,0),
											(924,383,-383,-924,0,0,0,0),
											(707,-707,-707,707,0,0,0,0),
											(383,-924,924,-383,0,0,0,0),
											(0,0,0,0,981,831,556,195),
											(0,0,0,0,831,-195,-981,-556),
											(0,0,0,0,556,-981,195,831),
											(0,0,0,0,195,-556,831,-981)
											);
	signal temp0,temp1,temp2,temp3,temp4,temp5,temp6,temp7 : integer range -256 to 256;
										
begin

	temp0<=conv_integer(in0+in7);
	temp1<=conv_integer(in1+in6);
	temp2<=conv_integer(in2+in5);
	temp3<=conv_integer(in3+in4);
	temp4<=conv_integer(in0-in7);
	temp5<=conv_integer(in1-in6);
	temp6<=conv_integer(in2-in5);
	temp7<=conv_integer(in3-in4);
	
	out0<=conv_std_logic_vector((temp0*DCT(0,0)+temp1*DCT(0,1)+temp2*DCT(0,2)+temp3*DCT(0,3))/2000,32);
	out1<=conv_std_logic_vector((temp0*DCT(1,0)+temp1*DCT(1,1)+temp2*DCT(1,2)+temp3*DCT(1,3))/2000,32);
	out2<=conv_std_logic_vector((temp0*DCT(2,0)+temp1*DCT(2,1)+temp2*DCT(2,2)+temp3*DCT(2,3))/2000,32);
	out3<=conv_std_logic_vector((temp0*DCT(3,0)+temp1*DCT(3,1)+temp2*DCT(3,2)+temp3*DCT(3,3))/2000,32);
	out4<=conv_std_logic_vector((temp4*DCT(4,4)+temp5*DCT(4,5)+temp6*DCT(4,6)+temp7*DCT(4,7))/2000,32);
	out5<=conv_std_logic_vector((temp4*DCT(5,4)+temp5*DCT(5,5)+temp6*DCT(5,6)+temp7*DCT(5,7))/2000,32);
	out6<=conv_std_logic_vector((temp4*DCT(6,4)+temp5*DCT(6,5)+temp6*DCT(6,6)+temp7*DCT(6,7))/2000,32);
	out7<=conv_std_logic_vector((temp4*DCT(7,4)+temp5*DCT(7,5)+temp6*DCT(7,6)+temp7*DCT(7,7))/2000,32);


	
end Behavioral;

