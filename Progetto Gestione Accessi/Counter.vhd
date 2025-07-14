library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Questo blocco permette di contare il numero dei segnali di enable in ingresso ricevuti
-- e mostrare il valore del contatore in uscita alla porta q.
-- In questo modo è possibile contare il tasto da inviare

entity Counter is
	generic(width : integer := 4); -- Numero di bit del contatore
	
port (clk_slow : in std_logic; -- Clock Rallentato
		en : in std_logic; -- Enable
		q : out std_logic_vector (width-1 downto 0) -- Uscita
		);
end Counter;

architecture beh of Counter is
	signal temp : std_logic_vector (width-1 downto 0);
	
begin
q <= temp;

process(clk_slow) -- Counter process
	begin
		if (clk_slow'event and clk_slow = '1') then
			if (en = '1') then
				temp <= temp + 1;
			end if;
		end if;
end process;
end beh;