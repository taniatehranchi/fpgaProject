library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entity Registers is
	PORT(
		input0,input1,input2,input3,input4,input5,input6,input7 : in std_logic_vector(31 downto 0);
		clk,enable,clear	: in std_logic;
		output0,output1,output2,output3,output4,output5,output6,output7	: out std_logic_vector(31 downto 0)
	);
end Registers;

architecture Behavioral of Registers is
	signal temp0,temp1,temp2,temp3,temp4,temp5,temp6,temp7 : std_logic_vector(31 downto 0):=(others=>'0');
	
begin
	process(clk)
	begin
		if (clk'event and clk='1') then
			if(enable='1') then
				if(clear='1') then
					--clear registers
					temp0<=(others=>'0');
					temp1<=(others=>'0');
					temp2<=(others=>'0');
					temp3<=(others=>'0');
					temp4<=(others=>'0');
					temp5<=(others=>'0');
					temp6<=(others=>'0');
					temp7<=(others=>'0');
				else
					--assign input to registers
					temp0 <= input0;
					temp1 <= input1;
					temp2 <= input2;
					temp3 <= input3;
					temp4 <= input4;
					temp5 <= input5;
					temp6 <= input6;
					temp7 <= input7;
				end if;
			else
				--clear and disable registers
				temp0<=(others=>'0');
				temp1<=(others=>'0');
				temp2<=(others=>'0');
				temp3<=(others=>'0');
				temp4<=(others=>'0');
				temp5<=(others=>'0');
				temp6<=(others=>'0');
				temp7<=(others=>'0');
			end if;
		end if;
		
	end process;
	--assign registers to output
	output0<=temp0;
	output1<=temp1;
	output2<=temp2;
	output3<=temp3;
	output4<=temp4;
	output5<=temp5;
	output6<=temp6;
	output7<=temp7;

end Behavioral;
