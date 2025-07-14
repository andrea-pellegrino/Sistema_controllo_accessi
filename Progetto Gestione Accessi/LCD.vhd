library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Questo blocco serve per utilizzare lo schermo a cristalli liquidi sulla board.
-- Le frasi da dover mostrare sono 9, di cui 3 hanno un campo live.
-- Questo blocco nasce da un blocco già esistente LCD fornito dal prof. Santinelli.
-- Una modifica importante è stata realizzata alla riga 303, dove al posto di ogni carattere non numerico
-- viene inserito un underscore. Questo per poter illustrare la presenza di un campo live che deve essere riempito.
--


entity LCD is
port (
	Clk		: in std_logic; -- Clock
   Pag	   : in std_logic_vector(3 downto 0); -- Selettore della pagina
	Rst		: in std_logic := '1'; -- Reset iniziale, sempre attivo
	Hex_Display_Data6	: in std_logic_vector((6*4)-1 downto 0); -- Campo Live ID
	Hex_Display_Data4	: in std_logic_vector((4*4)-1 downto 0); -- Campo Live Password
	Hex_Display_Data1	: in std_logic_vector((1*4)-1 downto 0); -- Campo Live Porta
	LCD_RS	: out std_logic; -- Segnali di gestione dell'LCD
	LCD_EN	: out std_logic; --
	LCD_RW	: out std_logic; --
	LCD_ON	: out std_logic; --
	LCD_BLON	: out std_logic; --
	LCD_DATA	: inout std_logic_vector(7 downto 0));	--
end LCD;

architecture beh of LCD is
-- Definisco un type per la stringa di caratteri come array di std logic vector.
type character_string is array (0 to 31) of std_logic_vector(7 downto 0);
-- Macchina a stati
type STATE_TYPE is (	HOLD, FUNC_SET, DISPLAY_ON, MODE_SET, Print_String, 
							LINE2, RETURN_HOME, DROP_LCD_E, RESET1, RESET2, RESET3,
							DISPLAY_OFF, DISPLAY_CLEAR);

signal state, next_command			: STATE_TYPE;
signal LCD_display_string			: character_string;
signal DATA_BUS_VALUE, Next_Char	: std_logic_vector(7 downto 0);
signal CLK_COUNT_400HZ				: std_logic_vector(19 downto 0);
signal CHAR_COUNT						: std_logic_vector(4 downto 0);
signal CLK_400HZ_Enable				: std_logic;
signal LCD_RW_INT						: std_logic;
-- Pagine
signal Pagina0                    : character_string;
signal Pagina1                    : character_string;
signal Pagina2                    : character_string;
signal Pagina3                    : character_string;
signal Pagina4                    : character_string;
signal Pagina5                    : character_string;
signal Pagina6                    : character_string;
signal Pagina7                    : character_string;
signal PaginaVuota                : character_string;

begin

--Elenco pagine:
--%% -> Campo Live

Pagina0 <= (
-- PREMI UN
-- TASTO QUALSIASI
-- Line 1 Page 0
   X"50", X"52", X"45", X"4D", X"49", X"20", X"55", X"4E",
	X"20", X"20", X"20", X"20", X"20", X"20", X"20", X"20",
-- Line 2 Page 0
   X"54", X"41", X"53", X"54", X"4F", X"20", X"51", X"55",
	X"41", X"4C", X"53", X"49", X"41", X"53", X"49", X"20");
Pagina1 <= (

-- INSERIRE ID:
-- %%%%%%
-- Line 1 Page 1
   X"49", X"4E", X"53", X"45", X"52", X"49", X"52", X"45",
	X"20", X"49", X"44", X"3A", X"20", X"20", X"20", X"20",
-- Line 2 Page 1
   X"0" & Hex_Display_Data6(23 downto 20), X"0" & Hex_Display_Data6(19 downto 16), 
	X"0" & Hex_Display_Data6(15 downto 12), X"0" & Hex_Display_Data6(11 downto 8), 
	X"0" & Hex_Display_Data6(7 downto 4), X"0" & Hex_Display_Data6(3 downto 0), 
	X"20", X"20",
	X"20", X"20", X"20", X"20", X"20", X"20", X"20", X"20");
	
Pagina2 <= (
-- UTENTE NON
-- RICONOSCIUTO
-- Line 1 Page 2
   X"55", X"54", X"45", X"4E", X"54", X"45", X"20", X"4E",
	X"4F", X"4E", X"20", X"20", X"20", X"20", X"20", X"20",
-- Line 2 Page 2
   X"52", X"49", X"43", X"4F", X"4E", X"4F", X"53", X"43",
	X"49", X"55", X"54", X"4F", X"20", X"20", X"20", X"20");
Pagina3 <= (
-- INSERIRE
-- PASSWORD: %%%%
-- Line 1 Page 3
   X"49", X"4E", X"53", X"45", X"52", X"49", X"52", X"45",
	X"20", X"20", X"20", X"20", X"20", X"20", X"20", X"20",
-- Line 2 Page 3
   X"50", X"41", X"53", X"53", X"57", X"4F", X"52", X"44",
	X"3A", X"20", 
	X"0" & Hex_Display_Data4(15 downto 12), X"0" & Hex_Display_Data4(11 downto 8), 
	X"0" & Hex_Display_Data4(7 downto 4), X"0" & Hex_Display_Data4(3 downto 0), 
	X"20", X"20");
Pagina4 <= (
-- PASSWORD ERRATA
--
-- Line 1 Page 4
   X"50", X"41", X"53", X"53", X"57", X"4F", X"52", X"44",
	X"20", X"45", X"52", X"52", X"41", X"54", X"41", X"20",
-- Line 2 Page 4
   X"20", X"20", X"20", X"20", X"20", X"20", X"20", X"20",
	X"20", X"20", X"20", X"20", X"20", X"20", X"20", X"20");
Pagina5 <= (
-- INSERIRE NUMERO
-- PORTA: %
-- Line 1 Page 5
   X"49", X"4E", X"53", X"45", X"52", X"49", X"52", X"45",
	X"20", X"4E", X"55", X"4D", X"45", X"52", X"4F", X"20",
-- Line 2 Page 5
   X"50", X"4F", X"52", X"54", X"41", X"3A", X"20", X"0" & Hex_Display_Data1(3 downto 0),
	X"20", X"20", X"20", X"20", X"20", X"20", X"20", X"20");
Pagina6 <= (
-- NUMERO ERRATO
-- 
-- Line 1 Page 6
   X"4E", X"55", X"4D", X"45", X"52", X"4F", X"20", X"45",
	X"52", X"52", X"41", X"54", X"4F", X"20", X"20", X"20",
-- Line 2 Page 6
   X"20", X"20", X"20", X"20", X"20", X"20", X"20", X"20",
	X"20", X"20", X"20", X"20", X"20", X"20", X"20", X"20");
Pagina7 <= (
-- PORTA % ATTIVA
--
-- Line 1 Page 7
   X"50", X"4F", X"52", X"54", X"41", X"20",X"0" & Hex_Display_Data1(3 downto 0), X"20",
	X"41", X"54", X"54", X"49", X"56", X"41", X"20", X"20",
-- Line 2 Page 7
   X"20", X"20", X"20", X"20", X"20", X"20", X"20", X"20",
	X"20", X"20", X"20", X"20", X"20", X"20", X"20", X"20");
PaginaVuota <= (
--
--
-- Line 1 Page Empty
   X"20", X"20", X"20", X"20", X"20", X"20", X"20", X"20",
	X"20", X"20", X"20", X"20", X"20", X"20", X"20", X"20",
-- Line 2 Page Empty
   X"20", X"20", X"20", X"20", X"20", X"20", X"20", X"20",
	X"20", X"20", X"20", X"20", X"20", X"20", X"20", X"20");



-- Seleziona Pagina:
	
   process(Pag)
	begin
	   if    (Pag = "0000")	then LCD_display_string <= Pagina0;
		elsif (Pag = "0001")	then LCD_display_string <= Pagina1;
		elsif (Pag = "0010")	then LCD_display_string <= Pagina2;
		elsif (Pag = "0011")	then LCD_display_string <= Pagina3;
		elsif (Pag = "0100")	then LCD_display_string <= Pagina4;
		elsif (Pag = "0101")	then LCD_display_string <= Pagina5;
		elsif (Pag = "0110")	then LCD_display_string <= Pagina6;
		elsif (Pag = "0111")	then LCD_display_string <= Pagina7;
		else     	  LCD_display_string <= PaginaVuota;
		end if;
   end process;


-- Bidirectional tri-state LCD data bus
	LCD_DATA <= DATA_BUS_VALUE when LCD_RW_INT = '0' else "ZZZZZZZZ";

-- get next character in display string
	Next_Char <= LCD_display_string(conv_integer(CHAR_COUNT));
	LCD_RW <= LCD_RW_INT;
	
-- LCD power on	
	LCD_ON 	<= '1';
-- LCD back light on
	LCD_BLON <='1';
	
	process
	begin
		wait until Clk'event and Clk = '1';
			if Rst = '0'	then
				CLK_COUNT_400HZ  <= X"00000";
				CLK_400HZ_Enable <= '0';
			else
				if CLK_COUNT_400HZ < X"0F424"	then
					CLK_COUNT_400HZ  <= CLK_COUNT_400HZ+1;
					CLK_400HZ_Enable <= '0';
				else
					CLK_COUNT_400HZ  <= X"00000";
					CLK_400HZ_Enable <= '1';					
				end if;
			end if;
	end process;
	
	process(Clk, Rst)
	begin
	if Rst = '0'	then
		state <= RESET1;
		DATA_BUS_VALUE <= X"38";
		next_command <= RESET2;
		LCD_EN  <= '1';
		LCD_RS <= '0';
		LCD_RW_INT <= '1';
	elsif(Clk'event and Clk = '1')	then
-- State Machine to send commands and data  to LCD DISPLAY
		if(CLK_400HZ_Enable = '1') then
			case state is
-- Set Function to 8-bit transfer and 2 line display  with 5x8 Font size
-- see Hitachi HD44780 family data sheet for LCD command and timing details
				when RESET1 =>
				
						LCD_EN  			<= '1';
						LCD_RS 			<= '0';
						LCD_RW_INT 		<= '0';		
						DATA_BUS_VALUE <= X"38";
						state 			<= DROP_LCD_E;
						next_command 	<= RESET2;
						CHAR_COUNT 		<= "00000";
						
				when RESET2 =>
				
						LCD_EN  			<= '1';
						LCD_RS 			<= '0';
						LCD_RW_INT 		<= '0';		
						DATA_BUS_VALUE <= X"38";
						state 			<= DROP_LCD_E;
						next_command 	<= RESET3;
						
				when RESET3 =>
				
						LCD_EN  			<= '1';
						LCD_RS 			<= '0';
						LCD_RW_INT 		<= '0';		
						DATA_BUS_VALUE <= X"38";
						state 			<= DROP_LCD_E;
						next_command 	<= FUNC_SET;
						
				when FUNC_SET =>
				
						LCD_EN  			<= '1';
						LCD_RS 			<= '0';
						LCD_RW_INT 		<= '0';		
						DATA_BUS_VALUE <= X"38";
						state 			<= DROP_LCD_E;
						next_command 	<= DISPLAY_OFF;
						
-- Turn off Display and turn off cursor
				when DISPLAY_OFF =>
				
						LCD_EN  			<= '1';
						LCD_RS 			<= '0';
						LCD_RW_INT 		<= '0';		
						DATA_BUS_VALUE <= X"08";
						state 			<= DROP_LCD_E;
						next_command 	<= DISPLAY_CLEAR;

-- Clear Display and Turn off cursor
				when DISPLAY_CLEAR =>
				
						LCD_EN  			<= '1';
						LCD_RS 			<= '0';
						LCD_RW_INT 		<= '0';		
						DATA_BUS_VALUE <= X"01";
						state 			<= DROP_LCD_E;
						next_command 	<= DISPLAY_ON;

-- Turn on Display and Turn off cursor
				when DISPLAY_ON =>
				
						LCD_EN  			<= '1';
						LCD_RS 			<= '0';
						LCD_RW_INT 		<= '0';		
						DATA_BUS_VALUE <= X"0C";
						state 			<= DROP_LCD_E;
						next_command 	<= MODE_SET;
						
-- Set write mode to auto increment address and move cursor to the right
				when MODE_SET =>
				
						LCD_EN  			<= '1';
						LCD_RS 			<= '0';
						LCD_RW_INT 		<= '0';		
						DATA_BUS_VALUE <= X"06";
						state 			<= DROP_LCD_E;
						next_command 	<= Print_String;
						
-- Write ASCII hex charactr in first LCD character location
				when Print_String =>
						state <= DROP_LCD_E;
						LCD_EN  			<= '1';
						LCD_RS 			<= '1';
						LCD_RW_INT 		<= '0';
-- ASCII character to output
						if Next_Char(7 downto 4) /= X"0" then
							DATA_BUS_VALUE <= Next_Char;
						ELSE
-- Convert 4-bit value to output
								if Next_Char(3 downto 0) <10 then
-- ASCII A....F se inserisce un numero viene visualizzato, se non c'è ancora nulla c'è un underscore)
									DATA_BUS_VALUE <= X"3" &  Next_Char(3 downto 0);
								else
									DATA_BUS_VALUE <= X"5F";
								end if;
						end if;
							
-- Loop to send out 32 characters to LCD Display (16 by 2 lines)
						if (CHAR_COUNT < 31 ) and (Next_Char /= X"FE") then
							CHAR_COUNT <= CHAR_COUNT + 1;
						else
							CHAR_COUNT <= "00000";
						end if;

-- Jump to second line ?
						if CHAR_COUNT = 15	then next_command <= line2;
-- return to first line ?
						elsif (CHAR_COUNT = 31) or (Next_Char = X"FE") then
							next_command <= RETURN_HOME;
						else
							next_command <= Print_String;
						end if;
						
-- Set write  address to line 2 character 1
				when LINE2 =>
				
						LCD_EN  			<= '1';
						LCD_RS 			<= '0';
						LCD_RW_INT 		<= '0';		
						DATA_BUS_VALUE <= X"C0";
						state 			<= DROP_LCD_E;
						next_command 	<= Print_String;
						
-- Return write address to  first character position on line 1
				when RETURN_HOME =>
				
						LCD_EN  			<= '1';
						LCD_RS 			<= '0';
						LCD_RW_INT 		<= '0';		
						DATA_BUS_VALUE <= X"80";
						state 			<= DROP_LCD_E;
						next_command 	<= Print_String;
						
-- Drop LCD E line - falling edge loads inst/datato LCD controller

				when DROP_LCD_E =>
						LCD_EN <= '0';
						state <= HOLD;
-- Hold LCD inst/data valid after falling edge of E line
				when HOLD =>
						state <= next_command;
			end case;
		end if;
	end if;
	end process;
end beh;
