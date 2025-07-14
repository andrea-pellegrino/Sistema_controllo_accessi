library ieee;
use ieee.std_logic_1164.all;

-- Demultiplexer 4 a 1

entity mux4_1 is
Port( I3 : in STD_LOGIC; -- Ingressi
		I2 : in STD_LOGIC;
		I1 : in STD_LOGIC;
		I0 : in STD_LOGIC;
		S : in STD_LOGIC_VECTOR (1 downto 0); --segnale dal contatore
		Y : out STD_LOGIC); -- Uscita
end mux4_1;

architecture Behavioral of mux4_1 is
begin
with S select
	Y <= I0 when "00", --diventa uno solo se l'input connesso è uguale a uno 
		I1 when "01",
		I2 when "10",
		I3 when others;
end Behavioral;