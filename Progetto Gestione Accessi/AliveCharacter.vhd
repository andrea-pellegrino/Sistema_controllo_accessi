library ieee;
use ieee.std_logic_1164.ALL;

-- Questo blocco definisce una costante di 8 bit

entity AliveCharacter is
	generic (HexCharacter: std_logic_vector(7 downto 0) := X"55" -- Carattere in esadecimale (X"55" = "01010101")
	);

	port (Alive : out std_logic_vector(7 downto 0)
	);

end AliveCharacter;

architecture dflow of AliveCharacter is
begin
	Alive <= HexCharacter;

end dflow;