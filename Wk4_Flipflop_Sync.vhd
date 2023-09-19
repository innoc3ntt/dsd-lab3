LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY Wk4_Flipflop_Sync IS

	PORT (
		D : IN STD_LOGIC;
		CLK : IN STD_LOGIC;
		R : IN STD_LOGIC;
		Q : OUT STD_LOGIC);

END Wk4_Flipflop_Sync;

ARCHITECTURE v1 OF Wk4_Flipflop_Sync IS
BEGIN
	PROCESS (D, CLK)
	BEGIN
		IF falling_edge(CLK) AND R = '0' THEN
			Q <= R;
		ELSIF rising_edge(CLK) THEN
			Q <= D;
		END IF;
	END PROCESS;
END v1;