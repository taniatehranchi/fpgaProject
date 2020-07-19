LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.Pack.all;
 
ENTITY test_RLC IS
END test_RLC;
 
ARCHITECTURE behavior OF test_RLC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RLC
    PORT(
         x : IN  matrix64;
         y1 : OUT  std_logic_vector(31 downto 0);
         y2 : OUT  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : matrix64 		:=(707,707,707,707,0,0,0,0,924,383,-383,-924,0,0,0,0,707,-707,-707,707,0,0,0,0,
											383,-924,924,-383,0,0,0,0,0,0,0,0,981,831,556,195,0,0,0,0,831,-195,-981,-556,
											0,0,0,0,556,-981,195,831,0,0,0,0,195,-556,831,-981);
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal y1 : std_logic_vector(31 downto 0);
   signal y2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RLC PORT MAP (
          x => x,
          y1 => y1,
          y2 => y2,
          clk => clk,
          reset => reset
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
