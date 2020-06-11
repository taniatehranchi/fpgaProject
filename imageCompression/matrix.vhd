--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package matrix is

	type imageRows is array(7 downto 0) of std_logic_vector(31 downto 0);
	type matrix8_8 is array(7 downto 0,7 downto 0) of integer;
	type matrix8_1 is array(7 downto 0) of integer;	

	function matrix_mul(in1: matrix8_8; in2: matrix8_1) return matrix8_1;
	
end;
package body matrix is

function matrix_mul(in1: matrix8_8; in2: matrix8_1) return matrix8_1 is
	variable result: matrix8_1;
	begin
		for i in 0 to 7 loop
			for j in 0 to 7 loop
				result(i):=result(i)+in1(i,j)*in2(j);
			end loop;
		end loop;	
	return result;
end matrix_mul;


end matrix;
