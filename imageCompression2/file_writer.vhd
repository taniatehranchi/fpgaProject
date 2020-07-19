----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:58:45 07/19/2020 
-- Design Name: 
-- Module Name:    file_writer - Behavioral 
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

entity file_writer is
Port ( 
			clk , en : in STD_LOGIC; 
			a,b : in STD_LOGIC_VECTOR (31 downto 0)
		);
end file_writer;

architecture Behavioral of file_writer is

begin
process(clk)
		FILE WriteFle_wr : text;
		variable Line_wr : line;
		begin
			if(clk'event and clk='1' and en='1') then 
				if(b/=0)then
					file_open(WriteFle_wr,"output.txt", append_mode);
					write (Line_wr, conv_integer(a));
					writeline (WriteFle_wr, Line_wr);
					write (Line_wr, conv_integer(b));
			    	writeline (WriteFle_wr, Line_wr);
					file_close(WriteFle_wr);
			end if; 
		end if; 
	end process;
end Behavioral;

