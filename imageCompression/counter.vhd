----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:18:05 07/17/2020 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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

entity counter is
	port(
			din: in std_logic_vector(2 downto 0);
			clr,load,enable,clk: in std_logic;
			rco: out std_logic;
			dout: out std_logic_vector(2 downto 0)
		);
end counter;

architecture Behavioral of counter is
	
begin

	process(clk)
		variable count:std_logic_vector(2 downto 0);
	begin
	if(clk'event and clk='1') then
		if clr='1' then
			count:="000";
		elsif load='1' then
			count:=din;
		elsif enable='1' then
			count:=count+1;
			if count="111" then
				rco<='1';
			end if;
		end if;
	dout<=count;
	end if;
	end process;
end Behavioral;

