LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY test_counter IS
END test_counter;
 
ARCHITECTURE behavior OF test_counter IS 
 
 
    COMPONENT counter
    PORT(
         clk : IN  std_logic;
         enable : IN  std_logic;
         dout : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal enable : std_logic := '0';

 	--Outputs
   signal dout : std_logic_vector(2 downto 0);
BEGIN

    uut: counter PORT MAP (
          clk => clk,
          enable => enable,
          dout => dout
        );

	clk<=not clk after 50 ns;
	enable<= '1' after 20 ns;
	
END;
