library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Questa macchina a stati preleva i dati dal blocco uart quando arriva il segnale di Rx_Ready.
-- Il Raspberry quando invia il database manda un utente alla volta.
-- I dati di ogni utente sono salvati sulla RAM interna e si è scelto di salvare al massimo 16 utenti.
-- La posizione in memoria di ogni utente è definito dalle 4 cifre più significative dell'indirizzo,
-- le 4 cifre meno significative identificano byte in memoria di informazioni diverse dello stesso utente.
-- I dati sono salvati in questo modo:
-- (I byte di dati e di indirizzi sono rappresentati in esadecimale (es: "A5"="10100101"), // <= Vuoto)
-- Utente 1: ID: "123456" Pass: "1234"
-- Utente 2: ID: "987654" Pass: "3210"
-- Memoria: 
--  Add  - Data
-- "00"  - "12"
-- "01"  - "34"
-- "02"  - "56"
-- "03"  - "12"
-- "04"  - "34"
-- "05"  - //
-- ...
-- "0F"  - //
-- "10"  - "98"
-- "11"  - "76"
-- "12"  - "54"
-- "13"  - "32"
-- "14"  - "10"
-- "15"  - //
-- ...
-- I byte sono inviati seguendo questo protocollo:
-- "A0" "A" word di start. "0" rappresenta le 4 cifre più significative dell'indirizzo.
-- "12" 
-- "34"
-- "56"
-- "12"
-- "34"
-- "BB" "B" word di fine utente. Si è scelto di ripeterlo 2 volte nello stesso byte.
-- "A1" "A" word di start. Inizio invio secondo utente. "1" è l'indirizzo del secondo utente.
-- "98" 
-- "76"
-- "54"
-- "32"
-- "10"
-- "BB" Fine trasmissione utente.
--
-- A questo punto la macchina rimane in attesa di ulteriori ordini.
--
-- La macchina a stati ignora il carattere di alive "CC" inviato dal Raspberry ogni 2 secondi perché non fa parte dei dati.
-- In caso di disconnessione del raspberry, si attiverà il segnale di Safe Mode (SM <= 1)
-- grazie ad un blocco di timer esterno a questo del writer che si attiva se per 5 secondi non riceve alcun dato.
-- In questo caso, il writer si blocca e ritorna nello stato di attesa dati (Idle) quando il Raspberry viene riconnesso.
 

entity Writer is
	Port(
	Clk : in STD_LOGIC; 									-- Clock
	Rx_Ready : in STD_LOGIC; 							-- Rx_Ready
	Rx_Data : in STD_LOGIC_VECTOR (7 downto 0); 	-- Rx_Data
   SM : in STD_LOGIC;									-- Safe Mode. (SM <= 1 : Safe Mode attiva, SM <= 0 : Safe Mode off)
	Add : out STD_LOGIC_VECTOR (7 downto 0);	   -- Address, Indirizzo di memoria della RAM
	Data : out STD_LOGIC_VECTOR (7 downto 0);   	-- Data, Dati da salvare in RAM
	WE  : out STD_LOGIC     					  		-- Write Enable
	);

end Writer;

architecture beh of Writer is
type STATE_TYPE is (Idle, Wait4Start, Wait4Data, Start2Write, End2Write, Safe_Mode);
signal state : STATE_TYPE := Idle;
signal count : std_logic_vector (3 downto 0); -- Bit meno significativi dell'indirizzo
signal addr : std_logic_vector (3 downto 0); -- Bit più significativi dell'indirizzo
signal d74 : std_logic_vector (3 downto 0); -- I 4 bit più significativi dei dati in ingresso
begin
process (Clk) is
begin
d74 <= Rx_Data(7 downto 4);

	if (Clk'event and Clk = '1') then
		case state is
		
		-- Idle: Rimane in attesa di un dato di start in arrivo.
		when Idle =>
			count <= "0000"; -- Reset dell'indirizzo (...3-0)
			addr <= "0000"; -- Reset dell'indirizzo (7-4...)
			if Rx_Ready = '1' then
		   	state <= Wait4Start;
			end if;
			
		-- Ingresso in Safe Mode. Può avvenire in ogni stato.
			if SM = '1' then
				state <= Safe_Mode;
			end if;
			
		-- Wait4Start: Se arriva la word di start, memorizza le 4 cifre più significative dell'indirizzo, che identificano
		-- la locazione in memoria dell'utente. (0-F, 16 utenti)
		-- Se non arriva la word di start, torna in Idle.
		when Wait4Start =>
			if d74 = 10 then
				addr <= Rx_Data(3 downto 0);
				state <= Wait4Data;
			else state <= Idle;
			end if;
			
		-- Safe Mode
			if SM = '1' then
				state <= Safe_Mode;
			end if;

		-- Wait4Data: Attende un dato in arrivo.
		when Wait4Data =>
			if Rx_Ready = '1' then
				state <= Start2Write;
			end if;
			
		-- Safe Mode			
			if SM = '1' then
				state <= Safe_Mode;
			end if;
		
		-- Start2Write: Se il byte ricevuto è di Alive, torna in attesa di un dato.
	   -- Se il byte contiene informazioni (2 numeri), attiva il Write Enable e porta dati e indirizzo corretto in uscita,
	   -- Il dato sarà scritto nella RAM nel prossimo ciclo di clock.
	   -- Se il byte ricevuto è di Fine Utente, torna in Idle.	
		when Start2Write =>
			if d74 > 11 then
				state <= Wait4Data;
			elsif d74 < 10 then
			   Add <= addr & count;
		   	Data <= Rx_Data;
			   WE <= '1';
				state <= End2Write;
			else
				state <= Idle; 
			end if;

		-- Safe Mode
			if SM = '1' then
				state <= Safe_Mode;
			end if;

		-- End2Write: Porta a 0 il Write Enable e vai all'indirizzo successivo.
		when End2Write =>
			WE <= '0';		
			count <= count + 1;
			state <= Wait4Data;

		-- Safe Mode			
			if SM = '1' then
				state <= Safe_Mode;
			end if;
		
		-- Safe Mode: Torna in Idle quando il segnale di Safe Mode è disattivato.
		when Safe_Mode =>
			if SM = '0' then
				state <= Idle;
			end if;
		
		end case;
	end if;
end process;

end beh;