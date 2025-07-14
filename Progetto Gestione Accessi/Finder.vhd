library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Finder is
	
	Port( 
			Clk : in STD_LOGIC;
	      DataFind : STD_LOGIC_VECTOR (23 downto 0);
			Enable : in STD_LOGIC;
			Add : buffer STD_LOGIC_VECTOR (7 downto 0);
			Data : in STD_LOGIC_VECTOR (7 downto 0);
			Fine	: out STD_LOGIC;
			FineVero : out STD_LOGIC; 
			SiFind : out STD_LOGIC;
			Pass: out STD_LOGIC_VECTOR (15 downto 0)
			);

end Finder;

architecture beh of Finder is
type STATE_TYPE is (STATO_INIZIALE, LEGGIPAG1, LEGGIPAG2, LEGGIPAG3, FINALE, Add1_2, Add1_3, 
Add16, Add15, Add14, Hold, FINALEVERO, Add1Pass, Add2Pass, Salva, Salva2);
signal state : STATE_TYPE := STATO_INIZIALE;
signal state_2 : STATE_TYPE;
signal pass1_2 : STD_LOGIC_VECTOR (7 downto 0);
signal pass3_4 : STD_LOGIC_VECTOR (7 downto 0);

begin
	process (Clk,Data,Enable) is
	begin
		if (Clk'event and Clk = '1') then
			if (Enable = '1') then
				case state is
				when STATO_INIZIALE =>
					Add <= "00000000";
					Fine <= '0';
					FineVero <= '0';
					SiFind <= '0';
					state	<= LEGGIPAG1;
				when LEGGIPAG1 =>
					if Data = DataFind (23 downto 16) then
						state	<= Add1_2;
					else
						state <= Add16;
						if Add (7 downto 4) = "1111" then
							state	<= FINALE;
						end if;
					end if;
				when LEGGIPAG2 =>
				 	if Data = DataFind (15 downto 8) then
						state	<= Add1_3;
					else
						state	<= Add15;
							if Add (7 downto 4) = "1111" then
							state	<= FINALE;
						end if;
					end if;
				when LEGGIPAG3 =>
				 	if Data = DataFind (7 downto 0) then
						SiFind <= '1';
						state	<= FINALE;
					else
						state <= Add14;
							if Add (7 downto 4) = "1111" then
							state	<= FINALE;
						end if;
					end if;
				when FINALE =>
						Fine <= '1';
						state <= Add1Pass;
				when Add1_2 =>
						Add <= Add + 1;
						state <= Hold;
						state_2 <= LEGGIPAG2;
				when Add1_3 =>
						Add <= Add + 1;
						state <= Hold;
						state_2 <= LEGGIPAG3;
				when Add16 =>
				      Add <= Add + 16;
						state <= Hold;
						state_2 <= LEGGIPAG1;
				when Add15 =>
						Add <= Add + 15;
						state <= Hold;
						state_2 <= LEGGIPAG1;
				when Add14 =>
				      Add <= Add + 14;
						state <= Hold;
						state_2 <= LEGGIPAG1;
				when Add1Pass =>
						Add <= Add + 1;
						state <= Hold;
						state_2 <= Salva;
				when Add2Pass =>
						Add <= Add + 1;
						state <= Hold;
						state_2 <= Salva2;						
				when Salva =>
						pass1_2 <= Data;
						state <= Add2Pass;
				when Salva2 =>
						pass3_4 <= Data;
						state <= FINALEVERO;
				when FINALEVERO =>
						Pass <= pass1_2 & pass3_4;
						FineVero <= '1';
				when Hold =>
						state <= state_2;
				end case;
			else
			state <= STATO_INIZIALE;
			end if;
		end if;
end process;

end beh;
