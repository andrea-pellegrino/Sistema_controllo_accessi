library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity inserimento_password is
-- inizialmente ogni cifra è uguale a 10 che viene tramutato in underscore
port (
	act : in std_logic;
	clk : in std_logic;
	Din : in std_logic_vector(3 downto 0);
	press : in std_logic;
	psw : inout std_logic_vector(15 downto 0):=X"AAAA";
	en : out std_logic);
end inserimento_password;

architecture beh of inserimento_password is
type STATE_TYPE is (PRIMA, SECONDA, TERZA, QUARTA, RESET_0);
signal state : STATE_TYPE:= RESET_0;

begin

process(clk, press, Din)
begin
if act = '0' then
	en <= '0';
	psw <= X"AAAA";
	state <= PRIMA;
else

if (clk'event and clk = '1') then
if press = '1' then

if Din = 15 then
	state <= PRIMA;
	psw <= X"AAAA";
	en <= '0';
else

	case state is 
		when RESET_0 =>
			psw <= X"AAAA";
			en <= '0';
			state <= PRIMA;
		when PRIMA =>
			psw <= Din & X"AAA";
			state <= SECONDA;
		when SECONDA =>
			psw <= psw(15 downto 12) & Din & X"AA";
			state <= TERZA;
		when TERZA =>
			psw <= psw(15 downto 8) & Din & X"A";
			state <= QUARTA;
		when QUARTA =>
			psw <= psw(15 downto 4) & Din;
			en <= '1';
			state <= RESET_0;
	end case;
end if;
end if;
end if;
end if;
end process;

end beh;


