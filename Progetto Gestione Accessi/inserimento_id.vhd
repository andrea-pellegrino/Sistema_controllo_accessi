library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity inserimento_id is
-- inizialmente ogni cifra è uguale a 10 che viene tramutato in underscore
port (
	act : in std_logic;
	clk : in std_logic;
	Din : in std_logic_vector(3 downto 0);
	press : in std_logic;
	id : inout std_logic_vector(23 downto 0):= X"AAAAAA";
	en : out std_logic := '0');
end inserimento_id;

architecture beh of inserimento_id is
type STATE_TYPE is (PRIMA, SECONDA, TERZA, QUARTA, QUINTA, SESTA, RESET_0);
signal state : STATE_TYPE:= RESET_0;

begin

process(clk, press, Din)
begin
if act = '0' then
	state <= PRIMA;
	id <= X"AAAAAA";
	en <= '0';
else
if (clk'event and clk = '1') then
if press = '1' then

if Din = 15 then
	state <= PRIMA;
	id <= X"AAAAAA";
	en <= '0';
else

	case state is 
		when RESET_0 =>
			id <= X"AAAAAA";
			en <= '0';
			state <= PRIMA;
		when PRIMA =>
			id <= Din & X"AAAAA";
			state <= SECONDA;
		when SECONDA =>
			id <= id(23 downto 20) & Din & X"AAAA";
			state <= TERZA;
		when TERZA =>
			id <= id(23 downto 16) & Din & X"AAA";
			state <= QUARTA;
		when QUARTA =>
			id <= id(23 downto 12) & Din & X"AA";
			state <= QUINTA;
		when QUINTA =>
			id <= id(23 downto 8) & Din & X"A";
			state <= SESTA;
		when SESTA =>
			id <= id(23 downto 4) & Din;
			en <= '1';
			state <= RESET_0;
	end case;
end if;
end if;
end if;
end if;
end process;

end beh;
