LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.matrix.ALL;

ENTITY Zigzag IS
 PORT (
  input0, input1, input2, input3, input4, input5, input6, input7 : IN std_logic_vector(31 DOWNTO 0);
  outputMatrix : OUT matrix64;
  clk, reset, enable : IN std_logic;
  oe : OUT std_logic
 );
END Zigzag;

ARCHITECTURE Behavioral OF Zigzag IS

	signal reg: matrix64;

BEGIN

PROCESS (clk, reset)
  VARIABLE count : INTEGER RANGE 0 TO 8 := 0;
  
BEGIN

  IF (reset = '1') THEN
   reg(1) <= (OTHERS => '0');
	
  ELSIF (clk' event AND clk = '1' AND enable = '1') THEN
 
   IF (count = 8) THEN
	
    count := 0;
    oe <= '1';
	 
   ELSE
    oe <= '0';
	 
    IF count = 0 THEN
     reg(0) <= input0;
     reg(1) <= input1;
     reg(5) <= input2;
     reg(6) <= input3;
     reg(14) <= input4;
     reg(15) <= input5;
     reg(27) <= input6;
     reg(28) <= input7;
	  
    ELSIF count = 1 THEN
     reg(2) <= input0;
     reg(4) <= input1;
     reg(7) <= input2;
     reg(13) <= input3;
     reg(16) <= input4;
     reg(26) <= input5;
     reg(29) <= input6;
     reg(42) <= input7;
	  
    ELSIF count = 2 THEN
     reg(3) <= input0;
     reg(8) <= input1;
     reg(12) <= input2;
     reg(17) <= input3;
     reg(25) <= input4;
     reg(30) <= input5;
     reg(41) <= input6;
     reg(43) <= input7;
	  
    ELSIF count = 3 THEN
     reg(9) <= input0;
     reg(11) <= input1;
     reg(18) <= input2;
     reg(24) <= input3;
     reg(31) <= input4;
     reg(40) <= input5;
     reg(44) <= input6;
     reg(53) <= input7;
	  
    ELSIF count = 4 THEN
     reg(10) <= input0;
     reg(19) <= input1;
     reg(23) <= input2;
     reg(32) <= input3;
     reg(39) <= input4;
     reg(45) <= input5;
     reg(52) <= input6;
     reg(54) <= input7;
	  
    ELSIF count = 5 THEN
     reg(20) <= input0;
     reg(22) <= input1;
     reg(33) <= input2;
     reg(38) <= input3;
     reg(46) <= input4;
     reg(51) <= input5;
     reg(55) <= input6;
     reg(60) <= input7;
	  
    ELSIF count = 6 THEN
     reg(21) <= input0;
     reg(34) <= input1;
     reg(37) <= input2;
     reg(47) <= input3;
     reg(50) <= input4;
     reg(56) <= input5;
     reg(59) <= input6;
     reg(61) <= input7;
	  
    ELSIF count = 7 THEN
     reg(35) <= input0;
     reg(36) <= input1;
     reg(48) <= input2;
     reg(49) <= input3;
     reg(57) <= input4;
     reg(58) <= input5;
     reg(62) <= input6;
     reg(63) <= input7;
	  
    ELSE
     oe <= '0';
    END IF;
	 
	 count := count + 1;
   END IF;
  END IF;
 END PROCESS;
 
	 outputMatrix(0) <= reg(0);
	 outputMatrix(1) <= reg(1);
	 outputMatrix(5) <= reg(5);
	 outputMatrix(6) <= reg(6);
	 outputMatrix(14) <= reg(14);
	 outputMatrix(15) <= reg(15);
	 outputMatrix(27) <= reg(27);
	 outputMatrix(28) <= reg(28);
	 outputMatrix(2) <= reg(2);
	 outputMatrix(4) <= reg(4);
	 outputMatrix(7) <= reg(7);
	 outputMatrix(13) <= reg(13);
	 outputMatrix(16) <= reg(16);
	 outputMatrix(26) <= reg(26);
	 outputMatrix(29) <= reg(29);
	 outputMatrix(42) <= reg(42);
	 outputMatrix(3) <= reg(3);
	 outputMatrix(8) <= reg(8);
	 outputMatrix(12) <= reg(12);
	 outputMatrix(17) <= reg(17);
	 outputMatrix(25) <= reg(25);
	 outputMatrix(30) <= reg(30);
	 outputMatrix(41) <= reg(41);
	 outputMatrix(43) <= reg(43);
	 outputMatrix(9) <= reg(9);
	 outputMatrix(11) <= reg(11);
	 outputMatrix(18) <= reg(18);
	 outputMatrix(24) <= reg(24);
	 outputMatrix(31) <= reg(31);
	 outputMatrix(40) <= reg(40);
	 outputMatrix(44) <= reg(44);
	 outputMatrix(53) <= reg(53);
	 outputMatrix(10) <= reg(10);
	 outputMatrix(19) <= reg(19);
	 outputMatrix(23) <= reg(23);
	 outputMatrix(32) <= reg(32);
	 outputMatrix(39) <= reg(39);
	 outputMatrix(45) <= reg(45);
	 outputMatrix(52) <= reg(52);
	 outputMatrix(54) <= reg(54);
	 outputMatrix(20) <= reg(20);
	 outputMatrix(22) <= reg(22);
	 outputMatrix(33) <= reg(33);
	 outputMatrix(38) <= reg(38);
	 outputMatrix(46) <= reg(46);
	 outputMatrix(51) <= reg(51);
	 outputMatrix(55) <= reg(55);
	 outputMatrix(60) <= reg(60);
	 outputMatrix(21) <= reg(21);
	 outputMatrix(34) <= reg(34);
	 outputMatrix(37) <= reg(37);
	 outputMatrix(47) <= reg(47);
	 outputMatrix(50) <= reg(50);
	 outputMatrix(56) <= reg(56);
	 outputMatrix(59) <= reg(59);
	 outputMatrix(61) <= reg(61);
	 outputMatrix(35) <= reg(35);
	 outputMatrix(36) <= reg(36);
	 outputMatrix(48) <= reg(48);
	 outputMatrix(49) <= reg(49);
	 outputMatrix(57) <= reg(57);
	 outputMatrix(58) <= reg(58);
	 outputMatrix(62) <= reg(62);
	 outputMatrix(63) <= reg(63);
	 
END Behavioral;