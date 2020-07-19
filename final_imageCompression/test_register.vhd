library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.ALL;


ENTITY test_register IS
END test_register;
 
ARCHITECTURE behavior OF test_register IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Registers
    PORT(
         input0 : IN  std_logic_vector(31 downto 0);
         input1 : IN  std_logic_vector(31 downto 0);
         input2 : IN  std_logic_vector(31 downto 0);
         input3 : IN  std_logic_vector(31 downto 0);
         input4 : IN  std_logic_vector(31 downto 0);
         input5 : IN  std_logic_vector(31 downto 0);
         input6 : IN  std_logic_vector(31 downto 0);
         input7 : IN  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         enable : IN  std_logic;
         clear : IN  std_logic;
         output0 : OUT  std_logic_vector(31 downto 0);
         output1 : OUT  std_logic_vector(31 downto 0);
         output2 : OUT  std_logic_vector(31 downto 0);
         output3 : OUT  std_logic_vector(31 downto 0);
         output4 : OUT  std_logic_vector(31 downto 0);
         output5 : OUT  std_logic_vector(31 downto 0);
         output6 : OUT  std_logic_vector(31 downto 0);
         output7 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input0 : std_logic_vector(31 downto 0) := (others => '0');
   signal input1 : std_logic_vector(31 downto 0) := (others => '0');
   signal input2 : std_logic_vector(31 downto 0) := (others => '0');
   signal input3 : std_logic_vector(31 downto 0) := (others => '0');
   signal input4 : std_logic_vector(31 downto 0) := (others => '0');
   signal input5 : std_logic_vector(31 downto 0) := (others => '0');
   signal input6 : std_logic_vector(31 downto 0) := (others => '0');
   signal input7 : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal enable : std_logic := '0';
   signal clear : std_logic := '0';

 	--Outputs
   signal output0 : std_logic_vector(31 downto 0);
   signal output1 : std_logic_vector(31 downto 0);
   signal output2 : std_logic_vector(31 downto 0);
   signal output3 : std_logic_vector(31 downto 0);
   signal output4 : std_logic_vector(31 downto 0);
   signal output5 : std_logic_vector(31 downto 0);
   signal output6 : std_logic_vector(31 downto 0);
   signal output7 : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Registers PORT MAP (
          input0 => input0,
          input1 => input1,
          input2 => input2,
          input3 => input3,
          input4 => input4,
          input5 => input5,
          input6 => input6,
          input7 => input7,
          clk => clk,
          enable => enable,
          clear => clear,
          output0 => output0,
          output1 => output1,
          output2 => output2,
          output3 => output3,
          output4 => output4,
          output5 => output5,
          output6 => output6,
          output7 => output7
        );

   clk<= not clk after 50 ns;
	enable<='1' after 10 ns;
	process(clk)
	begin
		if(clk'event and clk='1') then
			input0<=input0+x"01";
			input1<=input1+x"01";
			input2<=input2+x"01";
			input3<=input3+x"01";
			input4<=input4+x"01";
			input5<=input5+x"01";
			input6<=input6+x"01";
			input7<=input7+x"01";
		end if;
	end process;

END;
