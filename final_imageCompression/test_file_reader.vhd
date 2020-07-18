--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:53:08 06/11/2020
-- Design Name:   
-- Module Name:   C:/Users/taravat/Desktop/fpga-project/fpgaProject/imageCompression/test_file_reader.vhd
-- Project Name:  imageCompression
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: file_reader
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
 
ENTITY test_file_reader IS
END test_file_reader;
 
ARCHITECTURE behavior OF test_file_reader IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT file_reader
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         Q0 : OUT  std_logic_vector(7 downto 0);
         Q1 : OUT  std_logic_vector(7 downto 0);
         Q2 : OUT  std_logic_vector(7 downto 0);
         Q3 : OUT  std_logic_vector(7 downto 0);
         Q4 : OUT  std_logic_vector(7 downto 0);
         Q5 : OUT  std_logic_vector(7 downto 0);
         Q6 : OUT  std_logic_vector(7 downto 0);
         Q7 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Q0 : std_logic_vector(7 downto 0);
   signal Q1 : std_logic_vector(7 downto 0);
   signal Q2 : std_logic_vector(7 downto 0);
   signal Q3 : std_logic_vector(7 downto 0);
   signal Q4 : std_logic_vector(7 downto 0);
   signal Q5 : std_logic_vector(7 downto 0);
   signal Q6 : std_logic_vector(7 downto 0);
   signal Q7 : std_logic_vector(7 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: file_reader PORT MAP (
          clk => clk,
          reset => reset,
          Q0 => Q0,
          Q1 => Q1,
          Q2 => Q2,
          Q3 => Q3,
          Q4 => Q4,
          Q5 => Q5,
          Q6 => Q6,
          Q7 => Q7
        );

	clk<=not clk after 50ns;

END;
