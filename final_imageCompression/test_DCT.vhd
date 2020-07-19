LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_DCT IS
END test_DCT;
 
ARCHITECTURE behavior OF test_DCT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DCT
    PORT(
         in0 : IN  std_logic_vector(7 downto 0);
         in1 : IN  std_logic_vector(7 downto 0);
         in2 : IN  std_logic_vector(7 downto 0);
         in3 : IN  std_logic_vector(7 downto 0);
         in4 : IN  std_logic_vector(7 downto 0);
         in5 : IN  std_logic_vector(7 downto 0);
         in6 : IN  std_logic_vector(7 downto 0);
         in7 : IN  std_logic_vector(7 downto 0);
         out0 : OUT  std_logic_vector(31 downto 0);
         out1 : OUT  std_logic_vector(31 downto 0);
         out2 : OUT  std_logic_vector(31 downto 0);
         out3 : OUT  std_logic_vector(31 downto 0);
         out4 : OUT  std_logic_vector(31 downto 0);
         out5 : OUT  std_logic_vector(31 downto 0);
         out6 : OUT  std_logic_vector(31 downto 0);
         out7 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in0 : std_logic_vector(7 downto 0) := (others => '0');
   signal in1 : std_logic_vector(7 downto 0) := (others => '0');
   signal in2 : std_logic_vector(7 downto 0) := (others => '0');
   signal in3 : std_logic_vector(7 downto 0) := (others => '0');
   signal in4 : std_logic_vector(7 downto 0) := (others => '0');
   signal in5 : std_logic_vector(7 downto 0) := (others => '0');
   signal in6 : std_logic_vector(7 downto 0) := (others => '0');
   signal in7 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal out0 : std_logic_vector(31 downto 0);
   signal out1 : std_logic_vector(31 downto 0);
   signal out2 : std_logic_vector(31 downto 0);
   signal out3 : std_logic_vector(31 downto 0);
   signal out4 : std_logic_vector(31 downto 0);
   signal out5 : std_logic_vector(31 downto 0);
   signal out6 : std_logic_vector(31 downto 0);
   signal out7 : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DCT PORT MAP (
          in0 => in0,
          in1 => in1,
          in2 => in2,
          in3 => in3,
          in4 => in4,
          in5 => in5,
          in6 => in6,
          in7 => in7,
          out0 => out0,
          out1 => out1,
          out2 => out2,
          out3 => out3,
          out4 => out4,
          out5 => out5,
          out6 => out6,
          out7 => out7
        );
		  
		in0<="10100010";
		in1<="10100010";
		in2<="10100010";
		in3<="10100001";
		in4<="10100010";
		in5<="10011101";
		in6<="10100011";
		in7<="10100001";
END;
