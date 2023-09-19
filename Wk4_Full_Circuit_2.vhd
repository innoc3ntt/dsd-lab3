LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY Full_circuit_2 IS

	PORT (
		D : IN STD_LOGIC;
		CLK : IN STD_LOGIC;
		Qa, Qb, Qc : OUT STD_LOGIC);

END Full_circuit_2;

ARCHITECTURE v1 OF Full_circuit_2 IS

	COMPONENT Wk4_D_Pos_Latch IS
		PORT (
			D : IN STD_LOGIC;
			CLK : IN STD_LOGIC;
			Q : OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT Wk4_Pos_Flipflop IS
		PORT (
			D : IN STD_LOGIC;
			CLK : IN STD_LOGIC;
			Q : OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT Wk4_Neg_Flipflop IS
		PORT (
			D : IN STD_LOGIC;
			CLK : IN STD_LOGIC;
			Q : OUT STD_LOGIC);
	END COMPONENT;

BEGIN
	latch : Wk4_D_Pos_Latch PORT MAP(D => D, CLK => CLK, Q => Qa);
	pos_flipflop : Wk4_Pos_Flipflop PORT MAP(D => D, CLK => CLK, Q => Qb);
	neg_flipflop : Wk4_Neg_Flipflop PORT MAP(D => D, CLK => CLK, Q => Qc);

END v1;