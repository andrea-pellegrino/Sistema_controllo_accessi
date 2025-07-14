-- Crea un clock a frequenza inferiore

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity ck2ck is
	generic (
	-- Il rapporto tra Fin e Fout DEVE essere un numero pari!
			Fout : integer := 25000000;
			Fin : integer  := 50000000
			);
	port (
			Ckin : in std_logic;
			Ckout : out std_logic
			);
end ck2ck;

architecture beh of ck2ck is
signal count : integer :=0;
signal state : std_logic :='0';


begin
	process(Ckin) is
	begin
		if(Ckin='1' and Ckin'event) then
		count <= count +1;
			if(count = (Fin/(2*Fout)) )then
				state <= not state;
				count <= 1;
			end if;
		end if;
	end process;
	
Ckout <= state;

end architecture beh;
