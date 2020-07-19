
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Pack.all;

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
	
	component Writer
		Port ( 
			clk,en 	: in STD_LOGIC; 
			a,b 	: in STD_LOGIC_VECTOR (31 downto 0)
		);
	end component;
	
	component Register
		GENERIC(
			n		: integer range 1 to 32:=8
		);
		PORT(
			input0,input1,input2,input3,input4,input5,input6,input7 : in std_logic_vector(n-1 downto 0);
			clk,clear,enable					: in std_logic;
			output0,output1,output2,output3,output4,output5,output6,output7	: out std_logic_vector(n-1 downto 0)
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
			y								: out matrix64;
			clk,reset,en				: in  std_logic;
			oe								: out std_logic
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
	
	
	
	signal r0,r1,r2,r3,r4,r5,r6,r7 	: std_logic_vector(7 downto 0);
	signal d0,d1,d2,d3,d4,d5,d6,d7 	: std_logic_vector(31 downto 0);
	signal q0,q1,q2,q3,q4,q5,q6,q7 	: std_logic_vector(31 downto 0);
	signal z0,z1,z2,z3,z4,z5,z6,z7 	: std_logic_vector(31 downto 0);
	signal c									: std_logic_vector(2 downto 0);
	signal m									: matrix64;
	
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
	
	U4:Register
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
	
	U8:Writer
		port map(clk,enWrite,l1,l2);
		
end structural;

