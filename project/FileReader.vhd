----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:24:38 06/10/2019 
-- Design Name: 
-- Module Name:    FileReader - Behavioral 
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
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FileReader is
generic(file_name: string:="inputFile.txt"; 
width : positive :=9; 
datadelay: time:=0 ns); 
port(clk, RESET :  in std_logic;               
Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7 : out std_logic_vector(width-1 downto 0);
enQuantization:out std_logic:='0';
enReg:out std_logic:='0';
oc:out std_logic:='1'
); 
end FileReader;

architecture Behavioral of FileReader is
signal enRegtmp:std_logic:='0';
Begin    
process(clk)
file INFILE : text  is in file_name;     
variable l0,l1,l2,l3,l4,l5,l6,l7 : line;   
variable d0,d1,d2,d3,d4,d5,d6,d7 : integer; 
begin 
if (clk = '1') and (clk'event) then 
	if (not(endfile(INFILE))) and (RESET='0') then 
		readline(INFILE, l0);    
		read(l0, d0); 
		Q0 <= conv_std_logic_vector(d0,width) after datadelay; 
		readline(INFILE, l1);    
		read(l1, d1); 
		Q1 <= conv_std_logic_vector(d1,width) after datadelay; 
		readline(INFILE, l2);    
		read(l2, d2); 
		Q2 <= conv_std_logic_vector(d2,width) after datadelay; 
		readline(INFILE, l3);    
		read(l3, d3); 
		Q3 <= conv_std_logic_vector(d3,width) after datadelay; 
		readline(INFILE, l4);    
		read(l4, d4); 
		Q4 <= conv_std_logic_vector(d4,width) after datadelay; 
		readline(INFILE, l5);    
		read(l5, d5); 
		Q5 <= conv_std_logic_vector(d5,width) after datadelay; 
		readline(INFILE, l6);    
		read(l6, d6); 
		Q6 <= conv_std_logic_vector(d6,width) after datadelay; 
		readline(INFILE, l7);    
		read(l7, d7); 
		Q7 <= conv_std_logic_vector(d7,width) after datadelay; 
		enQuantization<='1';
		enRegtmp<='1';
		
	else   
		Q0 <= conv_std_logic_vector(0,width); 
		Q1 <= conv_std_logic_vector(0,width); 
		Q2 <= conv_std_logic_vector(0,width); 
		Q3 <= conv_std_logic_vector(0,width); 
		Q4 <= conv_std_logic_vector(0,width); 
		Q5 <= conv_std_logic_vector(0,width); 
		Q6 <= conv_std_logic_vector(0,width); 
		Q7 <= conv_std_logic_vector(0,width); 
		enRegtmp<='0';
		oc<='0';
	end if; 
enReg<=enRegtmp;	
end if; 
end process; 


end Behavioral;

