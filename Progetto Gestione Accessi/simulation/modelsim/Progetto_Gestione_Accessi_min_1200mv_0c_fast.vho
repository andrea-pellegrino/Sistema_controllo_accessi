-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "07/11/2019 16:00:16"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Gestione_Accessi IS
    PORT (
	Tx : OUT std_logic;
	Clock : IN std_logic;
	Rx : IN std_logic;
	SM : OUT std_logic;
	O : OUT std_logic_vector(7 DOWNTO 0);
	Sel : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0)
	);
END Gestione_Accessi;

-- Design Ports Information
-- Tx	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SM	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Gestione_Accessi IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Tx : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Rx : std_logic;
SIGNAL ww_SM : std_logic;
SIGNAL ww_O : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Sel : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Tx~output_o\ : std_logic;
SIGNAL \SM~output_o\ : std_logic;
SIGNAL \O[7]~output_o\ : std_logic;
SIGNAL \O[6]~output_o\ : std_logic;
SIGNAL \O[5]~output_o\ : std_logic;
SIGNAL \O[4]~output_o\ : std_logic;
SIGNAL \O[3]~output_o\ : std_logic;
SIGNAL \O[2]~output_o\ : std_logic;
SIGNAL \O[1]~output_o\ : std_logic;
SIGNAL \O[0]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|inst|tx_clk_gen:counter[0]~q\ : std_logic;
SIGNAL \inst|inst|Add0~1\ : std_logic;
SIGNAL \inst|inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|inst|tx_clk_gen:counter[1]~q\ : std_logic;
SIGNAL \inst|inst|Add0~3\ : std_logic;
SIGNAL \inst|inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|inst|tx_clk_gen:counter[2]~q\ : std_logic;
SIGNAL \inst|inst|Add0~5\ : std_logic;
SIGNAL \inst|inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|inst|counter~0_combout\ : std_logic;
SIGNAL \inst|inst|tx_clk_gen:counter[3]~q\ : std_logic;
SIGNAL \inst|inst|Add0~7\ : std_logic;
SIGNAL \inst|inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|inst|counter~1_combout\ : std_logic;
SIGNAL \inst|inst|tx_clk_gen:counter[4]~q\ : std_logic;
SIGNAL \inst|inst|Add0~9\ : std_logic;
SIGNAL \inst|inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|inst|tx_clk_gen:counter[5]~q\ : std_logic;
SIGNAL \inst|inst|Add0~11\ : std_logic;
SIGNAL \inst|inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|inst|counter~2_combout\ : std_logic;
SIGNAL \inst|inst|tx_clk_gen:counter[6]~q\ : std_logic;
SIGNAL \inst|inst|Add0~13\ : std_logic;
SIGNAL \inst|inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|inst|tx_clk_gen:counter[7]~q\ : std_logic;
SIGNAL \inst|inst|Add0~15\ : std_logic;
SIGNAL \inst|inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|inst|tx_clk_gen:counter[8]~q\ : std_logic;
SIGNAL \inst|inst|Add0~17\ : std_logic;
SIGNAL \inst|inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|inst|tx_clk_gen:counter[9]~q\ : std_logic;
SIGNAL \inst|inst|Add0~19\ : std_logic;
SIGNAL \inst|inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|inst|counter~4_combout\ : std_logic;
SIGNAL \inst|inst|tx_clk_gen:counter[10]~q\ : std_logic;
SIGNAL \inst|inst|Add0~21\ : std_logic;
SIGNAL \inst|inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|inst|tx_clk_gen:counter[11]~q\ : std_logic;
SIGNAL \inst|inst|Add0~23\ : std_logic;
SIGNAL \inst|inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|inst|counter~3_combout\ : std_logic;
SIGNAL \inst|inst|tx_clk_gen:counter[12]~q\ : std_logic;
SIGNAL \inst|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|inst|tx_clk_en~q\ : std_logic;
SIGNAL \inst|inst|tx_fsm.stop2~q\ : std_logic;
SIGNAL \inst|inst2|count[0]~32_combout\ : std_logic;
SIGNAL \inst|inst2|count[0]~33\ : std_logic;
SIGNAL \inst|inst2|count[1]~34_combout\ : std_logic;
SIGNAL \inst|inst2|count[1]~35\ : std_logic;
SIGNAL \inst|inst2|count[2]~36_combout\ : std_logic;
SIGNAL \inst|inst2|count[2]~37\ : std_logic;
SIGNAL \inst|inst2|count[3]~38_combout\ : std_logic;
SIGNAL \inst|inst2|count[3]~39\ : std_logic;
SIGNAL \inst|inst2|count[4]~40_combout\ : std_logic;
SIGNAL \inst|inst2|count[4]~41\ : std_logic;
SIGNAL \inst|inst2|count[5]~42_combout\ : std_logic;
SIGNAL \inst|inst2|count[5]~43\ : std_logic;
SIGNAL \inst|inst2|count[6]~44_combout\ : std_logic;
SIGNAL \inst|inst2|count[6]~45\ : std_logic;
SIGNAL \inst|inst2|count[7]~46_combout\ : std_logic;
SIGNAL \inst|inst2|count[7]~47\ : std_logic;
SIGNAL \inst|inst2|count[8]~48_combout\ : std_logic;
SIGNAL \inst|inst2|count[8]~49\ : std_logic;
SIGNAL \inst|inst2|count[9]~50_combout\ : std_logic;
SIGNAL \inst|inst2|count[9]~51\ : std_logic;
SIGNAL \inst|inst2|count[10]~52_combout\ : std_logic;
SIGNAL \inst|inst2|count[10]~53\ : std_logic;
SIGNAL \inst|inst2|count[11]~54_combout\ : std_logic;
SIGNAL \inst|inst2|count[11]~55\ : std_logic;
SIGNAL \inst|inst2|count[12]~56_combout\ : std_logic;
SIGNAL \inst|inst2|count[12]~57\ : std_logic;
SIGNAL \inst|inst2|count[13]~58_combout\ : std_logic;
SIGNAL \inst|inst2|count[13]~59\ : std_logic;
SIGNAL \inst|inst2|count[14]~60_combout\ : std_logic;
SIGNAL \inst|inst2|count[14]~61\ : std_logic;
SIGNAL \inst|inst2|count[15]~62_combout\ : std_logic;
SIGNAL \inst|inst2|count[15]~63\ : std_logic;
SIGNAL \inst|inst2|count[16]~64_combout\ : std_logic;
SIGNAL \inst|inst2|count[16]~65\ : std_logic;
SIGNAL \inst|inst2|count[17]~66_combout\ : std_logic;
SIGNAL \inst|inst2|count[17]~67\ : std_logic;
SIGNAL \inst|inst2|count[18]~68_combout\ : std_logic;
SIGNAL \inst|inst2|count[18]~69\ : std_logic;
SIGNAL \inst|inst2|count[19]~70_combout\ : std_logic;
SIGNAL \inst|inst2|count[19]~71\ : std_logic;
SIGNAL \inst|inst2|count[20]~72_combout\ : std_logic;
SIGNAL \inst|inst2|count[20]~73\ : std_logic;
SIGNAL \inst|inst2|count[21]~74_combout\ : std_logic;
SIGNAL \inst|inst2|count[21]~75\ : std_logic;
SIGNAL \inst|inst2|count[22]~76_combout\ : std_logic;
SIGNAL \inst|inst2|count[22]~77\ : std_logic;
SIGNAL \inst|inst2|count[23]~78_combout\ : std_logic;
SIGNAL \inst|inst2|count[23]~79\ : std_logic;
SIGNAL \inst|inst2|count[24]~80_combout\ : std_logic;
SIGNAL \inst|inst2|count[24]~81\ : std_logic;
SIGNAL \inst|inst2|count[25]~82_combout\ : std_logic;
SIGNAL \inst|inst2|count[25]~83\ : std_logic;
SIGNAL \inst|inst2|count[26]~84_combout\ : std_logic;
SIGNAL \inst|inst2|count[26]~85\ : std_logic;
SIGNAL \inst|inst2|count[27]~86_combout\ : std_logic;
SIGNAL \inst|inst2|count[27]~87\ : std_logic;
SIGNAL \inst|inst2|count[28]~88_combout\ : std_logic;
SIGNAL \inst|inst2|count[28]~89\ : std_logic;
SIGNAL \inst|inst2|count[29]~90_combout\ : std_logic;
SIGNAL \inst|inst2|count[29]~91\ : std_logic;
SIGNAL \inst|inst2|count[30]~92_combout\ : std_logic;
SIGNAL \inst|inst2|count[30]~93\ : std_logic;
SIGNAL \inst|inst2|count[31]~94_combout\ : std_logic;
SIGNAL \inst|inst2|state~1_combout\ : std_logic;
SIGNAL \inst|inst2|state~0_combout\ : std_logic;
SIGNAL \inst|inst2|state~2_combout\ : std_logic;
SIGNAL \inst|inst2|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|inst2|LessThan0~7_combout\ : std_logic;
SIGNAL \inst|inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|inst2|LessThan0~8_combout\ : std_logic;
SIGNAL \inst|inst2|LessThan0~9_combout\ : std_logic;
SIGNAL \inst|inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|inst2|LessThan0~10_combout\ : std_logic;
SIGNAL \inst|inst2|state~3_combout\ : std_logic;
SIGNAL \inst|inst2|state~q\ : std_logic;
SIGNAL \inst|inst|tx_req_int~0_combout\ : std_logic;
SIGNAL \inst|inst|tx_req_int~q\ : std_logic;
SIGNAL \inst|inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|inst|tx_fsm.idle~q\ : std_logic;
SIGNAL \inst|inst|Selector10~0_combout\ : std_logic;
SIGNAL \inst|inst|Selector0~3_combout\ : std_logic;
SIGNAL \inst|inst|tx_data_cnt[0]~0_combout\ : std_logic;
SIGNAL \inst|inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|inst|tx_data_tmp[1]~0_combout\ : std_logic;
SIGNAL \inst|inst|tx_fsm~16_combout\ : std_logic;
SIGNAL \inst|inst|tx_fsm.data~0_combout\ : std_logic;
SIGNAL \inst|inst|tx_fsm.data~q\ : std_logic;
SIGNAL \inst|inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst|inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|inst|tx_fsm.stop1~q\ : std_logic;
SIGNAL \inst|inst|tx_data_tmp[1]~8_combout\ : std_logic;
SIGNAL \inst|inst|tx_data_tmp[1]~2_combout\ : std_logic;
SIGNAL \inst|inst|tx_data_tmp~7_combout\ : std_logic;
SIGNAL \inst|inst|tx_data_tmp~6_combout\ : std_logic;
SIGNAL \inst|inst|tx_data_tmp~5_combout\ : std_logic;
SIGNAL \inst|inst|tx_data_tmp~4_combout\ : std_logic;
SIGNAL \inst|inst|tx_data_tmp~3_combout\ : std_logic;
SIGNAL \inst|inst|tx_data_tmp~1_combout\ : std_logic;
SIGNAL \inst|inst|Selector0~2_combout\ : std_logic;
SIGNAL \inst|inst|Selector0~4_combout\ : std_logic;
SIGNAL \inst|inst|tx~q\ : std_logic;
SIGNAL \inst|inst1|count[0]~32_combout\ : std_logic;
SIGNAL \Rx~input_o\ : std_logic;
SIGNAL \inst|inst|rx_debounceer:deb_buf[0]~feeder_combout\ : std_logic;
SIGNAL \inst|inst|rx_debounceer:deb_buf[0]~q\ : std_logic;
SIGNAL \inst|inst|rx_debounceer:deb_buf[1]~feeder_combout\ : std_logic;
SIGNAL \inst|inst|rx_debounceer:deb_buf[1]~q\ : std_logic;
SIGNAL \inst|inst|rx_debounceer:deb_buf[2]~feeder_combout\ : std_logic;
SIGNAL \inst|inst|rx_debounceer:deb_buf[2]~q\ : std_logic;
SIGNAL \inst|inst|rx_debounceer:deb_buf[3]~q\ : std_logic;
SIGNAL \inst|inst|rx_data_deb~0_combout\ : std_logic;
SIGNAL \inst|inst|rx_data_deb~1_combout\ : std_logic;
SIGNAL \inst|inst|rx_data_deb~q\ : std_logic;
SIGNAL \inst|inst|rx_fsm~16_combout\ : std_logic;
SIGNAL \inst|inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|inst|Add2~1\ : std_logic;
SIGNAL \inst|inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_gen:counter[1]~q\ : std_logic;
SIGNAL \inst|inst|Add2~3\ : std_logic;
SIGNAL \inst|inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|inst|counter~5_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_gen:counter[2]~q\ : std_logic;
SIGNAL \inst|inst|Add2~5\ : std_logic;
SIGNAL \inst|inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_gen:counter[3]~q\ : std_logic;
SIGNAL \inst|inst|Add2~7\ : std_logic;
SIGNAL \inst|inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_gen:counter[4]~q\ : std_logic;
SIGNAL \inst|inst|Add2~9\ : std_logic;
SIGNAL \inst|inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_gen:counter[5]~q\ : std_logic;
SIGNAL \inst|inst|Equal4~1_combout\ : std_logic;
SIGNAL \inst|inst|counter~6_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_gen:counter[0]~q\ : std_logic;
SIGNAL \inst|inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|inst|Add2~11\ : std_logic;
SIGNAL \inst|inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|inst|counter~8_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_gen:counter[6]~q\ : std_logic;
SIGNAL \inst|inst|Add2~13\ : std_logic;
SIGNAL \inst|inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_gen:counter[7]~q\ : std_logic;
SIGNAL \inst|inst|Add2~15\ : std_logic;
SIGNAL \inst|inst|Add2~16_combout\ : std_logic;
SIGNAL \inst|inst|counter~7_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_gen:counter[8]~q\ : std_logic;
SIGNAL \inst|inst|Equal4~2_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_en~q\ : std_logic;
SIGNAL \inst|inst|rx_fsm~17_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_cnt[0]~5_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_cnt[3]~12\ : std_logic;
SIGNAL \inst|inst|rx_clk_cnt[4]~15_combout\ : std_logic;
SIGNAL \inst|inst|Equal5~1_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_cnt[0]~14_combout\ : std_logic;
SIGNAL \inst|inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|inst|rx_data_tmp[5]~0_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_cnt[0]~13_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_cnt[0]~6\ : std_logic;
SIGNAL \inst|inst|rx_clk_cnt[1]~7_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_cnt[1]~8\ : std_logic;
SIGNAL \inst|inst|rx_clk_cnt[2]~9_combout\ : std_logic;
SIGNAL \inst|inst|rx_clk_cnt[2]~10\ : std_logic;
SIGNAL \inst|inst|rx_clk_cnt[3]~11_combout\ : std_logic;
SIGNAL \inst|inst|rx_fsm~18_combout\ : std_logic;
SIGNAL \inst|inst|rx_fsm~19_combout\ : std_logic;
SIGNAL \inst|inst|rx_fsm.data~q\ : std_logic;
SIGNAL \inst|inst|rx_fsm~20_combout\ : std_logic;
SIGNAL \inst|inst|rx_fsm.idle~q\ : std_logic;
SIGNAL \inst|inst|rx_fsm.ck_start_bit~0_combout\ : std_logic;
SIGNAL \inst|inst|rx_fsm.ck_start_bit~1_combout\ : std_logic;
SIGNAL \inst|inst|rx_fsm.ck_start_bit~2_combout\ : std_logic;
SIGNAL \inst|inst|rx_fsm.ck_start_bit~3_combout\ : std_logic;
SIGNAL \inst|inst|rx_fsm.ck_start_bit~q\ : std_logic;
SIGNAL \inst|inst|rx_data_cnt~0_combout\ : std_logic;
SIGNAL \inst|inst|Selector22~0_combout\ : std_logic;
SIGNAL \inst|inst|Selector21~3_combout\ : std_logic;
SIGNAL \inst|inst|Selector21~2_combout\ : std_logic;
SIGNAL \inst|inst|Selector20~0_combout\ : std_logic;
SIGNAL \inst|inst|Selector20~1_combout\ : std_logic;
SIGNAL \inst|inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|inst|rx_ready~0_combout\ : std_logic;
SIGNAL \inst|inst|rx_ready~feeder_combout\ : std_logic;
SIGNAL \inst|inst|rx_ready~q\ : std_logic;
SIGNAL \inst|inst1|count[0]~33\ : std_logic;
SIGNAL \inst|inst1|count[1]~34_combout\ : std_logic;
SIGNAL \inst|inst1|count[1]~35\ : std_logic;
SIGNAL \inst|inst1|count[2]~36_combout\ : std_logic;
SIGNAL \inst|inst1|count[2]~37\ : std_logic;
SIGNAL \inst|inst1|count[3]~38_combout\ : std_logic;
SIGNAL \inst|inst1|count[3]~39\ : std_logic;
SIGNAL \inst|inst1|count[4]~40_combout\ : std_logic;
SIGNAL \inst|inst1|count[4]~41\ : std_logic;
SIGNAL \inst|inst1|count[5]~42_combout\ : std_logic;
SIGNAL \inst|inst1|count[5]~43\ : std_logic;
SIGNAL \inst|inst1|count[6]~44_combout\ : std_logic;
SIGNAL \inst|inst1|count[6]~45\ : std_logic;
SIGNAL \inst|inst1|count[7]~46_combout\ : std_logic;
SIGNAL \inst|inst1|count[7]~47\ : std_logic;
SIGNAL \inst|inst1|count[8]~48_combout\ : std_logic;
SIGNAL \inst|inst1|count[8]~49\ : std_logic;
SIGNAL \inst|inst1|count[9]~50_combout\ : std_logic;
SIGNAL \inst|inst1|count[9]~51\ : std_logic;
SIGNAL \inst|inst1|count[10]~52_combout\ : std_logic;
SIGNAL \inst|inst1|count[10]~53\ : std_logic;
SIGNAL \inst|inst1|count[11]~54_combout\ : std_logic;
SIGNAL \inst|inst1|count[11]~55\ : std_logic;
SIGNAL \inst|inst1|count[12]~56_combout\ : std_logic;
SIGNAL \inst|inst1|count[12]~57\ : std_logic;
SIGNAL \inst|inst1|count[13]~58_combout\ : std_logic;
SIGNAL \inst|inst1|count[13]~59\ : std_logic;
SIGNAL \inst|inst1|count[14]~60_combout\ : std_logic;
SIGNAL \inst|inst1|count[14]~61\ : std_logic;
SIGNAL \inst|inst1|count[15]~62_combout\ : std_logic;
SIGNAL \inst|inst1|count[15]~63\ : std_logic;
SIGNAL \inst|inst1|count[16]~64_combout\ : std_logic;
SIGNAL \inst|inst1|count[16]~65\ : std_logic;
SIGNAL \inst|inst1|count[17]~66_combout\ : std_logic;
SIGNAL \inst|inst1|count[17]~67\ : std_logic;
SIGNAL \inst|inst1|count[18]~68_combout\ : std_logic;
SIGNAL \inst|inst1|count[18]~69\ : std_logic;
SIGNAL \inst|inst1|count[19]~70_combout\ : std_logic;
SIGNAL \inst|inst1|count[19]~71\ : std_logic;
SIGNAL \inst|inst1|count[20]~72_combout\ : std_logic;
SIGNAL \inst|inst1|count[20]~73\ : std_logic;
SIGNAL \inst|inst1|count[21]~74_combout\ : std_logic;
SIGNAL \inst|inst1|count[21]~75\ : std_logic;
SIGNAL \inst|inst1|count[22]~76_combout\ : std_logic;
SIGNAL \inst|inst1|count[22]~77\ : std_logic;
SIGNAL \inst|inst1|count[23]~78_combout\ : std_logic;
SIGNAL \inst|inst1|count[23]~79\ : std_logic;
SIGNAL \inst|inst1|count[24]~80_combout\ : std_logic;
SIGNAL \inst|inst1|count[24]~81\ : std_logic;
SIGNAL \inst|inst1|count[25]~82_combout\ : std_logic;
SIGNAL \inst|inst1|count[25]~83\ : std_logic;
SIGNAL \inst|inst1|count[26]~84_combout\ : std_logic;
SIGNAL \inst|inst1|count[26]~85\ : std_logic;
SIGNAL \inst|inst1|count[27]~86_combout\ : std_logic;
SIGNAL \inst|inst1|count[27]~87\ : std_logic;
SIGNAL \inst|inst1|count[28]~88_combout\ : std_logic;
SIGNAL \inst|inst1|count[28]~89\ : std_logic;
SIGNAL \inst|inst1|count[29]~90_combout\ : std_logic;
SIGNAL \inst|inst1|count[29]~91\ : std_logic;
SIGNAL \inst|inst1|count[30]~92_combout\ : std_logic;
SIGNAL \inst|inst1|count[30]~93\ : std_logic;
SIGNAL \inst|inst1|count[31]~94_combout\ : std_logic;
SIGNAL \inst|inst1|state~0_combout\ : std_logic;
SIGNAL \inst|inst1|LessThan0~7_combout\ : std_logic;
SIGNAL \inst|inst1|LessThan0~8_combout\ : std_logic;
SIGNAL \inst|inst1|state~1_combout\ : std_logic;
SIGNAL \inst|inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|inst1|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|inst1|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|inst1|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|inst1|state~2_combout\ : std_logic;
SIGNAL \inst|inst1|state~q\ : std_logic;
SIGNAL \inst|inst|rx_data_tmp[7]~feeder_combout\ : std_logic;
SIGNAL \inst|inst|rx_data_tmp[5]~1_combout\ : std_logic;
SIGNAL \inst|inst|rx_data_tmp[5]~2_combout\ : std_logic;
SIGNAL \inst|inst|rx_data[6]~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|state.Safe_Mode~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|state.Safe_Mode~q\ : std_logic;
SIGNAL \inst|inst3|Selector9~6_combout\ : std_logic;
SIGNAL \inst|inst3|Selector9~3_combout\ : std_logic;
SIGNAL \inst|inst|rx_data[7]~feeder_combout\ : std_logic;
SIGNAL \inst|inst|rx_data_tmp[6]~feeder_combout\ : std_logic;
SIGNAL \inst|inst|rx_data[5]~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|Selector8~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector8~1_combout\ : std_logic;
SIGNAL \inst|inst|rx_data_tmp[5]~feeder_combout\ : std_logic;
SIGNAL \inst|inst|rx_data[4]~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector8~2_combout\ : std_logic;
SIGNAL \inst|inst3|state.Idle~q\ : std_logic;
SIGNAL \inst|inst3|Selector9~16_combout\ : std_logic;
SIGNAL \inst|inst3|state.Wait4Start~q\ : std_logic;
SIGNAL \inst|inst3|Selector10~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector10~1_combout\ : std_logic;
SIGNAL \inst|inst3|Selector10~2_combout\ : std_logic;
SIGNAL \inst|inst3|state.Wait4Data~q\ : std_logic;
SIGNAL \inst|inst3|Selector11~8_combout\ : std_logic;
SIGNAL \inst|inst3|state.Start2Write~q\ : std_logic;
SIGNAL \inst|inst3|Selector12~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector12~1_combout\ : std_logic;
SIGNAL \inst|inst3|state.End2Write~q\ : std_logic;
SIGNAL \inst|inst3|Selector14~0_combout\ : std_logic;
SIGNAL \inst|inst3|WE~q\ : std_logic;
SIGNAL \inst|inst|rx_data_tmp[4]~feeder_combout\ : std_logic;
SIGNAL \inst|inst|rx_data_tmp[3]~feeder_combout\ : std_logic;
SIGNAL \inst|inst|rx_data_tmp[2]~feeder_combout\ : std_logic;
SIGNAL \inst|inst|rx_data_tmp[1]~feeder_combout\ : std_logic;
SIGNAL \inst|inst|rx_data[0]~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|Data[0]~feeder_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst|inst3|Selector3~0_combout\ : std_logic;
SIGNAL \Sel~input_o\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst|inst3|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst|inst3|Selector1~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector1~1_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst|inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \inst|inst3|Selector7~0_combout\ : std_logic;
SIGNAL \inst|inst3|Selector7~1_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \inst|inst|rx_data[1]~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|Selector6~0_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \inst|inst|rx_data[2]~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|Selector5~0_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \inst|inst3|Selector4~0_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \inst|inst3|Data[1]~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|Data[2]~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|Data[3]~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|Data[4]~feeder_combout\ : std_logic;
SIGNAL \inst|inst3|Data[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|dataram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \inst1|dataram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \inst1|dataram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \inst1|dataram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \inst1|dataram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \inst1|dataram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \inst1|dataram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \inst1|dataram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \inst|inst|rx_data_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|inst1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|inst|rx_clk_cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|inst|tx_data_tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst2|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|inst3|Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst3|Add\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst|tx_data_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|inst|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst3|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst3|addr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst|rx_data_tmp\ : std_logic_vector(7 DOWNTO 0);

BEGIN

Tx <= ww_Tx;
ww_Clock <= Clock;
ww_Rx <= Rx;
SM <= ww_SM;
O <= ww_O;
ww_Sel <= Sel;
ww_A <= A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \inst|inst3|Data\(7) & \inst|inst3|Data\(6) & \inst|inst3|Data\(5) & \inst|inst3|Data\(4) & \inst|inst3|Data\(3) & 
\inst|inst3|Data\(2) & \inst|inst3|Data\(1) & \inst|inst3|Data\(0));

\inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst2|$00000|auto_generated|result_node[7]~7_combout\ & \inst2|$00000|auto_generated|result_node[6]~6_combout\ & \inst2|$00000|auto_generated|result_node[5]~5_combout\ & 
\inst2|$00000|auto_generated|result_node[4]~4_combout\ & \inst2|$00000|auto_generated|result_node[3]~3_combout\ & \inst2|$00000|auto_generated|result_node[2]~2_combout\ & \inst2|$00000|auto_generated|result_node[1]~1_combout\ & 
\inst2|$00000|auto_generated|result_node[0]~0_combout\);

\inst1|dataram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst1|dataram_rtl_0|auto_generated|ram_block1a1\ <= \inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst1|dataram_rtl_0|auto_generated|ram_block1a2\ <= \inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst1|dataram_rtl_0|auto_generated|ram_block1a3\ <= \inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst1|dataram_rtl_0|auto_generated|ram_block1a4\ <= \inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst1|dataram_rtl_0|auto_generated|ram_block1a5\ <= \inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst1|dataram_rtl_0|auto_generated|ram_block1a6\ <= \inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst1|dataram_rtl_0|auto_generated|ram_block1a7\ <= \inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

-- Location: IOOBUF_X13_Y73_N23
\Tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|tx~q\,
	devoe => ww_devoe,
	o => \Tx~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\SM~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|state~q\,
	devoe => ww_devoe,
	o => \SM~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\O[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|dataram_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \O[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\O[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|dataram_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \O[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\O[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|dataram_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \O[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\O[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|dataram_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \O[4]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\O[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|dataram_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \O[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\O[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|dataram_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \O[2]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\O[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|dataram_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \O[1]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\O[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|dataram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => \O[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G4
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X86_Y14_N4
\inst|inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~0_combout\ = \inst|inst|tx_clk_gen:counter[0]~q\ $ (VCC)
-- \inst|inst|Add0~1\ = CARRY(\inst|inst|tx_clk_gen:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|tx_clk_gen:counter[0]~q\,
	datad => VCC,
	combout => \inst|inst|Add0~0_combout\,
	cout => \inst|inst|Add0~1\);

-- Location: FF_X86_Y14_N5
\inst|inst|tx_clk_gen:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_clk_gen:counter[0]~q\);

-- Location: LCCOMB_X86_Y14_N6
\inst|inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~2_combout\ = (\inst|inst|tx_clk_gen:counter[1]~q\ & (!\inst|inst|Add0~1\)) # (!\inst|inst|tx_clk_gen:counter[1]~q\ & ((\inst|inst|Add0~1\) # (GND)))
-- \inst|inst|Add0~3\ = CARRY((!\inst|inst|Add0~1\) # (!\inst|inst|tx_clk_gen:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_clk_gen:counter[1]~q\,
	datad => VCC,
	cin => \inst|inst|Add0~1\,
	combout => \inst|inst|Add0~2_combout\,
	cout => \inst|inst|Add0~3\);

-- Location: FF_X86_Y14_N7
\inst|inst|tx_clk_gen:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_clk_gen:counter[1]~q\);

-- Location: LCCOMB_X86_Y14_N8
\inst|inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~4_combout\ = (\inst|inst|tx_clk_gen:counter[2]~q\ & (\inst|inst|Add0~3\ $ (GND))) # (!\inst|inst|tx_clk_gen:counter[2]~q\ & (!\inst|inst|Add0~3\ & VCC))
-- \inst|inst|Add0~5\ = CARRY((\inst|inst|tx_clk_gen:counter[2]~q\ & !\inst|inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|tx_clk_gen:counter[2]~q\,
	datad => VCC,
	cin => \inst|inst|Add0~3\,
	combout => \inst|inst|Add0~4_combout\,
	cout => \inst|inst|Add0~5\);

-- Location: FF_X86_Y14_N9
\inst|inst|tx_clk_gen:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_clk_gen:counter[2]~q\);

-- Location: LCCOMB_X86_Y14_N10
\inst|inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~6_combout\ = (\inst|inst|tx_clk_gen:counter[3]~q\ & (!\inst|inst|Add0~5\)) # (!\inst|inst|tx_clk_gen:counter[3]~q\ & ((\inst|inst|Add0~5\) # (GND)))
-- \inst|inst|Add0~7\ = CARRY((!\inst|inst|Add0~5\) # (!\inst|inst|tx_clk_gen:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_clk_gen:counter[3]~q\,
	datad => VCC,
	cin => \inst|inst|Add0~5\,
	combout => \inst|inst|Add0~6_combout\,
	cout => \inst|inst|Add0~7\);

-- Location: LCCOMB_X87_Y14_N20
\inst|inst|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|counter~0_combout\ = (!\inst|inst|Equal0~3_combout\ & \inst|inst|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|Equal0~3_combout\,
	datad => \inst|inst|Add0~6_combout\,
	combout => \inst|inst|counter~0_combout\);

-- Location: FF_X87_Y14_N21
\inst|inst|tx_clk_gen:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_clk_gen:counter[3]~q\);

-- Location: LCCOMB_X86_Y14_N12
\inst|inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~8_combout\ = (\inst|inst|tx_clk_gen:counter[4]~q\ & (\inst|inst|Add0~7\ $ (GND))) # (!\inst|inst|tx_clk_gen:counter[4]~q\ & (!\inst|inst|Add0~7\ & VCC))
-- \inst|inst|Add0~9\ = CARRY((\inst|inst|tx_clk_gen:counter[4]~q\ & !\inst|inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|tx_clk_gen:counter[4]~q\,
	datad => VCC,
	cin => \inst|inst|Add0~7\,
	combout => \inst|inst|Add0~8_combout\,
	cout => \inst|inst|Add0~9\);

-- Location: LCCOMB_X86_Y14_N0
\inst|inst|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|counter~1_combout\ = (!\inst|inst|Equal0~3_combout\ & \inst|inst|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|Equal0~3_combout\,
	datad => \inst|inst|Add0~8_combout\,
	combout => \inst|inst|counter~1_combout\);

-- Location: FF_X86_Y14_N1
\inst|inst|tx_clk_gen:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_clk_gen:counter[4]~q\);

-- Location: LCCOMB_X86_Y14_N14
\inst|inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~10_combout\ = (\inst|inst|tx_clk_gen:counter[5]~q\ & (!\inst|inst|Add0~9\)) # (!\inst|inst|tx_clk_gen:counter[5]~q\ & ((\inst|inst|Add0~9\) # (GND)))
-- \inst|inst|Add0~11\ = CARRY((!\inst|inst|Add0~9\) # (!\inst|inst|tx_clk_gen:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|tx_clk_gen:counter[5]~q\,
	datad => VCC,
	cin => \inst|inst|Add0~9\,
	combout => \inst|inst|Add0~10_combout\,
	cout => \inst|inst|Add0~11\);

-- Location: FF_X86_Y14_N15
\inst|inst|tx_clk_gen:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_clk_gen:counter[5]~q\);

-- Location: LCCOMB_X86_Y14_N16
\inst|inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~12_combout\ = (\inst|inst|tx_clk_gen:counter[6]~q\ & (\inst|inst|Add0~11\ $ (GND))) # (!\inst|inst|tx_clk_gen:counter[6]~q\ & (!\inst|inst|Add0~11\ & VCC))
-- \inst|inst|Add0~13\ = CARRY((\inst|inst|tx_clk_gen:counter[6]~q\ & !\inst|inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_clk_gen:counter[6]~q\,
	datad => VCC,
	cin => \inst|inst|Add0~11\,
	combout => \inst|inst|Add0~12_combout\,
	cout => \inst|inst|Add0~13\);

-- Location: LCCOMB_X87_Y14_N2
\inst|inst|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|counter~2_combout\ = (\inst|inst|Add0~12_combout\ & !\inst|inst|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|Add0~12_combout\,
	datad => \inst|inst|Equal0~3_combout\,
	combout => \inst|inst|counter~2_combout\);

-- Location: FF_X87_Y14_N3
\inst|inst|tx_clk_gen:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_clk_gen:counter[6]~q\);

-- Location: LCCOMB_X86_Y14_N18
\inst|inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~14_combout\ = (\inst|inst|tx_clk_gen:counter[7]~q\ & (!\inst|inst|Add0~13\)) # (!\inst|inst|tx_clk_gen:counter[7]~q\ & ((\inst|inst|Add0~13\) # (GND)))
-- \inst|inst|Add0~15\ = CARRY((!\inst|inst|Add0~13\) # (!\inst|inst|tx_clk_gen:counter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|tx_clk_gen:counter[7]~q\,
	datad => VCC,
	cin => \inst|inst|Add0~13\,
	combout => \inst|inst|Add0~14_combout\,
	cout => \inst|inst|Add0~15\);

-- Location: FF_X86_Y14_N19
\inst|inst|tx_clk_gen:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_clk_gen:counter[7]~q\);

-- Location: LCCOMB_X86_Y14_N20
\inst|inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~16_combout\ = (\inst|inst|tx_clk_gen:counter[8]~q\ & (\inst|inst|Add0~15\ $ (GND))) # (!\inst|inst|tx_clk_gen:counter[8]~q\ & (!\inst|inst|Add0~15\ & VCC))
-- \inst|inst|Add0~17\ = CARRY((\inst|inst|tx_clk_gen:counter[8]~q\ & !\inst|inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|tx_clk_gen:counter[8]~q\,
	datad => VCC,
	cin => \inst|inst|Add0~15\,
	combout => \inst|inst|Add0~16_combout\,
	cout => \inst|inst|Add0~17\);

-- Location: FF_X86_Y14_N21
\inst|inst|tx_clk_gen:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_clk_gen:counter[8]~q\);

-- Location: LCCOMB_X86_Y14_N22
\inst|inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~18_combout\ = (\inst|inst|tx_clk_gen:counter[9]~q\ & (!\inst|inst|Add0~17\)) # (!\inst|inst|tx_clk_gen:counter[9]~q\ & ((\inst|inst|Add0~17\) # (GND)))
-- \inst|inst|Add0~19\ = CARRY((!\inst|inst|Add0~17\) # (!\inst|inst|tx_clk_gen:counter[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_clk_gen:counter[9]~q\,
	datad => VCC,
	cin => \inst|inst|Add0~17\,
	combout => \inst|inst|Add0~18_combout\,
	cout => \inst|inst|Add0~19\);

-- Location: FF_X86_Y14_N23
\inst|inst|tx_clk_gen:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_clk_gen:counter[9]~q\);

-- Location: LCCOMB_X86_Y14_N24
\inst|inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~20_combout\ = (\inst|inst|tx_clk_gen:counter[10]~q\ & (\inst|inst|Add0~19\ $ (GND))) # (!\inst|inst|tx_clk_gen:counter[10]~q\ & (!\inst|inst|Add0~19\ & VCC))
-- \inst|inst|Add0~21\ = CARRY((\inst|inst|tx_clk_gen:counter[10]~q\ & !\inst|inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_clk_gen:counter[10]~q\,
	datad => VCC,
	cin => \inst|inst|Add0~19\,
	combout => \inst|inst|Add0~20_combout\,
	cout => \inst|inst|Add0~21\);

-- Location: LCCOMB_X86_Y14_N30
\inst|inst|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|counter~4_combout\ = (!\inst|inst|Equal0~3_combout\ & \inst|inst|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|Equal0~3_combout\,
	datad => \inst|inst|Add0~20_combout\,
	combout => \inst|inst|counter~4_combout\);

-- Location: FF_X86_Y14_N31
\inst|inst|tx_clk_gen:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_clk_gen:counter[10]~q\);

-- Location: LCCOMB_X86_Y14_N26
\inst|inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~22_combout\ = (\inst|inst|tx_clk_gen:counter[11]~q\ & (!\inst|inst|Add0~21\)) # (!\inst|inst|tx_clk_gen:counter[11]~q\ & ((\inst|inst|Add0~21\) # (GND)))
-- \inst|inst|Add0~23\ = CARRY((!\inst|inst|Add0~21\) # (!\inst|inst|tx_clk_gen:counter[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_clk_gen:counter[11]~q\,
	datad => VCC,
	cin => \inst|inst|Add0~21\,
	combout => \inst|inst|Add0~22_combout\,
	cout => \inst|inst|Add0~23\);

-- Location: FF_X86_Y14_N27
\inst|inst|tx_clk_gen:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_clk_gen:counter[11]~q\);

-- Location: LCCOMB_X86_Y14_N28
\inst|inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add0~24_combout\ = \inst|inst|Add0~23\ $ (!\inst|inst|tx_clk_gen:counter[12]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|tx_clk_gen:counter[12]~q\,
	cin => \inst|inst|Add0~23\,
	combout => \inst|inst|Add0~24_combout\);

-- Location: LCCOMB_X86_Y14_N2
\inst|inst|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|counter~3_combout\ = (!\inst|inst|Equal0~3_combout\ & \inst|inst|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|Equal0~3_combout\,
	datad => \inst|inst|Add0~24_combout\,
	combout => \inst|inst|counter~3_combout\);

-- Location: FF_X86_Y14_N3
\inst|inst|tx_clk_gen:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_clk_gen:counter[12]~q\);

-- Location: LCCOMB_X87_Y14_N0
\inst|inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~0_combout\ = (\inst|inst|tx_clk_gen:counter[2]~q\ & (\inst|inst|tx_clk_gen:counter[1]~q\ & (\inst|inst|tx_clk_gen:counter[0]~q\ & !\inst|inst|tx_clk_gen:counter[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_clk_gen:counter[2]~q\,
	datab => \inst|inst|tx_clk_gen:counter[1]~q\,
	datac => \inst|inst|tx_clk_gen:counter[0]~q\,
	datad => \inst|inst|tx_clk_gen:counter[3]~q\,
	combout => \inst|inst|Equal0~0_combout\);

-- Location: LCCOMB_X87_Y14_N22
\inst|inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~1_combout\ = (!\inst|inst|tx_clk_gen:counter[5]~q\ & (!\inst|inst|tx_clk_gen:counter[7]~q\ & (\inst|inst|tx_clk_gen:counter[4]~q\ & \inst|inst|tx_clk_gen:counter[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_clk_gen:counter[5]~q\,
	datab => \inst|inst|tx_clk_gen:counter[7]~q\,
	datac => \inst|inst|tx_clk_gen:counter[4]~q\,
	datad => \inst|inst|tx_clk_gen:counter[6]~q\,
	combout => \inst|inst|Equal0~1_combout\);

-- Location: LCCOMB_X87_Y14_N18
\inst|inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~2_combout\ = (\inst|inst|tx_clk_gen:counter[10]~q\ & (!\inst|inst|tx_clk_gen:counter[8]~q\ & (!\inst|inst|tx_clk_gen:counter[11]~q\ & !\inst|inst|tx_clk_gen:counter[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_clk_gen:counter[10]~q\,
	datab => \inst|inst|tx_clk_gen:counter[8]~q\,
	datac => \inst|inst|tx_clk_gen:counter[11]~q\,
	datad => \inst|inst|tx_clk_gen:counter[9]~q\,
	combout => \inst|inst|Equal0~2_combout\);

-- Location: LCCOMB_X87_Y14_N28
\inst|inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal0~3_combout\ = (\inst|inst|tx_clk_gen:counter[12]~q\ & (\inst|inst|Equal0~0_combout\ & (\inst|inst|Equal0~1_combout\ & \inst|inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_clk_gen:counter[12]~q\,
	datab => \inst|inst|Equal0~0_combout\,
	datac => \inst|inst|Equal0~1_combout\,
	datad => \inst|inst|Equal0~2_combout\,
	combout => \inst|inst|Equal0~3_combout\);

-- Location: FF_X87_Y14_N29
\inst|inst|tx_clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_clk_en~q\);

-- Location: FF_X87_Y14_N25
\inst|inst|tx_fsm.stop2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|inst|tx_fsm.stop1~q\,
	sload => VCC,
	ena => \inst|inst|tx_clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_fsm.stop2~q\);

-- Location: LCCOMB_X86_Y13_N0
\inst|inst2|count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[0]~32_combout\ = \inst|inst2|count\(0) $ (VCC)
-- \inst|inst2|count[0]~33\ = CARRY(\inst|inst2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(0),
	datad => VCC,
	combout => \inst|inst2|count[0]~32_combout\,
	cout => \inst|inst2|count[0]~33\);

-- Location: FF_X86_Y13_N1
\inst|inst2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[0]~32_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(0));

-- Location: LCCOMB_X86_Y13_N2
\inst|inst2|count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[1]~34_combout\ = (\inst|inst2|count\(1) & (!\inst|inst2|count[0]~33\)) # (!\inst|inst2|count\(1) & ((\inst|inst2|count[0]~33\) # (GND)))
-- \inst|inst2|count[1]~35\ = CARRY((!\inst|inst2|count[0]~33\) # (!\inst|inst2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(1),
	datad => VCC,
	cin => \inst|inst2|count[0]~33\,
	combout => \inst|inst2|count[1]~34_combout\,
	cout => \inst|inst2|count[1]~35\);

-- Location: FF_X86_Y13_N3
\inst|inst2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[1]~34_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(1));

-- Location: LCCOMB_X86_Y13_N4
\inst|inst2|count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[2]~36_combout\ = (\inst|inst2|count\(2) & (\inst|inst2|count[1]~35\ $ (GND))) # (!\inst|inst2|count\(2) & (!\inst|inst2|count[1]~35\ & VCC))
-- \inst|inst2|count[2]~37\ = CARRY((\inst|inst2|count\(2) & !\inst|inst2|count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(2),
	datad => VCC,
	cin => \inst|inst2|count[1]~35\,
	combout => \inst|inst2|count[2]~36_combout\,
	cout => \inst|inst2|count[2]~37\);

-- Location: FF_X86_Y13_N5
\inst|inst2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[2]~36_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(2));

-- Location: LCCOMB_X86_Y13_N6
\inst|inst2|count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[3]~38_combout\ = (\inst|inst2|count\(3) & (!\inst|inst2|count[2]~37\)) # (!\inst|inst2|count\(3) & ((\inst|inst2|count[2]~37\) # (GND)))
-- \inst|inst2|count[3]~39\ = CARRY((!\inst|inst2|count[2]~37\) # (!\inst|inst2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(3),
	datad => VCC,
	cin => \inst|inst2|count[2]~37\,
	combout => \inst|inst2|count[3]~38_combout\,
	cout => \inst|inst2|count[3]~39\);

-- Location: FF_X86_Y13_N7
\inst|inst2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[3]~38_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(3));

-- Location: LCCOMB_X86_Y13_N8
\inst|inst2|count[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[4]~40_combout\ = (\inst|inst2|count\(4) & (\inst|inst2|count[3]~39\ $ (GND))) # (!\inst|inst2|count\(4) & (!\inst|inst2|count[3]~39\ & VCC))
-- \inst|inst2|count[4]~41\ = CARRY((\inst|inst2|count\(4) & !\inst|inst2|count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(4),
	datad => VCC,
	cin => \inst|inst2|count[3]~39\,
	combout => \inst|inst2|count[4]~40_combout\,
	cout => \inst|inst2|count[4]~41\);

-- Location: FF_X86_Y13_N9
\inst|inst2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[4]~40_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(4));

-- Location: LCCOMB_X86_Y13_N10
\inst|inst2|count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[5]~42_combout\ = (\inst|inst2|count\(5) & (!\inst|inst2|count[4]~41\)) # (!\inst|inst2|count\(5) & ((\inst|inst2|count[4]~41\) # (GND)))
-- \inst|inst2|count[5]~43\ = CARRY((!\inst|inst2|count[4]~41\) # (!\inst|inst2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(5),
	datad => VCC,
	cin => \inst|inst2|count[4]~41\,
	combout => \inst|inst2|count[5]~42_combout\,
	cout => \inst|inst2|count[5]~43\);

-- Location: FF_X86_Y13_N11
\inst|inst2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[5]~42_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(5));

-- Location: LCCOMB_X86_Y13_N12
\inst|inst2|count[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[6]~44_combout\ = (\inst|inst2|count\(6) & (\inst|inst2|count[5]~43\ $ (GND))) # (!\inst|inst2|count\(6) & (!\inst|inst2|count[5]~43\ & VCC))
-- \inst|inst2|count[6]~45\ = CARRY((\inst|inst2|count\(6) & !\inst|inst2|count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(6),
	datad => VCC,
	cin => \inst|inst2|count[5]~43\,
	combout => \inst|inst2|count[6]~44_combout\,
	cout => \inst|inst2|count[6]~45\);

-- Location: FF_X86_Y13_N13
\inst|inst2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[6]~44_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(6));

-- Location: LCCOMB_X86_Y13_N14
\inst|inst2|count[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[7]~46_combout\ = (\inst|inst2|count\(7) & (!\inst|inst2|count[6]~45\)) # (!\inst|inst2|count\(7) & ((\inst|inst2|count[6]~45\) # (GND)))
-- \inst|inst2|count[7]~47\ = CARRY((!\inst|inst2|count[6]~45\) # (!\inst|inst2|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(7),
	datad => VCC,
	cin => \inst|inst2|count[6]~45\,
	combout => \inst|inst2|count[7]~46_combout\,
	cout => \inst|inst2|count[7]~47\);

-- Location: FF_X86_Y13_N15
\inst|inst2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[7]~46_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(7));

-- Location: LCCOMB_X86_Y13_N16
\inst|inst2|count[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[8]~48_combout\ = (\inst|inst2|count\(8) & (\inst|inst2|count[7]~47\ $ (GND))) # (!\inst|inst2|count\(8) & (!\inst|inst2|count[7]~47\ & VCC))
-- \inst|inst2|count[8]~49\ = CARRY((\inst|inst2|count\(8) & !\inst|inst2|count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(8),
	datad => VCC,
	cin => \inst|inst2|count[7]~47\,
	combout => \inst|inst2|count[8]~48_combout\,
	cout => \inst|inst2|count[8]~49\);

-- Location: FF_X86_Y13_N17
\inst|inst2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[8]~48_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(8));

-- Location: LCCOMB_X86_Y13_N18
\inst|inst2|count[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[9]~50_combout\ = (\inst|inst2|count\(9) & (!\inst|inst2|count[8]~49\)) # (!\inst|inst2|count\(9) & ((\inst|inst2|count[8]~49\) # (GND)))
-- \inst|inst2|count[9]~51\ = CARRY((!\inst|inst2|count[8]~49\) # (!\inst|inst2|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(9),
	datad => VCC,
	cin => \inst|inst2|count[8]~49\,
	combout => \inst|inst2|count[9]~50_combout\,
	cout => \inst|inst2|count[9]~51\);

-- Location: FF_X86_Y13_N19
\inst|inst2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[9]~50_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(9));

-- Location: LCCOMB_X86_Y13_N20
\inst|inst2|count[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[10]~52_combout\ = (\inst|inst2|count\(10) & (\inst|inst2|count[9]~51\ $ (GND))) # (!\inst|inst2|count\(10) & (!\inst|inst2|count[9]~51\ & VCC))
-- \inst|inst2|count[10]~53\ = CARRY((\inst|inst2|count\(10) & !\inst|inst2|count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(10),
	datad => VCC,
	cin => \inst|inst2|count[9]~51\,
	combout => \inst|inst2|count[10]~52_combout\,
	cout => \inst|inst2|count[10]~53\);

-- Location: FF_X86_Y13_N21
\inst|inst2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[10]~52_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(10));

-- Location: LCCOMB_X86_Y13_N22
\inst|inst2|count[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[11]~54_combout\ = (\inst|inst2|count\(11) & (!\inst|inst2|count[10]~53\)) # (!\inst|inst2|count\(11) & ((\inst|inst2|count[10]~53\) # (GND)))
-- \inst|inst2|count[11]~55\ = CARRY((!\inst|inst2|count[10]~53\) # (!\inst|inst2|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(11),
	datad => VCC,
	cin => \inst|inst2|count[10]~53\,
	combout => \inst|inst2|count[11]~54_combout\,
	cout => \inst|inst2|count[11]~55\);

-- Location: FF_X86_Y13_N23
\inst|inst2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[11]~54_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(11));

-- Location: LCCOMB_X86_Y13_N24
\inst|inst2|count[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[12]~56_combout\ = (\inst|inst2|count\(12) & (\inst|inst2|count[11]~55\ $ (GND))) # (!\inst|inst2|count\(12) & (!\inst|inst2|count[11]~55\ & VCC))
-- \inst|inst2|count[12]~57\ = CARRY((\inst|inst2|count\(12) & !\inst|inst2|count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(12),
	datad => VCC,
	cin => \inst|inst2|count[11]~55\,
	combout => \inst|inst2|count[12]~56_combout\,
	cout => \inst|inst2|count[12]~57\);

-- Location: FF_X86_Y13_N25
\inst|inst2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[12]~56_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(12));

-- Location: LCCOMB_X86_Y13_N26
\inst|inst2|count[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[13]~58_combout\ = (\inst|inst2|count\(13) & (!\inst|inst2|count[12]~57\)) # (!\inst|inst2|count\(13) & ((\inst|inst2|count[12]~57\) # (GND)))
-- \inst|inst2|count[13]~59\ = CARRY((!\inst|inst2|count[12]~57\) # (!\inst|inst2|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(13),
	datad => VCC,
	cin => \inst|inst2|count[12]~57\,
	combout => \inst|inst2|count[13]~58_combout\,
	cout => \inst|inst2|count[13]~59\);

-- Location: FF_X86_Y13_N27
\inst|inst2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[13]~58_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(13));

-- Location: LCCOMB_X86_Y13_N28
\inst|inst2|count[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[14]~60_combout\ = (\inst|inst2|count\(14) & (\inst|inst2|count[13]~59\ $ (GND))) # (!\inst|inst2|count\(14) & (!\inst|inst2|count[13]~59\ & VCC))
-- \inst|inst2|count[14]~61\ = CARRY((\inst|inst2|count\(14) & !\inst|inst2|count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(14),
	datad => VCC,
	cin => \inst|inst2|count[13]~59\,
	combout => \inst|inst2|count[14]~60_combout\,
	cout => \inst|inst2|count[14]~61\);

-- Location: FF_X86_Y13_N29
\inst|inst2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[14]~60_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(14));

-- Location: LCCOMB_X86_Y13_N30
\inst|inst2|count[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[15]~62_combout\ = (\inst|inst2|count\(15) & (!\inst|inst2|count[14]~61\)) # (!\inst|inst2|count\(15) & ((\inst|inst2|count[14]~61\) # (GND)))
-- \inst|inst2|count[15]~63\ = CARRY((!\inst|inst2|count[14]~61\) # (!\inst|inst2|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(15),
	datad => VCC,
	cin => \inst|inst2|count[14]~61\,
	combout => \inst|inst2|count[15]~62_combout\,
	cout => \inst|inst2|count[15]~63\);

-- Location: FF_X86_Y13_N31
\inst|inst2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[15]~62_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(15));

-- Location: LCCOMB_X86_Y12_N0
\inst|inst2|count[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[16]~64_combout\ = (\inst|inst2|count\(16) & (\inst|inst2|count[15]~63\ $ (GND))) # (!\inst|inst2|count\(16) & (!\inst|inst2|count[15]~63\ & VCC))
-- \inst|inst2|count[16]~65\ = CARRY((\inst|inst2|count\(16) & !\inst|inst2|count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(16),
	datad => VCC,
	cin => \inst|inst2|count[15]~63\,
	combout => \inst|inst2|count[16]~64_combout\,
	cout => \inst|inst2|count[16]~65\);

-- Location: FF_X86_Y12_N1
\inst|inst2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[16]~64_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(16));

-- Location: LCCOMB_X86_Y12_N2
\inst|inst2|count[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[17]~66_combout\ = (\inst|inst2|count\(17) & (!\inst|inst2|count[16]~65\)) # (!\inst|inst2|count\(17) & ((\inst|inst2|count[16]~65\) # (GND)))
-- \inst|inst2|count[17]~67\ = CARRY((!\inst|inst2|count[16]~65\) # (!\inst|inst2|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(17),
	datad => VCC,
	cin => \inst|inst2|count[16]~65\,
	combout => \inst|inst2|count[17]~66_combout\,
	cout => \inst|inst2|count[17]~67\);

-- Location: FF_X86_Y12_N3
\inst|inst2|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[17]~66_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(17));

-- Location: LCCOMB_X86_Y12_N4
\inst|inst2|count[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[18]~68_combout\ = (\inst|inst2|count\(18) & (\inst|inst2|count[17]~67\ $ (GND))) # (!\inst|inst2|count\(18) & (!\inst|inst2|count[17]~67\ & VCC))
-- \inst|inst2|count[18]~69\ = CARRY((\inst|inst2|count\(18) & !\inst|inst2|count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(18),
	datad => VCC,
	cin => \inst|inst2|count[17]~67\,
	combout => \inst|inst2|count[18]~68_combout\,
	cout => \inst|inst2|count[18]~69\);

-- Location: FF_X86_Y12_N5
\inst|inst2|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[18]~68_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(18));

-- Location: LCCOMB_X86_Y12_N6
\inst|inst2|count[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[19]~70_combout\ = (\inst|inst2|count\(19) & (!\inst|inst2|count[18]~69\)) # (!\inst|inst2|count\(19) & ((\inst|inst2|count[18]~69\) # (GND)))
-- \inst|inst2|count[19]~71\ = CARRY((!\inst|inst2|count[18]~69\) # (!\inst|inst2|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(19),
	datad => VCC,
	cin => \inst|inst2|count[18]~69\,
	combout => \inst|inst2|count[19]~70_combout\,
	cout => \inst|inst2|count[19]~71\);

-- Location: FF_X86_Y12_N7
\inst|inst2|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[19]~70_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(19));

-- Location: LCCOMB_X86_Y12_N8
\inst|inst2|count[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[20]~72_combout\ = (\inst|inst2|count\(20) & (\inst|inst2|count[19]~71\ $ (GND))) # (!\inst|inst2|count\(20) & (!\inst|inst2|count[19]~71\ & VCC))
-- \inst|inst2|count[20]~73\ = CARRY((\inst|inst2|count\(20) & !\inst|inst2|count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(20),
	datad => VCC,
	cin => \inst|inst2|count[19]~71\,
	combout => \inst|inst2|count[20]~72_combout\,
	cout => \inst|inst2|count[20]~73\);

-- Location: FF_X86_Y12_N9
\inst|inst2|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[20]~72_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(20));

-- Location: LCCOMB_X86_Y12_N10
\inst|inst2|count[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[21]~74_combout\ = (\inst|inst2|count\(21) & (!\inst|inst2|count[20]~73\)) # (!\inst|inst2|count\(21) & ((\inst|inst2|count[20]~73\) # (GND)))
-- \inst|inst2|count[21]~75\ = CARRY((!\inst|inst2|count[20]~73\) # (!\inst|inst2|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(21),
	datad => VCC,
	cin => \inst|inst2|count[20]~73\,
	combout => \inst|inst2|count[21]~74_combout\,
	cout => \inst|inst2|count[21]~75\);

-- Location: FF_X86_Y12_N11
\inst|inst2|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[21]~74_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(21));

-- Location: LCCOMB_X86_Y12_N12
\inst|inst2|count[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[22]~76_combout\ = (\inst|inst2|count\(22) & (\inst|inst2|count[21]~75\ $ (GND))) # (!\inst|inst2|count\(22) & (!\inst|inst2|count[21]~75\ & VCC))
-- \inst|inst2|count[22]~77\ = CARRY((\inst|inst2|count\(22) & !\inst|inst2|count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(22),
	datad => VCC,
	cin => \inst|inst2|count[21]~75\,
	combout => \inst|inst2|count[22]~76_combout\,
	cout => \inst|inst2|count[22]~77\);

-- Location: FF_X86_Y12_N13
\inst|inst2|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[22]~76_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(22));

-- Location: LCCOMB_X86_Y12_N14
\inst|inst2|count[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[23]~78_combout\ = (\inst|inst2|count\(23) & (!\inst|inst2|count[22]~77\)) # (!\inst|inst2|count\(23) & ((\inst|inst2|count[22]~77\) # (GND)))
-- \inst|inst2|count[23]~79\ = CARRY((!\inst|inst2|count[22]~77\) # (!\inst|inst2|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(23),
	datad => VCC,
	cin => \inst|inst2|count[22]~77\,
	combout => \inst|inst2|count[23]~78_combout\,
	cout => \inst|inst2|count[23]~79\);

-- Location: FF_X86_Y12_N15
\inst|inst2|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[23]~78_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(23));

-- Location: LCCOMB_X86_Y12_N16
\inst|inst2|count[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[24]~80_combout\ = (\inst|inst2|count\(24) & (\inst|inst2|count[23]~79\ $ (GND))) # (!\inst|inst2|count\(24) & (!\inst|inst2|count[23]~79\ & VCC))
-- \inst|inst2|count[24]~81\ = CARRY((\inst|inst2|count\(24) & !\inst|inst2|count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(24),
	datad => VCC,
	cin => \inst|inst2|count[23]~79\,
	combout => \inst|inst2|count[24]~80_combout\,
	cout => \inst|inst2|count[24]~81\);

-- Location: FF_X86_Y12_N17
\inst|inst2|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[24]~80_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(24));

-- Location: LCCOMB_X86_Y12_N18
\inst|inst2|count[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[25]~82_combout\ = (\inst|inst2|count\(25) & (!\inst|inst2|count[24]~81\)) # (!\inst|inst2|count\(25) & ((\inst|inst2|count[24]~81\) # (GND)))
-- \inst|inst2|count[25]~83\ = CARRY((!\inst|inst2|count[24]~81\) # (!\inst|inst2|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(25),
	datad => VCC,
	cin => \inst|inst2|count[24]~81\,
	combout => \inst|inst2|count[25]~82_combout\,
	cout => \inst|inst2|count[25]~83\);

-- Location: FF_X86_Y12_N19
\inst|inst2|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[25]~82_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(25));

-- Location: LCCOMB_X86_Y12_N20
\inst|inst2|count[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[26]~84_combout\ = (\inst|inst2|count\(26) & (\inst|inst2|count[25]~83\ $ (GND))) # (!\inst|inst2|count\(26) & (!\inst|inst2|count[25]~83\ & VCC))
-- \inst|inst2|count[26]~85\ = CARRY((\inst|inst2|count\(26) & !\inst|inst2|count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(26),
	datad => VCC,
	cin => \inst|inst2|count[25]~83\,
	combout => \inst|inst2|count[26]~84_combout\,
	cout => \inst|inst2|count[26]~85\);

-- Location: FF_X86_Y12_N21
\inst|inst2|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[26]~84_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(26));

-- Location: LCCOMB_X86_Y12_N22
\inst|inst2|count[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[27]~86_combout\ = (\inst|inst2|count\(27) & (!\inst|inst2|count[26]~85\)) # (!\inst|inst2|count\(27) & ((\inst|inst2|count[26]~85\) # (GND)))
-- \inst|inst2|count[27]~87\ = CARRY((!\inst|inst2|count[26]~85\) # (!\inst|inst2|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(27),
	datad => VCC,
	cin => \inst|inst2|count[26]~85\,
	combout => \inst|inst2|count[27]~86_combout\,
	cout => \inst|inst2|count[27]~87\);

-- Location: FF_X86_Y12_N23
\inst|inst2|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[27]~86_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(27));

-- Location: LCCOMB_X86_Y12_N24
\inst|inst2|count[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[28]~88_combout\ = (\inst|inst2|count\(28) & (\inst|inst2|count[27]~87\ $ (GND))) # (!\inst|inst2|count\(28) & (!\inst|inst2|count[27]~87\ & VCC))
-- \inst|inst2|count[28]~89\ = CARRY((\inst|inst2|count\(28) & !\inst|inst2|count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(28),
	datad => VCC,
	cin => \inst|inst2|count[27]~87\,
	combout => \inst|inst2|count[28]~88_combout\,
	cout => \inst|inst2|count[28]~89\);

-- Location: FF_X86_Y12_N25
\inst|inst2|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[28]~88_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(28));

-- Location: LCCOMB_X86_Y12_N26
\inst|inst2|count[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[29]~90_combout\ = (\inst|inst2|count\(29) & (!\inst|inst2|count[28]~89\)) # (!\inst|inst2|count\(29) & ((\inst|inst2|count[28]~89\) # (GND)))
-- \inst|inst2|count[29]~91\ = CARRY((!\inst|inst2|count[28]~89\) # (!\inst|inst2|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(29),
	datad => VCC,
	cin => \inst|inst2|count[28]~89\,
	combout => \inst|inst2|count[29]~90_combout\,
	cout => \inst|inst2|count[29]~91\);

-- Location: FF_X86_Y12_N27
\inst|inst2|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[29]~90_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(29));

-- Location: LCCOMB_X86_Y12_N28
\inst|inst2|count[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[30]~92_combout\ = (\inst|inst2|count\(30) & (\inst|inst2|count[29]~91\ $ (GND))) # (!\inst|inst2|count\(30) & (!\inst|inst2|count[29]~91\ & VCC))
-- \inst|inst2|count[30]~93\ = CARRY((\inst|inst2|count\(30) & !\inst|inst2|count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(30),
	datad => VCC,
	cin => \inst|inst2|count[29]~91\,
	combout => \inst|inst2|count[30]~92_combout\,
	cout => \inst|inst2|count[30]~93\);

-- Location: FF_X86_Y12_N29
\inst|inst2|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[30]~92_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(30));

-- Location: LCCOMB_X86_Y12_N30
\inst|inst2|count[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|count[31]~94_combout\ = \inst|inst2|count\(31) $ (\inst|inst2|count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(31),
	cin => \inst|inst2|count[30]~93\,
	combout => \inst|inst2|count[31]~94_combout\);

-- Location: FF_X86_Y12_N31
\inst|inst2|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|count[31]~94_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|count\(31));

-- Location: LCCOMB_X85_Y12_N14
\inst|inst2|state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|state~1_combout\ = (!\inst|inst2|count\(31) & ((\inst|inst2|count\(28)) # ((\inst|inst2|count\(26) & \inst|inst2|count\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(26),
	datab => \inst|inst2|count\(27),
	datac => \inst|inst2|count\(31),
	datad => \inst|inst2|count\(28),
	combout => \inst|inst2|state~1_combout\);

-- Location: LCCOMB_X85_Y12_N0
\inst|inst2|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|state~0_combout\ = (!\inst|inst2|count\(31) & (\inst|inst2|count\(27) & ((\inst|inst2|count\(24)) # (\inst|inst2|count\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(24),
	datab => \inst|inst2|count\(25),
	datac => \inst|inst2|count\(31),
	datad => \inst|inst2|count\(27),
	combout => \inst|inst2|state~0_combout\);

-- Location: LCCOMB_X85_Y13_N8
\inst|inst2|state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|state~2_combout\ = (\inst|inst2|state~q\) # ((!\inst|inst2|count\(31) & ((\inst|inst2|count\(29)) # (\inst|inst2|count\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(29),
	datab => \inst|inst2|count\(31),
	datac => \inst|inst2|state~q\,
	datad => \inst|inst2|count\(30),
	combout => \inst|inst2|state~2_combout\);

-- Location: LCCOMB_X85_Y13_N18
\inst|inst2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|LessThan0~6_combout\ = (\inst|inst2|count\(14) & (\inst|inst2|count\(15) & \inst|inst2|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(14),
	datac => \inst|inst2|count\(15),
	datad => \inst|inst2|count\(12),
	combout => \inst|inst2|LessThan0~6_combout\);

-- Location: LCCOMB_X85_Y13_N12
\inst|inst2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|LessThan0~7_combout\ = (\inst|inst2|LessThan0~6_combout\ & ((\inst|inst2|count\(11)) # ((\inst|inst2|count\(9)) # (\inst|inst2|count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(11),
	datab => \inst|inst2|count\(9),
	datac => \inst|inst2|count\(10),
	datad => \inst|inst2|LessThan0~6_combout\,
	combout => \inst|inst2|LessThan0~7_combout\);

-- Location: LCCOMB_X85_Y13_N26
\inst|inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|LessThan0~2_combout\ = (\inst|inst2|count\(15) & (\inst|inst2|count\(12) & (\inst|inst2|count\(7) & \inst|inst2|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(15),
	datab => \inst|inst2|count\(12),
	datac => \inst|inst2|count\(7),
	datad => \inst|inst2|count\(14),
	combout => \inst|inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X85_Y13_N22
\inst|inst2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|LessThan0~4_combout\ = (\inst|inst2|count\(4)) # ((\inst|inst2|count\(6)) # (\inst|inst2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(4),
	datac => \inst|inst2|count\(6),
	datad => \inst|inst2|count\(5),
	combout => \inst|inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X85_Y13_N28
\inst|inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|LessThan0~3_combout\ = (\inst|inst2|count\(2)) # ((\inst|inst2|count\(1)) # ((\inst|inst2|count\(0)) # (\inst|inst2|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(2),
	datab => \inst|inst2|count\(1),
	datac => \inst|inst2|count\(0),
	datad => \inst|inst2|count\(3),
	combout => \inst|inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X85_Y13_N24
\inst|inst2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|LessThan0~5_combout\ = (\inst|inst2|LessThan0~2_combout\ & (\inst|inst2|count\(8) & ((\inst|inst2|LessThan0~4_combout\) # (\inst|inst2|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|LessThan0~2_combout\,
	datab => \inst|inst2|count\(8),
	datac => \inst|inst2|LessThan0~4_combout\,
	datad => \inst|inst2|LessThan0~3_combout\,
	combout => \inst|inst2|LessThan0~5_combout\);

-- Location: LCCOMB_X85_Y13_N6
\inst|inst2|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|LessThan0~8_combout\ = (\inst|inst2|count\(16)) # ((\inst|inst2|count\(13) & (\inst|inst2|count\(15) & \inst|inst2|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(13),
	datab => \inst|inst2|count\(16),
	datac => \inst|inst2|count\(15),
	datad => \inst|inst2|count\(14),
	combout => \inst|inst2|LessThan0~8_combout\);

-- Location: LCCOMB_X85_Y13_N4
\inst|inst2|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|LessThan0~9_combout\ = (\inst|inst2|count\(17)) # ((\inst|inst2|count\(19)) # ((\inst|inst2|count\(18)) # (\inst|inst2|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(17),
	datab => \inst|inst2|count\(19),
	datac => \inst|inst2|count\(18),
	datad => \inst|inst2|LessThan0~8_combout\,
	combout => \inst|inst2|LessThan0~9_combout\);

-- Location: LCCOMB_X85_Y12_N12
\inst|inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|LessThan0~0_combout\ = (!\inst|inst2|count\(31) & (\inst|inst2|count\(20) & (\inst|inst2|count\(21) & \inst|inst2|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|count\(31),
	datab => \inst|inst2|count\(20),
	datac => \inst|inst2|count\(21),
	datad => \inst|inst2|count\(27),
	combout => \inst|inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X85_Y12_N10
\inst|inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|LessThan0~1_combout\ = (\inst|inst2|count\(23) & (\inst|inst2|count\(22) & \inst|inst2|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|count\(23),
	datac => \inst|inst2|count\(22),
	datad => \inst|inst2|LessThan0~0_combout\,
	combout => \inst|inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X85_Y13_N10
\inst|inst2|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|LessThan0~10_combout\ = (\inst|inst2|LessThan0~1_combout\ & ((\inst|inst2|LessThan0~7_combout\) # ((\inst|inst2|LessThan0~5_combout\) # (\inst|inst2|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|LessThan0~7_combout\,
	datab => \inst|inst2|LessThan0~5_combout\,
	datac => \inst|inst2|LessThan0~9_combout\,
	datad => \inst|inst2|LessThan0~1_combout\,
	combout => \inst|inst2|LessThan0~10_combout\);

-- Location: LCCOMB_X85_Y13_N0
\inst|inst2|state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|state~3_combout\ = (\inst|inst2|state~1_combout\) # ((\inst|inst2|state~0_combout\) # ((\inst|inst2|state~2_combout\) # (\inst|inst2|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|state~1_combout\,
	datab => \inst|inst2|state~0_combout\,
	datac => \inst|inst2|state~2_combout\,
	datad => \inst|inst2|LessThan0~10_combout\,
	combout => \inst|inst2|state~3_combout\);

-- Location: FF_X85_Y13_N1
\inst|inst2|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst2|state~3_combout\,
	sclr => \inst|inst2|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2|state~q\);

-- Location: LCCOMB_X87_Y14_N4
\inst|inst|tx_req_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|tx_req_int~0_combout\ = (\inst|inst2|state~q\ & (((!\inst|inst|tx_clk_en~q\)) # (!\inst|inst|tx_fsm.stop2~q\))) # (!\inst|inst2|state~q\ & (\inst|inst|tx_req_int~q\ & ((!\inst|inst|tx_clk_en~q\) # (!\inst|inst|tx_fsm.stop2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2|state~q\,
	datab => \inst|inst|tx_fsm.stop2~q\,
	datac => \inst|inst|tx_req_int~q\,
	datad => \inst|inst|tx_clk_en~q\,
	combout => \inst|inst|tx_req_int~0_combout\);

-- Location: FF_X87_Y14_N5
\inst|inst|tx_req_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|tx_req_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_req_int~q\);

-- Location: LCCOMB_X87_Y14_N14
\inst|inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector1~0_combout\ = (!\inst|inst|tx_fsm.stop2~q\ & ((\inst|inst|tx_fsm.idle~q\) # (\inst|inst|tx_req_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|tx_fsm.stop2~q\,
	datac => \inst|inst|tx_fsm.idle~q\,
	datad => \inst|inst|tx_req_int~q\,
	combout => \inst|inst|Selector1~0_combout\);

-- Location: FF_X87_Y14_N15
\inst|inst|tx_fsm.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Selector1~0_combout\,
	ena => \inst|inst|tx_clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_fsm.idle~q\);

-- Location: LCCOMB_X88_Y14_N24
\inst|inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector10~0_combout\ = (!\inst|inst|tx_fsm.data~q\) # (!\inst|inst|tx_data_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|tx_data_cnt\(0),
	datad => \inst|inst|tx_fsm.data~q\,
	combout => \inst|inst|Selector10~0_combout\);

-- Location: LCCOMB_X87_Y14_N30
\inst|inst|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector0~3_combout\ = (!\inst|inst|tx_fsm.idle~q\ & !\inst|inst|tx_req_int~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|tx_fsm.idle~q\,
	datad => \inst|inst|tx_req_int~q\,
	combout => \inst|inst|Selector0~3_combout\);

-- Location: LCCOMB_X87_Y14_N6
\inst|inst|tx_data_cnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|tx_data_cnt[0]~0_combout\ = (!\inst|inst|tx_fsm.stop1~q\ & (!\inst|inst|tx_fsm.stop2~q\ & (!\inst|inst|Selector0~3_combout\ & \inst|inst|tx_clk_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_fsm.stop1~q\,
	datab => \inst|inst|tx_fsm.stop2~q\,
	datac => \inst|inst|Selector0~3_combout\,
	datad => \inst|inst|tx_clk_en~q\,
	combout => \inst|inst|tx_data_cnt[0]~0_combout\);

-- Location: FF_X88_Y14_N25
\inst|inst|tx_data_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Selector10~0_combout\,
	ena => \inst|inst|tx_data_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_data_cnt\(0));

-- Location: LCCOMB_X88_Y14_N0
\inst|inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector8~0_combout\ = (\inst|inst|tx_data_cnt\(2) $ (((!\inst|inst|tx_data_cnt\(0) & !\inst|inst|tx_data_cnt\(1))))) # (!\inst|inst|tx_fsm.data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_fsm.data~q\,
	datab => \inst|inst|tx_data_cnt\(0),
	datac => \inst|inst|tx_data_cnt\(2),
	datad => \inst|inst|tx_data_cnt\(1),
	combout => \inst|inst|Selector8~0_combout\);

-- Location: FF_X88_Y14_N1
\inst|inst|tx_data_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Selector8~0_combout\,
	ena => \inst|inst|tx_data_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_data_cnt\(2));

-- Location: LCCOMB_X87_Y14_N16
\inst|inst|tx_data_tmp[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|tx_data_tmp[1]~0_combout\ = (\inst|inst|tx_fsm.data~q\ & ((\inst|inst|tx_data_cnt\(0)) # ((\inst|inst|tx_data_cnt\(2)) # (\inst|inst|tx_data_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_fsm.data~q\,
	datab => \inst|inst|tx_data_cnt\(0),
	datac => \inst|inst|tx_data_cnt\(2),
	datad => \inst|inst|tx_data_cnt\(1),
	combout => \inst|inst|tx_data_tmp[1]~0_combout\);

-- Location: LCCOMB_X87_Y14_N10
\inst|inst|tx_fsm~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|tx_fsm~16_combout\ = ((\inst|inst|tx_data_tmp[1]~0_combout\) # ((!\inst|inst|tx_req_int~q\ & !\inst|inst|tx_fsm.idle~q\))) # (!\inst|inst|tx_clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_req_int~q\,
	datab => \inst|inst|tx_clk_en~q\,
	datac => \inst|inst|tx_fsm.idle~q\,
	datad => \inst|inst|tx_data_tmp[1]~0_combout\,
	combout => \inst|inst|tx_fsm~16_combout\);

-- Location: LCCOMB_X87_Y14_N12
\inst|inst|tx_fsm.data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|tx_fsm.data~0_combout\ = (\inst|inst|tx_fsm.data~q\ & (((\inst|inst|tx_fsm~16_combout\)))) # (!\inst|inst|tx_fsm.data~q\ & (!\inst|inst|tx_fsm.stop1~q\ & (!\inst|inst|tx_fsm.stop2~q\ & !\inst|inst|tx_fsm~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_fsm.stop1~q\,
	datab => \inst|inst|tx_fsm.stop2~q\,
	datac => \inst|inst|tx_fsm.data~q\,
	datad => \inst|inst|tx_fsm~16_combout\,
	combout => \inst|inst|tx_fsm.data~0_combout\);

-- Location: FF_X87_Y14_N13
\inst|inst|tx_fsm.data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|tx_fsm.data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_fsm.data~q\);

-- Location: LCCOMB_X88_Y14_N6
\inst|inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector9~0_combout\ = (\inst|inst|tx_data_cnt\(1) $ (!\inst|inst|tx_data_cnt\(0))) # (!\inst|inst|tx_fsm.data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_fsm.data~q\,
	datac => \inst|inst|tx_data_cnt\(1),
	datad => \inst|inst|tx_data_cnt\(0),
	combout => \inst|inst|Selector9~0_combout\);

-- Location: FF_X88_Y14_N7
\inst|inst|tx_data_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Selector9~0_combout\,
	ena => \inst|inst|tx_data_cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_data_cnt\(1));

-- Location: LCCOMB_X87_Y14_N26
\inst|inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector5~0_combout\ = (!\inst|inst|tx_data_cnt\(1) & (\inst|inst|tx_fsm.data~q\ & (!\inst|inst|tx_data_cnt\(2) & !\inst|inst|tx_data_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_data_cnt\(1),
	datab => \inst|inst|tx_fsm.data~q\,
	datac => \inst|inst|tx_data_cnt\(2),
	datad => \inst|inst|tx_data_cnt\(0),
	combout => \inst|inst|Selector5~0_combout\);

-- Location: FF_X87_Y14_N27
\inst|inst|tx_fsm.stop1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Selector5~0_combout\,
	ena => \inst|inst|tx_clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_fsm.stop1~q\);

-- Location: LCCOMB_X85_Y14_N10
\inst|inst|tx_data_tmp[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|tx_data_tmp[1]~8_combout\ = (!\inst|inst|tx_data_tmp[1]~0_combout\) # (!\inst|inst|tx_clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|tx_clk_en~q\,
	datad => \inst|inst|tx_data_tmp[1]~0_combout\,
	combout => \inst|inst|tx_data_tmp[1]~8_combout\);

-- Location: LCCOMB_X85_Y14_N16
\inst|inst|tx_data_tmp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|tx_data_tmp[1]~2_combout\ = (\inst|inst2|state~q\) # ((\inst|inst|tx_clk_en~q\ & \inst|inst|tx_data_tmp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2|state~q\,
	datac => \inst|inst|tx_clk_en~q\,
	datad => \inst|inst|tx_data_tmp[1]~0_combout\,
	combout => \inst|inst|tx_data_tmp[1]~2_combout\);

-- Location: FF_X85_Y14_N11
\inst|inst|tx_data_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|tx_data_tmp[1]~8_combout\,
	ena => \inst|inst|tx_data_tmp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_data_tmp\(6));

-- Location: LCCOMB_X85_Y14_N12
\inst|inst|tx_data_tmp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|tx_data_tmp~7_combout\ = (\inst|inst|tx_data_tmp\(6) & (\inst|inst|tx_clk_en~q\ & \inst|inst|tx_data_tmp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_data_tmp\(6),
	datac => \inst|inst|tx_clk_en~q\,
	datad => \inst|inst|tx_data_tmp[1]~0_combout\,
	combout => \inst|inst|tx_data_tmp~7_combout\);

-- Location: FF_X85_Y14_N13
\inst|inst|tx_data_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|tx_data_tmp~7_combout\,
	ena => \inst|inst|tx_data_tmp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_data_tmp\(5));

-- Location: LCCOMB_X85_Y14_N22
\inst|inst|tx_data_tmp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|tx_data_tmp~6_combout\ = (\inst|inst|tx_data_tmp\(5)) # ((!\inst|inst|tx_data_tmp[1]~0_combout\) # (!\inst|inst|tx_clk_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_data_tmp\(5),
	datac => \inst|inst|tx_clk_en~q\,
	datad => \inst|inst|tx_data_tmp[1]~0_combout\,
	combout => \inst|inst|tx_data_tmp~6_combout\);

-- Location: FF_X85_Y14_N23
\inst|inst|tx_data_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|tx_data_tmp~6_combout\,
	ena => \inst|inst|tx_data_tmp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_data_tmp\(4));

-- Location: LCCOMB_X85_Y14_N4
\inst|inst|tx_data_tmp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|tx_data_tmp~5_combout\ = (\inst|inst|tx_clk_en~q\ & (\inst|inst|tx_data_tmp\(4) & \inst|inst|tx_data_tmp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_clk_en~q\,
	datac => \inst|inst|tx_data_tmp\(4),
	datad => \inst|inst|tx_data_tmp[1]~0_combout\,
	combout => \inst|inst|tx_data_tmp~5_combout\);

-- Location: FF_X85_Y14_N5
\inst|inst|tx_data_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|tx_data_tmp~5_combout\,
	ena => \inst|inst|tx_data_tmp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_data_tmp\(3));

-- Location: LCCOMB_X85_Y14_N30
\inst|inst|tx_data_tmp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|tx_data_tmp~4_combout\ = ((\inst|inst|tx_data_tmp\(3)) # (!\inst|inst|tx_data_tmp[1]~0_combout\)) # (!\inst|inst|tx_clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_clk_en~q\,
	datac => \inst|inst|tx_data_tmp\(3),
	datad => \inst|inst|tx_data_tmp[1]~0_combout\,
	combout => \inst|inst|tx_data_tmp~4_combout\);

-- Location: FF_X85_Y14_N31
\inst|inst|tx_data_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|tx_data_tmp~4_combout\,
	ena => \inst|inst|tx_data_tmp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_data_tmp\(2));

-- Location: LCCOMB_X85_Y14_N18
\inst|inst|tx_data_tmp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|tx_data_tmp~3_combout\ = (\inst|inst|tx_clk_en~q\ & (\inst|inst|tx_data_tmp\(2) & \inst|inst|tx_data_tmp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_clk_en~q\,
	datac => \inst|inst|tx_data_tmp\(2),
	datad => \inst|inst|tx_data_tmp[1]~0_combout\,
	combout => \inst|inst|tx_data_tmp~3_combout\);

-- Location: FF_X85_Y14_N19
\inst|inst|tx_data_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|tx_data_tmp~3_combout\,
	ena => \inst|inst|tx_data_tmp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_data_tmp\(1));

-- Location: LCCOMB_X85_Y14_N0
\inst|inst|tx_data_tmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|tx_data_tmp~1_combout\ = (\inst|inst|tx_data_tmp\(1)) # ((!\inst|inst|tx_data_tmp[1]~0_combout\) # (!\inst|inst|tx_clk_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|tx_data_tmp\(1),
	datac => \inst|inst|tx_clk_en~q\,
	datad => \inst|inst|tx_data_tmp[1]~0_combout\,
	combout => \inst|inst|tx_data_tmp~1_combout\);

-- Location: FF_X85_Y14_N1
\inst|inst|tx_data_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|tx_data_tmp~1_combout\,
	ena => \inst|inst|tx_data_tmp[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx_data_tmp\(0));

-- Location: LCCOMB_X87_Y14_N24
\inst|inst|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector0~2_combout\ = (\inst|inst|tx_fsm.stop1~q\) # ((\inst|inst|tx_fsm.stop2~q\) # ((\inst|inst|tx_data_tmp\(0) & \inst|inst|tx_fsm.data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|tx_fsm.stop1~q\,
	datab => \inst|inst|tx_data_tmp\(0),
	datac => \inst|inst|tx_fsm.stop2~q\,
	datad => \inst|inst|tx_fsm.data~q\,
	combout => \inst|inst|Selector0~2_combout\);

-- Location: LCCOMB_X87_Y14_N8
\inst|inst|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector0~4_combout\ = (\inst|inst|Selector0~2_combout\) # ((!\inst|inst|tx_fsm.idle~q\ & (\inst|inst|tx~q\ & !\inst|inst|tx_req_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Selector0~2_combout\,
	datab => \inst|inst|tx_fsm.idle~q\,
	datac => \inst|inst|tx~q\,
	datad => \inst|inst|tx_req_int~q\,
	combout => \inst|inst|Selector0~4_combout\);

-- Location: FF_X87_Y14_N9
\inst|inst|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Selector0~4_combout\,
	ena => \inst|inst|tx_clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|tx~q\);

-- Location: LCCOMB_X105_Y70_N0
\inst|inst1|count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[0]~32_combout\ = \inst|inst1|count\(0) $ (VCC)
-- \inst|inst1|count[0]~33\ = CARRY(\inst|inst1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(0),
	datad => VCC,
	combout => \inst|inst1|count[0]~32_combout\,
	cout => \inst|inst1|count[0]~33\);

-- Location: IOIBUF_X27_Y73_N8
\Rx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx,
	o => \Rx~input_o\);

-- Location: LCCOMB_X102_Y65_N12
\inst|inst|rx_debounceer:deb_buf[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_debounceer:deb_buf[0]~feeder_combout\ = \Rx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Rx~input_o\,
	combout => \inst|inst|rx_debounceer:deb_buf[0]~feeder_combout\);

-- Location: FF_X102_Y65_N13
\inst|inst|rx_debounceer:deb_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_debounceer:deb_buf[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_debounceer:deb_buf[0]~q\);

-- Location: LCCOMB_X102_Y65_N26
\inst|inst|rx_debounceer:deb_buf[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_debounceer:deb_buf[1]~feeder_combout\ = \inst|inst|rx_debounceer:deb_buf[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_debounceer:deb_buf[0]~q\,
	combout => \inst|inst|rx_debounceer:deb_buf[1]~feeder_combout\);

-- Location: FF_X102_Y65_N27
\inst|inst|rx_debounceer:deb_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_debounceer:deb_buf[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_debounceer:deb_buf[1]~q\);

-- Location: LCCOMB_X103_Y65_N24
\inst|inst|rx_debounceer:deb_buf[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_debounceer:deb_buf[2]~feeder_combout\ = \inst|inst|rx_debounceer:deb_buf[1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|rx_debounceer:deb_buf[1]~q\,
	combout => \inst|inst|rx_debounceer:deb_buf[2]~feeder_combout\);

-- Location: FF_X103_Y65_N25
\inst|inst|rx_debounceer:deb_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_debounceer:deb_buf[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_debounceer:deb_buf[2]~q\);

-- Location: FF_X103_Y65_N27
\inst|inst|rx_debounceer:deb_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|inst|rx_debounceer:deb_buf[2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_debounceer:deb_buf[3]~q\);

-- Location: LCCOMB_X103_Y65_N26
\inst|inst|rx_data_deb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data_deb~0_combout\ = (\inst|inst|rx_debounceer:deb_buf[1]~q\ & (\inst|inst|rx_debounceer:deb_buf[3]~q\ & \inst|inst|rx_debounceer:deb_buf[2]~q\)) # (!\inst|inst|rx_debounceer:deb_buf[1]~q\ & ((\inst|inst|rx_debounceer:deb_buf[3]~q\) # 
-- (\inst|inst|rx_debounceer:deb_buf[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_debounceer:deb_buf[1]~q\,
	datac => \inst|inst|rx_debounceer:deb_buf[3]~q\,
	datad => \inst|inst|rx_debounceer:deb_buf[2]~q\,
	combout => \inst|inst|rx_data_deb~0_combout\);

-- Location: LCCOMB_X102_Y65_N24
\inst|inst|rx_data_deb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data_deb~1_combout\ = (\inst|inst|rx_debounceer:deb_buf[1]~q\ & ((\inst|inst|rx_data_deb~q\) # ((\inst|inst|rx_data_deb~0_combout\ & \inst|inst|rx_debounceer:deb_buf[0]~q\)))) # (!\inst|inst|rx_debounceer:deb_buf[1]~q\ & 
-- (\inst|inst|rx_data_deb~q\ & ((\inst|inst|rx_data_deb~0_combout\) # (\inst|inst|rx_debounceer:deb_buf[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_debounceer:deb_buf[1]~q\,
	datab => \inst|inst|rx_data_deb~0_combout\,
	datac => \inst|inst|rx_data_deb~q\,
	datad => \inst|inst|rx_debounceer:deb_buf[0]~q\,
	combout => \inst|inst|rx_data_deb~1_combout\);

-- Location: FF_X102_Y65_N25
\inst|inst|rx_data_deb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_data_deb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data_deb~q\);

-- Location: LCCOMB_X101_Y65_N8
\inst|inst|rx_fsm~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_fsm~16_combout\ = (\inst|inst|rx_fsm.ck_start_bit~q\ & !\inst|inst|rx_data_deb~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|rx_fsm.ck_start_bit~q\,
	datad => \inst|inst|rx_data_deb~q\,
	combout => \inst|inst|rx_fsm~16_combout\);

-- Location: LCCOMB_X105_Y65_N6
\inst|inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add2~0_combout\ = \inst|inst|rx_clk_gen:counter[0]~q\ $ (VCC)
-- \inst|inst|Add2~1\ = CARRY(\inst|inst|rx_clk_gen:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_clk_gen:counter[0]~q\,
	datad => VCC,
	combout => \inst|inst|Add2~0_combout\,
	cout => \inst|inst|Add2~1\);

-- Location: LCCOMB_X105_Y65_N8
\inst|inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add2~2_combout\ = (\inst|inst|rx_clk_gen:counter[1]~q\ & (!\inst|inst|Add2~1\)) # (!\inst|inst|rx_clk_gen:counter[1]~q\ & ((\inst|inst|Add2~1\) # (GND)))
-- \inst|inst|Add2~3\ = CARRY((!\inst|inst|Add2~1\) # (!\inst|inst|rx_clk_gen:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|rx_clk_gen:counter[1]~q\,
	datad => VCC,
	cin => \inst|inst|Add2~1\,
	combout => \inst|inst|Add2~2_combout\,
	cout => \inst|inst|Add2~3\);

-- Location: FF_X105_Y65_N9
\inst|inst|rx_clk_gen:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_clk_gen:counter[1]~q\);

-- Location: LCCOMB_X105_Y65_N10
\inst|inst|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add2~4_combout\ = (\inst|inst|rx_clk_gen:counter[2]~q\ & (\inst|inst|Add2~3\ $ (GND))) # (!\inst|inst|rx_clk_gen:counter[2]~q\ & (!\inst|inst|Add2~3\ & VCC))
-- \inst|inst|Add2~5\ = CARRY((\inst|inst|rx_clk_gen:counter[2]~q\ & !\inst|inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|rx_clk_gen:counter[2]~q\,
	datad => VCC,
	cin => \inst|inst|Add2~3\,
	combout => \inst|inst|Add2~4_combout\,
	cout => \inst|inst|Add2~5\);

-- Location: LCCOMB_X105_Y65_N4
\inst|inst|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|counter~5_combout\ = (\inst|inst|Add2~4_combout\ & (((!\inst|inst|Equal4~0_combout\) # (!\inst|inst|rx_clk_gen:counter[8]~q\)) # (!\inst|inst|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Add2~4_combout\,
	datab => \inst|inst|Equal4~1_combout\,
	datac => \inst|inst|rx_clk_gen:counter[8]~q\,
	datad => \inst|inst|Equal4~0_combout\,
	combout => \inst|inst|counter~5_combout\);

-- Location: FF_X105_Y65_N5
\inst|inst|rx_clk_gen:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_clk_gen:counter[2]~q\);

-- Location: LCCOMB_X105_Y65_N12
\inst|inst|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add2~6_combout\ = (\inst|inst|rx_clk_gen:counter[3]~q\ & (!\inst|inst|Add2~5\)) # (!\inst|inst|rx_clk_gen:counter[3]~q\ & ((\inst|inst|Add2~5\) # (GND)))
-- \inst|inst|Add2~7\ = CARRY((!\inst|inst|Add2~5\) # (!\inst|inst|rx_clk_gen:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_clk_gen:counter[3]~q\,
	datad => VCC,
	cin => \inst|inst|Add2~5\,
	combout => \inst|inst|Add2~6_combout\,
	cout => \inst|inst|Add2~7\);

-- Location: FF_X105_Y65_N13
\inst|inst|rx_clk_gen:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_clk_gen:counter[3]~q\);

-- Location: LCCOMB_X105_Y65_N14
\inst|inst|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add2~8_combout\ = (\inst|inst|rx_clk_gen:counter[4]~q\ & (\inst|inst|Add2~7\ $ (GND))) # (!\inst|inst|rx_clk_gen:counter[4]~q\ & (!\inst|inst|Add2~7\ & VCC))
-- \inst|inst|Add2~9\ = CARRY((\inst|inst|rx_clk_gen:counter[4]~q\ & !\inst|inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|rx_clk_gen:counter[4]~q\,
	datad => VCC,
	cin => \inst|inst|Add2~7\,
	combout => \inst|inst|Add2~8_combout\,
	cout => \inst|inst|Add2~9\);

-- Location: FF_X105_Y65_N15
\inst|inst|rx_clk_gen:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_clk_gen:counter[4]~q\);

-- Location: LCCOMB_X105_Y65_N16
\inst|inst|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add2~10_combout\ = (\inst|inst|rx_clk_gen:counter[5]~q\ & (!\inst|inst|Add2~9\)) # (!\inst|inst|rx_clk_gen:counter[5]~q\ & ((\inst|inst|Add2~9\) # (GND)))
-- \inst|inst|Add2~11\ = CARRY((!\inst|inst|Add2~9\) # (!\inst|inst|rx_clk_gen:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|rx_clk_gen:counter[5]~q\,
	datad => VCC,
	cin => \inst|inst|Add2~9\,
	combout => \inst|inst|Add2~10_combout\,
	cout => \inst|inst|Add2~11\);

-- Location: FF_X105_Y65_N17
\inst|inst|rx_clk_gen:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_clk_gen:counter[5]~q\);

-- Location: LCCOMB_X105_Y65_N28
\inst|inst|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal4~1_combout\ = (\inst|inst|rx_clk_gen:counter[6]~q\ & (!\inst|inst|rx_clk_gen:counter[7]~q\ & (!\inst|inst|rx_clk_gen:counter[4]~q\ & !\inst|inst|rx_clk_gen:counter[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_clk_gen:counter[6]~q\,
	datab => \inst|inst|rx_clk_gen:counter[7]~q\,
	datac => \inst|inst|rx_clk_gen:counter[4]~q\,
	datad => \inst|inst|rx_clk_gen:counter[5]~q\,
	combout => \inst|inst|Equal4~1_combout\);

-- Location: LCCOMB_X105_Y65_N26
\inst|inst|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|counter~6_combout\ = (\inst|inst|Add2~0_combout\ & (((!\inst|inst|Equal4~0_combout\) # (!\inst|inst|rx_clk_gen:counter[8]~q\)) # (!\inst|inst|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Add2~0_combout\,
	datab => \inst|inst|Equal4~1_combout\,
	datac => \inst|inst|rx_clk_gen:counter[8]~q\,
	datad => \inst|inst|Equal4~0_combout\,
	combout => \inst|inst|counter~6_combout\);

-- Location: FF_X105_Y65_N27
\inst|inst|rx_clk_gen:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_clk_gen:counter[0]~q\);

-- Location: LCCOMB_X105_Y65_N24
\inst|inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal4~0_combout\ = (!\inst|inst|rx_clk_gen:counter[0]~q\ & (\inst|inst|rx_clk_gen:counter[2]~q\ & (!\inst|inst|rx_clk_gen:counter[1]~q\ & !\inst|inst|rx_clk_gen:counter[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_clk_gen:counter[0]~q\,
	datab => \inst|inst|rx_clk_gen:counter[2]~q\,
	datac => \inst|inst|rx_clk_gen:counter[1]~q\,
	datad => \inst|inst|rx_clk_gen:counter[3]~q\,
	combout => \inst|inst|Equal4~0_combout\);

-- Location: LCCOMB_X105_Y65_N18
\inst|inst|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add2~12_combout\ = (\inst|inst|rx_clk_gen:counter[6]~q\ & (\inst|inst|Add2~11\ $ (GND))) # (!\inst|inst|rx_clk_gen:counter[6]~q\ & (!\inst|inst|Add2~11\ & VCC))
-- \inst|inst|Add2~13\ = CARRY((\inst|inst|rx_clk_gen:counter[6]~q\ & !\inst|inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_clk_gen:counter[6]~q\,
	datad => VCC,
	cin => \inst|inst|Add2~11\,
	combout => \inst|inst|Add2~12_combout\,
	cout => \inst|inst|Add2~13\);

-- Location: LCCOMB_X105_Y65_N30
\inst|inst|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|counter~8_combout\ = (\inst|inst|Add2~12_combout\ & (((!\inst|inst|rx_clk_gen:counter[8]~q\) # (!\inst|inst|Equal4~1_combout\)) # (!\inst|inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal4~0_combout\,
	datab => \inst|inst|Equal4~1_combout\,
	datac => \inst|inst|rx_clk_gen:counter[8]~q\,
	datad => \inst|inst|Add2~12_combout\,
	combout => \inst|inst|counter~8_combout\);

-- Location: FF_X105_Y65_N31
\inst|inst|rx_clk_gen:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_clk_gen:counter[6]~q\);

-- Location: LCCOMB_X105_Y65_N20
\inst|inst|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add2~14_combout\ = (\inst|inst|rx_clk_gen:counter[7]~q\ & (!\inst|inst|Add2~13\)) # (!\inst|inst|rx_clk_gen:counter[7]~q\ & ((\inst|inst|Add2~13\) # (GND)))
-- \inst|inst|Add2~15\ = CARRY((!\inst|inst|Add2~13\) # (!\inst|inst|rx_clk_gen:counter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|rx_clk_gen:counter[7]~q\,
	datad => VCC,
	cin => \inst|inst|Add2~13\,
	combout => \inst|inst|Add2~14_combout\,
	cout => \inst|inst|Add2~15\);

-- Location: FF_X105_Y65_N21
\inst|inst|rx_clk_gen:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_clk_gen:counter[7]~q\);

-- Location: LCCOMB_X105_Y65_N22
\inst|inst|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Add2~16_combout\ = \inst|inst|Add2~15\ $ (!\inst|inst|rx_clk_gen:counter[8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_clk_gen:counter[8]~q\,
	cin => \inst|inst|Add2~15\,
	combout => \inst|inst|Add2~16_combout\);

-- Location: LCCOMB_X105_Y65_N0
\inst|inst|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|counter~7_combout\ = (\inst|inst|Add2~16_combout\ & (((!\inst|inst|Equal4~0_combout\) # (!\inst|inst|rx_clk_gen:counter[8]~q\)) # (!\inst|inst|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Add2~16_combout\,
	datab => \inst|inst|Equal4~1_combout\,
	datac => \inst|inst|rx_clk_gen:counter[8]~q\,
	datad => \inst|inst|Equal4~0_combout\,
	combout => \inst|inst|counter~7_combout\);

-- Location: FF_X105_Y65_N1
\inst|inst|rx_clk_gen:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_clk_gen:counter[8]~q\);

-- Location: LCCOMB_X102_Y65_N4
\inst|inst|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal4~2_combout\ = (\inst|inst|rx_clk_gen:counter[8]~q\ & (\inst|inst|Equal4~1_combout\ & \inst|inst|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|rx_clk_gen:counter[8]~q\,
	datac => \inst|inst|Equal4~1_combout\,
	datad => \inst|inst|Equal4~0_combout\,
	combout => \inst|inst|Equal4~2_combout\);

-- Location: FF_X102_Y65_N5
\inst|inst|rx_clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_clk_en~q\);

-- Location: LCCOMB_X101_Y65_N12
\inst|inst|rx_fsm~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_fsm~17_combout\ = ((\inst|inst|rx_data_deb~q\ & !\inst|inst|rx_fsm.idle~q\)) # (!\inst|inst|rx_clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|rx_data_deb~q\,
	datac => \inst|inst|rx_fsm.idle~q\,
	datad => \inst|inst|rx_clk_en~q\,
	combout => \inst|inst|rx_fsm~17_combout\);

-- Location: LCCOMB_X102_Y65_N14
\inst|inst|rx_clk_cnt[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_clk_cnt[0]~5_combout\ = \inst|inst|rx_clk_cnt\(0) $ (VCC)
-- \inst|inst|rx_clk_cnt[0]~6\ = CARRY(\inst|inst|rx_clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|rx_clk_cnt\(0),
	datad => VCC,
	combout => \inst|inst|rx_clk_cnt[0]~5_combout\,
	cout => \inst|inst|rx_clk_cnt[0]~6\);

-- Location: LCCOMB_X102_Y65_N20
\inst|inst|rx_clk_cnt[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_clk_cnt[3]~11_combout\ = (\inst|inst|rx_clk_cnt\(3) & (!\inst|inst|rx_clk_cnt[2]~10\)) # (!\inst|inst|rx_clk_cnt\(3) & ((\inst|inst|rx_clk_cnt[2]~10\) # (GND)))
-- \inst|inst|rx_clk_cnt[3]~12\ = CARRY((!\inst|inst|rx_clk_cnt[2]~10\) # (!\inst|inst|rx_clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|rx_clk_cnt\(3),
	datad => VCC,
	cin => \inst|inst|rx_clk_cnt[2]~10\,
	combout => \inst|inst|rx_clk_cnt[3]~11_combout\,
	cout => \inst|inst|rx_clk_cnt[3]~12\);

-- Location: LCCOMB_X102_Y65_N22
\inst|inst|rx_clk_cnt[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_clk_cnt[4]~15_combout\ = \inst|inst|rx_clk_cnt\(4) $ (!\inst|inst|rx_clk_cnt[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_clk_cnt\(4),
	cin => \inst|inst|rx_clk_cnt[3]~12\,
	combout => \inst|inst|rx_clk_cnt[4]~15_combout\);

-- Location: LCCOMB_X102_Y65_N28
\inst|inst|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal5~1_combout\ = (!\inst|inst|rx_clk_cnt\(3) & \inst|inst|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|rx_clk_cnt\(3),
	datad => \inst|inst|Equal5~0_combout\,
	combout => \inst|inst|Equal5~1_combout\);

-- Location: LCCOMB_X102_Y65_N8
\inst|inst|rx_clk_cnt[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_clk_cnt[0]~14_combout\ = (\inst|inst|rx_clk_en~q\ & (((!\inst|inst|Equal5~1_combout\) # (!\inst|inst|rx_data_deb~q\)) # (!\inst|inst|rx_fsm.ck_start_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_fsm.ck_start_bit~q\,
	datab => \inst|inst|rx_data_deb~q\,
	datac => \inst|inst|rx_clk_en~q\,
	datad => \inst|inst|Equal5~1_combout\,
	combout => \inst|inst|rx_clk_cnt[0]~14_combout\);

-- Location: FF_X102_Y65_N23
\inst|inst|rx_clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_clk_cnt[4]~15_combout\,
	sclr => \inst|inst|rx_clk_cnt[0]~13_combout\,
	ena => \inst|inst|rx_clk_cnt[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_clk_cnt\(4));

-- Location: LCCOMB_X102_Y65_N10
\inst|inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal5~0_combout\ = (!\inst|inst|rx_clk_cnt\(4) & (\inst|inst|rx_clk_cnt\(1) & (\inst|inst|rx_clk_cnt\(0) & \inst|inst|rx_clk_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_clk_cnt\(4),
	datab => \inst|inst|rx_clk_cnt\(1),
	datac => \inst|inst|rx_clk_cnt\(0),
	datad => \inst|inst|rx_clk_cnt\(2),
	combout => \inst|inst|Equal5~0_combout\);

-- Location: LCCOMB_X102_Y65_N0
\inst|inst|rx_data_tmp[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data_tmp[5]~0_combout\ = (\inst|inst|rx_fsm.data~q\ & (\inst|inst|rx_clk_cnt\(3) & \inst|inst|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_fsm.data~q\,
	datab => \inst|inst|rx_clk_cnt\(3),
	datad => \inst|inst|Equal5~0_combout\,
	combout => \inst|inst|rx_data_tmp[5]~0_combout\);

-- Location: LCCOMB_X102_Y65_N2
\inst|inst|rx_clk_cnt[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_clk_cnt[0]~13_combout\ = ((\inst|inst|rx_data_tmp[5]~0_combout\) # ((\inst|inst|rx_fsm.ck_start_bit~q\ & \inst|inst|Equal5~1_combout\))) # (!\inst|inst|rx_fsm.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_fsm.idle~q\,
	datab => \inst|inst|rx_data_tmp[5]~0_combout\,
	datac => \inst|inst|rx_fsm.ck_start_bit~q\,
	datad => \inst|inst|Equal5~1_combout\,
	combout => \inst|inst|rx_clk_cnt[0]~13_combout\);

-- Location: FF_X102_Y65_N15
\inst|inst|rx_clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_clk_cnt[0]~5_combout\,
	sclr => \inst|inst|rx_clk_cnt[0]~13_combout\,
	ena => \inst|inst|rx_clk_cnt[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_clk_cnt\(0));

-- Location: LCCOMB_X102_Y65_N16
\inst|inst|rx_clk_cnt[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_clk_cnt[1]~7_combout\ = (\inst|inst|rx_clk_cnt\(1) & (!\inst|inst|rx_clk_cnt[0]~6\)) # (!\inst|inst|rx_clk_cnt\(1) & ((\inst|inst|rx_clk_cnt[0]~6\) # (GND)))
-- \inst|inst|rx_clk_cnt[1]~8\ = CARRY((!\inst|inst|rx_clk_cnt[0]~6\) # (!\inst|inst|rx_clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|rx_clk_cnt\(1),
	datad => VCC,
	cin => \inst|inst|rx_clk_cnt[0]~6\,
	combout => \inst|inst|rx_clk_cnt[1]~7_combout\,
	cout => \inst|inst|rx_clk_cnt[1]~8\);

-- Location: FF_X102_Y65_N17
\inst|inst|rx_clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_clk_cnt[1]~7_combout\,
	sclr => \inst|inst|rx_clk_cnt[0]~13_combout\,
	ena => \inst|inst|rx_clk_cnt[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_clk_cnt\(1));

-- Location: LCCOMB_X102_Y65_N18
\inst|inst|rx_clk_cnt[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_clk_cnt[2]~9_combout\ = (\inst|inst|rx_clk_cnt\(2) & (\inst|inst|rx_clk_cnt[1]~8\ $ (GND))) # (!\inst|inst|rx_clk_cnt\(2) & (!\inst|inst|rx_clk_cnt[1]~8\ & VCC))
-- \inst|inst|rx_clk_cnt[2]~10\ = CARRY((\inst|inst|rx_clk_cnt\(2) & !\inst|inst|rx_clk_cnt[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|rx_clk_cnt\(2),
	datad => VCC,
	cin => \inst|inst|rx_clk_cnt[1]~8\,
	combout => \inst|inst|rx_clk_cnt[2]~9_combout\,
	cout => \inst|inst|rx_clk_cnt[2]~10\);

-- Location: FF_X102_Y65_N19
\inst|inst|rx_clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_clk_cnt[2]~9_combout\,
	sclr => \inst|inst|rx_clk_cnt[0]~13_combout\,
	ena => \inst|inst|rx_clk_cnt[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_clk_cnt\(2));

-- Location: FF_X102_Y65_N21
\inst|inst|rx_clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_clk_cnt[3]~11_combout\,
	sclr => \inst|inst|rx_clk_cnt[0]~13_combout\,
	ena => \inst|inst|rx_clk_cnt[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_clk_cnt\(3));

-- Location: LCCOMB_X102_Y65_N6
\inst|inst|rx_fsm~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_fsm~18_combout\ = (\inst|inst|Equal5~0_combout\ & ((\inst|inst|rx_clk_cnt\(3) & ((\inst|inst|rx_fsm.ck_start_bit~q\))) # (!\inst|inst|rx_clk_cnt\(3) & (\inst|inst|rx_fsm.data~q\)))) # (!\inst|inst|Equal5~0_combout\ & 
-- ((\inst|inst|rx_fsm.data~q\) # ((\inst|inst|rx_fsm.ck_start_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_fsm.data~q\,
	datab => \inst|inst|rx_clk_cnt\(3),
	datac => \inst|inst|rx_fsm.ck_start_bit~q\,
	datad => \inst|inst|Equal5~0_combout\,
	combout => \inst|inst|rx_fsm~18_combout\);

-- Location: LCCOMB_X101_Y65_N22
\inst|inst|rx_fsm~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_fsm~19_combout\ = (!\inst|inst|rx_fsm~17_combout\ & (!\inst|inst|rx_fsm~18_combout\ & ((\inst|inst|Equal7~0_combout\) # (!\inst|inst|rx_fsm.data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_fsm~17_combout\,
	datab => \inst|inst|Equal7~0_combout\,
	datac => \inst|inst|rx_fsm.data~q\,
	datad => \inst|inst|rx_fsm~18_combout\,
	combout => \inst|inst|rx_fsm~19_combout\);

-- Location: FF_X101_Y65_N9
\inst|inst|rx_fsm.data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_fsm~16_combout\,
	ena => \inst|inst|rx_fsm~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_fsm.data~q\);

-- Location: LCCOMB_X101_Y65_N14
\inst|inst|rx_fsm~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_fsm~20_combout\ = (\inst|inst|rx_fsm.ck_start_bit~q\ & ((!\inst|inst|rx_data_deb~q\))) # (!\inst|inst|rx_fsm.ck_start_bit~q\ & (!\inst|inst|rx_fsm.data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|rx_fsm.data~q\,
	datac => \inst|inst|rx_fsm.ck_start_bit~q\,
	datad => \inst|inst|rx_data_deb~q\,
	combout => \inst|inst|rx_fsm~20_combout\);

-- Location: FF_X101_Y65_N15
\inst|inst|rx_fsm.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_fsm~20_combout\,
	ena => \inst|inst|rx_fsm~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_fsm.idle~q\);

-- Location: LCCOMB_X101_Y65_N16
\inst|inst|rx_fsm.ck_start_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_fsm.ck_start_bit~0_combout\ = (\inst|inst|rx_fsm.data~q\ & (((!\inst|inst|Equal7~0_combout\)))) # (!\inst|inst|rx_fsm.data~q\ & (((\inst|inst|rx_clk_cnt\(3))) # (!\inst|inst|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_fsm.data~q\,
	datab => \inst|inst|Equal5~0_combout\,
	datac => \inst|inst|rx_clk_cnt\(3),
	datad => \inst|inst|Equal7~0_combout\,
	combout => \inst|inst|rx_fsm.ck_start_bit~0_combout\);

-- Location: LCCOMB_X101_Y65_N26
\inst|inst|rx_fsm.ck_start_bit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_fsm.ck_start_bit~1_combout\ = (\inst|inst|rx_fsm.ck_start_bit~q\ & (((\inst|inst|rx_fsm.ck_start_bit~0_combout\) # (!\inst|inst|rx_fsm.idle~q\)) # (!\inst|inst|rx_clk_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_clk_en~q\,
	datab => \inst|inst|rx_fsm.idle~q\,
	datac => \inst|inst|rx_fsm.ck_start_bit~q\,
	datad => \inst|inst|rx_fsm.ck_start_bit~0_combout\,
	combout => \inst|inst|rx_fsm.ck_start_bit~1_combout\);

-- Location: LCCOMB_X101_Y65_N24
\inst|inst|rx_fsm.ck_start_bit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_fsm.ck_start_bit~2_combout\ = ((\inst|inst|Equal7~0_combout\ & \inst|inst|rx_data_tmp[5]~0_combout\)) # (!\inst|inst|rx_data_deb~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|Equal7~0_combout\,
	datac => \inst|inst|rx_data_tmp[5]~0_combout\,
	datad => \inst|inst|rx_data_deb~q\,
	combout => \inst|inst|rx_fsm.ck_start_bit~2_combout\);

-- Location: LCCOMB_X102_Y65_N30
\inst|inst|rx_fsm.ck_start_bit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_fsm.ck_start_bit~3_combout\ = (\inst|inst|rx_fsm.ck_start_bit~1_combout\) # ((!\inst|inst|rx_fsm.idle~q\ & (\inst|inst|rx_clk_en~q\ & \inst|inst|rx_fsm.ck_start_bit~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_fsm.idle~q\,
	datab => \inst|inst|rx_clk_en~q\,
	datac => \inst|inst|rx_fsm.ck_start_bit~1_combout\,
	datad => \inst|inst|rx_fsm.ck_start_bit~2_combout\,
	combout => \inst|inst|rx_fsm.ck_start_bit~3_combout\);

-- Location: FF_X102_Y65_N31
\inst|inst|rx_fsm.ck_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_fsm.ck_start_bit~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_fsm.ck_start_bit~q\);

-- Location: LCCOMB_X101_Y65_N0
\inst|inst|rx_data_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data_cnt~0_combout\ = ((\inst|inst|Equal7~0_combout\) # (!\inst|inst|rx_clk_cnt\(3))) # (!\inst|inst|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|Equal5~0_combout\,
	datac => \inst|inst|rx_clk_cnt\(3),
	datad => \inst|inst|Equal7~0_combout\,
	combout => \inst|inst|rx_data_cnt~0_combout\);

-- Location: LCCOMB_X101_Y65_N10
\inst|inst|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector22~0_combout\ = (\inst|inst|rx_data_cnt\(0) & ((\inst|inst|rx_fsm.ck_start_bit~q\) # ((\inst|inst|rx_fsm.data~q\ & \inst|inst|rx_data_cnt~0_combout\)))) # (!\inst|inst|rx_data_cnt\(0) & (((\inst|inst|rx_fsm.data~q\ & 
-- !\inst|inst|rx_data_cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_fsm.ck_start_bit~q\,
	datab => \inst|inst|rx_fsm.data~q\,
	datac => \inst|inst|rx_data_cnt\(0),
	datad => \inst|inst|rx_data_cnt~0_combout\,
	combout => \inst|inst|Selector22~0_combout\);

-- Location: FF_X101_Y65_N11
\inst|inst|rx_data_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Selector22~0_combout\,
	ena => \inst|inst|rx_clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data_cnt\(0));

-- Location: LCCOMB_X101_Y65_N20
\inst|inst|Selector21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector21~3_combout\ = (\inst|inst|rx_data_cnt\(0) & (\inst|inst|Equal5~0_combout\ & (\inst|inst|rx_clk_cnt\(3) & !\inst|inst|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_data_cnt\(0),
	datab => \inst|inst|Equal5~0_combout\,
	datac => \inst|inst|rx_clk_cnt\(3),
	datad => \inst|inst|Equal7~0_combout\,
	combout => \inst|inst|Selector21~3_combout\);

-- Location: LCCOMB_X101_Y65_N4
\inst|inst|Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector21~2_combout\ = (\inst|inst|rx_data_cnt\(1) & ((\inst|inst|rx_fsm.ck_start_bit~q\) # ((!\inst|inst|Selector21~3_combout\ & \inst|inst|rx_fsm.data~q\)))) # (!\inst|inst|rx_data_cnt\(1) & (((\inst|inst|Selector21~3_combout\ & 
-- \inst|inst|rx_fsm.data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_fsm.ck_start_bit~q\,
	datab => \inst|inst|Selector21~3_combout\,
	datac => \inst|inst|rx_data_cnt\(1),
	datad => \inst|inst|rx_fsm.data~q\,
	combout => \inst|inst|Selector21~2_combout\);

-- Location: FF_X101_Y65_N5
\inst|inst|rx_data_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Selector21~2_combout\,
	ena => \inst|inst|rx_clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data_cnt\(1));

-- Location: LCCOMB_X101_Y65_N6
\inst|inst|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector20~0_combout\ = (\inst|inst|rx_data_cnt\(2) & ((\inst|inst|rx_fsm.data~q\) # (\inst|inst|rx_fsm.ck_start_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst|rx_fsm.data~q\,
	datac => \inst|inst|rx_fsm.ck_start_bit~q\,
	datad => \inst|inst|rx_data_cnt\(2),
	combout => \inst|inst|Selector20~0_combout\);

-- Location: LCCOMB_X101_Y65_N28
\inst|inst|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Selector20~1_combout\ = (\inst|inst|Selector20~0_combout\) # ((\inst|inst|rx_data_cnt\(0) & (\inst|inst|rx_data_cnt\(1) & \inst|inst|rx_data_tmp[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_data_cnt\(0),
	datab => \inst|inst|rx_data_cnt\(1),
	datac => \inst|inst|rx_data_tmp[5]~0_combout\,
	datad => \inst|inst|Selector20~0_combout\,
	combout => \inst|inst|Selector20~1_combout\);

-- Location: FF_X101_Y65_N29
\inst|inst|rx_data_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|Selector20~1_combout\,
	ena => \inst|inst|rx_clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data_cnt\(2));

-- Location: LCCOMB_X101_Y65_N2
\inst|inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|Equal7~0_combout\ = (\inst|inst|rx_data_cnt\(0) & (\inst|inst|rx_data_cnt\(1) & \inst|inst|rx_data_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_data_cnt\(0),
	datac => \inst|inst|rx_data_cnt\(1),
	datad => \inst|inst|rx_data_cnt\(2),
	combout => \inst|inst|Equal7~0_combout\);

-- Location: LCCOMB_X101_Y66_N14
\inst|inst|rx_ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_ready~0_combout\ = (\inst|inst|Equal7~0_combout\ & (\inst|inst|rx_clk_en~q\ & \inst|inst|rx_data_tmp[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal7~0_combout\,
	datab => \inst|inst|rx_clk_en~q\,
	datad => \inst|inst|rx_data_tmp[5]~0_combout\,
	combout => \inst|inst|rx_ready~0_combout\);

-- Location: LCCOMB_X102_Y66_N20
\inst|inst|rx_ready~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_ready~feeder_combout\ = \inst|inst|rx_ready~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_ready~0_combout\,
	combout => \inst|inst|rx_ready~feeder_combout\);

-- Location: FF_X102_Y66_N21
\inst|inst|rx_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_ready~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_ready~q\);

-- Location: FF_X105_Y70_N1
\inst|inst1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[0]~32_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(0));

-- Location: LCCOMB_X105_Y70_N2
\inst|inst1|count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[1]~34_combout\ = (\inst|inst1|count\(1) & (!\inst|inst1|count[0]~33\)) # (!\inst|inst1|count\(1) & ((\inst|inst1|count[0]~33\) # (GND)))
-- \inst|inst1|count[1]~35\ = CARRY((!\inst|inst1|count[0]~33\) # (!\inst|inst1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(1),
	datad => VCC,
	cin => \inst|inst1|count[0]~33\,
	combout => \inst|inst1|count[1]~34_combout\,
	cout => \inst|inst1|count[1]~35\);

-- Location: FF_X105_Y70_N3
\inst|inst1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[1]~34_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(1));

-- Location: LCCOMB_X105_Y70_N4
\inst|inst1|count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[2]~36_combout\ = (\inst|inst1|count\(2) & (\inst|inst1|count[1]~35\ $ (GND))) # (!\inst|inst1|count\(2) & (!\inst|inst1|count[1]~35\ & VCC))
-- \inst|inst1|count[2]~37\ = CARRY((\inst|inst1|count\(2) & !\inst|inst1|count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(2),
	datad => VCC,
	cin => \inst|inst1|count[1]~35\,
	combout => \inst|inst1|count[2]~36_combout\,
	cout => \inst|inst1|count[2]~37\);

-- Location: FF_X105_Y70_N5
\inst|inst1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[2]~36_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(2));

-- Location: LCCOMB_X105_Y70_N6
\inst|inst1|count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[3]~38_combout\ = (\inst|inst1|count\(3) & (!\inst|inst1|count[2]~37\)) # (!\inst|inst1|count\(3) & ((\inst|inst1|count[2]~37\) # (GND)))
-- \inst|inst1|count[3]~39\ = CARRY((!\inst|inst1|count[2]~37\) # (!\inst|inst1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(3),
	datad => VCC,
	cin => \inst|inst1|count[2]~37\,
	combout => \inst|inst1|count[3]~38_combout\,
	cout => \inst|inst1|count[3]~39\);

-- Location: FF_X105_Y70_N7
\inst|inst1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[3]~38_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(3));

-- Location: LCCOMB_X105_Y70_N8
\inst|inst1|count[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[4]~40_combout\ = (\inst|inst1|count\(4) & (\inst|inst1|count[3]~39\ $ (GND))) # (!\inst|inst1|count\(4) & (!\inst|inst1|count[3]~39\ & VCC))
-- \inst|inst1|count[4]~41\ = CARRY((\inst|inst1|count\(4) & !\inst|inst1|count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(4),
	datad => VCC,
	cin => \inst|inst1|count[3]~39\,
	combout => \inst|inst1|count[4]~40_combout\,
	cout => \inst|inst1|count[4]~41\);

-- Location: FF_X105_Y70_N9
\inst|inst1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[4]~40_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(4));

-- Location: LCCOMB_X105_Y70_N10
\inst|inst1|count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[5]~42_combout\ = (\inst|inst1|count\(5) & (!\inst|inst1|count[4]~41\)) # (!\inst|inst1|count\(5) & ((\inst|inst1|count[4]~41\) # (GND)))
-- \inst|inst1|count[5]~43\ = CARRY((!\inst|inst1|count[4]~41\) # (!\inst|inst1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(5),
	datad => VCC,
	cin => \inst|inst1|count[4]~41\,
	combout => \inst|inst1|count[5]~42_combout\,
	cout => \inst|inst1|count[5]~43\);

-- Location: FF_X105_Y70_N11
\inst|inst1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[5]~42_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(5));

-- Location: LCCOMB_X105_Y70_N12
\inst|inst1|count[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[6]~44_combout\ = (\inst|inst1|count\(6) & (\inst|inst1|count[5]~43\ $ (GND))) # (!\inst|inst1|count\(6) & (!\inst|inst1|count[5]~43\ & VCC))
-- \inst|inst1|count[6]~45\ = CARRY((\inst|inst1|count\(6) & !\inst|inst1|count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(6),
	datad => VCC,
	cin => \inst|inst1|count[5]~43\,
	combout => \inst|inst1|count[6]~44_combout\,
	cout => \inst|inst1|count[6]~45\);

-- Location: FF_X105_Y70_N13
\inst|inst1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[6]~44_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(6));

-- Location: LCCOMB_X105_Y70_N14
\inst|inst1|count[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[7]~46_combout\ = (\inst|inst1|count\(7) & (!\inst|inst1|count[6]~45\)) # (!\inst|inst1|count\(7) & ((\inst|inst1|count[6]~45\) # (GND)))
-- \inst|inst1|count[7]~47\ = CARRY((!\inst|inst1|count[6]~45\) # (!\inst|inst1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(7),
	datad => VCC,
	cin => \inst|inst1|count[6]~45\,
	combout => \inst|inst1|count[7]~46_combout\,
	cout => \inst|inst1|count[7]~47\);

-- Location: FF_X105_Y70_N15
\inst|inst1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[7]~46_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(7));

-- Location: LCCOMB_X105_Y70_N16
\inst|inst1|count[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[8]~48_combout\ = (\inst|inst1|count\(8) & (\inst|inst1|count[7]~47\ $ (GND))) # (!\inst|inst1|count\(8) & (!\inst|inst1|count[7]~47\ & VCC))
-- \inst|inst1|count[8]~49\ = CARRY((\inst|inst1|count\(8) & !\inst|inst1|count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(8),
	datad => VCC,
	cin => \inst|inst1|count[7]~47\,
	combout => \inst|inst1|count[8]~48_combout\,
	cout => \inst|inst1|count[8]~49\);

-- Location: FF_X105_Y70_N17
\inst|inst1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[8]~48_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(8));

-- Location: LCCOMB_X105_Y70_N18
\inst|inst1|count[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[9]~50_combout\ = (\inst|inst1|count\(9) & (!\inst|inst1|count[8]~49\)) # (!\inst|inst1|count\(9) & ((\inst|inst1|count[8]~49\) # (GND)))
-- \inst|inst1|count[9]~51\ = CARRY((!\inst|inst1|count[8]~49\) # (!\inst|inst1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(9),
	datad => VCC,
	cin => \inst|inst1|count[8]~49\,
	combout => \inst|inst1|count[9]~50_combout\,
	cout => \inst|inst1|count[9]~51\);

-- Location: FF_X105_Y70_N19
\inst|inst1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[9]~50_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(9));

-- Location: LCCOMB_X105_Y70_N20
\inst|inst1|count[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[10]~52_combout\ = (\inst|inst1|count\(10) & (\inst|inst1|count[9]~51\ $ (GND))) # (!\inst|inst1|count\(10) & (!\inst|inst1|count[9]~51\ & VCC))
-- \inst|inst1|count[10]~53\ = CARRY((\inst|inst1|count\(10) & !\inst|inst1|count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(10),
	datad => VCC,
	cin => \inst|inst1|count[9]~51\,
	combout => \inst|inst1|count[10]~52_combout\,
	cout => \inst|inst1|count[10]~53\);

-- Location: FF_X105_Y70_N21
\inst|inst1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[10]~52_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(10));

-- Location: LCCOMB_X105_Y70_N22
\inst|inst1|count[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[11]~54_combout\ = (\inst|inst1|count\(11) & (!\inst|inst1|count[10]~53\)) # (!\inst|inst1|count\(11) & ((\inst|inst1|count[10]~53\) # (GND)))
-- \inst|inst1|count[11]~55\ = CARRY((!\inst|inst1|count[10]~53\) # (!\inst|inst1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(11),
	datad => VCC,
	cin => \inst|inst1|count[10]~53\,
	combout => \inst|inst1|count[11]~54_combout\,
	cout => \inst|inst1|count[11]~55\);

-- Location: FF_X105_Y70_N23
\inst|inst1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[11]~54_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(11));

-- Location: LCCOMB_X105_Y70_N24
\inst|inst1|count[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[12]~56_combout\ = (\inst|inst1|count\(12) & (\inst|inst1|count[11]~55\ $ (GND))) # (!\inst|inst1|count\(12) & (!\inst|inst1|count[11]~55\ & VCC))
-- \inst|inst1|count[12]~57\ = CARRY((\inst|inst1|count\(12) & !\inst|inst1|count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(12),
	datad => VCC,
	cin => \inst|inst1|count[11]~55\,
	combout => \inst|inst1|count[12]~56_combout\,
	cout => \inst|inst1|count[12]~57\);

-- Location: FF_X105_Y70_N25
\inst|inst1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[12]~56_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(12));

-- Location: LCCOMB_X105_Y70_N26
\inst|inst1|count[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[13]~58_combout\ = (\inst|inst1|count\(13) & (!\inst|inst1|count[12]~57\)) # (!\inst|inst1|count\(13) & ((\inst|inst1|count[12]~57\) # (GND)))
-- \inst|inst1|count[13]~59\ = CARRY((!\inst|inst1|count[12]~57\) # (!\inst|inst1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(13),
	datad => VCC,
	cin => \inst|inst1|count[12]~57\,
	combout => \inst|inst1|count[13]~58_combout\,
	cout => \inst|inst1|count[13]~59\);

-- Location: FF_X105_Y70_N27
\inst|inst1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[13]~58_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(13));

-- Location: LCCOMB_X105_Y70_N28
\inst|inst1|count[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[14]~60_combout\ = (\inst|inst1|count\(14) & (\inst|inst1|count[13]~59\ $ (GND))) # (!\inst|inst1|count\(14) & (!\inst|inst1|count[13]~59\ & VCC))
-- \inst|inst1|count[14]~61\ = CARRY((\inst|inst1|count\(14) & !\inst|inst1|count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(14),
	datad => VCC,
	cin => \inst|inst1|count[13]~59\,
	combout => \inst|inst1|count[14]~60_combout\,
	cout => \inst|inst1|count[14]~61\);

-- Location: FF_X105_Y70_N29
\inst|inst1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[14]~60_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(14));

-- Location: LCCOMB_X105_Y70_N30
\inst|inst1|count[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[15]~62_combout\ = (\inst|inst1|count\(15) & (!\inst|inst1|count[14]~61\)) # (!\inst|inst1|count\(15) & ((\inst|inst1|count[14]~61\) # (GND)))
-- \inst|inst1|count[15]~63\ = CARRY((!\inst|inst1|count[14]~61\) # (!\inst|inst1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(15),
	datad => VCC,
	cin => \inst|inst1|count[14]~61\,
	combout => \inst|inst1|count[15]~62_combout\,
	cout => \inst|inst1|count[15]~63\);

-- Location: FF_X105_Y70_N31
\inst|inst1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[15]~62_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(15));

-- Location: LCCOMB_X105_Y69_N0
\inst|inst1|count[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[16]~64_combout\ = (\inst|inst1|count\(16) & (\inst|inst1|count[15]~63\ $ (GND))) # (!\inst|inst1|count\(16) & (!\inst|inst1|count[15]~63\ & VCC))
-- \inst|inst1|count[16]~65\ = CARRY((\inst|inst1|count\(16) & !\inst|inst1|count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(16),
	datad => VCC,
	cin => \inst|inst1|count[15]~63\,
	combout => \inst|inst1|count[16]~64_combout\,
	cout => \inst|inst1|count[16]~65\);

-- Location: FF_X105_Y69_N1
\inst|inst1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[16]~64_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(16));

-- Location: LCCOMB_X105_Y69_N2
\inst|inst1|count[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[17]~66_combout\ = (\inst|inst1|count\(17) & (!\inst|inst1|count[16]~65\)) # (!\inst|inst1|count\(17) & ((\inst|inst1|count[16]~65\) # (GND)))
-- \inst|inst1|count[17]~67\ = CARRY((!\inst|inst1|count[16]~65\) # (!\inst|inst1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(17),
	datad => VCC,
	cin => \inst|inst1|count[16]~65\,
	combout => \inst|inst1|count[17]~66_combout\,
	cout => \inst|inst1|count[17]~67\);

-- Location: FF_X105_Y69_N3
\inst|inst1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[17]~66_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(17));

-- Location: LCCOMB_X105_Y69_N4
\inst|inst1|count[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[18]~68_combout\ = (\inst|inst1|count\(18) & (\inst|inst1|count[17]~67\ $ (GND))) # (!\inst|inst1|count\(18) & (!\inst|inst1|count[17]~67\ & VCC))
-- \inst|inst1|count[18]~69\ = CARRY((\inst|inst1|count\(18) & !\inst|inst1|count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(18),
	datad => VCC,
	cin => \inst|inst1|count[17]~67\,
	combout => \inst|inst1|count[18]~68_combout\,
	cout => \inst|inst1|count[18]~69\);

-- Location: FF_X105_Y69_N5
\inst|inst1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[18]~68_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(18));

-- Location: LCCOMB_X105_Y69_N6
\inst|inst1|count[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[19]~70_combout\ = (\inst|inst1|count\(19) & (!\inst|inst1|count[18]~69\)) # (!\inst|inst1|count\(19) & ((\inst|inst1|count[18]~69\) # (GND)))
-- \inst|inst1|count[19]~71\ = CARRY((!\inst|inst1|count[18]~69\) # (!\inst|inst1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(19),
	datad => VCC,
	cin => \inst|inst1|count[18]~69\,
	combout => \inst|inst1|count[19]~70_combout\,
	cout => \inst|inst1|count[19]~71\);

-- Location: FF_X105_Y69_N7
\inst|inst1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[19]~70_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(19));

-- Location: LCCOMB_X105_Y69_N8
\inst|inst1|count[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[20]~72_combout\ = (\inst|inst1|count\(20) & (\inst|inst1|count[19]~71\ $ (GND))) # (!\inst|inst1|count\(20) & (!\inst|inst1|count[19]~71\ & VCC))
-- \inst|inst1|count[20]~73\ = CARRY((\inst|inst1|count\(20) & !\inst|inst1|count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(20),
	datad => VCC,
	cin => \inst|inst1|count[19]~71\,
	combout => \inst|inst1|count[20]~72_combout\,
	cout => \inst|inst1|count[20]~73\);

-- Location: FF_X105_Y69_N9
\inst|inst1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[20]~72_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(20));

-- Location: LCCOMB_X105_Y69_N10
\inst|inst1|count[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[21]~74_combout\ = (\inst|inst1|count\(21) & (!\inst|inst1|count[20]~73\)) # (!\inst|inst1|count\(21) & ((\inst|inst1|count[20]~73\) # (GND)))
-- \inst|inst1|count[21]~75\ = CARRY((!\inst|inst1|count[20]~73\) # (!\inst|inst1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(21),
	datad => VCC,
	cin => \inst|inst1|count[20]~73\,
	combout => \inst|inst1|count[21]~74_combout\,
	cout => \inst|inst1|count[21]~75\);

-- Location: FF_X105_Y69_N11
\inst|inst1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[21]~74_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(21));

-- Location: LCCOMB_X105_Y69_N12
\inst|inst1|count[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[22]~76_combout\ = (\inst|inst1|count\(22) & (\inst|inst1|count[21]~75\ $ (GND))) # (!\inst|inst1|count\(22) & (!\inst|inst1|count[21]~75\ & VCC))
-- \inst|inst1|count[22]~77\ = CARRY((\inst|inst1|count\(22) & !\inst|inst1|count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(22),
	datad => VCC,
	cin => \inst|inst1|count[21]~75\,
	combout => \inst|inst1|count[22]~76_combout\,
	cout => \inst|inst1|count[22]~77\);

-- Location: FF_X105_Y69_N13
\inst|inst1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[22]~76_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(22));

-- Location: LCCOMB_X105_Y69_N14
\inst|inst1|count[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[23]~78_combout\ = (\inst|inst1|count\(23) & (!\inst|inst1|count[22]~77\)) # (!\inst|inst1|count\(23) & ((\inst|inst1|count[22]~77\) # (GND)))
-- \inst|inst1|count[23]~79\ = CARRY((!\inst|inst1|count[22]~77\) # (!\inst|inst1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(23),
	datad => VCC,
	cin => \inst|inst1|count[22]~77\,
	combout => \inst|inst1|count[23]~78_combout\,
	cout => \inst|inst1|count[23]~79\);

-- Location: FF_X105_Y69_N15
\inst|inst1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[23]~78_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(23));

-- Location: LCCOMB_X105_Y69_N16
\inst|inst1|count[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[24]~80_combout\ = (\inst|inst1|count\(24) & (\inst|inst1|count[23]~79\ $ (GND))) # (!\inst|inst1|count\(24) & (!\inst|inst1|count[23]~79\ & VCC))
-- \inst|inst1|count[24]~81\ = CARRY((\inst|inst1|count\(24) & !\inst|inst1|count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(24),
	datad => VCC,
	cin => \inst|inst1|count[23]~79\,
	combout => \inst|inst1|count[24]~80_combout\,
	cout => \inst|inst1|count[24]~81\);

-- Location: FF_X105_Y69_N17
\inst|inst1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[24]~80_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(24));

-- Location: LCCOMB_X105_Y69_N18
\inst|inst1|count[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[25]~82_combout\ = (\inst|inst1|count\(25) & (!\inst|inst1|count[24]~81\)) # (!\inst|inst1|count\(25) & ((\inst|inst1|count[24]~81\) # (GND)))
-- \inst|inst1|count[25]~83\ = CARRY((!\inst|inst1|count[24]~81\) # (!\inst|inst1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(25),
	datad => VCC,
	cin => \inst|inst1|count[24]~81\,
	combout => \inst|inst1|count[25]~82_combout\,
	cout => \inst|inst1|count[25]~83\);

-- Location: FF_X105_Y69_N19
\inst|inst1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[25]~82_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(25));

-- Location: LCCOMB_X105_Y69_N20
\inst|inst1|count[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[26]~84_combout\ = (\inst|inst1|count\(26) & (\inst|inst1|count[25]~83\ $ (GND))) # (!\inst|inst1|count\(26) & (!\inst|inst1|count[25]~83\ & VCC))
-- \inst|inst1|count[26]~85\ = CARRY((\inst|inst1|count\(26) & !\inst|inst1|count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(26),
	datad => VCC,
	cin => \inst|inst1|count[25]~83\,
	combout => \inst|inst1|count[26]~84_combout\,
	cout => \inst|inst1|count[26]~85\);

-- Location: FF_X105_Y69_N21
\inst|inst1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[26]~84_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(26));

-- Location: LCCOMB_X105_Y69_N22
\inst|inst1|count[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[27]~86_combout\ = (\inst|inst1|count\(27) & (!\inst|inst1|count[26]~85\)) # (!\inst|inst1|count\(27) & ((\inst|inst1|count[26]~85\) # (GND)))
-- \inst|inst1|count[27]~87\ = CARRY((!\inst|inst1|count[26]~85\) # (!\inst|inst1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(27),
	datad => VCC,
	cin => \inst|inst1|count[26]~85\,
	combout => \inst|inst1|count[27]~86_combout\,
	cout => \inst|inst1|count[27]~87\);

-- Location: FF_X105_Y69_N23
\inst|inst1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[27]~86_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(27));

-- Location: LCCOMB_X105_Y69_N24
\inst|inst1|count[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[28]~88_combout\ = (\inst|inst1|count\(28) & (\inst|inst1|count[27]~87\ $ (GND))) # (!\inst|inst1|count\(28) & (!\inst|inst1|count[27]~87\ & VCC))
-- \inst|inst1|count[28]~89\ = CARRY((\inst|inst1|count\(28) & !\inst|inst1|count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(28),
	datad => VCC,
	cin => \inst|inst1|count[27]~87\,
	combout => \inst|inst1|count[28]~88_combout\,
	cout => \inst|inst1|count[28]~89\);

-- Location: FF_X105_Y69_N25
\inst|inst1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[28]~88_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(28));

-- Location: LCCOMB_X105_Y69_N26
\inst|inst1|count[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[29]~90_combout\ = (\inst|inst1|count\(29) & (!\inst|inst1|count[28]~89\)) # (!\inst|inst1|count\(29) & ((\inst|inst1|count[28]~89\) # (GND)))
-- \inst|inst1|count[29]~91\ = CARRY((!\inst|inst1|count[28]~89\) # (!\inst|inst1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(29),
	datad => VCC,
	cin => \inst|inst1|count[28]~89\,
	combout => \inst|inst1|count[29]~90_combout\,
	cout => \inst|inst1|count[29]~91\);

-- Location: FF_X105_Y69_N27
\inst|inst1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[29]~90_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(29));

-- Location: LCCOMB_X105_Y69_N28
\inst|inst1|count[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[30]~92_combout\ = (\inst|inst1|count\(30) & (\inst|inst1|count[29]~91\ $ (GND))) # (!\inst|inst1|count\(30) & (!\inst|inst1|count[29]~91\ & VCC))
-- \inst|inst1|count[30]~93\ = CARRY((\inst|inst1|count\(30) & !\inst|inst1|count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|count\(30),
	datad => VCC,
	cin => \inst|inst1|count[29]~91\,
	combout => \inst|inst1|count[30]~92_combout\,
	cout => \inst|inst1|count[30]~93\);

-- Location: FF_X105_Y69_N29
\inst|inst1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[30]~92_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(30));

-- Location: LCCOMB_X105_Y69_N30
\inst|inst1|count[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|count[31]~94_combout\ = \inst|inst1|count\(31) $ (\inst|inst1|count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(31),
	cin => \inst|inst1|count[30]~93\,
	combout => \inst|inst1|count[31]~94_combout\);

-- Location: FF_X105_Y69_N31
\inst|inst1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|count[31]~94_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|count\(31));

-- Location: LCCOMB_X106_Y69_N4
\inst|inst1|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|state~0_combout\ = (!\inst|inst1|count\(31) & ((\inst|inst1|count\(28)) # ((\inst|inst1|count\(26) & \inst|inst1|count\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(31),
	datab => \inst|inst1|count\(26),
	datac => \inst|inst1|count\(28),
	datad => \inst|inst1|count\(27),
	combout => \inst|inst1|state~0_combout\);

-- Location: LCCOMB_X106_Y69_N18
\inst|inst1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|LessThan0~7_combout\ = (\inst|inst1|count\(21) & (\inst|inst1|count\(27) & (\inst|inst1|count\(22) & !\inst|inst1|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(21),
	datab => \inst|inst1|count\(27),
	datac => \inst|inst1|count\(22),
	datad => \inst|inst1|count\(31),
	combout => \inst|inst1|LessThan0~7_combout\);

-- Location: LCCOMB_X106_Y69_N0
\inst|inst1|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|LessThan0~8_combout\ = (\inst|inst1|count\(23) & (\inst|inst1|count\(25) & (\inst|inst1|count\(24) & \inst|inst1|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(23),
	datab => \inst|inst1|count\(25),
	datac => \inst|inst1|count\(24),
	datad => \inst|inst1|LessThan0~7_combout\,
	combout => \inst|inst1|LessThan0~8_combout\);

-- Location: LCCOMB_X106_Y70_N30
\inst|inst1|state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|state~1_combout\ = (\inst|inst1|state~q\) # ((!\inst|inst1|count\(31) & ((\inst|inst1|count\(29)) # (\inst|inst1|count\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(29),
	datab => \inst|inst1|state~q\,
	datac => \inst|inst1|count\(31),
	datad => \inst|inst1|count\(30),
	combout => \inst|inst1|state~1_combout\);

-- Location: LCCOMB_X106_Y70_N24
\inst|inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|LessThan0~0_combout\ = (\inst|inst1|count\(15) & (\inst|inst1|count\(16) & (\inst|inst1|count\(17) & \inst|inst1|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(15),
	datab => \inst|inst1|count\(16),
	datac => \inst|inst1|count\(17),
	datad => \inst|inst1|count\(14),
	combout => \inst|inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X106_Y70_N8
\inst|inst1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|LessThan0~4_combout\ = (\inst|inst1|count\(12)) # ((\inst|inst1|count\(11)) # ((\inst|inst1|count\(13)) # (\inst|inst1|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(12),
	datab => \inst|inst1|count\(11),
	datac => \inst|inst1|count\(13),
	datad => \inst|inst1|count\(10),
	combout => \inst|inst1|LessThan0~4_combout\);

-- Location: LCCOMB_X106_Y70_N28
\inst|inst1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|LessThan0~2_combout\ = (\inst|inst1|count\(7)) # ((\inst|inst1|count\(5)) # ((\inst|inst1|count\(4)) # (\inst|inst1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(7),
	datab => \inst|inst1|count\(5),
	datac => \inst|inst1|count\(4),
	datad => \inst|inst1|count\(6),
	combout => \inst|inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X106_Y70_N18
\inst|inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|LessThan0~1_combout\ = (\inst|inst1|count\(0)) # ((\inst|inst1|count\(2)) # ((\inst|inst1|count\(3)) # (\inst|inst1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(0),
	datab => \inst|inst1|count\(2),
	datac => \inst|inst1|count\(3),
	datad => \inst|inst1|count\(1),
	combout => \inst|inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X106_Y70_N10
\inst|inst1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|LessThan0~3_combout\ = (\inst|inst1|count\(9) & ((\inst|inst1|count\(8)) # ((\inst|inst1|LessThan0~2_combout\) # (\inst|inst1|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(8),
	datab => \inst|inst1|LessThan0~2_combout\,
	datac => \inst|inst1|count\(9),
	datad => \inst|inst1|LessThan0~1_combout\,
	combout => \inst|inst1|LessThan0~3_combout\);

-- Location: LCCOMB_X106_Y70_N2
\inst|inst1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|LessThan0~5_combout\ = (\inst|inst1|LessThan0~0_combout\ & ((\inst|inst1|LessThan0~4_combout\) # (\inst|inst1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1|LessThan0~0_combout\,
	datac => \inst|inst1|LessThan0~4_combout\,
	datad => \inst|inst1|LessThan0~3_combout\,
	combout => \inst|inst1|LessThan0~5_combout\);

-- Location: LCCOMB_X106_Y70_N12
\inst|inst1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|LessThan0~6_combout\ = (\inst|inst1|count\(20)) # ((\inst|inst1|count\(19) & ((\inst|inst1|count\(18)) # (\inst|inst1|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|count\(18),
	datab => \inst|inst1|count\(19),
	datac => \inst|inst1|count\(20),
	datad => \inst|inst1|LessThan0~5_combout\,
	combout => \inst|inst1|LessThan0~6_combout\);

-- Location: LCCOMB_X106_Y70_N4
\inst|inst1|state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|state~2_combout\ = (\inst|inst1|state~0_combout\) # ((\inst|inst1|state~1_combout\) # ((\inst|inst1|LessThan0~8_combout\ & \inst|inst1|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|state~0_combout\,
	datab => \inst|inst1|LessThan0~8_combout\,
	datac => \inst|inst1|state~1_combout\,
	datad => \inst|inst1|LessThan0~6_combout\,
	combout => \inst|inst1|state~2_combout\);

-- Location: FF_X106_Y70_N5
\inst|inst1|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst1|state~2_combout\,
	sclr => \inst|inst|rx_ready~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1|state~q\);

-- Location: LCCOMB_X101_Y66_N2
\inst|inst|rx_data_tmp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data_tmp[7]~feeder_combout\ = \Rx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Rx~input_o\,
	combout => \inst|inst|rx_data_tmp[7]~feeder_combout\);

-- Location: LCCOMB_X101_Y65_N30
\inst|inst|rx_data_tmp[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data_tmp[5]~1_combout\ = (\inst|inst|rx_fsm.data~q\ & \inst|inst|rx_clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|rx_fsm.data~q\,
	datad => \inst|inst|rx_clk_en~q\,
	combout => \inst|inst|rx_data_tmp[5]~1_combout\);

-- Location: LCCOMB_X101_Y66_N16
\inst|inst|rx_data_tmp[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data_tmp[5]~2_combout\ = (!\inst|inst|Equal7~0_combout\ & (\inst|inst|rx_clk_cnt\(3) & (\inst|inst|Equal5~0_combout\ & \inst|inst|rx_data_tmp[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|Equal7~0_combout\,
	datab => \inst|inst|rx_clk_cnt\(3),
	datac => \inst|inst|Equal5~0_combout\,
	datad => \inst|inst|rx_data_tmp[5]~1_combout\,
	combout => \inst|inst|rx_data_tmp[5]~2_combout\);

-- Location: FF_X101_Y66_N3
\inst|inst|rx_data_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_data_tmp[7]~feeder_combout\,
	ena => \inst|inst|rx_data_tmp[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data_tmp\(7));

-- Location: LCCOMB_X101_Y66_N22
\inst|inst|rx_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data[6]~feeder_combout\ = \inst|inst|rx_data_tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_data_tmp\(7),
	combout => \inst|inst|rx_data[6]~feeder_combout\);

-- Location: FF_X101_Y66_N23
\inst|inst|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_data[6]~feeder_combout\,
	ena => \inst|inst|rx_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data\(6));

-- Location: LCCOMB_X102_Y66_N18
\inst|inst3|state.Safe_Mode~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|state.Safe_Mode~feeder_combout\ = \inst|inst1|state~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst1|state~q\,
	combout => \inst|inst3|state.Safe_Mode~feeder_combout\);

-- Location: FF_X102_Y66_N19
\inst|inst3|state.Safe_Mode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|state.Safe_Mode~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|state.Safe_Mode~q\);

-- Location: LCCOMB_X102_Y66_N10
\inst|inst3|Selector9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector9~6_combout\ = (\inst|inst3|state.Start2Write~q\) # (\inst|inst3|state.End2Write~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|state.Start2Write~q\,
	datad => \inst|inst3|state.End2Write~q\,
	combout => \inst|inst3|Selector9~6_combout\);

-- Location: LCCOMB_X102_Y66_N4
\inst|inst3|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector9~3_combout\ = (\inst|inst3|Selector9~6_combout\) # ((\inst|inst3|state.Wait4Data~q\) # ((\inst|inst3|state.Safe_Mode~q\) # (\inst|inst3|state.Wait4Start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Selector9~6_combout\,
	datab => \inst|inst3|state.Wait4Data~q\,
	datac => \inst|inst3|state.Safe_Mode~q\,
	datad => \inst|inst3|state.Wait4Start~q\,
	combout => \inst|inst3|Selector9~3_combout\);

-- Location: LCCOMB_X101_Y66_N0
\inst|inst|rx_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data[7]~feeder_combout\ = \Rx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Rx~input_o\,
	combout => \inst|inst|rx_data[7]~feeder_combout\);

-- Location: FF_X101_Y66_N1
\inst|inst|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_data[7]~feeder_combout\,
	ena => \inst|inst|rx_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data\(7));

-- Location: LCCOMB_X101_Y66_N20
\inst|inst|rx_data_tmp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data_tmp[6]~feeder_combout\ = \inst|inst|rx_data_tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_data_tmp\(7),
	combout => \inst|inst|rx_data_tmp[6]~feeder_combout\);

-- Location: FF_X101_Y66_N21
\inst|inst|rx_data_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_data_tmp[6]~feeder_combout\,
	ena => \inst|inst|rx_data_tmp[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data_tmp\(6));

-- Location: LCCOMB_X101_Y66_N6
\inst|inst|rx_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data[5]~feeder_combout\ = \inst|inst|rx_data_tmp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_data_tmp\(6),
	combout => \inst|inst|rx_data[5]~feeder_combout\);

-- Location: FF_X101_Y66_N7
\inst|inst|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_data[5]~feeder_combout\,
	ena => \inst|inst|rx_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data\(5));

-- Location: LCCOMB_X102_Y66_N26
\inst|inst3|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector8~0_combout\ = (\inst|inst|rx_data\(7) & (!\inst|inst|rx_data\(6) & (\inst|inst|rx_data\(5) & \inst|inst3|state.Start2Write~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_data\(7),
	datab => \inst|inst|rx_data\(6),
	datac => \inst|inst|rx_data\(5),
	datad => \inst|inst3|state.Start2Write~q\,
	combout => \inst|inst3|Selector8~0_combout\);

-- Location: LCCOMB_X102_Y66_N12
\inst|inst3|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector8~1_combout\ = (\inst|inst3|Selector8~0_combout\) # ((\inst|inst3|state.Safe_Mode~q\) # ((!\inst|inst3|state.Idle~q\ & !\inst|inst|rx_ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Selector8~0_combout\,
	datab => \inst|inst3|state.Safe_Mode~q\,
	datac => \inst|inst3|state.Idle~q\,
	datad => \inst|inst|rx_ready~q\,
	combout => \inst|inst3|Selector8~1_combout\);

-- Location: LCCOMB_X101_Y66_N28
\inst|inst|rx_data_tmp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data_tmp[5]~feeder_combout\ = \inst|inst|rx_data_tmp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_data_tmp\(6),
	combout => \inst|inst|rx_data_tmp[5]~feeder_combout\);

-- Location: FF_X101_Y66_N29
\inst|inst|rx_data_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_data_tmp[5]~feeder_combout\,
	ena => \inst|inst|rx_data_tmp[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data_tmp\(5));

-- Location: LCCOMB_X101_Y66_N26
\inst|inst|rx_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data[4]~feeder_combout\ = \inst|inst|rx_data_tmp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_data_tmp\(5),
	combout => \inst|inst|rx_data[4]~feeder_combout\);

-- Location: FF_X101_Y66_N27
\inst|inst|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_data[4]~feeder_combout\,
	ena => \inst|inst|rx_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data\(4));

-- Location: LCCOMB_X102_Y66_N8
\inst|inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Equal0~0_combout\ = (\inst|inst|rx_data\(4)) # (((\inst|inst|rx_data\(6)) # (!\inst|inst|rx_data\(7))) # (!\inst|inst|rx_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_data\(4),
	datab => \inst|inst|rx_data\(5),
	datac => \inst|inst|rx_data\(7),
	datad => \inst|inst|rx_data\(6),
	combout => \inst|inst3|Equal0~0_combout\);

-- Location: LCCOMB_X102_Y66_N14
\inst|inst3|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector8~2_combout\ = (\inst|inst1|state~q\) # ((!\inst|inst3|Selector8~1_combout\ & ((!\inst|inst3|Equal0~0_combout\) # (!\inst|inst3|state.Wait4Start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Selector8~1_combout\,
	datab => \inst|inst3|state.Wait4Start~q\,
	datac => \inst|inst3|Equal0~0_combout\,
	datad => \inst|inst1|state~q\,
	combout => \inst|inst3|Selector8~2_combout\);

-- Location: FF_X102_Y66_N15
\inst|inst3|state.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Selector8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|state.Idle~q\);

-- Location: LCCOMB_X102_Y66_N16
\inst|inst3|Selector9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector9~16_combout\ = (\inst|inst|rx_ready~q\ & (!\inst|inst3|Selector9~3_combout\ & (!\inst|inst3|state.Idle~q\ & !\inst|inst1|state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_ready~q\,
	datab => \inst|inst3|Selector9~3_combout\,
	datac => \inst|inst3|state.Idle~q\,
	datad => \inst|inst1|state~q\,
	combout => \inst|inst3|Selector9~16_combout\);

-- Location: FF_X102_Y66_N17
\inst|inst3|state.Wait4Start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Selector9~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|state.Wait4Start~q\);

-- Location: LCCOMB_X102_Y66_N30
\inst|inst3|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector10~0_combout\ = (\inst|inst3|state.End2Write~q\) # ((\inst|inst3|state.Start2Write~q\ & (\inst|inst|rx_data\(7) & \inst|inst|rx_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.End2Write~q\,
	datab => \inst|inst3|state.Start2Write~q\,
	datac => \inst|inst|rx_data\(7),
	datad => \inst|inst|rx_data\(6),
	combout => \inst|inst3|Selector10~0_combout\);

-- Location: LCCOMB_X102_Y66_N28
\inst|inst3|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector10~1_combout\ = (\inst|inst3|Selector10~0_combout\) # ((\inst|inst3|state.Wait4Data~q\ & !\inst|inst|rx_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Selector10~0_combout\,
	datab => \inst|inst3|state.Wait4Data~q\,
	datad => \inst|inst|rx_ready~q\,
	combout => \inst|inst3|Selector10~1_combout\);

-- Location: LCCOMB_X102_Y66_N0
\inst|inst3|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector10~2_combout\ = (!\inst|inst1|state~q\ & ((\inst|inst3|Selector10~1_combout\) # ((\inst|inst3|state.Wait4Start~q\ & !\inst|inst3|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|state~q\,
	datab => \inst|inst3|state.Wait4Start~q\,
	datac => \inst|inst3|Equal0~0_combout\,
	datad => \inst|inst3|Selector10~1_combout\,
	combout => \inst|inst3|Selector10~2_combout\);

-- Location: FF_X102_Y66_N1
\inst|inst3|state.Wait4Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Selector10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|state.Wait4Data~q\);

-- Location: LCCOMB_X102_Y66_N24
\inst|inst3|Selector11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector11~8_combout\ = (!\inst|inst1|state~q\ & (!\inst|inst3|state.Safe_Mode~q\ & (\inst|inst|rx_ready~q\ & \inst|inst3|state.Wait4Data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|state~q\,
	datab => \inst|inst3|state.Safe_Mode~q\,
	datac => \inst|inst|rx_ready~q\,
	datad => \inst|inst3|state.Wait4Data~q\,
	combout => \inst|inst3|Selector11~8_combout\);

-- Location: FF_X102_Y66_N25
\inst|inst3|state.Start2Write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Selector11~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|state.Start2Write~q\);

-- Location: LCCOMB_X103_Y66_N4
\inst|inst3|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector12~0_combout\ = (\inst|inst3|state.Start2Write~q\ & (((!\inst|inst|rx_data\(6) & !\inst|inst|rx_data\(5))) # (!\inst|inst|rx_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|rx_data\(6),
	datab => \inst|inst3|state.Start2Write~q\,
	datac => \inst|inst|rx_data\(7),
	datad => \inst|inst|rx_data\(5),
	combout => \inst|inst3|Selector12~0_combout\);

-- Location: LCCOMB_X102_Y66_N6
\inst|inst3|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector12~1_combout\ = (\inst|inst3|Selector12~0_combout\ & !\inst|inst1|state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|Selector12~0_combout\,
	datad => \inst|inst1|state~q\,
	combout => \inst|inst3|Selector12~1_combout\);

-- Location: FF_X102_Y66_N7
\inst|inst3|state.End2Write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|state.End2Write~q\);

-- Location: LCCOMB_X102_Y66_N22
\inst|inst3|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector14~0_combout\ = (\inst|inst3|Selector12~0_combout\) # ((\inst|inst3|WE~q\ & ((\inst|inst3|state.Start2Write~q\) # (!\inst|inst3|state.End2Write~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.End2Write~q\,
	datab => \inst|inst3|state.Start2Write~q\,
	datac => \inst|inst3|WE~q\,
	datad => \inst|inst3|Selector12~0_combout\,
	combout => \inst|inst3|Selector14~0_combout\);

-- Location: FF_X102_Y66_N23
\inst|inst3|WE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|WE~q\);

-- Location: LCCOMB_X101_Y66_N8
\inst|inst|rx_data_tmp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data_tmp[4]~feeder_combout\ = \inst|inst|rx_data_tmp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_data_tmp\(5),
	combout => \inst|inst|rx_data_tmp[4]~feeder_combout\);

-- Location: FF_X101_Y66_N9
\inst|inst|rx_data_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_data_tmp[4]~feeder_combout\,
	ena => \inst|inst|rx_data_tmp[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data_tmp\(4));

-- Location: LCCOMB_X101_Y66_N12
\inst|inst|rx_data_tmp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data_tmp[3]~feeder_combout\ = \inst|inst|rx_data_tmp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|rx_data_tmp\(4),
	combout => \inst|inst|rx_data_tmp[3]~feeder_combout\);

-- Location: FF_X101_Y66_N13
\inst|inst|rx_data_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_data_tmp[3]~feeder_combout\,
	ena => \inst|inst|rx_data_tmp[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data_tmp\(3));

-- Location: LCCOMB_X101_Y66_N10
\inst|inst|rx_data_tmp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data_tmp[2]~feeder_combout\ = \inst|inst|rx_data_tmp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_data_tmp\(3),
	combout => \inst|inst|rx_data_tmp[2]~feeder_combout\);

-- Location: FF_X101_Y66_N11
\inst|inst|rx_data_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_data_tmp[2]~feeder_combout\,
	ena => \inst|inst|rx_data_tmp[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data_tmp\(2));

-- Location: LCCOMB_X101_Y66_N18
\inst|inst|rx_data_tmp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data_tmp[1]~feeder_combout\ = \inst|inst|rx_data_tmp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_data_tmp\(2),
	combout => \inst|inst|rx_data_tmp[1]~feeder_combout\);

-- Location: FF_X101_Y66_N19
\inst|inst|rx_data_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_data_tmp[1]~feeder_combout\,
	ena => \inst|inst|rx_data_tmp[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data_tmp\(1));

-- Location: LCCOMB_X101_Y66_N24
\inst|inst|rx_data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data[0]~feeder_combout\ = \inst|inst|rx_data_tmp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_data_tmp\(1),
	combout => \inst|inst|rx_data[0]~feeder_combout\);

-- Location: FF_X101_Y66_N25
\inst|inst|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_data[0]~feeder_combout\,
	ena => \inst|inst|rx_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data\(0));

-- Location: LCCOMB_X103_Y66_N10
\inst|inst3|Data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Data[0]~feeder_combout\ = \inst|inst|rx_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|rx_data\(0),
	combout => \inst|inst3|Data[0]~feeder_combout\);

-- Location: FF_X103_Y66_N11
\inst|inst3|Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Data[0]~feeder_combout\,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Data\(0));

-- Location: IOIBUF_X115_Y4_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X105_Y66_N16
\inst|inst3|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector3~0_combout\ = (\inst|inst3|state.End2Write~q\ & (!\inst|inst3|count\(0))) # (!\inst|inst3|state.End2Write~q\ & (\inst|inst3|count\(0) & \inst|inst3|state.Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst3|state.End2Write~q\,
	datac => \inst|inst3|count\(0),
	datad => \inst|inst3|state.Idle~q\,
	combout => \inst|inst3|Selector3~0_combout\);

-- Location: FF_X105_Y66_N17
\inst|inst3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|count\(0));

-- Location: FF_X105_Y66_N5
\inst|inst3|Add[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|inst3|count\(0),
	sload => VCC,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Add\(0));

-- Location: IOIBUF_X115_Y17_N1
\Sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel,
	o => \Sel~input_o\);

-- Location: LCCOMB_X105_Y66_N4
\inst2|$00000|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[0]~0_combout\ = (\Sel~input_o\ & (\A[0]~input_o\)) # (!\Sel~input_o\ & ((\inst|inst3|Add\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \inst|inst3|Add\(0),
	datad => \Sel~input_o\,
	combout => \inst2|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: IOIBUF_X115_Y5_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X105_Y66_N26
\inst|inst3|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector2~0_combout\ = (\inst|inst3|state.End2Write~q\ & ((\inst|inst3|count\(1) $ (\inst|inst3|count\(0))))) # (!\inst|inst3|state.End2Write~q\ & (\inst|inst3|state.Idle~q\ & (\inst|inst3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.Idle~q\,
	datab => \inst|inst3|state.End2Write~q\,
	datac => \inst|inst3|count\(1),
	datad => \inst|inst3|count\(0),
	combout => \inst|inst3|Selector2~0_combout\);

-- Location: FF_X105_Y66_N27
\inst|inst3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|count\(1));

-- Location: FF_X105_Y66_N15
\inst|inst3|Add[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|inst3|count\(1),
	sload => VCC,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Add\(1));

-- Location: LCCOMB_X105_Y66_N14
\inst2|$00000|auto_generated|result_node[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[1]~1_combout\ = (\Sel~input_o\ & (\A[1]~input_o\)) # (!\Sel~input_o\ & ((\inst|inst3|Add\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datac => \inst|inst3|Add\(1),
	datad => \Sel~input_o\,
	combout => \inst2|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: IOIBUF_X115_Y7_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X105_Y66_N28
\inst|inst3|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector1~0_combout\ = (\inst|inst3|state.End2Write~q\ & (\inst|inst3|count\(2) $ (((\inst|inst3|count\(1) & \inst|inst3|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|count\(1),
	datab => \inst|inst3|count\(0),
	datac => \inst|inst3|state.End2Write~q\,
	datad => \inst|inst3|count\(2),
	combout => \inst|inst3|Selector1~0_combout\);

-- Location: LCCOMB_X105_Y66_N24
\inst|inst3|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector1~1_combout\ = (\inst|inst3|Selector1~0_combout\) # ((\inst|inst3|state.Idle~q\ & (!\inst|inst3|state.End2Write~q\ & \inst|inst3|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.Idle~q\,
	datab => \inst|inst3|state.End2Write~q\,
	datac => \inst|inst3|count\(2),
	datad => \inst|inst3|Selector1~0_combout\,
	combout => \inst|inst3|Selector1~1_combout\);

-- Location: FF_X105_Y66_N25
\inst|inst3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|count\(2));

-- Location: FF_X105_Y66_N9
\inst|inst3|Add[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|inst3|count\(2),
	sload => VCC,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Add\(2));

-- Location: LCCOMB_X105_Y66_N8
\inst2|$00000|auto_generated|result_node[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[2]~2_combout\ = (\Sel~input_o\ & (\A[2]~input_o\)) # (!\Sel~input_o\ & ((\inst|inst3|Add\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \inst|inst3|Add\(2),
	datad => \Sel~input_o\,
	combout => \inst2|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: IOIBUF_X115_Y9_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X105_Y66_N18
\inst|inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Add0~0_combout\ = \inst|inst3|count\(3) $ (((\inst|inst3|count\(2) & (\inst|inst3|count\(1) & \inst|inst3|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|count\(3),
	datab => \inst|inst3|count\(2),
	datac => \inst|inst3|count\(1),
	datad => \inst|inst3|count\(0),
	combout => \inst|inst3|Add0~0_combout\);

-- Location: LCCOMB_X105_Y66_N22
\inst|inst3|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector0~0_combout\ = (\inst|inst3|state.End2Write~q\ & (((\inst|inst3|Add0~0_combout\)))) # (!\inst|inst3|state.End2Write~q\ & (\inst|inst3|state.Idle~q\ & (\inst|inst3|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.Idle~q\,
	datab => \inst|inst3|state.End2Write~q\,
	datac => \inst|inst3|count\(3),
	datad => \inst|inst3|Add0~0_combout\,
	combout => \inst|inst3|Selector0~0_combout\);

-- Location: FF_X105_Y66_N23
\inst|inst3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|count\(3));

-- Location: FF_X105_Y66_N31
\inst|inst3|Add[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|inst3|count\(3),
	sload => VCC,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Add\(3));

-- Location: LCCOMB_X105_Y66_N30
\inst2|$00000|auto_generated|result_node[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[3]~3_combout\ = (\Sel~input_o\ & (\A[3]~input_o\)) # (!\Sel~input_o\ & ((\inst|inst3|Add\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \inst|inst3|Add\(3),
	datad => \Sel~input_o\,
	combout => \inst2|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: IOIBUF_X115_Y10_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X103_Y66_N8
\inst|inst3|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector7~0_combout\ = (\inst|inst3|state.Wait4Start~q\ & \inst|inst|rx_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.Wait4Start~q\,
	datac => \inst|inst|rx_data\(0),
	combout => \inst|inst3|Selector7~0_combout\);

-- Location: LCCOMB_X103_Y66_N28
\inst|inst3|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector7~1_combout\ = (\inst|inst3|state.Wait4Start~q\ & ((!\inst|inst3|Equal0~0_combout\))) # (!\inst|inst3|state.Wait4Start~q\ & (!\inst|inst3|state.Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.Wait4Start~q\,
	datab => \inst|inst3|state.Idle~q\,
	datad => \inst|inst3|Equal0~0_combout\,
	combout => \inst|inst3|Selector7~1_combout\);

-- Location: FF_X103_Y66_N9
\inst|inst3|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Selector7~0_combout\,
	ena => \inst|inst3|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|addr\(0));

-- Location: FF_X103_Y66_N17
\inst|inst3|Add[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|inst3|addr\(0),
	sload => VCC,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Add\(4));

-- Location: LCCOMB_X103_Y66_N16
\inst2|$00000|auto_generated|result_node[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[4]~4_combout\ = (\Sel~input_o\ & (\A[4]~input_o\)) # (!\Sel~input_o\ & ((\inst|inst3|Add\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \inst|inst3|Add\(4),
	datad => \Sel~input_o\,
	combout => \inst2|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: IOIBUF_X115_Y6_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X101_Y66_N30
\inst|inst|rx_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data[1]~feeder_combout\ = \inst|inst|rx_data_tmp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_data_tmp\(2),
	combout => \inst|inst|rx_data[1]~feeder_combout\);

-- Location: FF_X101_Y66_N31
\inst|inst|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_data[1]~feeder_combout\,
	ena => \inst|inst|rx_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data\(1));

-- Location: LCCOMB_X103_Y66_N30
\inst|inst3|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector6~0_combout\ = (\inst|inst3|state.Wait4Start~q\ & \inst|inst|rx_data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.Wait4Start~q\,
	datac => \inst|inst|rx_data\(1),
	combout => \inst|inst3|Selector6~0_combout\);

-- Location: FF_X103_Y66_N31
\inst|inst3|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Selector6~0_combout\,
	ena => \inst|inst3|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|addr\(1));

-- Location: FF_X103_Y66_N1
\inst|inst3|Add[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|inst3|addr\(1),
	sload => VCC,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Add\(5));

-- Location: LCCOMB_X103_Y66_N0
\inst2|$00000|auto_generated|result_node[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[5]~5_combout\ = (\Sel~input_o\ & (\A[5]~input_o\)) # (!\Sel~input_o\ & ((\inst|inst3|Add\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \inst|inst3|Add\(5),
	datad => \Sel~input_o\,
	combout => \inst2|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: IOIBUF_X115_Y13_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X101_Y66_N4
\inst|inst|rx_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|rx_data[2]~feeder_combout\ = \inst|inst|rx_data_tmp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_data_tmp\(3),
	combout => \inst|inst|rx_data[2]~feeder_combout\);

-- Location: FF_X101_Y66_N5
\inst|inst|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst|rx_data[2]~feeder_combout\,
	ena => \inst|inst|rx_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data\(2));

-- Location: LCCOMB_X103_Y66_N22
\inst|inst3|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector5~0_combout\ = (\inst|inst3|state.Wait4Start~q\ & \inst|inst|rx_data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.Wait4Start~q\,
	datac => \inst|inst|rx_data\(2),
	combout => \inst|inst3|Selector5~0_combout\);

-- Location: FF_X103_Y66_N23
\inst|inst3|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Selector5~0_combout\,
	ena => \inst|inst3|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|addr\(2));

-- Location: FF_X103_Y66_N15
\inst|inst3|Add[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|inst3|addr\(2),
	sload => VCC,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Add\(6));

-- Location: LCCOMB_X103_Y66_N14
\inst2|$00000|auto_generated|result_node[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[6]~6_combout\ = (\Sel~input_o\ & (\A[6]~input_o\)) # (!\Sel~input_o\ & ((\inst|inst3|Add\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \inst|inst3|Add\(6),
	datad => \Sel~input_o\,
	combout => \inst2|$00000|auto_generated|result_node[6]~6_combout\);

-- Location: IOIBUF_X115_Y14_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: FF_X101_Y66_N15
\inst|inst|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|inst|rx_data_tmp\(4),
	sload => VCC,
	ena => \inst|inst|rx_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst|rx_data\(3));

-- Location: LCCOMB_X103_Y66_N26
\inst|inst3|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Selector4~0_combout\ = (\inst|inst3|state.Wait4Start~q\ & \inst|inst|rx_data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|state.Wait4Start~q\,
	datac => \inst|inst|rx_data\(3),
	combout => \inst|inst3|Selector4~0_combout\);

-- Location: FF_X103_Y66_N27
\inst|inst3|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Selector4~0_combout\,
	ena => \inst|inst3|Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|addr\(3));

-- Location: FF_X103_Y66_N25
\inst|inst3|Add[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|inst3|addr\(3),
	sload => VCC,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Add\(7));

-- Location: LCCOMB_X103_Y66_N24
\inst2|$00000|auto_generated|result_node[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[7]~7_combout\ = (\Sel~input_o\ & (\A[7]~input_o\)) # (!\Sel~input_o\ & ((\inst|inst3|Add\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \inst|inst3|Add\(7),
	datad => \Sel~input_o\,
	combout => \inst2|$00000|auto_generated|result_node[7]~7_combout\);

-- Location: LCCOMB_X103_Y66_N6
\inst|inst3|Data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Data[1]~feeder_combout\ = \inst|inst|rx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|rx_data\(1),
	combout => \inst|inst3|Data[1]~feeder_combout\);

-- Location: FF_X103_Y66_N7
\inst|inst3|Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Data[1]~feeder_combout\,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Data\(1));

-- Location: LCCOMB_X103_Y66_N12
\inst|inst3|Data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Data[2]~feeder_combout\ = \inst|inst|rx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|rx_data\(2),
	combout => \inst|inst3|Data[2]~feeder_combout\);

-- Location: FF_X103_Y66_N13
\inst|inst3|Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Data[2]~feeder_combout\,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Data\(2));

-- Location: LCCOMB_X103_Y66_N2
\inst|inst3|Data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Data[3]~feeder_combout\ = \inst|inst|rx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst|rx_data\(3),
	combout => \inst|inst3|Data[3]~feeder_combout\);

-- Location: FF_X103_Y66_N3
\inst|inst3|Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Data[3]~feeder_combout\,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Data\(3));

-- Location: LCCOMB_X103_Y66_N18
\inst|inst3|Data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Data[4]~feeder_combout\ = \inst|inst|rx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_data\(4),
	combout => \inst|inst3|Data[4]~feeder_combout\);

-- Location: FF_X103_Y66_N19
\inst|inst3|Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Data[4]~feeder_combout\,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Data\(4));

-- Location: LCCOMB_X103_Y66_N20
\inst|inst3|Data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|Data[5]~feeder_combout\ = \inst|inst|rx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst|rx_data\(5),
	combout => \inst|inst3|Data[5]~feeder_combout\);

-- Location: FF_X103_Y66_N21
\inst|inst3|Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst|inst3|Data[5]~feeder_combout\,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Data\(5));

-- Location: FF_X103_Y66_N29
\inst|inst3|Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|inst|rx_data\(6),
	sload => VCC,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Data\(6));

-- Location: FF_X103_Y66_N5
\inst|inst3|Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst|inst|rx_data\(7),
	sload => VCC,
	ena => \inst|inst3|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3|Data\(7));

-- Location: M9K_X104_Y66_N0
\inst1|dataram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:inst1|altsyncram:dataram_rtl_0|altsyncram_ot61:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst|inst3|WE~q\,
	portare => VCC,
	clk0 => \Clock~inputclkctrl_outclk\,
	portadatain => \inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|dataram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

ww_Tx <= \Tx~output_o\;

ww_SM <= \SM~output_o\;

ww_O(7) <= \O[7]~output_o\;

ww_O(6) <= \O[6]~output_o\;

ww_O(5) <= \O[5]~output_o\;

ww_O(4) <= \O[4]~output_o\;

ww_O(3) <= \O[3]~output_o\;

ww_O(2) <= \O[2]~output_o\;

ww_O(1) <= \O[1]~output_o\;

ww_O(0) <= \O[0]~output_o\;
END structure;


