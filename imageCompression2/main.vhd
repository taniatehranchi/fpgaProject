----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:01:51 07/19/2020 
-- Design Name: 
-- Module Name:    main - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.matrix.ALL;


entity main is
port(
	clk,reset: in std_logic
	);
end main;

architecture Behavioral of main is

	component file_reader
		generic (
				file_name : string:="input.txt"; 
				width 	 : integer :=8		);
		port (
				clk, reset 					: in std_logic; 
				Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7 : out std_logic_vector(width-1 downto 0)
				
			);
	end component;
	

	component DCT
		port(
		in0,in1,in2,in3,in4,in5,in6,in7: in std_logic_vector(7 downto 0);
		clk,enable: in std_logic;
		
		out0,out1,out2,out3,out4,out5,out6,out7: out std_logic_vector(31 downto 0):= (others => '0')
		);	
	end component;
	
	component quantization
		port(	
			in0,in1,in2,in3,in4,in5,in6,in7: in std_logic_vector(31 downto 0);
			enable,clk : in std_logic;
			
			out0,out1,out2,out3,out4,out5,out6,out7: out std_logic_vector(31 downto 0);
			oe: out std_logic
		);
	end component;
	
	component register_88
		port(
		input0,input1,input2,input3,input4,input5,input6,input7: in std_logic_vector(31 downto 0);
		clk,enable:in std_logic;
		
		oe:out std_logic;
		y: out  matrix64
		);
	end component;
	
	component zigzag
		port(
			input : in matrix64;
			enable: in std_logic;
			output : out matrix64
		);
	end component;
begin


end Behavioral;

