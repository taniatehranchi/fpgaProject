----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:08:38 06/11/2019 
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
use work.ArrayPack.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
port(clk,clkRLC : in std_logic
);
end main;

architecture Behavioral of main is
component FileReader
generic(file_name: string:="inputFile.txt"; 
width : positive :=9;
datadelay: time:=0 ns); 
port(clk, RESET :  in std_logic;               
Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7 : out std_logic_vector(width-1 downto 0);
enQuantization:out std_logic;
enReg:out std_logic:='0';
oc:out std_logic:='1'
); 
end component;

component DCT
port(clk,en :in std_logic;
x0,x1,x2,x3,x4,x5,x6,x7 :in std_logic_vector(8 downto 0);
y0,y1,y2,y3,y4,y5,y6,y7 :out std_logic_vector(31 downto 0)
);
end component;

component Quantization
port(clk,en :in std_logic;
x0,x1,x2,x3,x4,x5,x6,x7 :in std_logic_vector(31 downto 0);
y0,y1,y2,y3,y4,y5,y6,y7 :inout std_logic_vector(31 downto 0):=(others=>'0')
);
end component;
component Reg8_8 is
    Port ( clk,en:in std_logic;
			  oc:out std_logic;
			  x0,x1,x2,x3,x4,x5,x6,x7 : in  STD_LOGIC_VECTOR (31 downto 0);
           y: out  memory
			  );
end component;

component ZigZag is
    Port ( en : in  STD_LOGIC;
			  a: in  memory;
			  y: out  memory
			  );
end component;

component RLC is
Port (  clk : in  STD_LOGIC;
			en : in  STD_LOGIC;
			oc : inout  STD_LOGIC:='1';
			y: in  memory
 );
end component;



signal enQuantiz,enZig,enRLC,enReg,enDCT:std_logic;
signal ocRLC:std_logic;
signal fileToDCT0,fileToDCT1,fileToDCT2,fileToDCT3,fileToDCT4,fileToDCT5,fileToDCT6,fileToDCT7:std_logic_vector(8 downto 0);
signal DCTtoQuantiz0,DCTtoQuantiz1,DCTtoQuantiz2,DCTtoQuantiz3,DCTtoQuantiz4,DCTtoQuantiz5,DCTtoQuantiz6,DCTtoQuantiz7:std_logic_vector(31 downto 0);
signal Quantiz0,Quantiz1,Quantiz2,Quantiz3,Quantiz4,Quantiz5,Quantiz6,Quantiz7:std_logic_vector(31 downto 0);
signal toZig: memory;
signal toRLC: memory;

begin
DCT1: DCT port map(clk,enDCT,fileToDCT0,fileToDCT1,fileToDCT2,fileToDCT3,fileToDCT4,fileToDCT5,fileToDCT6,fileToDCT7,DCTtoQuantiz0,DCTtoQuantiz1,DCTtoQuantiz2,DCTtoQuantiz3,DCTtoQuantiz4,DCTtoQuantiz5,DCTtoQuantiz6,DCTtoQuantiz7);
fReader: FileReader port map(not(clk),'0',fileToDCT0,fileToDCT1,fileToDCT2,fileToDCT3,fileToDCT4,fileToDCT5,fileToDCT6,fileToDCT7,enQuantiz,enReg,enDCT);
quantiz: Quantization port map(not(clk),enQuantiz,DCTtoQuantiz0,DCTtoQuantiz1,DCTtoQuantiz2,DCTtoQuantiz3,DCTtoQuantiz4,DCTtoQuantiz5,DCTtoQuantiz6,DCTtoQuantiz7,Quantiz0,Quantiz1,Quantiz2,Quantiz3,Quantiz4,Quantiz5,Quantiz6,Quantiz7);
reg:Reg8_8 port map(not(clk),enReg,enZig,Quantiz0,Quantiz1,Quantiz2,Quantiz3,Quantiz4,Quantiz5,Quantiz6,Quantiz7,toZig);
zig:ZigZag port map(enZig,toZig,toRLC);
rlcForBlock:RLC port map(clkRLC,enRLC,ocRLC,toRLC);
enRLC<=enZig;


end Behavioral;

