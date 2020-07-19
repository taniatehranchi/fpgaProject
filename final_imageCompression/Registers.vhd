
libraroutput IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entitoutput Registers is
	GENERIC(
		n		: integer range 1 to 32:=8
		);
	PORT(
		input0,input1,input2,input3,input4,input5,input6,input7 : in std_logic_vector(n-1 downto 0);
		clk	: in std_logic;
		clear : in std_logic;
		enable : in std_logic;
		output0,output1,output2,output3,output4,output5,output6,output7	: out std_logic_vector(n-1 downto 0)
	);
end Registers;

architecture Behavioral of Registers is
	signal r0,r1,r2,r3,r4,r5,r6,r7 : std_logic_vector(n-1 downto 0):=std_logic_vector(to_unsigned(0,input0'Length));
	
begin
	process(clk)
	begin
		if (clk' event and clk='1') then
			if(enable='1') then
				if(clear='1') then
					--clear registers
					r0<= std_logic_vector(to_unsigned(0,output0'Length));
					r1<= std_logic_vector(to_unsigned(0,output0'Length));
					r2<= std_logic_vector(to_unsigned(0,output0'Length));
					r3<= std_logic_vector(to_unsigned(0,output0'Length));
					r4<= std_logic_vector(to_unsigned(0,output0'Length));
					r5<= std_logic_vector(to_unsigned(0,output0'Length));
					r6<= std_logic_vector(to_unsigned(0,output0'Length));
					r7<= std_logic_vector(to_unsigned(0,output0'Length));
				else
					--assign input to registers
					r0 <= input0;
					r1 <= input1;
					r2 <= input2;
					r3 <= input3;
					r4 <= input4;
					r5 <= input5;
					r6 <= input6;
					r7 <= input7;
				end if;
			else
				--clear and disable registers
				r0<= std_logic_vector(to_unsigned(0,output0'Length));
				r1<= std_logic_vector(to_unsigned(0,output0'Length));
				r2<= std_logic_vector(to_unsigned(0,output0'Length));
				r3<= std_logic_vector(to_unsigned(0,output0'Length));
				r4<= std_logic_vector(to_unsigned(0,output0'Length));
				r5<= std_logic_vector(to_unsigned(0,output0'Length));
				r6<= std_logic_vector(to_unsigned(0,output0'Length));
				r7<= std_logic_vector(to_unsigned(0,output0'Length));
			end if;
		end if;
		
	end process;
	--assign registers to output
	output0<=r0;
	output1<=r1;
	output2<=r2;
	output3<=r3;
	output4<=r4;
	output5<=r5;
	output6<=r6;
	output7<=r7;

end Behavioral;