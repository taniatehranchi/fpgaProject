
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.Pack.ALL;

ENTITY Zigzag IS
	PORT (
		input0, input1, input2, input3, input4, input5, input6, input7 : IN std_logic_vector(31 DOWNTO 0);
		outputMatrix : OUT matrix64;
		clk, reset, enable : IN std_logic;
		oe : OUT std_logic
	);
END Zigzag;

ARCHITECTURE Behavioral OF Zigzag IS
	SIGNAL y0, y1, y2, y3, y4, y5, y6, y7,
	y8, y9, y10, y11, y12, y13, y14, y15,
	y16, y17, y18, y19, y20, y21, y22, y23,
	y24, y25, y26, y27, y28, y29, y30, y31,
	y32, y33, y34, y35, y36, y37, y38, y39,
	y40, y41, y42, y43, y44, y45, y46, y47,
	y48, y49, y50, y51, y52, y53, y54, y55,
	y56, y57, y58, y59, y60, y61, y62, y63 : std_logic_vector(31 DOWNTO 0);

BEGIN
	PROCESS (clk, reset)
		VARIABLE counter : INTEGER RANGE 0 TO 8 := 0;
	BEGIN
		IF (reset = '1') THEN
			y1 <= (OTHERS => '0');
		ELSIF (clk' event AND clk = '1' AND enable = '1') THEN
			IF (counter = 8) THEN
				counter := 0;
				oe <= '1';
			ELSE
				oe <= '0';
				IF counter = 0 THEN
					y0 <= input0;
					y1 <= input1;
					y5 <= input2;
					y6 <= input3;
					y14 <= input4;
					y15 <= input5;
					y27 <= input6;
					y28 <= input7;
				ELSIF counter = 1 THEN
					y2 <= input0;
					y4 <= input1;
					y7 <= input2;
					y13 <= input3;
					y16 <= input4;
					y26 <= input5;
					y29 <= input6;
					y42 <= input7;
				ELSIF counter = 2 THEN
					y3 <= input0;
					y8 <= input1;
					y12 <= input2;
					y17 <= input3;
					y25 <= input4;
					y30 <= input5;
					y41 <= input6;
					y43 <= input7;
				ELSIF counter = 3 THEN
					y9 <= input0;
					y11 <= input1;
					y18 <= input2;
					y24 <= input3;
					y31 <= input4;
					y40 <= input5;
					y44 <= input6;
					y53 <= input7;
				ELSIF counter = 4 THEN
					y10 <= input0;
					y19 <= input1;
					y23 <= input2;
					y32 <= input3;
					y39 <= input4;
					y45 <= input5;
					y52 <= input6;
					y54 <= input7;
				ELSIF counter = 5 THEN
					y20 <= input0;
					y22 <= input1;
					y33 <= input2;
					y38 <= input3;
					y46 <= input4;
					y51 <= input5;
					y55 <= input6;
					y60 <= input7;
				ELSIF counter = 6 THEN
					y21 <= input0;
					y34 <= input1;
					y37 <= input2;
					y47 <= input3;
					y50 <= input4;
					y56 <= input5;
					y59 <= input6;
					y61 <= input7;
				ELSIF counter = 7 THEN
					y35 <= input0;
					y36 <= input1;
					y48 <= input2;
					y49 <= input3;
					y57 <= input4;
					y58 <= input5;
					y62 <= input6;
					y63 <= input7;
				ELSE
					oe <= '0';
					counter := counter + 1;
				END IF;
			END IF;
		END IF;
	END PROCESS;
	outputMatrix(0) <= y0;
	outputMatrix(1) <= y1;
	outputMatrix(5) <= y5;
	outputMatrix(6) <= y6;
	outputMatrix(14) <= y14;
	outputMatrix(15) <= y15;
	outputMatrix(27) <= y27;
	outputMatrix(28) <= y28;
	outputMatrix(2) <= y2;
	outputMatrix(4) <= y4;
	outputMatrix(7) <= y7;
	outputMatrix(13) <= y13;
	outputMatrix(16) <= y16;
	outputMatrix(26) <= y26;
	outputMatrix(29) <= y29;
	outputMatrix(42) <= y42;
	outputMatrix(3) <= y3;
	outputMatrix(8) <= y8;
	outputMatrix(12) <= y12;
	outputMatrix(17) <= y17;
	outputMatrix(25) <= y25;
	outputMatrix(30) <= y30;
	outputMatrix(41) <= y41;
	outputMatrix(43) <= y43;
	outputMatrix(9) <= y9;
	outputMatrix(11) <= y11;
	outputMatrix(18) <= y18;
	outputMatrix(24) <= y24;
	outputMatrix(31) <= y31;
	outputMatrix(40) <= y40;
	outputMatrix(44) <= y44;
	outputMatrix(53) <= y53;
	outputMatrix(10) <= y10;
	outputMatrix(19) <= y19;
	outputMatrix(23) <= y23;
	outputMatrix(32) <= y32;
	outputMatrix(39) <= y39;
	outputMatrix(45) <= y45;
	outputMatrix(52) <= y52;
	outputMatrix(54) <= y54;
	outputMatrix(20) <= y20;
	outputMatrix(22) <= y22;
	outputMatrix(33) <= y33;
	outputMatrix(38) <= y38;
	outputMatrix(46) <= y46;
	outputMatrix(51) <= y51;
	outputMatrix(55) <= y55;
	outputMatrix(60) <= y60;
	outputMatrix(21) <= y21;
	outputMatrix(34) <= y34;
	outputMatrix(37) <= y37;
	outputMatrix(47) <= y47;
	outputMatrix(50) <= y50;
	outputMatrix(56) <= y56;
	outputMatrix(59) <= y59;
	outputMatrix(61) <= y61;
	outputMatrix(35) <= y35;
	outputMatrix(36) <= y36;
	outputMatrix(48) <= y48;
	outputMatrix(49) <= y49;
	outputMatrix(57) <= y57;
	outputMatrix(58) <= y58;
	outputMatrix(62) <= y62;
	outputMatrix(63) <= y63;
END Behavioral;