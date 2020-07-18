----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:00:13 06/10/2020 
-- Design Name: 
-- Module Name:    file_reader - Behavioral 
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
use std.textio.all;


entity file_reader is
generic (
			file_name : string:="finalImage.txt"; 
			width 	 : integer :=8		);
	port (
			clk, reset 					: in std_logic; 
			Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7 : out std_logic_vector(width-1 downto 0)
			
		);
end file_reader;

architecture Behavioral of file_reader is

begin
process(clk)
		file fileIn : text is in FILE_NAME; 
		variable lineIn : line;
		variable data : integer;
	begin
		if (clk' event and clk='1') then
			if (not(endfile(fileIn))) and (reset='0') then
				readline(fileIn, lineIn); 
				read(lineIn, data);
				Q0<= conv_std_logic_vector(data,width);
				readline(fileIn, lineIn); 
				read(lineIn, data);
				Q1<= conv_std_logic_vector(data,width);
				readline(fileIn, lineIn); 
				read(lineIn, data);
				Q2<= conv_std_logic_vector(data,width);
				readline(fileIn, lineIn); 
				read(lineIn, data);
				Q3<= conv_std_logic_vector(data,width);
				readline(fileIn, lineIn); 
				read(lineIn, data);
				Q4<= conv_std_logic_vector(data,width);
				readline(fileIn, lineIn); 
				read(lineIn, data);
				Q5<= conv_std_logic_vector(data,width);
				readline(fileIn, lineIn); 
				read(lineIn, data);
				Q6<= conv_std_logic_vector(data,width);
				readline(fileIn, lineIn); 
				read(lineIn, data);
				Q7<= conv_std_logic_vector(data,width);

			else 
				Q0 <= conv_std_logic_vector( 0,width);
				Q1 <= conv_std_logic_vector( 0,width);
				Q2 <= conv_std_logic_vector( 0,width);
				Q3 <= conv_std_logic_vector( 0,width);
				Q4 <= conv_std_logic_vector( 0,width);
				Q5 <= conv_std_logic_vector( 0,width);
				Q6 <= conv_std_logic_vector( 0,width);
				Q7 <= conv_std_logic_vector( 0,width);
			end if; 
		end if;
	end process;
	
	
end Behavioral;

