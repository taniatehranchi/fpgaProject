library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use std.textio.all;

entity FileWriter is
	Port ( 
			clk , en : in STD_LOGIC; 
			y1,y2		: in STD_LOGIC_VECTOR (31 downto 0)
		);
end FileWriter;

architecture Behavioral of FileWriter is

begin
	process(clk)
		FILE RamFile_wr : text;
		variable RamFileLine_wr : line;
		begin
			if(clk'event and clk='1') then 
				if (en='1') then
					if(y2/=0)then
						file_open(ramfile_wr,"reduce.txt", append_mode);
						write (RamFileLine_wr, conv_integer(y1));
						writeline (ramfile_wr, RamFileLine_wr);
						write (RamFileLine_wr, conv_integer(y2));
						writeline (ramfile_wr, RamFileLine_wr);
						file_close(ramfile_wr);
					end if;
			end if; 
		end if; 
	end process;

end Behavioral;

