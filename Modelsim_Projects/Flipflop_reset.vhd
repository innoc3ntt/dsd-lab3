library ieee;				
use ieee.std_logic_1164.all;


entity Flipflop_reset is
end Flipflop_reset;

architecture v1 of Flipflop_reset is

	
	--Declare components
	component Wk4_D_Pos_Latch
          port( 	D:	in std_logic;
  	                CLK:	in std_logic;
	                 Q:	out std_logic;
			 R : in std_logic );
          end component;
	
		--Declare signals
	signal R : std_logic;
	signal D    : std_logic;
	signal CLK : std_logic;
	signal Q    : std_logic;
	constant T          :time := 50 ns;
	
begin
	--Instantiating devive under test (component of type Wk4_D_Pos_Latch) and connecting testbench signals with Wk4_D_Pos_Latch.vhd 

	DUT: Wk4_D_Pos_Latch PORT MAP (D  => D, CLK => CLK,  Q  => Q , R => R);

	main_process:

	process 
		-- Declarations here
	begin	
		-- Apply inputs once at a time	
		

		--Initialise
		R  <= '1';
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