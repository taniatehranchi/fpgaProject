LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE work.Pack.ALL;

ENTITY RLC IS
	PORT (
		inputMatrix : IN matrix64;
		clk, reset, enable : IN std_logic;
		precedingZeros, value : OUT std_logic_vector (31 DOWNTO 0);
		oe : OUT std_logic
	);
END RLC;

ARCHITECTURE Behavioral OF RLC IS
BEGIN
	PROCESS (clk, reset)
		VARIABLE ind : std_logic_vector(5 DOWNTO 0) := (OTHERS => '0');
		VARIABLE currentNumberOfZeros : INTEGER RANGE 0 TO 64 := 0;
	BEGIN
		IF (reset = '1') THEN
			--reset all variables
			precedingZeros <= (OTHERS => '0');
			value <= (OTHERS => '0');
			ind := (OTHERS => '0');
		ELSIF (clk' event AND clk = '1' AND enable = '1') THEN
			oe <= '1';
			IF (conv_integer(inputMatrix(conv_integer(ind))) = 0) THEN
				--there is a zero -> value is 0, currentNumberOfZeros += 1
				currentNumberOfZeros := currentNumberOfZeros + 1;
				value <= (OTHERS => '0');
			ELSE
				-- precedingZeros = currentNumberOfZeros, reset currentNumberOfZeros
				precedingZeros <= conv_std_logic_vector(currentNumberOfZeros, 32);
				value <= inputMatrix(conv_integer(ind));
				currentNumberOfZeros := 0;
			END IF;
			ind := ind + '1';
		END IF;
	END PROCESS;
END Behavioral;