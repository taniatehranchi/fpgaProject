----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:16:08 06/28/2019 
-- Design Name: 
-- Module Name:    RLC - Behavioral 
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
use work.ArrayPack.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RLC is
Port (  clk : in  STD_LOGIC;
			en : in  STD_LOGIC;
			oc : inout  STD_LOGIC:='1';
			y: in  memory
 );
end RLC;

architecture Behavioral of RLC is
signal zeroN:integer range 0 to 64:=0; 
signal counter:std_logic_vector(6 downto 0):="0000000"; 
type array1_64  is array (0 to 63) of STD_LOGIC_VECTOR (31 downto 0); 
signal arr:array1_64;
signal octmp:std_logic:='1';
begin
write_to_file : process(clk,en)
FILE RamFile_wr : text;
variable RamFileLine_wr : line;
begin
if(en'event and en='1') then
	arr<=(y(0),y(1),y(2),y(3),y(4),y(5),y(6),y(7),y(8),y(9),y(10),y(11),y(12),y(13),y(14),y(15),
						y(16),y(17),y(18),y(19),y(20),y(21),y(22),y(23),y(24),y(25),y(26),y(27),y(28),y(29),y(30),y(31),
						y(32),y(33),y(34),y(35),y(36),y(37),y(38),y(39),y(40),y(41),y(42),y(43),y(44),y(45),y(46),y(47),
						y(48),y(49),y(50),y(51),y(52),y(53),y(54),y(55),y(56),y(57),y(58),y(59),y(60),y(61),y(62),y(63));
	oc<='1';
end if;
if(clk'event and clk='1' and oc='1') then
	if (conv_integer(arr(conv_integer(counter)))=0) then
		zeroN<=zeroN+1;
	else
		file_open(ramfile_wr,"outputRCL.txt", append_mode);
		write (RamFileLine_wr, zeroN);
		writeline (ramfile_wr, RamFileLine_wr);

		write (RamFileLine_wr, conv_integer(arr(conv_integer(counter))));
		writeline (RamFile_wr, RamFileLine_wr);
		file_close(ramfile_wr);
		zeroN<=0;
	end if;
	counter<=counter+'1';
	
	if counter="0111111" then
		zeroN<=0;
		octmp<='0';
		counter<="0000000";
		oc<=octmp;
		file_open(ramfile_wr,"outputRCL.txt", append_mode);
		write (RamFileLine_wr,"$");
		writeline (RamFile_wr, RamFileLine_wr);
		file_close(ramfile_wr);
	end if;
end if;
end process;

end Behavioral;

