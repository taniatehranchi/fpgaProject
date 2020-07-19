
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

 
ENTITY test_quantization IS
END test_quantization;
 
ARCHITECTURE behavior OF test_quantization IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT quantization
    PORT(
         in0 : IN  std_logic_vector(31 downto 0);
         in1 : IN  std_logic_vector(31 downto 0);
         in2 : IN  std_logic_vector(31 downto 0);
         in3 : IN  std_logic_vector(31 downto 0);
         in4 : IN  std_logic_vector(31 downto 0);
         in5 : IN  std_logic_vector(31 downto 0);
         in6 : IN  std_logic_vector(31 downto 0);
         in7 : IN  std_logic_vector(31 downto 0);
			
			enable:	IN std_logic;
			clk : IN std_logic;

         out0 : OUT  std_logic_vector(31 downto 0);
         out1 : OUT  std_logic_vector(31 downto 0);
         out2 : OUT  std_logic_vector(31 downto 0);
         out3 : OUT  std_logic_vector(31 downto 0);
         out4 : OUT  std_logic_vector(31 downto 0);
         out5 : OUT  std_logic_vector(31 downto 0);
         out6 : OUT  std_logic_vector(31 downto 0);
         out7 : OUT  std_logic_vector(31 downto 0);
			oe	:	OUT std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic_vector(31 downto 0) := (others => '0');
   signal in1 : std_logic_vector(31 downto 0) := (others => '0');
   signal in2 : std_logic_vector(31 downto 0) := (others => '0');
   signal in3 : std_logic_vector(31 downto 0) := (others => '0');
   signal in4 : std_logic_vector(31 downto 0) := (others => '0');
   signal in5 : std_logic_vector(31 downto 0) := (others => '0');
   signal in6 : std_logic_vector(31 downto 0) := (others => '0');
   signal in7 : std_logic_vector(31 downto 0) := (others => '0');
	
	signal clk : std_logic;
	signal enable : std_logic;
		
 	--Outputs
   signal out0 : std_logic_vector(31 downto 0);
   signal out1 : std_logic_vector(31 downto 0);
   signal out2 : std_logic_vector(31 downto 0);
   signal out3 : std_logic_vector(31 downto 0);
   signal out4 : std_logic_vector(31 downto 0);
   signal out5 : std_logic_vector(31 downto 0);
   signal out6 : std_logic_vector(31 downto 0);
   signal out7 : std_logic_vector(31 downto 0);
	
	signal oe:std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: quantization PORT MAP (
          in0 => in0,
          in1 => in1,
          in2 => in2,
          in3 => in3,
          in4 => in4,
          in5 => in5,
          in6 => in6,
          in7 => in7,
			 
			 enable => enable,
			 clk => clk,

          out0 => out0,
          out1 => out1,
          out2 => out2,
          out3 => out3,
          out4 => out4,
          out5 => out5,
          out6 => out6,
          out7 => out7,
			 
			 oe => oe
        );
		  

	clk<= not clk after 50 ns;
	enable<='1' after 20 ns;
	
	in0<=conv_std_logic_vector(150,32);
	in1<=conv_std_logic_vector(180,32);
	in2<=conv_std_logic_vector(210,32);
	in3<=conv_std_logic_vector(240,32);
	in4<=conv_std_logic_vector(270,32);
	in5<=conv_std_logic_vector(300,32);
	in6<=conv_std_logic_vector(50,32);
	in7<=conv_std_logic_vector(10,32);
	
END;
