library ieee;				
use ieee.std_logic_1164.all;


entity Wk4_tb_1 is
end Wk4_tb_1;

architecture v1 of Wk4_tb_1 is

	
	--Declare components
	component Full_circuit
       port(  	D:	in std_logic;
	          CLK:	in std_logic;
	            Qa, Qb, Qc:	out std_logic);
          end component;
	
		--Declare signals

	signal D    : std_logic;
	signal CLK : std_logic;
	signal Qa, Qb, Qc    : std_logic;
	constant T          :time := 50 ns;
	
begin
	--Instantiating devive under test (component of type Wk4_D_Pos_Latch) and connecting testbench signals with Wk4_D_Pos_Latch.vhd 

	DUT: Full_circuit PORT MAP (D  => D, CLK => CLK,  Qa  => Qa , Qb => Qb, Qc => Qc );

	main_process:

	process 
		-- Declarations here
	begin	
		-- Apply inputs once at a time	
		

		--Initialise
		D     <= '0';
		CLK <= '0';
		
		wait for T;

		--Let's go
		D     <= '1';
		CLK <= '0';
		wait for T;

		D     <= '1';
		CLK <= '1';
		wait for T;

		D     <= '0';
		CLK <= '1';
		wait for T;

		D     <= '1';
		CLK <= '0';
		wait for T;

		D     <= '1';
		CLK <= '0';
		wait for T;

		D     <= '0';
		CLK <= '1';
		wait for T;

		D     <= '1';
		CLK <= '1';
		wait for T;

		D     <= '0';
		CLK <= '0';
		wait for T;

		D     <= '0';
		CLK <= '0';
		wait for T;

		D     <= '0';
		CLK <= '1';
		wait for T;

		D     <= '1';
		CLK <= '1';
		wait for T;

		D     <= '0';
		CLK <= '0';
		wait for T;

		--End of test is to wait forever
		wait;
	end process;
		
end v1;