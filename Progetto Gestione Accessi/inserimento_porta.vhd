library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity inserimento_porta is
generic (nMAXporte: INTEGER:= 4);
-- inizialmente ogni cifra è uguale a 10 che viene tramutato in underscore
port (
	act : in std_logic;
	clk : in std_logic;
	Din : in std_logic_vector(3 downto 0);
	press : in std_logic;
	pt : inout std_logic_vector(3 downto 0):= X"A";
	en : out std_logic:= '0';
	ok_pt : out std_logic := '0');
end inserimento_porta;

architecture beh of inserimento_porta is
type STATE_TYPE is (PRIMA, RESET_0, CONFRONTO);
signal state : STATE_TYPE:= RESET_0;
signal next_command : STATE_TYPE;

begin

process(clk, press, Din)
begin
if act = '0' then
	en <= '0';
	ok_pt <= '0';
	pt <= X"A";
	state <= PRIMA;
else

if (clk'event and clk = '1') then
if press = '1' then

if Din = 15 then
	state <= PRIMA;
	pt <= X"A";
	en <= '0';
else

	case state is 
		when RESET_0 =>
			pt <= X"A";
			state <= PRIMA;
			en <= '0';
		when PRIMA =>
			pt <= Din;
			state <= CONFRONTO;
			en <= '0';
		when CONFRONTO =>
			if pt < nMAXporte + 1 then
				ok_pt <= '1';
			end if;
			en <= '1';
			state <= RESET_0;
	end case;
end if;
end if;
end if;
end if;
end process;

end beh;


