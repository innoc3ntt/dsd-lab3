library ieee;				
use ieee.std_logic_1164.all;


  entity Full_circuit is
  
       port(  	D:	in std_logic;
	          CLK:	in std_logic;
	            Qa, Qb, Qc:	out std_logic);
					
	 end Full_circuit;

architecture v1 of Full_circuit is
begin
	process(D,CLK)
	begin
		if Clk = '1' then
			Qa <= D;
		end if;
	end process;

	process(D,CLK)
	begin
		if rising_edge(Clk) then
			Qb <= D;
		end if;
	end process;
	
	process(D,Clk)
	begin
		if falling_edge(Clk) then
			Qc <= D;
		end if;
	end process;
end v1;
