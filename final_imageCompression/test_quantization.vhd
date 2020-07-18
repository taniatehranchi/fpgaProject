--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:01:00 07/14/2020
-- Design Name:   
-- Module Name:   C:/Users/taravat/Desktop/fpga-project/fpgaProject/imageCompression/quantization_test.vhd
-- Project Name:  imageCompression
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: quantization
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

 
ENTITY quantization_test IS
END quantization_test;
 
ARCHITECTURE behavior OF quantization_test IS 
 
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
         count : IN  std_logic_vector(2 downto 0);
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
   signal in0 : std_logic_vector(31 downto 0) := (others => '0');
   signal in1 : std_logic_vector(31 downto 0) := (others => '0');
   signal in2 : std_logic_vector(31 downto 0) := (others => '0');
   signal in3 : std_logic_vector(31 downto 0) := (others => '0');
   signal in4 : std_logic_vector(31 downto 0) := (others => '0');
   signal in5 : std_logic_vector(31 downto 0) := (others => '0');
   signal in6 : std_logic_vector(31 downto 0) := (others => '0');
   signal in7 : std_logic_vector(31 downto 0) := (others => '0');
   signal count : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal out0 : std_logic_vector(31 downto 0);
   signal out1 : std_logic_vector(31 downto 0);
   signal out2 : std_logic_vector(31 downto 0);
   signal out3 : std_logic_vector(31 downto 0);
   signal out4 : std_logic_vector(31 downto 0);
   signal out5 : std_logic_vector(31 downto 0);
   signal out6 : std_logic_vector(31 downto 0);
   signal out7 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
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
          count => count,
          out0 => out0,
          out1 => out1,
          out2 => out2,
          out3 => out3,
          out4 => out4,
          out5 => out5,
          out6 => out6,
          out7 => out7
        );
		  

	count<="000" after 50 ns,"001" after 100 ns,"010" after 150 ns, "011" after 200 ns, "100" after 250 ns,"101" after 300 ns,"110" after 350 ns,"111" after 400 ns, "000" after 450 ns;
	in0<=conv_std_logic_vector(150,32);
	in1<=conv_std_logic_vector(180,32);
	in2<=conv_std_logic_vector(210,32);
	in3<=conv_std_logic_vector(240,32);
	in4<=conv_std_logic_vector(270,32);
	in5<=conv_std_logic_vector(300,32);
	in6<=conv_std_logic_vector(50,32);
	in7<=conv_std_logic_vector(10,32);
	
END;
