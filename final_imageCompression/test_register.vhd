library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
 
ENTITY test_register IS
END test_register;
 
ARCHITECTURE behavior OF test_register IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register
    PORT(
         din0 : IN  std_logic_vector(31 downto 0);
         din1 : IN  std_logic_vector(31 downto 0);
         din2 : IN  std_logic_vector(31 downto 0);
         din3 : IN  std_logic_vector(31 downto 0);
         din4 : IN  std_logic_vector(31 downto 0);
         din5 : IN  std_logic_vector(31 downto 0);
         din6 : IN  std_logic_vector(31 downto 0);
         din7 : IN  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         dout : OUT  std_logic_vector(0 to 63)
        );
    END COMPONENT;
    

   --Inputs
   signal din0 : std_logic_vector(31 downto 0) := (others => '0');
   signal din1 : std_logic_vector(31 downto 0) := (others => '0');
   signal din2 : std_logic_vector(31 downto 0) := (others => '0');
   signal din3 : std_logic_vector(31 downto 0) := (others => '0');
   signal din4 : std_logic_vector(31 downto 0) := (others => '0');
   signal din5 : std_logic_vector(31 downto 0) := (others => '0');
   signal din6 : std_logic_vector(31 downto 0) := (others => '0');
   signal din7 : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal dout : std_logic_vector(0 to 63);
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg PORT MAP (
          din0 => din0,
          din1 => din1,
          din2 => din2,
          din3 => din3,
          din4 => din4,
          din5 => din5,
          din6 => din6,
          din7 => din7,
          clk => clk,
          dout => dout
        );
		  
	clk<=not clk after 50ns;

	process(clk)
	begin
		if(clk'event and clk='1') then
			din0<=din0+x"01";
			din1<=din1+x"01";
			din2<=din2+x"01";
			din3<=din3+x"01";
			din4<=din4+x"01";
			din5<=din5+x"01";
			din6<=din6+x"01";
			din7<=din7+x"01";
		end if;
	end process;
	
   
END;
