library ieee;
use ieee.std_logic_1164.all;

entity hex2disp7 is

	port
	(
		-- Input ports
	   hex	: in  std_logic_vector(3 downto 0);
		

		-- Output ports
		seg	: out std_logic_vector(6 downto 0)

	);
end hex2disp7;


architecture dataflow of hex2disp7 is
begin
process (hex)
begin

		if		hex="0000" then	seg <="1000000"; -- 0
		elsif	hex="0001" then	seg <="1111001"; -- 1
		elsif	hex="0010" then	seg <="0100100"; -- 2
		elsif	hex="0011" then	seg <="0110000"; -- 3
		elsif	hex="0100" then	seg <="0011001"; -- 4
		elsif	hex="0101" then	seg <="0010010"; -- 5
		elsif	hex="0110" then	seg <="0000010"; -- 6
		elsif	hex="0111" then	seg <="1111000"; -- 7
		elsif	hex="1000" then	seg <="0000000"; -- 8
		elsif	hex="1001" then	seg <="0010000"; -- 9
		elsif	hex="1010" then	seg <="0001000"; -- a
		elsif	hex="1011" then	seg <="0000011"; -- b
		elsif	hex="1100" then	seg <="1000110"; -- c
		elsif	hex="1101" then	seg <="0100001"; -- d
		elsif	hex="1110" then	seg <="0000110"; -- e
		else	 seg <="0001110"; -- f

	end if;
end process;
end dataflow;


