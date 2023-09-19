LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY Wk4_Pos_Flipflop IS

	PORT (
		D : IN STD_LOGIC;
		CLK : IN STD_LOGIC;
		Q : OUT STD_LOGIC);

END Wk4_Pos_Flipflop;

ARCHITECTURE v1 OF Wk4_Pos_Flipflop IS
BEGIN
	PROCESS (D, CLK)
	BEGIN
		IF Clk'EVENT AND Clk = '1' THEN
			Q <= D;
		END IF;
		-- The absence of an else will result in a latching behviour
	END PROCESS;
END v1;