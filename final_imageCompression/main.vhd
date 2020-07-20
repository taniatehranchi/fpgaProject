library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.matrix.all;

entity main is
	PORT(
			clk,reset : in std_logic
	);
end main;

architecture structural of main is

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
	
	component Counter
		PORT(
			clk,enable: in std_logic;
			dout : out std_logic_vector(2 downto 0)
		);
	end component;

	component Registers
		PORT(
		input0,input1,input2,input3,input4,input5,input6,input7 : in std_logic_vector(31 downto 0);
		clk,enable,clear	: in std_logic;
		output0,output1,output2,output3,output4,output5,output6,output7	: out std_logic_vector(31 downto 0)
	);
	end component;

	component ZigZag 
		PORT (
		  input0, input1, input2, input3, input4, input5, input6, input7 : IN std_logic_vector(31 DOWNTO 0);
		  outputMatrix : OUT matrix64;
		  clk, reset, enable : IN std_logic;
		  oe : OUT std_logic
		);
	end component;

	component Controller
		PORT(
			clk			: in std_logic;
			en1,en2,en3	: out std_logic
		);
	end component;
		
	component Writer
		Port ( 
			clk,en 	: in STD_LOGIC; 
			a,b 	: in STD_LOGIC_VECTOR (31 downto 0)
		);
	end component;
		
	component RLC
		PORT(
			x					: in 	matrix64;
			y1,y2				: out std_logic_vector (31 downto 0);
			clk,reset,en	: in 	std_logic;
			oe					: out std_logic
		);
	end component;
	
	
	
	signal a0,a1,a2,a3,a4,a5,a6,a7 	: std_logic_vector(7 downto 0);
	signal b0,b1,b2,b3,b4,b5,b6,b7 	: std_logic_vector(31 downto 0);
	signal c0,c1,c2,c3,c4,c5,c6,c7 	: std_logic_vector(31 downto 0);
	signal d0,d1,d2,d3,d4,d5,d6,d7 	: std_logic_vector(31 downto 0);
	signal e0,e1							: std_logic_vector(31 downto 0);
	signal count							: std_logic_vector(2 downto 0);
	signal output_zigzag					: matrix64;
	signal enable_REG,enable_zigzag,enable_RLC,enable_writer,en 	: std_logic;
	
begin
	U0:Controller
		port map(clk,enable_REG,enable_zigzag,en);
		
	U1:Counter
		port map(clk,enable_REG,count);
	
	U2:file_reader 
		generic map("finalImage.txt",8)
		port map(clk,reset,
					a0,a1,a2,a3,a4,a5,a6,a7);
	
	U3:DCT
		port map(a0,a1,a2,a3,a4,a5,a6,a7,
					b0,b1,b2,b3,b4,b5,b6,b7);
	
	U4:Registers
		port map(b0,b1,b2,b3,b4,b5,b6,b7,
					clk,enable_REG,reset,
					c0,c1,c2,c3,c4,c5,c6,c7);
	
	U5:Quantization
		port map(c0,c1,c2,c3,c4,c5,c6,c7,count,d0,d1,d2,d3,d4,d5,d6,d7);
	
	U6:ZigZag
		port map(d0,d1,d2,d3,d4,d5,d6,d7,
					output_zigzag,
					clk,reset,enable_zigzag,
					enable_RLC);
	U7:RLC 
		port map(
					output_zigzag,
					e0,e1,clk,
					reset,enable_RLC,
					enable_writer);
	
	U8:Writer
		port map(clk,enable_writer,e0,e1);
		
end structural;

