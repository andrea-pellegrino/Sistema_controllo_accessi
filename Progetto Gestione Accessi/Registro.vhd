library ieee;
use ieee.std_logic_1164.all;

-- Lo scopo di questo blocco è quello di salvare i dati che riceve in ingresso.
-- Il salvataggio funziona tramite enable.

entity Registro is
 Port(   Clk : in STD_LOGIC;   							-- Clock
	   	Din : in STD_LOGIC_VECTOR (3 downto 0);   -- Data Input
			Dout : out STD_LOGIC_VECTOR (3 downto 0); -- Data Output
			En : in STD_LOGIC);								-- Enable
end Registro;

architecture beh of Registro is
	signal InternalValue : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	-- Il valore interno del registro è inizializzato a 0
	signal NextValue : STD_LOGIC_VECTOR (3 downto 0);
	begin
	process (Clk) 
	begin 
		if (Clk='1' and Clk'event) THEN
			InternalValue <= NextValue;
		end if;
	 end process;
	
	process (En,Din,InternalValue) is
	begin 
	-- Controllo enable 
		NextValue <= InternalValue ;
		if (En = '1') then
			NextValue <= Din; -- input da Din
		end if;
	 end process;

	Dout <= InternalValue ;
end architecture beh;
