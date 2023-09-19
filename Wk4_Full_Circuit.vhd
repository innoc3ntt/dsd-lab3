LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY Full_circuit IS

	PORT (
		D : IN STD_LOGIC;
		CLK : IN STD_LOGIC;
		Qa, Qb, Qc : OUT STD_LOGIC);

END Full_circuit;

ARCHITECTURE v1 OF Full_circuit IS
BEGIN
	PROCESS (D, CLK)
	BEGIN
		IF Clk = '1' THEN
			Qa <= D;
		END IF;
	END PROCESS;

	PROCESS (D, CLK)
	BEGIN
		IF rising_edge(Clk) THEN
			Qb <= D;
		END IF;
	END PROCESS;

	PROCESS (D, Clk)
	BEGIN
		IF falling_edge(Clk) THEN
			Qc <= D;
		END IF;
	END PROCESS;
END v1;