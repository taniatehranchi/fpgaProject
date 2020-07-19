----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:14:42 07/04/2019 
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
use work.Pack.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
	PORT(
			clk,reset : in std_logic
	);
end main;

architecture structural of main is

	component Controller
		PORT(
			clk			: in std_logic;
			en1,en2,en3	: out std_logic
		);
	end component;
	
	component Counter
		PORT(
			clk,enable: in std_logic;
			dout : out std_logic_vector(2 downto 0)
		);
	end component;
	
	component file_reader
		generic (
			file_name 	: string:="finalImage.txt"; 
			width 		: positive :=8
		);
		port (
			CLK, RESET : in std_logic; 
			Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7 : out std_logic_vector(width-1 downto 0)
		);
		
	end component;
	
	component FileWriter
		Port ( 
			clk,en 	: in STD_LOGIC; 
			y1,y2 	: in STD_LOGIC_VECTOR (31 downto 0)
		);
	end component;
	
	component Reg
		GENERIC(
			n		: integer range 1 to 32:=8
		);
		PORT(
			x0,x1,x2,x3,x4,x5,x6,x7 : in std_logic_vector(n-1 downto 0);
			clk,clr,en					: in std_logic;
			y0,y1,y2,y3,y4,y5,y6,y7	: out std_logic_vector(n-1 downto 0)
		);
	end component;
	
	component DCT 
		PORT(
			in0,in1,in2,in3,in4,in5,in6,in7 : in std_logic_vector(7 downto 0);
			out0,out1,out2,out3,out4,out5,out6,out7 : out std_logic_vector(31 downto 0)
		);
	end component;
	
	component Quantization
		PORT(
			in0,in1,in2,in3,in4,in5,in6,in7	: in  std_logic_vector(31 downto 0);
			count 						: in  std_logic_vector(2 downto 0);
			out0,out1,out2,out3,out4,out5,out6,out7	: out std_logic_vector(31 downto 0):=(others=>'0')
		);
	end component;
	
	component ZigZag 
		PORT(
			x0,x1,x2,x3,x4,x5,x6,x7	: in  std_logic_vector(31 downto 0);
			y								: out memArray64;
			clk,reset,en				: in  std_logic;
			oe								: out std_logic
		);
	end component;
	
	component RLC
		PORT(
			x					: in 	memArray64;
			y1,y2				: out std_logic_vector (31 downto 0);
			clk,reset,en	: in 	std_logic;
			oe					: out std_logic
		);
	end component;
	
	
	
	signal r0,r1,r2,r3,r4,r5,r6,r7 	: std_logic_vector(7 downto 0);
	signal d0,d1,d2,d3,d4,d5,d6,d7 	: std_logic_vector(31 downto 0);
	signal q0,q1,q2,q3,q4,q5,q6,q7 	: std_logic_vector(31 downto 0);
	signal z0,z1,z2,z3,z4,z5,z6,z7 	: std_logic_vector(31 downto 0);
	signal c									: std_logic_vector(2 downto 0);
	signal m									: memArray64;
	
	signal enReg,enZigZag,enRLC,en,enWrite 		: std_logic;
	signal l1,l2											: std_logic_vector(31 downto 0);
	
begin
	U0:Controller
		port map(clk,enReg,enZigZag,en);
		
	U1:Counter
		port map(clk,enReg,c);
	
	U2:file_reader 
		generic map("finalImage.txt",8)
		port map(clk,reset,
					r0,r1,r2,r3,r4,r5,r6,r7);
	
	U3:DCT
		port map(r0,r1,r2,r3,r4,r5,r6,r7,
					d0,d1,d2,d3,d4,d5,d6,d7);
	
	U4:Reg
		generic map(32)
		port map(d0,d1,d2,d3,d4,d5,d6,d7,
					clk,reset,enReg,
					q0,q1,q2,q3,q4,q5,q6,q7);
	
	U5:Quantization
		port map(q0,q1,q2,q3,q4,q5,q6,q7,
					c,
					z0,z1,z2,z3,z4,z5,z6,z7);
	
	U6:ZigZag
		port map(z0,z1,z2,z3,z4,z5,z6,z7,
					m,
					clk,reset,enZigZag,
					enRLC);
	U7:RLC 
		port map(
					m,
					l1,l2,clk,
					reset,enRLC,
					enWrite);
	
	U8:FileWriter
		port map(clk,enWrite,l1,l2);
		
end structural;

