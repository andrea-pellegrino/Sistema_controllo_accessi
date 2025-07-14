-- Crea un clock a frequenza inferiore
-- Il blocco è simile a un prescaler ma in uscita è un segnale di clock, non di impulsi.
-- Il clock inizia sempre con il semiperiodo in cui il valore è 0.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Si sceglie di utilizzare per il tastierino una velocità di sondaggio del tastierino molto inferiore
-- a quella del clock, pari a 1,6 kHz.

entity ck2ck is
	generic (
	-- Il rapporto tra Fin e Fout DEVE essere un numero pari!
			Fout : integer := 1600;  -- Frequenza desiderata in uscita
			Fin : integer  := 50000000 -- Frequenza dell'oscillatore
			);
	port (
			clk : in std_logic; -- Clock
			clk_slow : out std_logic -- Clock rallentato
			);
end ck2ck;

architecture beh of ck2ck is
signal count : integer := 0;
signal state : std_logic := '0';


begin
	process(clk) is
	begin
		if(clk = '1' and clk'event) then
		count <= count + 1;
		-- Quando il contatore conta i picchi del clock. Quando il numero raggiunge il valore del periodo del clock rallentato
		-- inverte il valore dell'uscita (toggle) e riparte a contare.
			if(count = (Fin /(2*Fout)) )then
				state <= not state;
				count <= 1;
			end if;
		end if;
	end process;

clk_slow <= state;

end architecture beh;
