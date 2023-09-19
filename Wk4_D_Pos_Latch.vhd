LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY Wk4_D_Pos_Latch IS

	PORT (
		D : IN STD_LOGIC;
		CLK : IN STD_LOGIC;
		Q : OUT STD_LOGIC);

END Wk4_D_Pos_Latch;

ARCHITECTURE v1 OF Wk4_D_Pos_Latch IS
BEGIN
	PROCESS (D, CLK)
	BEGIN
		IF (CLK = '1') THEN
			Q <= D;
		END IF;
		-- The absence of an else will result in a latching behviour
	END PROCESS;
END v1;