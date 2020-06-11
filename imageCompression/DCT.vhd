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
		out_dct_block: out imageRows
	);
	
end DCT;

architecture Behavioral of DCT is
	constant dct_matrix: matrix8_8:=((707,707,707,707,0,0,0,0),
											(924,383,-383,-924,0,0,0,0),
											(707,-707,-707,707,0,0,0,0),
											(383,-924,924,-383,0,0,0,0),
											(0,0,0,0,981,831,556,195),
											(0,0,0,0,831,-195,-981,-556),
											(0,0,0,0,556,-981,195,831),
											(0,0,0,0,195,-556,831,-981)
											);
											
	signal multiplier,result: matrix8_1;
begin

	multiplier(0)<=conv_integer(in0+in7);
	multiplier(1)<=conv_integer(in1+in6);
	multiplier(2)<=conv_integer(in2+in5);
	multiplier(3)<=conv_integer(in3+in4);
	multiplier(4)<=conv_integer(in0-in7);
	multiplier(5)<=conv_integer(in1-in6);
	multiplier(6)<=conv_integer(in2-in5);
	multiplier(7)<=conv_integer(in3-in4);
	
	result<=matrix_mul(dct_matrix,multiplier);
	
	out_dct_block(0) <= std_logic_vector(to_unsigned(result(0)/2000, 32));
	out_dct_block(1) <= std_logic_vector(to_unsigned(result(1), 32));
	out_dct_block(2) <= std_logic_vector(to_unsigned(result(2), 32));
	out_dct_block(3) <= std_logic_vector(to_unsigned(result(3), 32));
	out_dct_block(4) <= std_logic_vector(to_unsigned(result(4), 32));
	out_dct_block(5) <= std_logic_vector(to_unsigned(result(5), 32));
	out_dct_block(6) <= std_logic_vector(to_unsigned(result(6), 32));
	out_dct_block(7) <= std_logic_vector(to_unsigned(result(7), 32));
	
end Behavioral;

