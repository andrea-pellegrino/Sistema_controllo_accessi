library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Quando parte il segnale di reset (Rst) il segnale Fine si porta a 0
-- In quel momento, il segnale di count inizia a incrementare
-- Dopo un certo numero di secondi dettato dal Timeout, il segnale Fine si porta a 1 in attesa di un nuovo reset

entity Timer is
	generic (
			Timeout : integer := 5; -- Tempo [sec]
			ClkFrq : integer := 50000000 -- Frequenza del Clock [Hz]
			);
	port (
			Clk : in std_logic; -- Clock
			Rst : in std_logic; -- Reset
			Fine : out std_logic -- Uscita a gradino di time-out. (0 <= Timer Attivo, 1 <= Fine Timer o Spento)
			);
end Timer;

architecture Beh of Timer is
-- count: conta ogni ciclo di clock a partire dal reset
signal count : integer := 0;
-- state: stato interno
signal state : std_logic := '0';

begin
	process(Clk, Rst) is
	begin
		if(Clk = '1' and Clk'event) then
		-- Quando il segnale di reset si attiva, Fine e il contatore si azzerano
			if Rst = '1' then
				count <= 0;
				state <= '0';
			else
				count <= count + 1;
				-- Al superamento del Timeout, lo stato futuro di si porta a '1'.
				if count > Timeout * ClkFrq then
					state <= '1';
				end if;
			end if;
		end if;
	end process;

Fine <= state;

end architecture Beh;