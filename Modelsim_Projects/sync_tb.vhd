library ieee;				
use ieee.std_logic_1164.all;


entity sync_tb is
end sync_tb;

architecture v1 of sync_tb is

	
	--Declare components

	
	component Wk4_Flipflop_sync
       port(  	D:	in std_logic;
	          CLK:	in std_logic;
				 R  : in std_logic;
	            Q:	out std_logic   );
          end component;

	component Wk4_Flipflop_async
       port(  	D:	in std_logic;
	          CLK:	in std_logic;
				 R  : in std_logic;
	            Q:	out std_logic   );
          end component;
		--Declare signals

	signal D    : std_logic;
	signal CLK : std_logic;
	signal Q    : std_logic;
	signal R : std_logic;
	constant T          :time := 50 ns;
	
begin
	--Instantiating devive under test (component of type Wk4_D_Pos_Latch) and connecting testbench signals with Wk4_D_Pos_Latch.vhd 

	DUT: Wk4_Flipflop_async PORT MAP (D  => D, CLK => CLK,  Q => Q, R => R );

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


		R     <= '0';
		CLK <= '0';
		wait for T;


		D     <= '1';
		CLK <= '1';
		wait for T;


		R     <= '0';
		CLK <= '1';
		wait for T;


		D     <= '1';
		CLK <= '0';
		wait for T;

		--End of test is to wait forever
		wait;
	end process;
		
end v1;