--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:41:23 07/17/2020
-- Design Name:   
-- Module Name:   C:/Users/taravat/Desktop/fpga-project/fpgaProject/imageCompression/test_counter.vhd
-- Project Name:  imageCompression
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_counter IS
END test_counter;
 
ARCHITECTURE behavior OF test_counter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counter
    PORT(
         din : IN  std_logic_vector(2 downto 0);
         clr : IN  std_logic;
         load : IN  std_logic;
         enable : IN  std_logic;
         clk : IN  std_logic;
         rco : OUT  std_logic;
         dout : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal din : std_logic_vector(2 downto 0) := (others => '0');
   signal clr : std_logic := '0';
   signal load : std_logic := '0';
   signal enable : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal rco : std_logic;
   signal dout : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter PORT MAP (
          din => din,
          clr => clr,
          load => load,
          enable => enable,
          clk => clk,
          rco => rco,
          dout => dout
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
