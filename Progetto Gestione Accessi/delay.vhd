library IEEE;
use IEEE.std_logic_1164.all;

-- Questo blocco serve per portare l'enable al ciclo successivo per essere sincronizzato con il dato sul Registro 

entity delay is
port(
	press_in: in std_logic;				 -- Input
	clk : in std_logic; 					 -- Clock
	press_out: out std_logic := '0'   -- Output
);
end delay;

architecture beh of delay is
begin
process(press_in)
begin
-- La presenza del ciclo if permette il ritardo di un ciclo di clock al segnale di ingresso.
	if (clk'event and clk = '1') then
		if press_in = '1' then
			press_out <= '1';
		elsif press_in = '0' then
			press_out <= '0';
		end if;
	end if;
end process; 
end beh;
