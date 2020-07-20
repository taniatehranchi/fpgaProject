library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY test_zigzag IS
END test_zigzag;
 
ARCHITECTURE behavior OF test_zigzag IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Zigzag
    PORT(
         input0 : IN  std_logic_vector(31 downto 0);
         input1 : IN  std_logic_vector(31 downto 0);
         input2 : IN  std_logic_vector(31 downto 0);
         input3 : IN  std_logic_vector(31 downto 0);
         input4 : IN  std_logic_vector(31 downto 0);
         input5 : IN  std_logic_vector(31 downto 0);
         input6 : IN  std_logic_vector(31 downto 0);
         input7 : IN  std_logic_vector(31 downto 0);
         outputMatrix : OUT  std_logic_vector(0 to 63);
         clk : IN  std_logic;
         reset : IN  std_logic;
         enable : IN  std_logic;
         oe : OUT  std_logic
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
   signal reset : std_logic := '0';
   signal enable : std_logic := '0';

 	--Outputs
   signal outputMatrix : std_logic_vector(0 to 63);
   signal oe : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Zigzag PORT MAP (
          input0 => input0,
          input1 => input1,
          input2 => input2,
          input3 => input3,
          input4 => input4,
          input5 => input5,
          input6 => input6,
          input7 => input7,
          outputMatrix => outputMatrix,
          clk => clk,
          reset => reset,
          enable => enable,
          oe => oe
        );
		  
	clk<=not clk after 50 ns;
	enable<='1' after 20 ns;
	process(clk)
	begin
		if(clk'event and clk='1') then
			input0<=input0+conv_std_logic_vector(1,32);
			input1<=input1+conv_std_logic_vector(1,32);
			input2<=input2+conv_std_logic_vector(1,32);
			input3<=input3+conv_std_logic_vector(1,32);
			input4<=input4+conv_std_logic_vector(1,32);
			input5<=input5+conv_std_logic_vector(1,32);
			input6<=input6+conv_std_logic_vector(1,32);
			input7<=input7+conv_std_logic_vector(1,32);
		end if;
	end process;

   
END;
