-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "12/05/2018 20:14:33"

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

ENTITY 	vga_with_hw_test_image IS
    PORT (
	pixel_clk : OUT std_logic;
	clk : IN std_logic;
	h_sync : OUT std_logic;
	v_sync : OUT std_logic;
	n_blank : OUT std_logic;
	n_sync : OUT std_logic;
	blue : OUT std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic;
	keypjump : IN std_logic;
	green : OUT std_logic_vector(7 DOWNTO 0);
	red : OUT std_logic_vector(7 DOWNTO 0)
	);
END vga_with_hw_test_image;

-- Design Ports Information
-- pixel_clk	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- h_sync	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- v_sync	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- n_blank	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- n_sync	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- blue[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[2]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- green[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[5]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- red[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- keypjump	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF vga_with_hw_test_image IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pixel_clk : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_h_sync : std_logic;
SIGNAL ww_v_sync : std_logic;
SIGNAL ww_n_blank : std_logic;
SIGNAL ww_n_sync : std_logic;
SIGNAL ww_blue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_keypjump : std_logic;
SIGNAL ww_green : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_red : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|h_count~6_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|h_count~5_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|h_count~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|h_count~8_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|h_count~7_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|h_count~2_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|h_count~3_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|h_count~11_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|h_count~10_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|h_count~9_combout\ : std_logic;
SIGNAL \inst1|Add0~21\ : std_logic;
SIGNAL \inst1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|h_count~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|h_count~1_combout\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|LessThan2~0_combout\ : std_logic;
SIGNAL \inst1|LessThan2~1_combout\ : std_logic;
SIGNAL \inst1|LessThan2~2_combout\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|process_0~3_combout\ : std_logic;
SIGNAL \inst1|h_sync~q\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|Add1~3_combout\ : std_logic;
SIGNAL \inst1|Add1~1\ : std_logic;
SIGNAL \inst1|Add1~5\ : std_logic;
SIGNAL \inst1|Add1~7_combout\ : std_logic;
SIGNAL \inst1|Add1~30_combout\ : std_logic;
SIGNAL \inst1|Add1~8\ : std_logic;
SIGNAL \inst1|Add1~9_combout\ : std_logic;
SIGNAL \inst1|Add1~31_combout\ : std_logic;
SIGNAL \inst1|Add1~10\ : std_logic;
SIGNAL \inst1|Add1~11_combout\ : std_logic;
SIGNAL \inst1|Add1~32_combout\ : std_logic;
SIGNAL \inst1|Add1~12\ : std_logic;
SIGNAL \inst1|Add1~13_combout\ : std_logic;
SIGNAL \inst1|Add1~33_combout\ : std_logic;
SIGNAL \inst1|Add1~14\ : std_logic;
SIGNAL \inst1|Add1~15_combout\ : std_logic;
SIGNAL \inst1|Add1~26_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|Add1~16\ : std_logic;
SIGNAL \inst1|Add1~17_combout\ : std_logic;
SIGNAL \inst1|Add1~27_combout\ : std_logic;
SIGNAL \inst1|Add1~18\ : std_logic;
SIGNAL \inst1|Add1~19_combout\ : std_logic;
SIGNAL \inst1|Add1~28_combout\ : std_logic;
SIGNAL \inst1|Add1~20\ : std_logic;
SIGNAL \inst1|Add1~21_combout\ : std_logic;
SIGNAL \inst1|Add1~29_combout\ : std_logic;
SIGNAL \inst1|LessThan1~2_combout\ : std_logic;
SIGNAL \inst1|Add1~22\ : std_logic;
SIGNAL \inst1|Add1~23_combout\ : std_logic;
SIGNAL \inst1|Add1~25_combout\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|Add1~4_combout\ : std_logic;
SIGNAL \inst1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|process_0~4_combout\ : std_logic;
SIGNAL \inst1|LessThan7~0_combout\ : std_logic;
SIGNAL \inst1|LessThan7~1_combout\ : std_logic;
SIGNAL \inst1|process_0~5_combout\ : std_logic;
SIGNAL \inst1|v_sync~q\ : std_logic;
SIGNAL \inst6|a_x1~4_combout\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst6|n_x2[0]~94_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \keypjump~input_o\ : std_logic;
SIGNAL \inst6|Add2~0_combout\ : std_logic;
SIGNAL \inst6|Add2~92_combout\ : std_logic;
SIGNAL \inst6|Add2~1\ : std_logic;
SIGNAL \inst6|Add2~2_combout\ : std_logic;
SIGNAL \inst6|Add2~91_combout\ : std_logic;
SIGNAL \inst6|Add2~3\ : std_logic;
SIGNAL \inst6|Add2~4_combout\ : std_logic;
SIGNAL \inst6|Add2~90_combout\ : std_logic;
SIGNAL \inst6|Add2~5\ : std_logic;
SIGNAL \inst6|Add2~6_combout\ : std_logic;
SIGNAL \inst6|Add2~89_combout\ : std_logic;
SIGNAL \inst6|Add2~7\ : std_logic;
SIGNAL \inst6|Add2~8_combout\ : std_logic;
SIGNAL \inst6|Add2~88_combout\ : std_logic;
SIGNAL \inst6|Add2~9\ : std_logic;
SIGNAL \inst6|Add2~10_combout\ : std_logic;
SIGNAL \inst6|Add2~87_combout\ : std_logic;
SIGNAL \inst6|Add2~11\ : std_logic;
SIGNAL \inst6|Add2~12_combout\ : std_logic;
SIGNAL \inst6|Add2~86_combout\ : std_logic;
SIGNAL \inst6|b_y2[7]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~13\ : std_logic;
SIGNAL \inst6|Add2~14_combout\ : std_logic;
SIGNAL \inst6|Add2~85_combout\ : std_logic;
SIGNAL \inst6|Add2~15\ : std_logic;
SIGNAL \inst6|Add2~16_combout\ : std_logic;
SIGNAL \inst6|Add2~84_combout\ : std_logic;
SIGNAL \inst6|LessThan1~0_combout\ : std_logic;
SIGNAL \inst6|LessThan1~1_combout\ : std_logic;
SIGNAL \inst6|LessThan1~2_combout\ : std_logic;
SIGNAL \inst6|Add2~17\ : std_logic;
SIGNAL \inst6|Add2~18_combout\ : std_logic;
SIGNAL \inst6|Add2~83_combout\ : std_logic;
SIGNAL \inst6|Add2~19\ : std_logic;
SIGNAL \inst6|Add2~21\ : std_logic;
SIGNAL \inst6|Add2~22_combout\ : std_logic;
SIGNAL \inst6|Add2~65_combout\ : std_logic;
SIGNAL \inst6|b_y2[12]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~23\ : std_logic;
SIGNAL \inst6|Add2~24_combout\ : std_logic;
SIGNAL \inst6|Add2~66_combout\ : std_logic;
SIGNAL \inst6|b_y2[13]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~25\ : std_logic;
SIGNAL \inst6|Add2~26_combout\ : std_logic;
SIGNAL \inst6|Add2~67_combout\ : std_logic;
SIGNAL \inst6|b_y2[14]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~27\ : std_logic;
SIGNAL \inst6|Add2~28_combout\ : std_logic;
SIGNAL \inst6|Add2~68_combout\ : std_logic;
SIGNAL \inst6|Add2~29\ : std_logic;
SIGNAL \inst6|Add2~30_combout\ : std_logic;
SIGNAL \inst6|Add2~69_combout\ : std_logic;
SIGNAL \inst6|b_y2[16]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~31\ : std_logic;
SIGNAL \inst6|Add2~32_combout\ : std_logic;
SIGNAL \inst6|Add2~70_combout\ : std_logic;
SIGNAL \inst6|b_y2[17]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~33\ : std_logic;
SIGNAL \inst6|Add2~34_combout\ : std_logic;
SIGNAL \inst6|Add2~71_combout\ : std_logic;
SIGNAL \inst6|b_y2[18]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~35\ : std_logic;
SIGNAL \inst6|Add2~36_combout\ : std_logic;
SIGNAL \inst6|Add2~72_combout\ : std_logic;
SIGNAL \inst6|b_y2[19]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~37\ : std_logic;
SIGNAL \inst6|Add2~38_combout\ : std_logic;
SIGNAL \inst6|Add2~73_combout\ : std_logic;
SIGNAL \inst6|b_y2[20]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~39\ : std_logic;
SIGNAL \inst6|Add2~40_combout\ : std_logic;
SIGNAL \inst6|Add2~74_combout\ : std_logic;
SIGNAL \inst6|b_y2[21]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~41\ : std_logic;
SIGNAL \inst6|Add2~42_combout\ : std_logic;
SIGNAL \inst6|Add2~75_combout\ : std_logic;
SIGNAL \inst6|b_y2[22]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~43\ : std_logic;
SIGNAL \inst6|Add2~44_combout\ : std_logic;
SIGNAL \inst6|Add2~76_combout\ : std_logic;
SIGNAL \inst6|b_y2[23]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~45\ : std_logic;
SIGNAL \inst6|Add2~46_combout\ : std_logic;
SIGNAL \inst6|Add2~77_combout\ : std_logic;
SIGNAL \inst6|b_y2[24]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~47\ : std_logic;
SIGNAL \inst6|Add2~48_combout\ : std_logic;
SIGNAL \inst6|Add2~78_combout\ : std_logic;
SIGNAL \inst6|b_y2[25]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~49\ : std_logic;
SIGNAL \inst6|Add2~50_combout\ : std_logic;
SIGNAL \inst6|Add2~79_combout\ : std_logic;
SIGNAL \inst6|b_y2[26]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add2~51\ : std_logic;
SIGNAL \inst6|Add2~52_combout\ : std_logic;
SIGNAL \inst6|Add2~54_combout\ : std_logic;
SIGNAL \inst6|Add2~53\ : std_logic;
SIGNAL \inst6|Add2~55_combout\ : std_logic;
SIGNAL \inst6|Add2~57_combout\ : std_logic;
SIGNAL \inst6|Add2~56\ : std_logic;
SIGNAL \inst6|Add2~58_combout\ : std_logic;
SIGNAL \inst6|Add2~60_combout\ : std_logic;
SIGNAL \inst6|Add2~59\ : std_logic;
SIGNAL \inst6|Add2~61_combout\ : std_logic;
SIGNAL \inst6|Add2~63_combout\ : std_logic;
SIGNAL \inst6|Add2~62\ : std_logic;
SIGNAL \inst6|Add2~80_combout\ : std_logic;
SIGNAL \inst6|Add2~82_combout\ : std_logic;
SIGNAL \inst6|Add2~20_combout\ : std_logic;
SIGNAL \inst6|Add2~64_combout\ : std_logic;
SIGNAL \inst6|b_y2[11]~feeder_combout\ : std_logic;
SIGNAL \inst6|LessThan7~1_combout\ : std_logic;
SIGNAL \inst6|LessThan7~2_combout\ : std_logic;
SIGNAL \inst6|LessThan7~3_combout\ : std_logic;
SIGNAL \inst6|LessThan7~4_combout\ : std_logic;
SIGNAL \inst6|LessThan7~5_combout\ : std_logic;
SIGNAL \inst6|LessThan7~0_combout\ : std_logic;
SIGNAL \inst6|LessThan7~6_combout\ : std_logic;
SIGNAL \inst6|Add7~58_combout\ : std_logic;
SIGNAL \inst6|d_x1~5_combout\ : std_logic;
SIGNAL \inst6|Add8~0_combout\ : std_logic;
SIGNAL \inst6|Add8~5_combout\ : std_logic;
SIGNAL \inst6|Add8~1\ : std_logic;
SIGNAL \inst6|Add8~2_combout\ : std_logic;
SIGNAL \inst6|Add8~4_combout\ : std_logic;
SIGNAL \inst6|Add7~1_cout\ : std_logic;
SIGNAL \inst6|Add7~3_cout\ : std_logic;
SIGNAL \inst6|Add7~4_combout\ : std_logic;
SIGNAL \inst6|d_x1~9_combout\ : std_logic;
SIGNAL \inst6|Add7~5\ : std_logic;
SIGNAL \inst6|Add7~6_combout\ : std_logic;
SIGNAL \inst6|d_x1~8_combout\ : std_logic;
SIGNAL \inst6|Add7~7\ : std_logic;
SIGNAL \inst6|Add7~8_combout\ : std_logic;
SIGNAL \inst6|d_x1~7_combout\ : std_logic;
SIGNAL \inst6|Add7~9\ : std_logic;
SIGNAL \inst6|Add7~10_combout\ : std_logic;
SIGNAL \inst6|d_x1~6_combout\ : std_logic;
SIGNAL \inst6|Add7~11\ : std_logic;
SIGNAL \inst6|Add7~12_combout\ : std_logic;
SIGNAL \inst6|d_x1~2_combout\ : std_logic;
SIGNAL \inst6|Add7~13\ : std_logic;
SIGNAL \inst6|Add7~14_combout\ : std_logic;
SIGNAL \inst6|d_x1~4_combout\ : std_logic;
SIGNAL \inst6|Add7~15\ : std_logic;
SIGNAL \inst6|Add7~16_combout\ : std_logic;
SIGNAL \inst6|d_x1~3_combout\ : std_logic;
SIGNAL \inst6|Add7~17\ : std_logic;
SIGNAL \inst6|Add7~18_combout\ : std_logic;
SIGNAL \inst6|d_x1~1_combout\ : std_logic;
SIGNAL \inst6|Add7~19\ : std_logic;
SIGNAL \inst6|Add7~20_combout\ : std_logic;
SIGNAL \inst6|LessThan4~0_combout\ : std_logic;
SIGNAL \inst6|d_x1~10_combout\ : std_logic;
SIGNAL \inst6|Add7~21\ : std_logic;
SIGNAL \inst6|Add7~22_combout\ : std_logic;
SIGNAL \inst6|d_x1~0_combout\ : std_logic;
SIGNAL \inst6|Add7~23\ : std_logic;
SIGNAL \inst6|Add7~24_combout\ : std_logic;
SIGNAL \inst6|d_x1~11_combout\ : std_logic;
SIGNAL \inst6|Add7~25\ : std_logic;
SIGNAL \inst6|Add7~26_combout\ : std_logic;
SIGNAL \inst6|d_x1~12_combout\ : std_logic;
SIGNAL \inst6|Add7~27\ : std_logic;
SIGNAL \inst6|Add7~28_combout\ : std_logic;
SIGNAL \inst6|LessThan4~1_combout\ : std_logic;
SIGNAL \inst6|LessThan4~2_combout\ : std_logic;
SIGNAL \inst6|LessThan4~3_combout\ : std_logic;
SIGNAL \inst6|Add7~29\ : std_logic;
SIGNAL \inst6|Add7~30_combout\ : std_logic;
SIGNAL \inst6|d_x1~13_combout\ : std_logic;
SIGNAL \inst6|Add7~31\ : std_logic;
SIGNAL \inst6|Add7~32_combout\ : std_logic;
SIGNAL \inst6|d_x1~14_combout\ : std_logic;
SIGNAL \inst6|Add7~33\ : std_logic;
SIGNAL \inst6|Add7~34_combout\ : std_logic;
SIGNAL \inst6|d_x1~15_combout\ : std_logic;
SIGNAL \inst6|Add7~35\ : std_logic;
SIGNAL \inst6|Add7~36_combout\ : std_logic;
SIGNAL \inst6|d_x1~16_combout\ : std_logic;
SIGNAL \inst6|Add7~37\ : std_logic;
SIGNAL \inst6|Add7~38_combout\ : std_logic;
SIGNAL \inst6|d_x1~17_combout\ : std_logic;
SIGNAL \inst6|Add7~39\ : std_logic;
SIGNAL \inst6|Add7~40_combout\ : std_logic;
SIGNAL \inst6|d_x1~18_combout\ : std_logic;
SIGNAL \inst6|Add7~41\ : std_logic;
SIGNAL \inst6|Add7~42_combout\ : std_logic;
SIGNAL \inst6|d_x1~19_combout\ : std_logic;
SIGNAL \inst6|Add7~43\ : std_logic;
SIGNAL \inst6|Add7~44_combout\ : std_logic;
SIGNAL \inst6|d_x1~20_combout\ : std_logic;
SIGNAL \inst6|Add7~45\ : std_logic;
SIGNAL \inst6|Add7~46_combout\ : std_logic;
SIGNAL \inst6|d_x1~21_combout\ : std_logic;
SIGNAL \inst6|Add7~47\ : std_logic;
SIGNAL \inst6|Add7~48_combout\ : std_logic;
SIGNAL \inst6|d_x1~22_combout\ : std_logic;
SIGNAL \inst6|Add7~49\ : std_logic;
SIGNAL \inst6|Add7~50_combout\ : std_logic;
SIGNAL \inst6|d_x1~23_combout\ : std_logic;
SIGNAL \inst6|Add7~51\ : std_logic;
SIGNAL \inst6|Add7~52_combout\ : std_logic;
SIGNAL \inst6|LessThan4~5_combout\ : std_logic;
SIGNAL \inst6|LessThan4~4_combout\ : std_logic;
SIGNAL \inst6|LessThan4~6_combout\ : std_logic;
SIGNAL \inst6|LessThan4~7_combout\ : std_logic;
SIGNAL \inst6|LessThan4~8_combout\ : std_logic;
SIGNAL \inst6|d_x1~24_combout\ : std_logic;
SIGNAL \inst6|Add7~53\ : std_logic;
SIGNAL \inst6|Add7~54_combout\ : std_logic;
SIGNAL \inst6|d_x1~25_combout\ : std_logic;
SIGNAL \inst6|Add7~55\ : std_logic;
SIGNAL \inst6|Add7~56_combout\ : std_logic;
SIGNAL \inst6|d_x1~26_combout\ : std_logic;
SIGNAL \inst6|Add7~57\ : std_logic;
SIGNAL \inst6|Add7~59\ : std_logic;
SIGNAL \inst6|Add7~60_combout\ : std_logic;
SIGNAL \inst6|d_x1~28_combout\ : std_logic;
SIGNAL \inst6|Add7~61\ : std_logic;
SIGNAL \inst6|Add7~62_combout\ : std_logic;
SIGNAL \inst6|d_x1~27_combout\ : std_logic;
SIGNAL \inst6|process_0~40_combout\ : std_logic;
SIGNAL \inst6|process_0~39_combout\ : std_logic;
SIGNAL \inst6|process_0~37_combout\ : std_logic;
SIGNAL \inst6|process_0~38_combout\ : std_logic;
SIGNAL \inst6|process_0~41_combout\ : std_logic;
SIGNAL \inst6|process_0~42_combout\ : std_logic;
SIGNAL \inst6|LessThan8~0_combout\ : std_logic;
SIGNAL \inst6|LessThan8~1_combout\ : std_logic;
SIGNAL \inst6|process_0~60_combout\ : std_logic;
SIGNAL \inst6|process_0~61_combout\ : std_logic;
SIGNAL \inst6|LessThan7~8_combout\ : std_logic;
SIGNAL \inst6|LessThan7~7_combout\ : std_logic;
SIGNAL \inst6|LessThan9~0_combout\ : std_logic;
SIGNAL \inst6|LessThan9~1_combout\ : std_logic;
SIGNAL \inst6|Add4~0_combout\ : std_logic;
SIGNAL \inst6|Add4~79_combout\ : std_logic;
SIGNAL \inst6|Add4~1\ : std_logic;
SIGNAL \inst6|Add4~2_combout\ : std_logic;
SIGNAL \inst6|Add4~78_combout\ : std_logic;
SIGNAL \inst6|Add3~1_cout\ : std_logic;
SIGNAL \inst6|Add3~3_cout\ : std_logic;
SIGNAL \inst6|Add3~4_combout\ : std_logic;
SIGNAL \inst6|a_x1~28_combout\ : std_logic;
SIGNAL \inst6|Add3~5\ : std_logic;
SIGNAL \inst6|Add3~6_combout\ : std_logic;
SIGNAL \inst6|a_x1~27_combout\ : std_logic;
SIGNAL \inst6|Add3~7\ : std_logic;
SIGNAL \inst6|Add3~8_combout\ : std_logic;
SIGNAL \inst6|a_x1~26_combout\ : std_logic;
SIGNAL \inst6|Add3~9\ : std_logic;
SIGNAL \inst6|Add3~10_combout\ : std_logic;
SIGNAL \inst6|a_x1~25_combout\ : std_logic;
SIGNAL \inst6|Add3~11\ : std_logic;
SIGNAL \inst6|Add3~12_combout\ : std_logic;
SIGNAL \inst6|a_x1~24_combout\ : std_logic;
SIGNAL \inst6|Add3~13\ : std_logic;
SIGNAL \inst6|Add3~14_combout\ : std_logic;
SIGNAL \inst6|a_x1~23_combout\ : std_logic;
SIGNAL \inst6|LessThan5~0_combout\ : std_logic;
SIGNAL \inst6|LessThan5~1_combout\ : std_logic;
SIGNAL \inst6|LessThan5~2_combout\ : std_logic;
SIGNAL \inst6|Add3~15\ : std_logic;
SIGNAL \inst6|Add3~16_combout\ : std_logic;
SIGNAL \inst6|a_x1~22_combout\ : std_logic;
SIGNAL \inst6|Add3~17\ : std_logic;
SIGNAL \inst6|Add3~18_combout\ : std_logic;
SIGNAL \inst6|a_x1~21_combout\ : std_logic;
SIGNAL \inst6|Add3~19\ : std_logic;
SIGNAL \inst6|Add3~20_combout\ : std_logic;
SIGNAL \inst6|a_x1~20_combout\ : std_logic;
SIGNAL \inst6|Add3~21\ : std_logic;
SIGNAL \inst6|Add3~22_combout\ : std_logic;
SIGNAL \inst6|a_x1~19_combout\ : std_logic;
SIGNAL \inst6|process_0~58_combout\ : std_logic;
SIGNAL \inst6|process_0~47_combout\ : std_logic;
SIGNAL \inst6|process_0~59_combout\ : std_logic;
SIGNAL \inst6|endgame~0_combout\ : std_logic;
SIGNAL \inst6|c_x1~19_combout\ : std_logic;
SIGNAL \inst6|c_x1[11]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add6~0_combout\ : std_logic;
SIGNAL \inst6|Add6~76_combout\ : std_logic;
SIGNAL \inst6|c_x2[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add6~1\ : std_logic;
SIGNAL \inst6|Add6~2_combout\ : std_logic;
SIGNAL \inst6|Add6~75_combout\ : std_logic;
SIGNAL \inst6|c_x2[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add5~1_cout\ : std_logic;
SIGNAL \inst6|Add5~3_cout\ : std_logic;
SIGNAL \inst6|Add5~4_combout\ : std_logic;
SIGNAL \inst6|c_x1~28_combout\ : std_logic;
SIGNAL \inst6|c_x1[2]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add5~5\ : std_logic;
SIGNAL \inst6|Add5~6_combout\ : std_logic;
SIGNAL \inst6|c_x1~27_combout\ : std_logic;
SIGNAL \inst6|c_x1[3]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add5~7\ : std_logic;
SIGNAL \inst6|Add5~9\ : std_logic;
SIGNAL \inst6|Add5~10_combout\ : std_logic;
SIGNAL \inst6|c_x1~25_combout\ : std_logic;
SIGNAL \inst6|c_x1[5]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add5~11\ : std_logic;
SIGNAL \inst6|Add5~12_combout\ : std_logic;
SIGNAL \inst6|c_x1~24_combout\ : std_logic;
SIGNAL \inst6|c_x1[6]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add5~13\ : std_logic;
SIGNAL \inst6|Add5~14_combout\ : std_logic;
SIGNAL \inst6|c_x1~23_combout\ : std_logic;
SIGNAL \inst6|c_x1[7]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add5~15\ : std_logic;
SIGNAL \inst6|Add5~16_combout\ : std_logic;
SIGNAL \inst6|c_x1~22_combout\ : std_logic;
SIGNAL \inst6|c_x1[8]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add5~17\ : std_logic;
SIGNAL \inst6|Add5~18_combout\ : std_logic;
SIGNAL \inst6|c_x1~21_combout\ : std_logic;
SIGNAL \inst6|Add5~19\ : std_logic;
SIGNAL \inst6|Add5~20_combout\ : std_logic;
SIGNAL \inst6|c_x1~20_combout\ : std_logic;
SIGNAL \inst6|c_x1[10]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add5~21\ : std_logic;
SIGNAL \inst6|Add5~22_combout\ : std_logic;
SIGNAL \inst6|c_x1~2_combout\ : std_logic;
SIGNAL \inst6|Add5~23\ : std_logic;
SIGNAL \inst6|Add5~24_combout\ : std_logic;
SIGNAL \inst6|c_x1~0_combout\ : std_logic;
SIGNAL \inst6|Add5~25\ : std_logic;
SIGNAL \inst6|Add5~26_combout\ : std_logic;
SIGNAL \inst6|c_x1~1_combout\ : std_logic;
SIGNAL \inst6|Add5~27\ : std_logic;
SIGNAL \inst6|Add5~28_combout\ : std_logic;
SIGNAL \inst6|LessThan3~1_combout\ : std_logic;
SIGNAL \inst6|LessThan3~0_combout\ : std_logic;
SIGNAL \inst6|Add5~8_combout\ : std_logic;
SIGNAL \inst6|LessThan3~2_combout\ : std_logic;
SIGNAL \inst6|LessThan3~3_combout\ : std_logic;
SIGNAL \inst6|Add5~29\ : std_logic;
SIGNAL \inst6|Add5~30_combout\ : std_logic;
SIGNAL \inst6|c_x1~3_combout\ : std_logic;
SIGNAL \inst6|Add5~31\ : std_logic;
SIGNAL \inst6|Add5~32_combout\ : std_logic;
SIGNAL \inst6|c_x1~4_combout\ : std_logic;
SIGNAL \inst6|Add5~33\ : std_logic;
SIGNAL \inst6|Add5~34_combout\ : std_logic;
SIGNAL \inst6|c_x1~5_combout\ : std_logic;
SIGNAL \inst6|Add5~35\ : std_logic;
SIGNAL \inst6|Add5~36_combout\ : std_logic;
SIGNAL \inst6|c_x1~6_combout\ : std_logic;
SIGNAL \inst6|Add5~37\ : std_logic;
SIGNAL \inst6|Add5~38_combout\ : std_logic;
SIGNAL \inst6|c_x1~7_combout\ : std_logic;
SIGNAL \inst6|Add5~39\ : std_logic;
SIGNAL \inst6|Add5~40_combout\ : std_logic;
SIGNAL \inst6|c_x1~8_combout\ : std_logic;
SIGNAL \inst6|Add5~41\ : std_logic;
SIGNAL \inst6|Add5~42_combout\ : std_logic;
SIGNAL \inst6|c_x1~9_combout\ : std_logic;
SIGNAL \inst6|Add5~43\ : std_logic;
SIGNAL \inst6|Add5~44_combout\ : std_logic;
SIGNAL \inst6|c_x1~10_combout\ : std_logic;
SIGNAL \inst6|Add5~45\ : std_logic;
SIGNAL \inst6|Add5~46_combout\ : std_logic;
SIGNAL \inst6|c_x1~11_combout\ : std_logic;
SIGNAL \inst6|Add5~47\ : std_logic;
SIGNAL \inst6|Add5~48_combout\ : std_logic;
SIGNAL \inst6|c_x1~12_combout\ : std_logic;
SIGNAL \inst6|Add5~49\ : std_logic;
SIGNAL \inst6|Add5~50_combout\ : std_logic;
SIGNAL \inst6|c_x1~13_combout\ : std_logic;
SIGNAL \inst6|Add5~51\ : std_logic;
SIGNAL \inst6|Add5~52_combout\ : std_logic;
SIGNAL \inst6|c_x1~14_combout\ : std_logic;
SIGNAL \inst6|Add5~53\ : std_logic;
SIGNAL \inst6|Add5~55\ : std_logic;
SIGNAL \inst6|Add5~56_combout\ : std_logic;
SIGNAL \inst6|c_x1~16_combout\ : std_logic;
SIGNAL \inst6|Add5~57\ : std_logic;
SIGNAL \inst6|Add5~58_combout\ : std_logic;
SIGNAL \inst6|c_x1~17_combout\ : std_logic;
SIGNAL \inst6|c_x1[29]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add5~59\ : std_logic;
SIGNAL \inst6|Add5~60_combout\ : std_logic;
SIGNAL \inst6|c_x1~18_combout\ : std_logic;
SIGNAL \inst6|c_x1[30]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add5~61\ : std_logic;
SIGNAL \inst6|Add5~62_combout\ : std_logic;
SIGNAL \inst6|c_x1~15_combout\ : std_logic;
SIGNAL \inst6|Add5~54_combout\ : std_logic;
SIGNAL \inst6|LessThan3~4_combout\ : std_logic;
SIGNAL \inst6|LessThan3~5_combout\ : std_logic;
SIGNAL \inst6|LessThan3~6_combout\ : std_logic;
SIGNAL \inst6|LessThan3~7_combout\ : std_logic;
SIGNAL \inst6|LessThan3~8_combout\ : std_logic;
SIGNAL \inst6|c_x1~26_combout\ : std_logic;
SIGNAL \inst6|LessThan6~0_combout\ : std_logic;
SIGNAL \inst6|LessThan6~1_combout\ : std_logic;
SIGNAL \inst6|process_0~62_combout\ : std_logic;
SIGNAL \inst6|process_0~63_combout\ : std_logic;
SIGNAL \inst6|process_0~8_combout\ : std_logic;
SIGNAL \inst6|process_0~9_combout\ : std_logic;
SIGNAL \inst6|process_0~7_combout\ : std_logic;
SIGNAL \inst6|process_0~10_combout\ : std_logic;
SIGNAL \inst6|process_0~11_combout\ : std_logic;
SIGNAL \inst6|process_0~12_combout\ : std_logic;
SIGNAL \inst6|process_0~64_combout\ : std_logic;
SIGNAL \inst6|LessThan7~9_combout\ : std_logic;
SIGNAL \inst6|endgame~1_combout\ : std_logic;
SIGNAL \inst6|comb~0_combout\ : std_logic;
SIGNAL \inst6|n_x2[1]~32_combout\ : std_logic;
SIGNAL \inst6|n_x2[1]~33\ : std_logic;
SIGNAL \inst6|n_x2[2]~34_combout\ : std_logic;
SIGNAL \inst6|n_x2[2]~35\ : std_logic;
SIGNAL \inst6|n_x2[3]~36_combout\ : std_logic;
SIGNAL \inst6|n_x2[3]~37\ : std_logic;
SIGNAL \inst6|n_x2[4]~38_combout\ : std_logic;
SIGNAL \inst6|n_x2[4]~39\ : std_logic;
SIGNAL \inst6|n_x2[5]~40_combout\ : std_logic;
SIGNAL \inst6|n_x2[5]~41\ : std_logic;
SIGNAL \inst6|n_x2[6]~42_combout\ : std_logic;
SIGNAL \inst6|n_x2[6]~43\ : std_logic;
SIGNAL \inst6|n_x2[7]~44_combout\ : std_logic;
SIGNAL \inst6|n_x2[7]~45\ : std_logic;
SIGNAL \inst6|n_x2[8]~46_combout\ : std_logic;
SIGNAL \inst6|n_x2[8]~47\ : std_logic;
SIGNAL \inst6|n_x2[9]~48_combout\ : std_logic;
SIGNAL \inst6|n_x2[9]~49\ : std_logic;
SIGNAL \inst6|n_x2[10]~50_combout\ : std_logic;
SIGNAL \inst6|n_x2[10]~51\ : std_logic;
SIGNAL \inst6|n_x2[11]~52_combout\ : std_logic;
SIGNAL \inst6|n_x2[11]~53\ : std_logic;
SIGNAL \inst6|n_x2[12]~54_combout\ : std_logic;
SIGNAL \inst6|n_x2[12]~55\ : std_logic;
SIGNAL \inst6|n_x2[13]~56_combout\ : std_logic;
SIGNAL \inst6|n_x2[13]~57\ : std_logic;
SIGNAL \inst6|n_x2[14]~58_combout\ : std_logic;
SIGNAL \inst6|n_x2[14]~59\ : std_logic;
SIGNAL \inst6|n_x2[15]~60_combout\ : std_logic;
SIGNAL \inst6|n_x2[15]~61\ : std_logic;
SIGNAL \inst6|n_x2[16]~62_combout\ : std_logic;
SIGNAL \inst6|n_x2[16]~63\ : std_logic;
SIGNAL \inst6|n_x2[17]~64_combout\ : std_logic;
SIGNAL \inst6|n_x2[17]~65\ : std_logic;
SIGNAL \inst6|n_x2[18]~66_combout\ : std_logic;
SIGNAL \inst6|n_x2[18]~67\ : std_logic;
SIGNAL \inst6|n_x2[19]~68_combout\ : std_logic;
SIGNAL \inst6|n_x2[19]~69\ : std_logic;
SIGNAL \inst6|n_x2[20]~70_combout\ : std_logic;
SIGNAL \inst6|n_x2[20]~71\ : std_logic;
SIGNAL \inst6|n_x2[21]~72_combout\ : std_logic;
SIGNAL \inst6|n_x2[21]~73\ : std_logic;
SIGNAL \inst6|n_x2[22]~74_combout\ : std_logic;
SIGNAL \inst6|n_x2[22]~75\ : std_logic;
SIGNAL \inst6|n_x2[23]~76_combout\ : std_logic;
SIGNAL \inst6|n_x2[23]~77\ : std_logic;
SIGNAL \inst6|n_x2[24]~78_combout\ : std_logic;
SIGNAL \inst6|n_x2[24]~79\ : std_logic;
SIGNAL \inst6|n_x2[25]~80_combout\ : std_logic;
SIGNAL \inst6|n_x2[25]~81\ : std_logic;
SIGNAL \inst6|n_x2[26]~82_combout\ : std_logic;
SIGNAL \inst6|n_x2[26]~83\ : std_logic;
SIGNAL \inst6|n_x2[27]~84_combout\ : std_logic;
SIGNAL \inst6|n_x2[27]~85\ : std_logic;
SIGNAL \inst6|n_x2[28]~86_combout\ : std_logic;
SIGNAL \inst6|n_x2[28]~87\ : std_logic;
SIGNAL \inst6|n_x2[29]~88_combout\ : std_logic;
SIGNAL \inst6|n_x2[29]~89\ : std_logic;
SIGNAL \inst6|n_x2[30]~90_combout\ : std_logic;
SIGNAL \inst6|n_x2[30]~91\ : std_logic;
SIGNAL \inst6|n_x2[31]~92_combout\ : std_logic;
SIGNAL \inst6|LessThan10~6_combout\ : std_logic;
SIGNAL \inst6|LessThan10~7_combout\ : std_logic;
SIGNAL \inst6|LessThan10~3_combout\ : std_logic;
SIGNAL \inst6|LessThan10~1_combout\ : std_logic;
SIGNAL \inst6|LessThan10~0_combout\ : std_logic;
SIGNAL \inst6|LessThan10~2_combout\ : std_logic;
SIGNAL \inst6|LessThan10~4_combout\ : std_logic;
SIGNAL \inst6|LessThan10~5_combout\ : std_logic;
SIGNAL \inst6|back2[31]~0_combout\ : std_logic;
SIGNAL \inst6|endgame2~combout\ : std_logic;
SIGNAL \inst6|LessThan10~8_combout\ : std_logic;
SIGNAL \inst6|comb~1_combout\ : std_logic;
SIGNAL \inst6|endgame~2_combout\ : std_logic;
SIGNAL \inst6|endgame~combout\ : std_logic;
SIGNAL \inst6|counter1[0]~25_combout\ : std_logic;
SIGNAL \inst6|process_0~65_combout\ : std_logic;
SIGNAL \inst6|counter1[0]~26\ : std_logic;
SIGNAL \inst6|counter1[1]~27_combout\ : std_logic;
SIGNAL \inst6|counter1[1]~28\ : std_logic;
SIGNAL \inst6|counter1[2]~29_combout\ : std_logic;
SIGNAL \inst6|counter1[2]~30\ : std_logic;
SIGNAL \inst6|counter1[3]~31_combout\ : std_logic;
SIGNAL \inst6|counter1[3]~32\ : std_logic;
SIGNAL \inst6|counter1[4]~33_combout\ : std_logic;
SIGNAL \inst6|counter1[4]~34\ : std_logic;
SIGNAL \inst6|counter1[5]~35_combout\ : std_logic;
SIGNAL \inst6|counter1[5]~36\ : std_logic;
SIGNAL \inst6|counter1[6]~37_combout\ : std_logic;
SIGNAL \inst6|counter1[6]~38\ : std_logic;
SIGNAL \inst6|counter1[7]~39_combout\ : std_logic;
SIGNAL \inst6|counter1[7]~40\ : std_logic;
SIGNAL \inst6|counter1[8]~41_combout\ : std_logic;
SIGNAL \inst6|counter1[8]~42\ : std_logic;
SIGNAL \inst6|counter1[9]~43_combout\ : std_logic;
SIGNAL \inst6|counter1[9]~44\ : std_logic;
SIGNAL \inst6|counter1[10]~45_combout\ : std_logic;
SIGNAL \inst6|counter1[10]~46\ : std_logic;
SIGNAL \inst6|counter1[11]~47_combout\ : std_logic;
SIGNAL \inst6|counter1[11]~48\ : std_logic;
SIGNAL \inst6|counter1[12]~49_combout\ : std_logic;
SIGNAL \inst6|counter1[12]~50\ : std_logic;
SIGNAL \inst6|counter1[13]~51_combout\ : std_logic;
SIGNAL \inst6|counter1[13]~52\ : std_logic;
SIGNAL \inst6|counter1[14]~53_combout\ : std_logic;
SIGNAL \inst6|counter1[14]~54\ : std_logic;
SIGNAL \inst6|counter1[15]~55_combout\ : std_logic;
SIGNAL \inst6|counter1[15]~56\ : std_logic;
SIGNAL \inst6|counter1[16]~57_combout\ : std_logic;
SIGNAL \inst6|counter1[16]~58\ : std_logic;
SIGNAL \inst6|counter1[17]~59_combout\ : std_logic;
SIGNAL \inst6|counter1[17]~60\ : std_logic;
SIGNAL \inst6|counter1[18]~61_combout\ : std_logic;
SIGNAL \inst6|counter1[18]~62\ : std_logic;
SIGNAL \inst6|counter1[19]~63_combout\ : std_logic;
SIGNAL \inst6|counter1[19]~64\ : std_logic;
SIGNAL \inst6|counter1[20]~65_combout\ : std_logic;
SIGNAL \inst6|counter1[20]~66\ : std_logic;
SIGNAL \inst6|counter1[21]~67_combout\ : std_logic;
SIGNAL \inst6|counter1[21]~68\ : std_logic;
SIGNAL \inst6|counter1[22]~69_combout\ : std_logic;
SIGNAL \inst6|counter1[22]~70\ : std_logic;
SIGNAL \inst6|counter1[23]~71_combout\ : std_logic;
SIGNAL \inst6|LessThan0~0_combout\ : std_logic;
SIGNAL \inst6|counter1[23]~72\ : std_logic;
SIGNAL \inst6|counter1[24]~73_combout\ : std_logic;
SIGNAL \inst6|LessThan0~5_combout\ : std_logic;
SIGNAL \inst6|LessThan0~1_combout\ : std_logic;
SIGNAL \inst6|LessThan0~2_combout\ : std_logic;
SIGNAL \inst6|LessThan0~3_combout\ : std_logic;
SIGNAL \inst6|LessThan0~4_combout\ : std_logic;
SIGNAL \inst6|LessThan0~6_combout\ : std_logic;
SIGNAL \inst6|LessThan0~7_combout\ : std_logic;
SIGNAL \inst6|n_x2[31]~31_combout\ : std_logic;
SIGNAL \inst6|Add3~23\ : std_logic;
SIGNAL \inst6|Add3~24_combout\ : std_logic;
SIGNAL \inst6|a_x1~3_combout\ : std_logic;
SIGNAL \inst6|Add3~25\ : std_logic;
SIGNAL \inst6|Add3~26_combout\ : std_logic;
SIGNAL \inst6|Add3~27\ : std_logic;
SIGNAL \inst6|Add3~28_combout\ : std_logic;
SIGNAL \inst6|LessThan2~1_combout\ : std_logic;
SIGNAL \inst6|LessThan2~2_combout\ : std_logic;
SIGNAL \inst6|LessThan2~0_combout\ : std_logic;
SIGNAL \inst6|LessThan2~3_combout\ : std_logic;
SIGNAL \inst6|Add3~29\ : std_logic;
SIGNAL \inst6|Add3~30_combout\ : std_logic;
SIGNAL \inst6|a_x1~6_combout\ : std_logic;
SIGNAL \inst6|Add3~31\ : std_logic;
SIGNAL \inst6|Add3~32_combout\ : std_logic;
SIGNAL \inst6|a_x1~7_combout\ : std_logic;
SIGNAL \inst6|a_x1[16]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add3~33\ : std_logic;
SIGNAL \inst6|Add3~34_combout\ : std_logic;
SIGNAL \inst6|a_x1~8_combout\ : std_logic;
SIGNAL \inst6|a_x1[17]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add3~35\ : std_logic;
SIGNAL \inst6|Add3~36_combout\ : std_logic;
SIGNAL \inst6|a_x1~9_combout\ : std_logic;
SIGNAL \inst6|a_x1[18]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add3~37\ : std_logic;
SIGNAL \inst6|Add3~38_combout\ : std_logic;
SIGNAL \inst6|a_x1~10_combout\ : std_logic;
SIGNAL \inst6|a_x1[19]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add3~39\ : std_logic;
SIGNAL \inst6|Add3~40_combout\ : std_logic;
SIGNAL \inst6|a_x1~11_combout\ : std_logic;
SIGNAL \inst6|Add3~41\ : std_logic;
SIGNAL \inst6|Add3~42_combout\ : std_logic;
SIGNAL \inst6|a_x1~12_combout\ : std_logic;
SIGNAL \inst6|Add3~43\ : std_logic;
SIGNAL \inst6|Add3~44_combout\ : std_logic;
SIGNAL \inst6|a_x1~13_combout\ : std_logic;
SIGNAL \inst6|Add3~45\ : std_logic;
SIGNAL \inst6|Add3~46_combout\ : std_logic;
SIGNAL \inst6|a_x1~14_combout\ : std_logic;
SIGNAL \inst6|Add3~47\ : std_logic;
SIGNAL \inst6|Add3~48_combout\ : std_logic;
SIGNAL \inst6|a_x1~15_combout\ : std_logic;
SIGNAL \inst6|Add3~49\ : std_logic;
SIGNAL \inst6|Add3~50_combout\ : std_logic;
SIGNAL \inst6|a_x1~16_combout\ : std_logic;
SIGNAL \inst6|a_x1[25]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add3~51\ : std_logic;
SIGNAL \inst6|Add3~52_combout\ : std_logic;
SIGNAL \inst6|a_x1~17_combout\ : std_logic;
SIGNAL \inst6|a_x1[26]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add3~53\ : std_logic;
SIGNAL \inst6|Add3~54_combout\ : std_logic;
SIGNAL \inst6|LessThan2~7_combout\ : std_logic;
SIGNAL \inst6|LessThan2~4_combout\ : std_logic;
SIGNAL \inst6|LessThan2~6_combout\ : std_logic;
SIGNAL \inst6|LessThan2~5_combout\ : std_logic;
SIGNAL \inst6|LessThan2~8_combout\ : std_logic;
SIGNAL \inst6|a_x1~18_combout\ : std_logic;
SIGNAL \inst6|a_x1[27]~feeder_combout\ : std_logic;
SIGNAL \inst6|Add3~55\ : std_logic;
SIGNAL \inst6|Add3~56_combout\ : std_logic;
SIGNAL \inst6|a_x1~0_combout\ : std_logic;
SIGNAL \inst6|Add3~57\ : std_logic;
SIGNAL \inst6|Add3~58_combout\ : std_logic;
SIGNAL \inst6|a_x1~1_combout\ : std_logic;
SIGNAL \inst6|Add3~59\ : std_logic;
SIGNAL \inst6|Add3~60_combout\ : std_logic;
SIGNAL \inst6|a_x1~2_combout\ : std_logic;
SIGNAL \inst6|Add3~61\ : std_logic;
SIGNAL \inst6|Add3~62_combout\ : std_logic;
SIGNAL \inst6|a_x1~5_combout\ : std_logic;
SIGNAL \inst6|process_0~48_combout\ : std_logic;
SIGNAL \inst6|process_0~51_combout\ : std_logic;
SIGNAL \inst6|process_0~50_combout\ : std_logic;
SIGNAL \inst6|process_0~49_combout\ : std_logic;
SIGNAL \inst6|process_0~52_combout\ : std_logic;
SIGNAL \inst6|Add4~3\ : std_logic;
SIGNAL \inst6|Add4~4_combout\ : std_logic;
SIGNAL \inst6|Add4~77_combout\ : std_logic;
SIGNAL \inst6|Add4~5\ : std_logic;
SIGNAL \inst6|Add4~6_combout\ : std_logic;
SIGNAL \inst6|Add4~76_combout\ : std_logic;
SIGNAL \inst6|Add4~7\ : std_logic;
SIGNAL \inst6|Add4~8_combout\ : std_logic;
SIGNAL \inst6|Add4~75_combout\ : std_logic;
SIGNAL \inst6|Add4~9\ : std_logic;
SIGNAL \inst6|Add4~10_combout\ : std_logic;
SIGNAL \inst6|Add4~74_combout\ : std_logic;
SIGNAL \inst6|Add4~11\ : std_logic;
SIGNAL \inst6|Add4~12_combout\ : std_logic;
SIGNAL \inst6|Add4~73_combout\ : std_logic;
SIGNAL \inst6|Add4~13\ : std_logic;
SIGNAL \inst6|Add4~14_combout\ : std_logic;
SIGNAL \inst6|Add4~72_combout\ : std_logic;
SIGNAL \inst6|Add4~15\ : std_logic;
SIGNAL \inst6|Add4~16_combout\ : std_logic;
SIGNAL \inst6|Add4~71_combout\ : std_logic;
SIGNAL \inst6|Add4~17\ : std_logic;
SIGNAL \inst6|Add4~18_combout\ : std_logic;
SIGNAL \inst6|Add4~70_combout\ : std_logic;
SIGNAL \inst6|Add4~19\ : std_logic;
SIGNAL \inst6|Add4~20_combout\ : std_logic;
SIGNAL \inst6|Add4~69_combout\ : std_logic;
SIGNAL \inst6|Add4~21\ : std_logic;
SIGNAL \inst6|Add4~22_combout\ : std_logic;
SIGNAL \inst6|Add4~68_combout\ : std_logic;
SIGNAL \inst6|Add4~23\ : std_logic;
SIGNAL \inst6|Add4~24_combout\ : std_logic;
SIGNAL \inst6|Add4~80_combout\ : std_logic;
SIGNAL \inst6|Add4~25\ : std_logic;
SIGNAL \inst6|Add4~26_combout\ : std_logic;
SIGNAL \inst6|Add4~81_combout\ : std_logic;
SIGNAL \inst6|Add4~27\ : std_logic;
SIGNAL \inst6|Add4~28_combout\ : std_logic;
SIGNAL \inst6|Add4~82_combout\ : std_logic;
SIGNAL \inst6|Add4~29\ : std_logic;
SIGNAL \inst6|Add4~30_combout\ : std_logic;
SIGNAL \inst6|Add4~83_combout\ : std_logic;
SIGNAL \inst6|Add4~31\ : std_logic;
SIGNAL \inst6|Add4~32_combout\ : std_logic;
SIGNAL \inst6|Add4~84_combout\ : std_logic;
SIGNAL \inst6|Add4~33\ : std_logic;
SIGNAL \inst6|Add4~34_combout\ : std_logic;
SIGNAL \inst6|Add4~85_combout\ : std_logic;
SIGNAL \inst6|Add4~35\ : std_logic;
SIGNAL \inst6|Add4~36_combout\ : std_logic;
SIGNAL \inst6|Add4~86_combout\ : std_logic;
SIGNAL \inst6|Add4~37\ : std_logic;
SIGNAL \inst6|Add4~38_combout\ : std_logic;
SIGNAL \inst6|Add4~87_combout\ : std_logic;
SIGNAL \inst6|Add4~39\ : std_logic;
SIGNAL \inst6|Add4~40_combout\ : std_logic;
SIGNAL \inst6|Add4~88_combout\ : std_logic;
SIGNAL \inst6|Add4~41\ : std_logic;
SIGNAL \inst6|Add4~42_combout\ : std_logic;
SIGNAL \inst6|Add4~89_combout\ : std_logic;
SIGNAL \inst6|Add4~43\ : std_logic;
SIGNAL \inst6|Add4~44_combout\ : std_logic;
SIGNAL \inst6|Add4~90_combout\ : std_logic;
SIGNAL \inst6|Add4~45\ : std_logic;
SIGNAL \inst6|Add4~46_combout\ : std_logic;
SIGNAL \inst6|Add4~91_combout\ : std_logic;
SIGNAL \inst6|Add4~47\ : std_logic;
SIGNAL \inst6|Add4~48_combout\ : std_logic;
SIGNAL \inst6|Add4~92_combout\ : std_logic;
SIGNAL \inst6|Add4~49\ : std_logic;
SIGNAL \inst6|Add4~50_combout\ : std_logic;
SIGNAL \inst6|Add4~93_combout\ : std_logic;
SIGNAL \inst6|Add4~51\ : std_logic;
SIGNAL \inst6|Add4~52_combout\ : std_logic;
SIGNAL \inst6|Add4~94_combout\ : std_logic;
SIGNAL \inst6|Add4~53\ : std_logic;
SIGNAL \inst6|Add4~54_combout\ : std_logic;
SIGNAL \inst6|Add4~95_combout\ : std_logic;
SIGNAL \inst6|Add4~55\ : std_logic;
SIGNAL \inst6|Add4~56_combout\ : std_logic;
SIGNAL \inst6|Add4~65_combout\ : std_logic;
SIGNAL \inst6|Add4~57\ : std_logic;
SIGNAL \inst6|Add4~58_combout\ : std_logic;
SIGNAL \inst6|Add4~66_combout\ : std_logic;
SIGNAL \inst6|Add4~59\ : std_logic;
SIGNAL \inst6|Add4~60_combout\ : std_logic;
SIGNAL \inst6|Add4~67_combout\ : std_logic;
SIGNAL \inst1|column[11]~feeder_combout\ : std_logic;
SIGNAL \inst1|LessThan6~0_combout\ : std_logic;
SIGNAL \inst1|column[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|column[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|column[0]~0_combout\ : std_logic;
SIGNAL \inst6|LessThan18~1_cout\ : std_logic;
SIGNAL \inst6|LessThan18~3_cout\ : std_logic;
SIGNAL \inst6|LessThan18~5_cout\ : std_logic;
SIGNAL \inst6|LessThan18~7_cout\ : std_logic;
SIGNAL \inst6|LessThan18~9_cout\ : std_logic;
SIGNAL \inst6|LessThan18~11_cout\ : std_logic;
SIGNAL \inst6|LessThan18~13_cout\ : std_logic;
SIGNAL \inst6|LessThan18~15_cout\ : std_logic;
SIGNAL \inst6|LessThan18~17_cout\ : std_logic;
SIGNAL \inst6|LessThan18~19_cout\ : std_logic;
SIGNAL \inst6|LessThan18~21_cout\ : std_logic;
SIGNAL \inst6|LessThan18~22_combout\ : std_logic;
SIGNAL \inst6|LessThan18~24_combout\ : std_logic;
SIGNAL \inst6|LessThan18~28_combout\ : std_logic;
SIGNAL \inst6|LessThan18~27_combout\ : std_logic;
SIGNAL \inst6|LessThan18~26_combout\ : std_logic;
SIGNAL \inst6|LessThan18~25_combout\ : std_logic;
SIGNAL \inst6|LessThan18~29_combout\ : std_logic;
SIGNAL \inst6|process_0~53_combout\ : std_logic;
SIGNAL \inst6|LessThan19~1_cout\ : std_logic;
SIGNAL \inst6|LessThan19~3_cout\ : std_logic;
SIGNAL \inst6|LessThan19~5_cout\ : std_logic;
SIGNAL \inst6|LessThan19~7_cout\ : std_logic;
SIGNAL \inst6|LessThan19~9_cout\ : std_logic;
SIGNAL \inst6|LessThan19~11_cout\ : std_logic;
SIGNAL \inst6|LessThan19~13_cout\ : std_logic;
SIGNAL \inst6|LessThan19~15_cout\ : std_logic;
SIGNAL \inst6|LessThan19~17_cout\ : std_logic;
SIGNAL \inst6|LessThan19~19_cout\ : std_logic;
SIGNAL \inst6|LessThan19~21_cout\ : std_logic;
SIGNAL \inst6|LessThan19~22_combout\ : std_logic;
SIGNAL \inst6|Add4~61\ : std_logic;
SIGNAL \inst6|Add4~62_combout\ : std_logic;
SIGNAL \inst6|Add4~64_combout\ : std_logic;
SIGNAL \inst1|row[0]~0_combout\ : std_logic;
SIGNAL \inst1|LessThan7~2_combout\ : std_logic;
SIGNAL \inst1|row[4]~feeder_combout\ : std_logic;
SIGNAL \inst6|process_0~33_combout\ : std_logic;
SIGNAL \inst6|process_0~34_combout\ : std_logic;
SIGNAL \inst6|LessThan23~1_combout\ : std_logic;
SIGNAL \inst6|LessThan23~0_combout\ : std_logic;
SIGNAL \inst6|LessThan23~2_combout\ : std_logic;
SIGNAL \inst1|column[31]~feeder_combout\ : std_logic;
SIGNAL \inst1|row[31]~feeder_combout\ : std_logic;
SIGNAL \inst6|process_0~14_combout\ : std_logic;
SIGNAL \inst6|process_0~31_combout\ : std_logic;
SIGNAL \inst6|process_0~32_combout\ : std_logic;
SIGNAL \inst6|process_0~35_combout\ : std_logic;
SIGNAL \inst6|process_0~54_combout\ : std_logic;
SIGNAL \inst1|process_0~6_combout\ : std_logic;
SIGNAL \inst1|disp_ena~q\ : std_logic;
SIGNAL \inst6|process_0~4_combout\ : std_logic;
SIGNAL \inst6|process_0~5_combout\ : std_logic;
SIGNAL \inst6|LessThan14~1_cout\ : std_logic;
SIGNAL \inst6|LessThan14~3_cout\ : std_logic;
SIGNAL \inst6|LessThan14~5_cout\ : std_logic;
SIGNAL \inst6|LessThan14~7_cout\ : std_logic;
SIGNAL \inst6|LessThan14~9_cout\ : std_logic;
SIGNAL \inst6|LessThan14~11_cout\ : std_logic;
SIGNAL \inst6|LessThan14~13_cout\ : std_logic;
SIGNAL \inst6|LessThan14~15_cout\ : std_logic;
SIGNAL \inst6|LessThan14~17_cout\ : std_logic;
SIGNAL \inst6|LessThan14~18_combout\ : std_logic;
SIGNAL \inst6|process_0~1_combout\ : std_logic;
SIGNAL \inst6|process_0~2_combout\ : std_logic;
SIGNAL \inst6|LessThan17~1_combout\ : std_logic;
SIGNAL \inst6|process_0~3_combout\ : std_logic;
SIGNAL \inst6|Add1~0_combout\ : std_logic;
SIGNAL \inst6|Add1~90_combout\ : std_logic;
SIGNAL \inst6|Add1~1\ : std_logic;
SIGNAL \inst6|Add1~2_combout\ : std_logic;
SIGNAL \inst6|Add1~89_combout\ : std_logic;
SIGNAL \inst6|Add1~3\ : std_logic;
SIGNAL \inst6|Add1~4_combout\ : std_logic;
SIGNAL \inst6|Add1~88_combout\ : std_logic;
SIGNAL \inst6|Add1~5\ : std_logic;
SIGNAL \inst6|Add1~6_combout\ : std_logic;
SIGNAL \inst6|Add1~87_combout\ : std_logic;
SIGNAL \inst6|Add1~7\ : std_logic;
SIGNAL \inst6|Add1~8_combout\ : std_logic;
SIGNAL \inst6|Add1~86_combout\ : std_logic;
SIGNAL \inst6|Add1~9\ : std_logic;
SIGNAL \inst6|Add1~10_combout\ : std_logic;
SIGNAL \inst6|Add1~85_combout\ : std_logic;
SIGNAL \inst6|Add1~11\ : std_logic;
SIGNAL \inst6|Add1~12_combout\ : std_logic;
SIGNAL \inst6|Add1~84_combout\ : std_logic;
SIGNAL \inst6|Add1~13\ : std_logic;
SIGNAL \inst6|Add1~14_combout\ : std_logic;
SIGNAL \inst6|Add1~83_combout\ : std_logic;
SIGNAL \inst6|Add1~15\ : std_logic;
SIGNAL \inst6|Add1~16_combout\ : std_logic;
SIGNAL \inst6|Add1~82_combout\ : std_logic;
SIGNAL \inst6|Add1~17\ : std_logic;
SIGNAL \inst6|Add1~18_combout\ : std_logic;
SIGNAL \inst6|Add1~81_combout\ : std_logic;
SIGNAL \inst6|Add1~19\ : std_logic;
SIGNAL \inst6|Add1~20_combout\ : std_logic;
SIGNAL \inst6|Add1~63_combout\ : std_logic;
SIGNAL \inst6|Add1~21\ : std_logic;
SIGNAL \inst6|Add1~22_combout\ : std_logic;
SIGNAL \inst6|Add1~64_combout\ : std_logic;
SIGNAL \inst6|Add1~23\ : std_logic;
SIGNAL \inst6|Add1~24_combout\ : std_logic;
SIGNAL \inst6|Add1~65_combout\ : std_logic;
SIGNAL \inst6|Add1~25\ : std_logic;
SIGNAL \inst6|Add1~26_combout\ : std_logic;
SIGNAL \inst6|Add1~66_combout\ : std_logic;
SIGNAL \inst6|Add1~27\ : std_logic;
SIGNAL \inst6|Add1~28_combout\ : std_logic;
SIGNAL \inst6|Add1~67_combout\ : std_logic;
SIGNAL \inst6|Add1~29\ : std_logic;
SIGNAL \inst6|Add1~30_combout\ : std_logic;
SIGNAL \inst6|Add1~68_combout\ : std_logic;
SIGNAL \inst6|Add1~31\ : std_logic;
SIGNAL \inst6|Add1~32_combout\ : std_logic;
SIGNAL \inst6|Add1~69_combout\ : std_logic;
SIGNAL \inst6|Add1~33\ : std_logic;
SIGNAL \inst6|Add1~34_combout\ : std_logic;
SIGNAL \inst6|Add1~70_combout\ : std_logic;
SIGNAL \inst6|Add1~35\ : std_logic;
SIGNAL \inst6|Add1~36_combout\ : std_logic;
SIGNAL \inst6|Add1~71_combout\ : std_logic;
SIGNAL \inst6|Add1~37\ : std_logic;
SIGNAL \inst6|Add1~38_combout\ : std_logic;
SIGNAL \inst6|Add1~72_combout\ : std_logic;
SIGNAL \inst6|Add1~39\ : std_logic;
SIGNAL \inst6|Add1~40_combout\ : std_logic;
SIGNAL \inst6|Add1~73_combout\ : std_logic;
SIGNAL \inst6|Add1~41\ : std_logic;
SIGNAL \inst6|Add1~42_combout\ : std_logic;
SIGNAL \inst6|Add1~74_combout\ : std_logic;
SIGNAL \inst6|Add1~43\ : std_logic;
SIGNAL \inst6|Add1~44_combout\ : std_logic;
SIGNAL \inst6|Add1~75_combout\ : std_logic;
SIGNAL \inst6|Add1~45\ : std_logic;
SIGNAL \inst6|Add1~46_combout\ : std_logic;
SIGNAL \inst6|Add1~76_combout\ : std_logic;
SIGNAL \inst6|Add1~47\ : std_logic;
SIGNAL \inst6|Add1~48_combout\ : std_logic;
SIGNAL \inst6|Add1~77_combout\ : std_logic;
SIGNAL \inst6|Add1~49\ : std_logic;
SIGNAL \inst6|Add1~50_combout\ : std_logic;
SIGNAL \inst6|Add1~78_combout\ : std_logic;
SIGNAL \inst6|Add1~51\ : std_logic;
SIGNAL \inst6|Add1~52_combout\ : std_logic;
SIGNAL \inst6|Add1~79_combout\ : std_logic;
SIGNAL \inst6|Add1~53\ : std_logic;
SIGNAL \inst6|Add1~54_combout\ : std_logic;
SIGNAL \inst6|Add1~80_combout\ : std_logic;
SIGNAL \inst6|Add1~55\ : std_logic;
SIGNAL \inst6|Add1~56_combout\ : std_logic;
SIGNAL \inst6|Add1~91_combout\ : std_logic;
SIGNAL \inst6|Add1~57\ : std_logic;
SIGNAL \inst6|Add1~58_combout\ : std_logic;
SIGNAL \inst6|Add1~92_combout\ : std_logic;
SIGNAL \inst6|Add1~59\ : std_logic;
SIGNAL \inst6|Add1~60_combout\ : std_logic;
SIGNAL \inst6|Add1~62_combout\ : std_logic;
SIGNAL \inst6|LessThan15~29_combout\ : std_logic;
SIGNAL \inst6|LessThan15~7_cout\ : std_logic;
SIGNAL \inst6|LessThan15~9_cout\ : std_logic;
SIGNAL \inst6|LessThan15~11_cout\ : std_logic;
SIGNAL \inst6|LessThan15~13_cout\ : std_logic;
SIGNAL \inst6|LessThan15~15_cout\ : std_logic;
SIGNAL \inst6|LessThan15~17_cout\ : std_logic;
SIGNAL \inst6|LessThan15~19_cout\ : std_logic;
SIGNAL \inst6|LessThan15~21_cout\ : std_logic;
SIGNAL \inst6|LessThan15~23_cout\ : std_logic;
SIGNAL \inst6|LessThan15~25_cout\ : std_logic;
SIGNAL \inst6|LessThan15~26_combout\ : std_logic;
SIGNAL \inst6|LessThan15~5_combout\ : std_logic;
SIGNAL \inst6|LessThan15~28_combout\ : std_logic;
SIGNAL \inst6|LessThan30~0_combout\ : std_logic;
SIGNAL \inst6|LessThan17~0_combout\ : std_logic;
SIGNAL \inst6|LessThan17~2_combout\ : std_logic;
SIGNAL \inst6|LessThan15~0_combout\ : std_logic;
SIGNAL \inst6|LessThan15~1_combout\ : std_logic;
SIGNAL \inst6|LessThan15~3_combout\ : std_logic;
SIGNAL \inst6|LessThan15~2_combout\ : std_logic;
SIGNAL \inst6|LessThan15~4_combout\ : std_logic;
SIGNAL \inst6|process_0~0_combout\ : std_logic;
SIGNAL \inst6|process_0~6_combout\ : std_logic;
SIGNAL \inst6|green[7]~0_combout\ : std_logic;
SIGNAL \inst6|Add8~3\ : std_logic;
SIGNAL \inst6|Add8~6_combout\ : std_logic;
SIGNAL \inst6|Add8~79_combout\ : std_logic;
SIGNAL \inst6|Add8~7\ : std_logic;
SIGNAL \inst6|Add8~8_combout\ : std_logic;
SIGNAL \inst6|Add8~78_combout\ : std_logic;
SIGNAL \inst6|Add8~9\ : std_logic;
SIGNAL \inst6|Add8~10_combout\ : std_logic;
SIGNAL \inst6|Add8~77_combout\ : std_logic;
SIGNAL \inst6|Add8~11\ : std_logic;
SIGNAL \inst6|Add8~12_combout\ : std_logic;
SIGNAL \inst6|Add8~76_combout\ : std_logic;
SIGNAL \inst6|Add8~13\ : std_logic;
SIGNAL \inst6|Add8~14_combout\ : std_logic;
SIGNAL \inst6|Add8~75_combout\ : std_logic;
SIGNAL \inst6|Add8~15\ : std_logic;
SIGNAL \inst6|Add8~16_combout\ : std_logic;
SIGNAL \inst6|Add8~74_combout\ : std_logic;
SIGNAL \inst6|Add8~17\ : std_logic;
SIGNAL \inst6|Add8~18_combout\ : std_logic;
SIGNAL \inst6|Add8~73_combout\ : std_logic;
SIGNAL \inst6|Add8~19\ : std_logic;
SIGNAL \inst6|Add8~20_combout\ : std_logic;
SIGNAL \inst6|Add8~72_combout\ : std_logic;
SIGNAL \inst6|Add8~21\ : std_logic;
SIGNAL \inst6|Add8~22_combout\ : std_logic;
SIGNAL \inst6|Add8~71_combout\ : std_logic;
SIGNAL \inst6|Add8~23\ : std_logic;
SIGNAL \inst6|Add8~24_combout\ : std_logic;
SIGNAL \inst6|Add8~70_combout\ : std_logic;
SIGNAL \inst6|LessThan25~1_cout\ : std_logic;
SIGNAL \inst6|LessThan25~3_cout\ : std_logic;
SIGNAL \inst6|LessThan25~5_cout\ : std_logic;
SIGNAL \inst6|LessThan25~7_cout\ : std_logic;
SIGNAL \inst6|LessThan25~9_cout\ : std_logic;
SIGNAL \inst6|LessThan25~11_cout\ : std_logic;
SIGNAL \inst6|LessThan25~13_cout\ : std_logic;
SIGNAL \inst6|LessThan25~15_cout\ : std_logic;
SIGNAL \inst6|LessThan25~17_cout\ : std_logic;
SIGNAL \inst6|LessThan25~19_cout\ : std_logic;
SIGNAL \inst6|LessThan25~21_cout\ : std_logic;
SIGNAL \inst6|LessThan25~22_combout\ : std_logic;
SIGNAL \inst6|Add8~25\ : std_logic;
SIGNAL \inst6|Add8~26_combout\ : std_logic;
SIGNAL \inst6|Add8~80_combout\ : std_logic;
SIGNAL \inst6|Add8~27\ : std_logic;
SIGNAL \inst6|Add8~28_combout\ : std_logic;
SIGNAL \inst6|Add8~81_combout\ : std_logic;
SIGNAL \inst6|Add8~29\ : std_logic;
SIGNAL \inst6|Add8~30_combout\ : std_logic;
SIGNAL \inst6|Add8~82_combout\ : std_logic;
SIGNAL \inst6|Add8~31\ : std_logic;
SIGNAL \inst6|Add8~32_combout\ : std_logic;
SIGNAL \inst6|Add8~83_combout\ : std_logic;
SIGNAL \inst6|Add8~33\ : std_logic;
SIGNAL \inst6|Add8~34_combout\ : std_logic;
SIGNAL \inst6|Add8~84_combout\ : std_logic;
SIGNAL \inst6|Add8~35\ : std_logic;
SIGNAL \inst6|Add8~36_combout\ : std_logic;
SIGNAL \inst6|Add8~85_combout\ : std_logic;
SIGNAL \inst6|Add8~37\ : std_logic;
SIGNAL \inst6|Add8~38_combout\ : std_logic;
SIGNAL \inst6|Add8~86_combout\ : std_logic;
SIGNAL \inst6|Add8~39\ : std_logic;
SIGNAL \inst6|Add8~40_combout\ : std_logic;
SIGNAL \inst6|Add8~87_combout\ : std_logic;
SIGNAL \inst6|Add8~41\ : std_logic;
SIGNAL \inst6|Add8~42_combout\ : std_logic;
SIGNAL \inst6|Add8~88_combout\ : std_logic;
SIGNAL \inst6|Add8~43\ : std_logic;
SIGNAL \inst6|Add8~44_combout\ : std_logic;
SIGNAL \inst6|Add8~89_combout\ : std_logic;
SIGNAL \inst6|Add8~45\ : std_logic;
SIGNAL \inst6|Add8~46_combout\ : std_logic;
SIGNAL \inst6|Add8~90_combout\ : std_logic;
SIGNAL \inst6|Add8~47\ : std_logic;
SIGNAL \inst6|Add8~48_combout\ : std_logic;
SIGNAL \inst6|Add8~91_combout\ : std_logic;
SIGNAL \inst6|Add8~49\ : std_logic;
SIGNAL \inst6|Add8~50_combout\ : std_logic;
SIGNAL \inst6|Add8~92_combout\ : std_logic;
SIGNAL \inst6|Add8~51\ : std_logic;
SIGNAL \inst6|Add8~52_combout\ : std_logic;
SIGNAL \inst6|Add8~93_combout\ : std_logic;
SIGNAL \inst6|Add8~53\ : std_logic;
SIGNAL \inst6|Add8~54_combout\ : std_logic;
SIGNAL \inst6|Add8~94_combout\ : std_logic;
SIGNAL \inst6|Add8~55\ : std_logic;
SIGNAL \inst6|Add8~56_combout\ : std_logic;
SIGNAL \inst6|Add8~95_combout\ : std_logic;
SIGNAL \inst6|Add8~57\ : std_logic;
SIGNAL \inst6|Add8~58_combout\ : std_logic;
SIGNAL \inst6|Add8~67_combout\ : std_logic;
SIGNAL \inst6|Add8~59\ : std_logic;
SIGNAL \inst6|Add8~60_combout\ : std_logic;
SIGNAL \inst6|Add8~68_combout\ : std_logic;
SIGNAL \inst6|Add8~61\ : std_logic;
SIGNAL \inst6|Add8~62_combout\ : std_logic;
SIGNAL \inst6|Add8~69_combout\ : std_logic;
SIGNAL \inst6|LessThan25~24_combout\ : std_logic;
SIGNAL \inst6|LessThan25~27_combout\ : std_logic;
SIGNAL \inst6|LessThan25~26_combout\ : std_logic;
SIGNAL \inst6|LessThan25~28_combout\ : std_logic;
SIGNAL \inst6|LessThan25~25_combout\ : std_logic;
SIGNAL \inst6|LessThan25~29_combout\ : std_logic;
SIGNAL \inst6|Add8~63\ : std_logic;
SIGNAL \inst6|Add8~64_combout\ : std_logic;
SIGNAL \inst6|Add8~66_combout\ : std_logic;
SIGNAL \inst6|LessThan26~1_cout\ : std_logic;
SIGNAL \inst6|LessThan26~3_cout\ : std_logic;
SIGNAL \inst6|LessThan26~5_cout\ : std_logic;
SIGNAL \inst6|LessThan26~7_cout\ : std_logic;
SIGNAL \inst6|LessThan26~9_cout\ : std_logic;
SIGNAL \inst6|LessThan26~11_cout\ : std_logic;
SIGNAL \inst6|LessThan26~13_cout\ : std_logic;
SIGNAL \inst6|LessThan26~15_cout\ : std_logic;
SIGNAL \inst6|LessThan26~17_cout\ : std_logic;
SIGNAL \inst6|LessThan26~19_cout\ : std_logic;
SIGNAL \inst6|LessThan26~21_cout\ : std_logic;
SIGNAL \inst6|LessThan26~22_combout\ : std_logic;
SIGNAL \inst6|process_0~36_combout\ : std_logic;
SIGNAL \inst6|process_0~43_combout\ : std_logic;
SIGNAL \inst6|LessThan29~0_combout\ : std_logic;
SIGNAL \inst6|process_0~25_combout\ : std_logic;
SIGNAL \inst6|process_0~23_combout\ : std_logic;
SIGNAL \inst6|process_0~24_combout\ : std_logic;
SIGNAL \inst6|process_0~26_combout\ : std_logic;
SIGNAL \inst6|LessThan11~0_combout\ : std_logic;
SIGNAL \inst6|process_0~17_combout\ : std_logic;
SIGNAL \inst6|process_0~18_combout\ : std_logic;
SIGNAL \inst6|process_0~19_combout\ : std_logic;
SIGNAL \inst6|n_x1[1]~31_combout\ : std_logic;
SIGNAL \inst6|n_x1[1]~32\ : std_logic;
SIGNAL \inst6|n_x1[2]~33_combout\ : std_logic;
SIGNAL \inst6|n_x1[2]~34\ : std_logic;
SIGNAL \inst6|n_x1[3]~35_combout\ : std_logic;
SIGNAL \inst6|n_x1[3]~36\ : std_logic;
SIGNAL \inst6|n_x1[4]~37_combout\ : std_logic;
SIGNAL \inst6|n_x1[4]~38\ : std_logic;
SIGNAL \inst6|n_x1[5]~39_combout\ : std_logic;
SIGNAL \inst6|n_x1[5]~40\ : std_logic;
SIGNAL \inst6|n_x1[6]~41_combout\ : std_logic;
SIGNAL \inst6|n_x1[6]~42\ : std_logic;
SIGNAL \inst6|n_x1[7]~43_combout\ : std_logic;
SIGNAL \inst6|n_x1[7]~44\ : std_logic;
SIGNAL \inst6|n_x1[8]~45_combout\ : std_logic;
SIGNAL \inst6|n_x1[8]~46\ : std_logic;
SIGNAL \inst6|n_x1[9]~47_combout\ : std_logic;
SIGNAL \inst6|n_x1[9]~48\ : std_logic;
SIGNAL \inst6|n_x1[10]~49_combout\ : std_logic;
SIGNAL \inst6|n_x1[10]~50\ : std_logic;
SIGNAL \inst6|n_x1[11]~51_combout\ : std_logic;
SIGNAL \inst6|n_x1[11]~52\ : std_logic;
SIGNAL \inst6|n_x1[12]~53_combout\ : std_logic;
SIGNAL \inst6|n_x1[12]~54\ : std_logic;
SIGNAL \inst6|n_x1[13]~55_combout\ : std_logic;
SIGNAL \inst6|n_x1[13]~56\ : std_logic;
SIGNAL \inst6|n_x1[14]~57_combout\ : std_logic;
SIGNAL \inst6|n_x1[14]~58\ : std_logic;
SIGNAL \inst6|n_x1[15]~59_combout\ : std_logic;
SIGNAL \inst6|n_x1[15]~60\ : std_logic;
SIGNAL \inst6|n_x1[16]~61_combout\ : std_logic;
SIGNAL \inst6|n_x1[16]~62\ : std_logic;
SIGNAL \inst6|n_x1[17]~63_combout\ : std_logic;
SIGNAL \inst6|n_x1[17]~64\ : std_logic;
SIGNAL \inst6|n_x1[18]~65_combout\ : std_logic;
SIGNAL \inst6|n_x1[18]~66\ : std_logic;
SIGNAL \inst6|n_x1[19]~67_combout\ : std_logic;
SIGNAL \inst6|n_x1[19]~68\ : std_logic;
SIGNAL \inst6|n_x1[20]~69_combout\ : std_logic;
SIGNAL \inst6|n_x1[20]~70\ : std_logic;
SIGNAL \inst6|n_x1[21]~71_combout\ : std_logic;
SIGNAL \inst6|n_x1[21]~72\ : std_logic;
SIGNAL \inst6|n_x1[22]~73_combout\ : std_logic;
SIGNAL \inst6|n_x1[22]~74\ : std_logic;
SIGNAL \inst6|n_x1[23]~75_combout\ : std_logic;
SIGNAL \inst6|n_x1[23]~76\ : std_logic;
SIGNAL \inst6|n_x1[24]~77_combout\ : std_logic;
SIGNAL \inst6|n_x1[24]~78\ : std_logic;
SIGNAL \inst6|n_x1[25]~79_combout\ : std_logic;
SIGNAL \inst6|n_x1[25]~80\ : std_logic;
SIGNAL \inst6|n_x1[26]~81_combout\ : std_logic;
SIGNAL \inst6|n_x1[26]~82\ : std_logic;
SIGNAL \inst6|n_x1[27]~83_combout\ : std_logic;
SIGNAL \inst6|n_x1[27]~84\ : std_logic;
SIGNAL \inst6|n_x1[28]~85_combout\ : std_logic;
SIGNAL \inst6|n_x1[28]~86\ : std_logic;
SIGNAL \inst6|n_x1[29]~87_combout\ : std_logic;
SIGNAL \inst6|n_x1[29]~88\ : std_logic;
SIGNAL \inst6|n_x1[30]~89_combout\ : std_logic;
SIGNAL \inst6|n_x1[30]~90\ : std_logic;
SIGNAL \inst6|n_x1[31]~91_combout\ : std_logic;
SIGNAL \inst6|LessThan38~31_combout\ : std_logic;
SIGNAL \inst6|LessThan38~29_combout\ : std_logic;
SIGNAL \inst6|LessThan38~30_combout\ : std_logic;
SIGNAL \inst6|LessThan38~25_combout\ : std_logic;
SIGNAL \inst6|LessThan38~27_combout\ : std_logic;
SIGNAL \inst6|LessThan38~26_combout\ : std_logic;
SIGNAL \inst6|LessThan38~1_cout\ : std_logic;
SIGNAL \inst6|LessThan38~3_cout\ : std_logic;
SIGNAL \inst6|LessThan38~5_cout\ : std_logic;
SIGNAL \inst6|LessThan38~7_cout\ : std_logic;
SIGNAL \inst6|LessThan38~9_cout\ : std_logic;
SIGNAL \inst6|LessThan38~11_cout\ : std_logic;
SIGNAL \inst6|LessThan38~13_cout\ : std_logic;
SIGNAL \inst6|LessThan38~15_cout\ : std_logic;
SIGNAL \inst6|LessThan38~17_cout\ : std_logic;
SIGNAL \inst6|LessThan38~19_cout\ : std_logic;
SIGNAL \inst6|LessThan38~21_cout\ : std_logic;
SIGNAL \inst6|LessThan38~22_combout\ : std_logic;
SIGNAL \inst6|LessThan38~24_combout\ : std_logic;
SIGNAL \inst6|LessThan38~28_combout\ : std_logic;
SIGNAL \inst6|process_0~20_combout\ : std_logic;
SIGNAL \inst6|process_0~28_combout\ : std_logic;
SIGNAL \inst6|process_0~27_combout\ : std_logic;
SIGNAL \inst6|process_0~29_combout\ : std_logic;
SIGNAL \inst6|process_0~30_combout\ : std_logic;
SIGNAL \inst6|LessThan37~1_cout\ : std_logic;
SIGNAL \inst6|LessThan37~3_cout\ : std_logic;
SIGNAL \inst6|LessThan37~5_cout\ : std_logic;
SIGNAL \inst6|LessThan37~7_cout\ : std_logic;
SIGNAL \inst6|LessThan37~9_cout\ : std_logic;
SIGNAL \inst6|LessThan37~11_cout\ : std_logic;
SIGNAL \inst6|LessThan37~13_cout\ : std_logic;
SIGNAL \inst6|LessThan37~15_cout\ : std_logic;
SIGNAL \inst6|LessThan37~17_cout\ : std_logic;
SIGNAL \inst6|LessThan37~19_cout\ : std_logic;
SIGNAL \inst6|LessThan37~21_cout\ : std_logic;
SIGNAL \inst6|LessThan37~22_combout\ : std_logic;
SIGNAL \inst6|process_0~21_combout\ : std_logic;
SIGNAL \inst6|LessThan35~0_combout\ : std_logic;
SIGNAL \inst6|LessThan35~1_combout\ : std_logic;
SIGNAL \inst6|process_0~22_combout\ : std_logic;
SIGNAL \inst6|green~1_combout\ : std_logic;
SIGNAL \inst6|Add6~3\ : std_logic;
SIGNAL \inst6|Add6~4_combout\ : std_logic;
SIGNAL \inst6|Add6~74_combout\ : std_logic;
SIGNAL \inst6|Add6~5\ : std_logic;
SIGNAL \inst6|Add6~6_combout\ : std_logic;
SIGNAL \inst6|Add6~73_combout\ : std_logic;
SIGNAL \inst6|Add6~7\ : std_logic;
SIGNAL \inst6|Add6~8_combout\ : std_logic;
SIGNAL \inst6|Add6~72_combout\ : std_logic;
SIGNAL \inst6|Add6~9\ : std_logic;
SIGNAL \inst6|Add6~10_combout\ : std_logic;
SIGNAL \inst6|Add6~71_combout\ : std_logic;
SIGNAL \inst6|Add6~11\ : std_logic;
SIGNAL \inst6|Add6~12_combout\ : std_logic;
SIGNAL \inst6|Add6~70_combout\ : std_logic;
SIGNAL \inst6|Add6~13\ : std_logic;
SIGNAL \inst6|Add6~14_combout\ : std_logic;
SIGNAL \inst6|Add6~69_combout\ : std_logic;
SIGNAL \inst6|Add6~15\ : std_logic;
SIGNAL \inst6|Add6~16_combout\ : std_logic;
SIGNAL \inst6|Add6~68_combout\ : std_logic;
SIGNAL \inst6|Add6~17\ : std_logic;
SIGNAL \inst6|Add6~18_combout\ : std_logic;
SIGNAL \inst6|Add6~67_combout\ : std_logic;
SIGNAL \inst6|Add6~19\ : std_logic;
SIGNAL \inst6|Add6~20_combout\ : std_logic;
SIGNAL \inst6|Add6~66_combout\ : std_logic;
SIGNAL \inst6|Add6~21\ : std_logic;
SIGNAL \inst6|Add6~22_combout\ : std_logic;
SIGNAL \inst6|Add6~65_combout\ : std_logic;
SIGNAL \inst6|Add6~23\ : std_logic;
SIGNAL \inst6|Add6~24_combout\ : std_logic;
SIGNAL \inst6|Add6~77_combout\ : std_logic;
SIGNAL \inst6|Add6~25\ : std_logic;
SIGNAL \inst6|Add6~26_combout\ : std_logic;
SIGNAL \inst6|Add6~78_combout\ : std_logic;
SIGNAL \inst6|Add6~27\ : std_logic;
SIGNAL \inst6|Add6~28_combout\ : std_logic;
SIGNAL \inst6|Add6~79_combout\ : std_logic;
SIGNAL \inst6|Add6~29\ : std_logic;
SIGNAL \inst6|Add6~30_combout\ : std_logic;
SIGNAL \inst6|Add6~80_combout\ : std_logic;
SIGNAL \inst6|Add6~31\ : std_logic;
SIGNAL \inst6|Add6~32_combout\ : std_logic;
SIGNAL \inst6|Add6~81_combout\ : std_logic;
SIGNAL \inst6|Add6~33\ : std_logic;
SIGNAL \inst6|Add6~34_combout\ : std_logic;
SIGNAL \inst6|Add6~82_combout\ : std_logic;
SIGNAL \inst6|Add6~35\ : std_logic;
SIGNAL \inst6|Add6~36_combout\ : std_logic;
SIGNAL \inst6|Add6~83_combout\ : std_logic;
SIGNAL \inst6|Add6~37\ : std_logic;
SIGNAL \inst6|Add6~38_combout\ : std_logic;
SIGNAL \inst6|Add6~84_combout\ : std_logic;
SIGNAL \inst6|Add6~39\ : std_logic;
SIGNAL \inst6|Add6~40_combout\ : std_logic;
SIGNAL \inst6|Add6~85_combout\ : std_logic;
SIGNAL \inst6|Add6~41\ : std_logic;
SIGNAL \inst6|Add6~42_combout\ : std_logic;
SIGNAL \inst6|Add6~86_combout\ : std_logic;
SIGNAL \inst6|Add6~43\ : std_logic;
SIGNAL \inst6|Add6~44_combout\ : std_logic;
SIGNAL \inst6|Add6~87_combout\ : std_logic;
SIGNAL \inst6|Add6~45\ : std_logic;
SIGNAL \inst6|Add6~46_combout\ : std_logic;
SIGNAL \inst6|Add6~88_combout\ : std_logic;
SIGNAL \inst6|Add6~47\ : std_logic;
SIGNAL \inst6|Add6~48_combout\ : std_logic;
SIGNAL \inst6|Add6~89_combout\ : std_logic;
SIGNAL \inst6|Add6~49\ : std_logic;
SIGNAL \inst6|Add6~50_combout\ : std_logic;
SIGNAL \inst6|Add6~90_combout\ : std_logic;
SIGNAL \inst6|Add6~51\ : std_logic;
SIGNAL \inst6|Add6~52_combout\ : std_logic;
SIGNAL \inst6|Add6~91_combout\ : std_logic;
SIGNAL \inst6|Add6~53\ : std_logic;
SIGNAL \inst6|Add6~54_combout\ : std_logic;
SIGNAL \inst6|Add6~92_combout\ : std_logic;
SIGNAL \inst6|Add6~55\ : std_logic;
SIGNAL \inst6|Add6~56_combout\ : std_logic;
SIGNAL \inst6|Add6~58_combout\ : std_logic;
SIGNAL \inst6|Add6~57\ : std_logic;
SIGNAL \inst6|Add6~59_combout\ : std_logic;
SIGNAL \inst6|Add6~61_combout\ : std_logic;
SIGNAL \inst6|Add6~60\ : std_logic;
SIGNAL \inst6|Add6~62_combout\ : std_logic;
SIGNAL \inst6|Add6~64_combout\ : std_logic;
SIGNAL \inst6|Add6~63\ : std_logic;
SIGNAL \inst6|Add6~93_combout\ : std_logic;
SIGNAL \inst6|Add6~95_combout\ : std_logic;
SIGNAL \inst6|LessThan22~1_cout\ : std_logic;
SIGNAL \inst6|LessThan22~3_cout\ : std_logic;
SIGNAL \inst6|LessThan22~5_cout\ : std_logic;
SIGNAL \inst6|LessThan22~7_cout\ : std_logic;
SIGNAL \inst6|LessThan22~9_cout\ : std_logic;
SIGNAL \inst6|LessThan22~11_cout\ : std_logic;
SIGNAL \inst6|LessThan22~13_cout\ : std_logic;
SIGNAL \inst6|LessThan22~15_cout\ : std_logic;
SIGNAL \inst6|LessThan22~17_cout\ : std_logic;
SIGNAL \inst6|LessThan22~19_cout\ : std_logic;
SIGNAL \inst6|LessThan22~21_cout\ : std_logic;
SIGNAL \inst6|LessThan22~22_combout\ : std_logic;
SIGNAL \inst6|LessThan12~0_combout\ : std_logic;
SIGNAL \inst6|LessThan28~0_combout\ : std_logic;
SIGNAL \inst6|LessThan20~0_combout\ : std_logic;
SIGNAL \inst6|LessThan20~1_combout\ : std_logic;
SIGNAL \inst6|process_0~15_combout\ : std_logic;
SIGNAL \inst6|LessThan21~1_cout\ : std_logic;
SIGNAL \inst6|LessThan21~3_cout\ : std_logic;
SIGNAL \inst6|LessThan21~5_cout\ : std_logic;
SIGNAL \inst6|LessThan21~7_cout\ : std_logic;
SIGNAL \inst6|LessThan21~9_cout\ : std_logic;
SIGNAL \inst6|LessThan21~11_cout\ : std_logic;
SIGNAL \inst6|LessThan21~13_cout\ : std_logic;
SIGNAL \inst6|LessThan21~15_cout\ : std_logic;
SIGNAL \inst6|LessThan21~17_cout\ : std_logic;
SIGNAL \inst6|LessThan21~19_cout\ : std_logic;
SIGNAL \inst6|LessThan21~21_cout\ : std_logic;
SIGNAL \inst6|LessThan21~22_combout\ : std_logic;
SIGNAL \inst6|LessThan21~24_combout\ : std_logic;
SIGNAL \inst6|LessThan21~27_combout\ : std_logic;
SIGNAL \inst6|LessThan21~25_combout\ : std_logic;
SIGNAL \inst6|LessThan21~26_combout\ : std_logic;
SIGNAL \inst6|LessThan21~28_combout\ : std_logic;
SIGNAL \inst6|LessThan21~29_combout\ : std_logic;
SIGNAL \inst6|process_0~13_combout\ : std_logic;
SIGNAL \inst6|process_0~16_combout\ : std_logic;
SIGNAL \inst6|LessThan27~0_combout\ : std_logic;
SIGNAL \inst6|LessThan27~1_combout\ : std_logic;
SIGNAL \inst6|process_0~45_combout\ : std_logic;
SIGNAL \inst6|LessThan30~1_combout\ : std_logic;
SIGNAL \inst6|LessThan30~2_combout\ : std_logic;
SIGNAL \inst6|LessThan30~3_combout\ : std_logic;
SIGNAL \inst6|LessThan28~1_combout\ : std_logic;
SIGNAL \inst6|LessThan29~2_combout\ : std_logic;
SIGNAL \inst6|LessThan29~1_combout\ : std_logic;
SIGNAL \inst6|LessThan29~3_combout\ : std_logic;
SIGNAL \inst6|process_0~44_combout\ : std_logic;
SIGNAL \inst6|process_0~46_combout\ : std_logic;
SIGNAL \inst6|green~2_combout\ : std_logic;
SIGNAL \inst6|LessThan12~1_combout\ : std_logic;
SIGNAL \inst6|LessThan12~2_combout\ : std_logic;
SIGNAL \inst6|LessThan12~3_combout\ : std_logic;
SIGNAL \inst6|LessThan13~0_combout\ : std_logic;
SIGNAL \inst6|process_0~55_combout\ : std_logic;
SIGNAL \inst6|process_0~56_combout\ : std_logic;
SIGNAL \inst6|process_0~57_combout\ : std_logic;
SIGNAL \inst6|blue[7]~0_combout\ : std_logic;
SIGNAL \inst6|green[7]~3_combout\ : std_logic;
SIGNAL \inst6|green[7]~4_combout\ : std_logic;
SIGNAL \inst6|red[7]~0_combout\ : std_logic;
SIGNAL \inst6|red[7]~1_combout\ : std_logic;
SIGNAL \inst6|red[7]~2_combout\ : std_logic;
SIGNAL \inst6|c_x1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst2|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|n_x1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|n_x2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|counter1\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst1|row\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|b_y1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|b_y2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|c_x2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|d_x1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|d_x2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|a_x2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|a_x1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|h_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|v_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst6|back2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst6|ALT_INV_comb~0_combout\ : std_logic;

BEGIN

pixel_clk <= ww_pixel_clk;
ww_clk <= clk;
h_sync <= ww_h_sync;
v_sync <= ww_v_sync;
n_blank <= ww_n_blank;
n_sync <= ww_n_sync;
blue <= ww_blue;
ww_reset <= reset;
ww_keypjump <= keypjump;
green <= ww_green;
red <= ww_red;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst2|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst2|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst2|altpll_component|auto_generated|pll1_CLK_bus\(4);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst6|ALT_INV_comb~0_combout\ <= NOT \inst6|comb~0_combout\;

-- Location: IOOBUF_X47_Y73_N2
\pixel_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_pixel_clk);

-- Location: IOOBUF_X38_Y73_N16
\h_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|h_sync~q\,
	devoe => ww_devoe,
	o => ww_h_sync);

-- Location: IOOBUF_X54_Y73_N2
\v_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|v_sync~q\,
	devoe => ww_devoe,
	o => ww_v_sync);

-- Location: IOOBUF_X31_Y73_N9
\n_blank~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_n_blank);

-- Location: IOOBUF_X35_Y73_N16
\n_sync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_n_sync);

-- Location: IOOBUF_X52_Y73_N23
\blue[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|blue[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_blue(7));

-- Location: IOOBUF_X23_Y73_N9
\blue[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|blue[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_blue(6));

-- Location: IOOBUF_X52_Y73_N16
\blue[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|blue[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_blue(5));

-- Location: IOOBUF_X42_Y73_N2
\blue[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|blue[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_blue(4));

-- Location: IOOBUF_X42_Y73_N9
\blue[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|blue[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_blue(3));

-- Location: IOOBUF_X23_Y73_N2
\blue[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|blue[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_blue(2));

-- Location: IOOBUF_X38_Y73_N2
\blue[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|blue[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_blue(1));

-- Location: IOOBUF_X38_Y73_N9
\blue[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|blue[7]~0_combout\,
	devoe => ww_devoe,
	o => ww_blue(0));

-- Location: IOOBUF_X23_Y73_N16
\green[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|green[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(7));

-- Location: IOOBUF_X20_Y73_N2
\green[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|green[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(6));

-- Location: IOOBUF_X16_Y73_N2
\green[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|green[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(5));

-- Location: IOOBUF_X16_Y73_N9
\green[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|green[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(4));

-- Location: IOOBUF_X25_Y73_N23
\green[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|green[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(3));

-- Location: IOOBUF_X11_Y73_N9
\green[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|green[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(2));

-- Location: IOOBUF_X25_Y73_N16
\green[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|green[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(1));

-- Location: IOOBUF_X11_Y73_N16
\green[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|green[7]~4_combout\,
	devoe => ww_devoe,
	o => ww_green(0));

-- Location: IOOBUF_X20_Y73_N16
\red[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|red[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_red(7));

-- Location: IOOBUF_X11_Y73_N23
\red[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|red[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_red(6));

-- Location: IOOBUF_X40_Y73_N9
\red[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|red[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_red(5));

-- Location: IOOBUF_X20_Y73_N9
\red[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|red[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_red(4));

-- Location: IOOBUF_X33_Y73_N9
\red[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|red[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_red(3));

-- Location: IOOBUF_X35_Y73_N23
\red[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|red[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_red(2));

-- Location: IOOBUF_X31_Y73_N2
\red[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|red[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_red(1));

-- Location: IOOBUF_X33_Y73_N2
\red[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|red[7]~2_combout\,
	devoe => ww_devoe,
	o => ww_red(0));

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_1
\inst2|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 2,
	c0_initial => 1,
	c0_low => 1,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 15,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 58,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 19,
	m => 58,
	m_initial => 1,
	m_ph => 0,
	n => 5,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 215,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst2|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst2|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst2|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y40_N4
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|h_count\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X13_Y44_N28
\inst1|h_count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~6_combout\ = (\inst1|LessThan0~3_combout\ & \inst1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~3_combout\,
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|h_count~6_combout\);

-- Location: FF_X13_Y44_N29
\inst1|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(0));

-- Location: LCCOMB_X10_Y40_N6
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|h_count\(1) & (!\inst1|Add0~1\)) # (!\inst1|h_count\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X13_Y44_N10
\inst1|h_count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~5_combout\ = (\inst1|LessThan0~3_combout\ & \inst1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~3_combout\,
	datac => \inst1|Add0~2_combout\,
	combout => \inst1|h_count~5_combout\);

-- Location: FF_X13_Y44_N11
\inst1|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(1));

-- Location: LCCOMB_X10_Y40_N8
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|h_count\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|h_count\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|h_count\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X13_Y44_N8
\inst1|h_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~4_combout\ = (\inst1|LessThan0~3_combout\ & \inst1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~3_combout\,
	datac => \inst1|Add0~4_combout\,
	combout => \inst1|h_count~4_combout\);

-- Location: FF_X13_Y44_N9
\inst1|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(2));

-- Location: LCCOMB_X10_Y40_N10
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|h_count\(3) & (!\inst1|Add0~5\)) # (!\inst1|h_count\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X13_Y40_N20
\inst1|h_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~8_combout\ = (\inst1|Add0~6_combout\ & \inst1|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~6_combout\,
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|h_count~8_combout\);

-- Location: FF_X13_Y40_N21
\inst1|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(3));

-- Location: LCCOMB_X10_Y40_N12
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|h_count\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|h_count\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|h_count\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X10_Y40_N0
\inst1|h_count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~7_combout\ = (\inst1|LessThan0~3_combout\ & \inst1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|LessThan0~3_combout\,
	datad => \inst1|Add0~8_combout\,
	combout => \inst1|h_count~7_combout\);

-- Location: FF_X10_Y40_N1
\inst1|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(4));

-- Location: LCCOMB_X10_Y40_N14
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|h_count\(5) & (!\inst1|Add0~9\)) # (!\inst1|h_count\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X13_Y40_N6
\inst1|h_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~2_combout\ = (\inst1|LessThan0~3_combout\ & \inst1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan0~3_combout\,
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|h_count~2_combout\);

-- Location: FF_X13_Y40_N7
\inst1|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(5));

-- Location: LCCOMB_X10_Y40_N16
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|h_count\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|h_count\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|h_count\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X10_Y40_N18
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|h_count\(7) & (!\inst1|Add0~13\)) # (!\inst1|h_count\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X13_Y40_N14
\inst1|h_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~3_combout\ = (\inst1|LessThan0~3_combout\ & \inst1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan0~3_combout\,
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|h_count~3_combout\);

-- Location: FF_X13_Y40_N15
\inst1|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(7));

-- Location: LCCOMB_X10_Y40_N20
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|h_count\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|h_count\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|h_count\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X13_Y40_N12
\inst1|h_count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~11_combout\ = (\inst1|LessThan0~3_combout\ & \inst1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan0~3_combout\,
	datac => \inst1|Add0~16_combout\,
	combout => \inst1|h_count~11_combout\);

-- Location: FF_X13_Y40_N13
\inst1|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(8));

-- Location: LCCOMB_X10_Y40_N22
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|h_count\(9) & (!\inst1|Add0~17\)) # (!\inst1|h_count\(9) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X13_Y40_N16
\inst1|h_count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~10_combout\ = (\inst1|LessThan0~3_combout\ & \inst1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan0~3_combout\,
	datac => \inst1|Add0~18_combout\,
	combout => \inst1|h_count~10_combout\);

-- Location: FF_X13_Y40_N17
\inst1|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(9));

-- Location: LCCOMB_X10_Y40_N24
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (\inst1|h_count\(10) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|h_count\(10) & (!\inst1|Add0~19\ & VCC))
-- \inst1|Add0~21\ = CARRY((\inst1|h_count\(10) & !\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\,
	cout => \inst1|Add0~21\);

-- Location: LCCOMB_X13_Y44_N22
\inst1|h_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~9_combout\ = (\inst1|LessThan0~3_combout\ & \inst1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~3_combout\,
	datad => \inst1|Add0~20_combout\,
	combout => \inst1|h_count~9_combout\);

-- Location: FF_X13_Y44_N23
\inst1|h_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(10));

-- Location: LCCOMB_X10_Y40_N26
\inst1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~22_combout\ = \inst1|Add0~21\ $ (\inst1|h_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count\(11),
	cin => \inst1|Add0~21\,
	combout => \inst1|Add0~22_combout\);

-- Location: LCCOMB_X13_Y40_N10
\inst1|h_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~0_combout\ = (\inst1|LessThan0~3_combout\ & \inst1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan0~3_combout\,
	datac => \inst1|Add0~22_combout\,
	combout => \inst1|h_count~0_combout\);

-- Location: FF_X13_Y40_N11
\inst1|h_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(11));

-- Location: LCCOMB_X13_Y44_N16
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = ((!\inst1|h_count\(2) & ((!\inst1|h_count\(0)) # (!\inst1|h_count\(1))))) # (!\inst1|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(1),
	datab => \inst1|h_count\(5),
	datac => \inst1|h_count\(2),
	datad => \inst1|h_count\(0),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X10_Y40_N2
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (\inst1|h_count\(4) & (!\inst1|LessThan0~0_combout\ & \inst1|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(4),
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst1|h_count\(3),
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X10_Y40_N28
\inst1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = (\inst1|h_count\(8) & ((\inst1|h_count\(7)) # ((\inst1|LessThan0~1_combout\) # (\inst1|h_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(7),
	datab => \inst1|LessThan0~1_combout\,
	datac => \inst1|h_count\(8),
	datad => \inst1|h_count\(6),
	combout => \inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X10_Y40_N30
\inst1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_combout\ = ((!\inst1|LessThan0~2_combout\ & (!\inst1|h_count\(9) & !\inst1|h_count\(10)))) # (!\inst1|h_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(11),
	datab => \inst1|LessThan0~2_combout\,
	datac => \inst1|h_count\(9),
	datad => \inst1|h_count\(10),
	combout => \inst1|LessThan0~3_combout\);

-- Location: LCCOMB_X13_Y40_N8
\inst1|h_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|h_count~1_combout\ = (\inst1|LessThan0~3_combout\ & \inst1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan0~3_combout\,
	datad => \inst1|Add0~12_combout\,
	combout => \inst1|h_count~1_combout\);

-- Location: FF_X13_Y40_N9
\inst1|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(6));

-- Location: LCCOMB_X13_Y40_N26
\inst1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~0_combout\ = ((!\inst1|Add0~10_combout\ & ((!\inst1|Add0~6_combout\) # (!\inst1|Add0~8_combout\)))) # (!\inst1|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~10_combout\,
	datab => \inst1|Add0~8_combout\,
	datac => \inst1|Add0~6_combout\,
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|LessThan2~0_combout\);

-- Location: LCCOMB_X13_Y40_N28
\inst1|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~1_combout\ = (\inst1|Add0~18_combout\ & (\inst1|Add0~16_combout\ & (\inst1|Add0~20_combout\ & \inst1|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~18_combout\,
	datab => \inst1|Add0~16_combout\,
	datac => \inst1|Add0~20_combout\,
	datad => \inst1|Add0~14_combout\,
	combout => \inst1|LessThan2~1_combout\);

-- Location: LCCOMB_X13_Y40_N30
\inst1|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~2_combout\ = (((\inst1|LessThan2~0_combout\) # (!\inst1|LessThan2~1_combout\)) # (!\inst1|LessThan0~3_combout\)) # (!\inst1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~12_combout\,
	datab => \inst1|LessThan0~3_combout\,
	datac => \inst1|LessThan2~0_combout\,
	datad => \inst1|LessThan2~1_combout\,
	combout => \inst1|LessThan2~2_combout\);

-- Location: LCCOMB_X13_Y40_N24
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (\inst1|Add0~8_combout\) # (\inst1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~8_combout\,
	datac => \inst1|Add0~6_combout\,
	combout => \inst1|process_0~0_combout\);

-- Location: LCCOMB_X13_Y40_N18
\inst1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~1_combout\ = (\inst1|Add0~14_combout\ & ((\inst1|h_count~1_combout\) # ((\inst1|h_count~2_combout\ & \inst1|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count~2_combout\,
	datab => \inst1|process_0~0_combout\,
	datac => \inst1|Add0~14_combout\,
	datad => \inst1|h_count~1_combout\,
	combout => \inst1|process_0~1_combout\);

-- Location: LCCOMB_X13_Y40_N4
\inst1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~2_combout\ = (\inst1|Add0~18_combout\) # ((\inst1|Add0~16_combout\) # (\inst1|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~18_combout\,
	datab => \inst1|Add0~16_combout\,
	datac => \inst1|Add0~20_combout\,
	combout => \inst1|process_0~2_combout\);

-- Location: LCCOMB_X13_Y40_N0
\inst1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~3_combout\ = (\inst1|h_count~0_combout\ & (((\inst1|process_0~1_combout\) # (\inst1|process_0~2_combout\)))) # (!\inst1|h_count~0_combout\ & (\inst1|LessThan2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan2~2_combout\,
	datab => \inst1|process_0~1_combout\,
	datac => \inst1|process_0~2_combout\,
	datad => \inst1|h_count~0_combout\,
	combout => \inst1|process_0~3_combout\);

-- Location: FF_X13_Y40_N1
\inst1|h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_sync~q\);

-- Location: FF_X13_Y44_N31
\inst1|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(1));

-- Location: LCCOMB_X12_Y44_N10
\inst1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = \inst1|v_count\(0) $ (VCC)
-- \inst1|Add1~1\ = CARRY(\inst1|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(0),
	datad => VCC,
	combout => \inst1|Add1~0_combout\,
	cout => \inst1|Add1~1\);

-- Location: LCCOMB_X12_Y44_N0
\inst1|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~3_combout\ = (\inst1|LessThan0~3_combout\ & ((\inst1|v_count\(0)) # ((\inst1|Add1~0_combout\ & \inst1|Add1~2_combout\)))) # (!\inst1|LessThan0~3_combout\ & (\inst1|Add1~0_combout\ & ((\inst1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~3_combout\,
	datab => \inst1|Add1~0_combout\,
	datac => \inst1|v_count\(0),
	datad => \inst1|Add1~2_combout\,
	combout => \inst1|Add1~3_combout\);

-- Location: FF_X12_Y44_N1
\inst1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(0));

-- Location: LCCOMB_X12_Y44_N12
\inst1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~4_combout\ = (\inst1|v_count\(1) & (!\inst1|Add1~1\)) # (!\inst1|v_count\(1) & ((\inst1|Add1~1\) # (GND)))
-- \inst1|Add1~5\ = CARRY((!\inst1|Add1~1\) # (!\inst1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(1),
	datad => VCC,
	cin => \inst1|Add1~1\,
	combout => \inst1|Add1~4_combout\,
	cout => \inst1|Add1~5\);

-- Location: LCCOMB_X12_Y44_N14
\inst1|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~7_combout\ = (\inst1|v_count\(2) & (\inst1|Add1~5\ $ (GND))) # (!\inst1|v_count\(2) & (!\inst1|Add1~5\ & VCC))
-- \inst1|Add1~8\ = CARRY((\inst1|v_count\(2) & !\inst1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(2),
	datad => VCC,
	cin => \inst1|Add1~5\,
	combout => \inst1|Add1~7_combout\,
	cout => \inst1|Add1~8\);

-- Location: LCCOMB_X12_Y44_N2
\inst1|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~30_combout\ = (\inst1|LessThan0~3_combout\ & ((\inst1|v_count\(2)) # ((\inst1|Add1~7_combout\ & \inst1|Add1~2_combout\)))) # (!\inst1|LessThan0~3_combout\ & (\inst1|Add1~7_combout\ & ((\inst1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~3_combout\,
	datab => \inst1|Add1~7_combout\,
	datac => \inst1|v_count\(2),
	datad => \inst1|Add1~2_combout\,
	combout => \inst1|Add1~30_combout\);

-- Location: FF_X12_Y44_N3
\inst1|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(2));

-- Location: LCCOMB_X12_Y44_N16
\inst1|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~9_combout\ = (\inst1|v_count\(3) & (!\inst1|Add1~8\)) # (!\inst1|v_count\(3) & ((\inst1|Add1~8\) # (GND)))
-- \inst1|Add1~10\ = CARRY((!\inst1|Add1~8\) # (!\inst1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(3),
	datad => VCC,
	cin => \inst1|Add1~8\,
	combout => \inst1|Add1~9_combout\,
	cout => \inst1|Add1~10\);

-- Location: LCCOMB_X13_Y44_N4
\inst1|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~31_combout\ = (\inst1|Add1~2_combout\ & ((\inst1|Add1~9_combout\) # ((\inst1|v_count\(3) & \inst1|LessThan0~3_combout\)))) # (!\inst1|Add1~2_combout\ & (((\inst1|v_count\(3) & \inst1|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~2_combout\,
	datab => \inst1|Add1~9_combout\,
	datac => \inst1|v_count\(3),
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|Add1~31_combout\);

-- Location: FF_X13_Y44_N5
\inst1|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(3));

-- Location: LCCOMB_X12_Y44_N18
\inst1|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~11_combout\ = (\inst1|v_count\(4) & (\inst1|Add1~10\ $ (GND))) # (!\inst1|v_count\(4) & (!\inst1|Add1~10\ & VCC))
-- \inst1|Add1~12\ = CARRY((\inst1|v_count\(4) & !\inst1|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(4),
	datad => VCC,
	cin => \inst1|Add1~10\,
	combout => \inst1|Add1~11_combout\,
	cout => \inst1|Add1~12\);

-- Location: LCCOMB_X13_Y44_N2
\inst1|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~32_combout\ = (\inst1|Add1~2_combout\ & ((\inst1|Add1~11_combout\) # ((\inst1|v_count\(4) & \inst1|LessThan0~3_combout\)))) # (!\inst1|Add1~2_combout\ & (((\inst1|v_count\(4) & \inst1|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~2_combout\,
	datab => \inst1|Add1~11_combout\,
	datac => \inst1|v_count\(4),
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|Add1~32_combout\);

-- Location: FF_X13_Y44_N3
\inst1|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(4));

-- Location: LCCOMB_X12_Y44_N20
\inst1|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~13_combout\ = (\inst1|v_count\(5) & (!\inst1|Add1~12\)) # (!\inst1|v_count\(5) & ((\inst1|Add1~12\) # (GND)))
-- \inst1|Add1~14\ = CARRY((!\inst1|Add1~12\) # (!\inst1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(5),
	datad => VCC,
	cin => \inst1|Add1~12\,
	combout => \inst1|Add1~13_combout\,
	cout => \inst1|Add1~14\);

-- Location: LCCOMB_X13_Y44_N24
\inst1|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~33_combout\ = (\inst1|Add1~2_combout\ & ((\inst1|Add1~13_combout\) # ((\inst1|v_count\(5) & \inst1|LessThan0~3_combout\)))) # (!\inst1|Add1~2_combout\ & (((\inst1|v_count\(5) & \inst1|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~2_combout\,
	datab => \inst1|Add1~13_combout\,
	datac => \inst1|v_count\(5),
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|Add1~33_combout\);

-- Location: FF_X13_Y44_N25
\inst1|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(5));

-- Location: LCCOMB_X12_Y44_N22
\inst1|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~15_combout\ = (\inst1|v_count\(6) & (\inst1|Add1~14\ $ (GND))) # (!\inst1|v_count\(6) & (!\inst1|Add1~14\ & VCC))
-- \inst1|Add1~16\ = CARRY((\inst1|v_count\(6) & !\inst1|Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(6),
	datad => VCC,
	cin => \inst1|Add1~14\,
	combout => \inst1|Add1~15_combout\,
	cout => \inst1|Add1~16\);

-- Location: LCCOMB_X12_Y44_N6
\inst1|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~26_combout\ = (\inst1|LessThan0~3_combout\ & ((\inst1|v_count\(6)) # ((\inst1|Add1~15_combout\ & \inst1|Add1~2_combout\)))) # (!\inst1|LessThan0~3_combout\ & (\inst1|Add1~15_combout\ & ((\inst1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~3_combout\,
	datab => \inst1|Add1~15_combout\,
	datac => \inst1|v_count\(6),
	datad => \inst1|Add1~2_combout\,
	combout => \inst1|Add1~26_combout\);

-- Location: FF_X12_Y44_N7
\inst1|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(6));

-- Location: LCCOMB_X12_Y44_N4
\inst1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (!\inst1|v_count\(3) & (!\inst1|v_count\(2) & (!\inst1|v_count\(1) & !\inst1|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(3),
	datab => \inst1|v_count\(2),
	datac => \inst1|v_count\(1),
	datad => \inst1|v_count\(4),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X12_Y44_N8
\inst1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = ((\inst1|LessThan1~0_combout\) # (!\inst1|v_count\(5))) # (!\inst1|v_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(6),
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|v_count\(5),
	combout => \inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X12_Y44_N24
\inst1|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~17_combout\ = (\inst1|v_count\(7) & (!\inst1|Add1~16\)) # (!\inst1|v_count\(7) & ((\inst1|Add1~16\) # (GND)))
-- \inst1|Add1~18\ = CARRY((!\inst1|Add1~16\) # (!\inst1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(7),
	datad => VCC,
	cin => \inst1|Add1~16\,
	combout => \inst1|Add1~17_combout\,
	cout => \inst1|Add1~18\);

-- Location: LCCOMB_X19_Y44_N4
\inst1|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~27_combout\ = (\inst1|LessThan0~3_combout\ & ((\inst1|v_count\(7)) # ((\inst1|Add1~17_combout\ & \inst1|Add1~2_combout\)))) # (!\inst1|LessThan0~3_combout\ & (\inst1|Add1~17_combout\ & ((\inst1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~3_combout\,
	datab => \inst1|Add1~17_combout\,
	datac => \inst1|v_count\(7),
	datad => \inst1|Add1~2_combout\,
	combout => \inst1|Add1~27_combout\);

-- Location: FF_X19_Y44_N5
\inst1|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(7));

-- Location: LCCOMB_X12_Y44_N26
\inst1|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~19_combout\ = (\inst1|v_count\(8) & (\inst1|Add1~18\ $ (GND))) # (!\inst1|v_count\(8) & (!\inst1|Add1~18\ & VCC))
-- \inst1|Add1~20\ = CARRY((\inst1|v_count\(8) & !\inst1|Add1~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(8),
	datad => VCC,
	cin => \inst1|Add1~18\,
	combout => \inst1|Add1~19_combout\,
	cout => \inst1|Add1~20\);

-- Location: LCCOMB_X19_Y44_N10
\inst1|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~28_combout\ = (\inst1|LessThan0~3_combout\ & ((\inst1|v_count\(8)) # ((\inst1|Add1~19_combout\ & \inst1|Add1~2_combout\)))) # (!\inst1|LessThan0~3_combout\ & (\inst1|Add1~19_combout\ & ((\inst1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~3_combout\,
	datab => \inst1|Add1~19_combout\,
	datac => \inst1|v_count\(8),
	datad => \inst1|Add1~2_combout\,
	combout => \inst1|Add1~28_combout\);

-- Location: FF_X19_Y44_N11
\inst1|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(8));

-- Location: LCCOMB_X12_Y44_N28
\inst1|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~21_combout\ = (\inst1|v_count\(9) & (!\inst1|Add1~20\)) # (!\inst1|v_count\(9) & ((\inst1|Add1~20\) # (GND)))
-- \inst1|Add1~22\ = CARRY((!\inst1|Add1~20\) # (!\inst1|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(9),
	datad => VCC,
	cin => \inst1|Add1~20\,
	combout => \inst1|Add1~21_combout\,
	cout => \inst1|Add1~22\);

-- Location: LCCOMB_X19_Y44_N0
\inst1|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~29_combout\ = (\inst1|LessThan0~3_combout\ & ((\inst1|v_count\(9)) # ((\inst1|Add1~21_combout\ & \inst1|Add1~2_combout\)))) # (!\inst1|LessThan0~3_combout\ & (\inst1|Add1~21_combout\ & ((\inst1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~3_combout\,
	datab => \inst1|Add1~21_combout\,
	datac => \inst1|v_count\(9),
	datad => \inst1|Add1~2_combout\,
	combout => \inst1|Add1~29_combout\);

-- Location: FF_X19_Y44_N1
\inst1|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(9));

-- Location: LCCOMB_X19_Y44_N22
\inst1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~2_combout\ = (!\inst1|v_count\(9) & (!\inst1|v_count\(7) & !\inst1|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(9),
	datac => \inst1|v_count\(7),
	datad => \inst1|v_count\(8),
	combout => \inst1|LessThan1~2_combout\);

-- Location: LCCOMB_X12_Y44_N30
\inst1|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~23_combout\ = \inst1|v_count\(10) $ (!\inst1|Add1~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(10),
	cin => \inst1|Add1~22\,
	combout => \inst1|Add1~23_combout\);

-- Location: LCCOMB_X19_Y44_N16
\inst1|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~25_combout\ = (\inst1|LessThan0~3_combout\ & ((\inst1|v_count\(10)) # ((\inst1|Add1~23_combout\ & \inst1|Add1~2_combout\)))) # (!\inst1|LessThan0~3_combout\ & (\inst1|Add1~23_combout\ & ((\inst1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~3_combout\,
	datab => \inst1|Add1~23_combout\,
	datac => \inst1|v_count\(10),
	datad => \inst1|Add1~2_combout\,
	combout => \inst1|Add1~25_combout\);

-- Location: FF_X19_Y44_N17
\inst1|v_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(10));

-- Location: LCCOMB_X13_Y44_N26
\inst1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~2_combout\ = (!\inst1|LessThan0~3_combout\ & (((\inst1|LessThan1~1_combout\ & \inst1|LessThan1~2_combout\)) # (!\inst1|v_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~1_combout\,
	datab => \inst1|LessThan1~2_combout\,
	datac => \inst1|v_count\(10),
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|Add1~2_combout\);

-- Location: LCCOMB_X13_Y44_N30
\inst1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = (\inst1|Add1~2_combout\ & ((\inst1|Add1~4_combout\) # ((\inst1|LessThan0~3_combout\ & \inst1|v_count\(1))))) # (!\inst1|Add1~2_combout\ & (\inst1|LessThan0~3_combout\ & (\inst1|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~2_combout\,
	datab => \inst1|LessThan0~3_combout\,
	datac => \inst1|v_count\(1),
	datad => \inst1|Add1~4_combout\,
	combout => \inst1|Add1~6_combout\);

-- Location: LCCOMB_X13_Y44_N12
\inst1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = ((\inst1|Add1~6_combout\ & \inst1|Add1~3_combout\)) # (!\inst1|Add1~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~6_combout\,
	datab => \inst1|Add1~25_combout\,
	datac => \inst1|Add1~3_combout\,
	combout => \inst1|process_0~4_combout\);

-- Location: LCCOMB_X19_Y44_N2
\inst1|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~0_combout\ = (!\inst1|Add1~27_combout\ & (!\inst1|Add1~26_combout\ & (!\inst1|Add1~29_combout\ & !\inst1|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~27_combout\,
	datab => \inst1|Add1~26_combout\,
	datac => \inst1|Add1~29_combout\,
	datad => \inst1|Add1~28_combout\,
	combout => \inst1|LessThan7~0_combout\);

-- Location: LCCOMB_X13_Y44_N6
\inst1|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~1_combout\ = (\inst1|Add1~33_combout\ & (\inst1|Add1~31_combout\ & \inst1|Add1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add1~33_combout\,
	datac => \inst1|Add1~31_combout\,
	datad => \inst1|Add1~32_combout\,
	combout => \inst1|LessThan7~1_combout\);

-- Location: LCCOMB_X13_Y44_N0
\inst1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = (!\inst1|process_0~4_combout\ & (\inst1|Add1~30_combout\ & (\inst1|LessThan7~0_combout\ & \inst1|LessThan7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~4_combout\,
	datab => \inst1|Add1~30_combout\,
	datac => \inst1|LessThan7~0_combout\,
	datad => \inst1|LessThan7~1_combout\,
	combout => \inst1|process_0~5_combout\);

-- Location: FF_X13_Y44_N1
\inst1|v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_sync~q\);

-- Location: LCCOMB_X1_Y43_N26
\inst6|a_x1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~4_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add3~26_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~8_combout\,
	datac => \inst6|Add3~26_combout\,
	datad => \inst6|LessThan2~3_combout\,
	combout => \inst6|a_x1~4_combout\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X14_Y41_N0
\inst6|n_x2[0]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[0]~94_combout\ = !\inst6|n_x2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|n_x2\(0),
	combout => \inst6|n_x2[0]~94_combout\);

-- Location: IOIBUF_X115_Y40_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\keypjump~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_keypjump,
	o => \keypjump~input_o\);

-- Location: LCCOMB_X7_Y34_N2
\inst6|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~0_combout\ = \inst6|b_y2\(1) $ (GND)
-- \inst6|Add2~1\ = CARRY(!\inst6|b_y2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(1),
	datad => VCC,
	combout => \inst6|Add2~0_combout\,
	cout => \inst6|Add2~1\);

-- Location: LCCOMB_X7_Y35_N10
\inst6|Add2~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~92_combout\ = (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & (!\inst6|Add2~0_combout\ & !\inst6|b_y2\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add2~0_combout\,
	datad => \inst6|b_y2\(31),
	combout => \inst6|Add2~92_combout\);

-- Location: FF_X7_Y35_N11
\inst6|b_y2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add2~92_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(1));

-- Location: LCCOMB_X7_Y34_N4
\inst6|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~2_combout\ = (\inst6|b_y2\(2) & ((\inst6|Add2~1\) # (GND))) # (!\inst6|b_y2\(2) & (!\inst6|Add2~1\))
-- \inst6|Add2~3\ = CARRY((\inst6|b_y2\(2)) # (!\inst6|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(2),
	datad => VCC,
	cin => \inst6|Add2~1\,
	combout => \inst6|Add2~2_combout\,
	cout => \inst6|Add2~3\);

-- Location: LCCOMB_X6_Y35_N2
\inst6|Add2~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~91_combout\ = (!\keypjump~input_o\ & (!\inst6|b_y2\(31) & (!\inst6|Add2~2_combout\ & \inst6|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|b_y2\(31),
	datac => \inst6|Add2~2_combout\,
	datad => \inst6|LessThan1~2_combout\,
	combout => \inst6|Add2~91_combout\);

-- Location: FF_X6_Y35_N3
\inst6|b_y2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add2~91_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(2));

-- Location: LCCOMB_X7_Y34_N6
\inst6|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~4_combout\ = (\inst6|b_y2\(3) & ((GND) # (!\inst6|Add2~3\))) # (!\inst6|b_y2\(3) & (\inst6|Add2~3\ $ (GND)))
-- \inst6|Add2~5\ = CARRY((\inst6|b_y2\(3)) # (!\inst6|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(3),
	datad => VCC,
	cin => \inst6|Add2~3\,
	combout => \inst6|Add2~4_combout\,
	cout => \inst6|Add2~5\);

-- Location: LCCOMB_X6_Y35_N26
\inst6|Add2~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~90_combout\ = (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & (\inst6|Add2~4_combout\ & !\inst6|b_y2\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add2~4_combout\,
	datad => \inst6|b_y2\(31),
	combout => \inst6|Add2~90_combout\);

-- Location: FF_X6_Y35_N27
\inst6|b_y2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add2~90_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(3));

-- Location: LCCOMB_X7_Y34_N8
\inst6|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~6_combout\ = (\inst6|b_y2\(4) & (\inst6|Add2~5\ & VCC)) # (!\inst6|b_y2\(4) & (!\inst6|Add2~5\))
-- \inst6|Add2~7\ = CARRY((!\inst6|b_y2\(4) & !\inst6|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(4),
	datad => VCC,
	cin => \inst6|Add2~5\,
	combout => \inst6|Add2~6_combout\,
	cout => \inst6|Add2~7\);

-- Location: LCCOMB_X6_Y35_N0
\inst6|Add2~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~89_combout\ = (!\keypjump~input_o\ & (!\inst6|b_y2\(31) & (\inst6|Add2~6_combout\ & \inst6|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|b_y2\(31),
	datac => \inst6|Add2~6_combout\,
	datad => \inst6|LessThan1~2_combout\,
	combout => \inst6|Add2~89_combout\);

-- Location: FF_X6_Y35_N1
\inst6|b_y2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add2~89_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(4));

-- Location: LCCOMB_X7_Y34_N10
\inst6|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~8_combout\ = (\inst6|b_y2\(5) & ((GND) # (!\inst6|Add2~7\))) # (!\inst6|b_y2\(5) & (\inst6|Add2~7\ $ (GND)))
-- \inst6|Add2~9\ = CARRY((\inst6|b_y2\(5)) # (!\inst6|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(5),
	datad => VCC,
	cin => \inst6|Add2~7\,
	combout => \inst6|Add2~8_combout\,
	cout => \inst6|Add2~9\);

-- Location: LCCOMB_X7_Y35_N2
\inst6|Add2~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~88_combout\ = (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & (\inst6|Add2~8_combout\ & !\inst6|b_y2\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add2~8_combout\,
	datad => \inst6|b_y2\(31),
	combout => \inst6|Add2~88_combout\);

-- Location: FF_X7_Y35_N3
\inst6|b_y2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add2~88_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(5));

-- Location: LCCOMB_X7_Y34_N12
\inst6|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~10_combout\ = (\inst6|b_y2\(6) & (\inst6|Add2~9\ & VCC)) # (!\inst6|b_y2\(6) & (!\inst6|Add2~9\))
-- \inst6|Add2~11\ = CARRY((!\inst6|b_y2\(6) & !\inst6|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(6),
	datad => VCC,
	cin => \inst6|Add2~9\,
	combout => \inst6|Add2~10_combout\,
	cout => \inst6|Add2~11\);

-- Location: LCCOMB_X7_Y35_N26
\inst6|Add2~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~87_combout\ = (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & (\inst6|Add2~10_combout\ & !\inst6|b_y2\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add2~10_combout\,
	datad => \inst6|b_y2\(31),
	combout => \inst6|Add2~87_combout\);

-- Location: FF_X7_Y35_N27
\inst6|b_y2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add2~87_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(6));

-- Location: LCCOMB_X7_Y34_N14
\inst6|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~12_combout\ = (\inst6|b_y2\(7) & ((GND) # (!\inst6|Add2~11\))) # (!\inst6|b_y2\(7) & (\inst6|Add2~11\ $ (GND)))
-- \inst6|Add2~13\ = CARRY((\inst6|b_y2\(7)) # (!\inst6|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(7),
	datad => VCC,
	cin => \inst6|Add2~11\,
	combout => \inst6|Add2~12_combout\,
	cout => \inst6|Add2~13\);

-- Location: LCCOMB_X8_Y34_N28
\inst6|Add2~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~86_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (\inst6|Add2~12_combout\ & !\keypjump~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add2~12_combout\,
	datad => \keypjump~input_o\,
	combout => \inst6|Add2~86_combout\);

-- Location: LCCOMB_X7_Y34_N0
\inst6|b_y2[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[7]~feeder_combout\ = \inst6|Add2~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add2~86_combout\,
	combout => \inst6|b_y2[7]~feeder_combout\);

-- Location: FF_X7_Y34_N1
\inst6|b_y2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[7]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(7));

-- Location: LCCOMB_X7_Y34_N16
\inst6|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~14_combout\ = (\inst6|b_y2\(8) & (\inst6|Add2~13\ & VCC)) # (!\inst6|b_y2\(8) & (!\inst6|Add2~13\))
-- \inst6|Add2~15\ = CARRY((!\inst6|b_y2\(8) & !\inst6|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(8),
	datad => VCC,
	cin => \inst6|Add2~13\,
	combout => \inst6|Add2~14_combout\,
	cout => \inst6|Add2~15\);

-- Location: LCCOMB_X7_Y35_N12
\inst6|Add2~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~85_combout\ = (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & (\inst6|Add2~14_combout\ & !\inst6|b_y2\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add2~14_combout\,
	datad => \inst6|b_y2\(31),
	combout => \inst6|Add2~85_combout\);

-- Location: FF_X7_Y35_N13
\inst6|b_y2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add2~85_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(8));

-- Location: LCCOMB_X7_Y34_N18
\inst6|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~16_combout\ = (\inst6|b_y2\(9) & ((GND) # (!\inst6|Add2~15\))) # (!\inst6|b_y2\(9) & (\inst6|Add2~15\ $ (GND)))
-- \inst6|Add2~17\ = CARRY((\inst6|b_y2\(9)) # (!\inst6|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(9),
	datad => VCC,
	cin => \inst6|Add2~15\,
	combout => \inst6|Add2~16_combout\,
	cout => \inst6|Add2~17\);

-- Location: LCCOMB_X7_Y35_N4
\inst6|Add2~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~84_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (!\keypjump~input_o\ & \inst6|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \keypjump~input_o\,
	datad => \inst6|Add2~16_combout\,
	combout => \inst6|Add2~84_combout\);

-- Location: FF_X7_Y35_N5
\inst6|b_y2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add2~84_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(9));

-- Location: LCCOMB_X6_Y35_N4
\inst6|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~0_combout\ = (\inst6|b_y2\(3) & (\inst6|b_y2\(4) & (!\inst6|b_y2\(1) & !\inst6|b_y2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(3),
	datab => \inst6|b_y2\(4),
	datac => \inst6|b_y2\(1),
	datad => \inst6|b_y2\(2),
	combout => \inst6|LessThan1~0_combout\);

-- Location: LCCOMB_X6_Y35_N30
\inst6|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~1_combout\ = (\inst6|b_y2\(7) & ((\inst6|b_y2\(6)) # ((\inst6|b_y2\(5) & \inst6|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(5),
	datab => \inst6|b_y2\(7),
	datac => \inst6|LessThan1~0_combout\,
	datad => \inst6|b_y2\(6),
	combout => \inst6|LessThan1~1_combout\);

-- Location: LCCOMB_X7_Y35_N28
\inst6|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~2_combout\ = ((\inst6|b_y2\(9) & ((\inst6|b_y2\(8)) # (\inst6|LessThan1~1_combout\)))) # (!\inst6|LessThan7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(8),
	datab => \inst6|b_y2\(9),
	datac => \inst6|LessThan7~6_combout\,
	datad => \inst6|LessThan1~1_combout\,
	combout => \inst6|LessThan1~2_combout\);

-- Location: LCCOMB_X7_Y34_N20
\inst6|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~18_combout\ = (\inst6|b_y2\(10) & (!\inst6|Add2~17\)) # (!\inst6|b_y2\(10) & (\inst6|Add2~17\ & VCC))
-- \inst6|Add2~19\ = CARRY((\inst6|b_y2\(10) & !\inst6|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(10),
	datad => VCC,
	cin => \inst6|Add2~17\,
	combout => \inst6|Add2~18_combout\,
	cout => \inst6|Add2~19\);

-- Location: LCCOMB_X7_Y35_N20
\inst6|Add2~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~83_combout\ = (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & (!\inst6|Add2~18_combout\ & !\inst6|b_y2\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add2~18_combout\,
	datad => \inst6|b_y2\(31),
	combout => \inst6|Add2~83_combout\);

-- Location: FF_X7_Y35_N21
\inst6|b_y2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add2~83_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(10));

-- Location: LCCOMB_X7_Y34_N22
\inst6|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~20_combout\ = (\inst6|b_y2\(11) & ((GND) # (!\inst6|Add2~19\))) # (!\inst6|b_y2\(11) & (\inst6|Add2~19\ $ (GND)))
-- \inst6|Add2~21\ = CARRY((\inst6|b_y2\(11)) # (!\inst6|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(11),
	datad => VCC,
	cin => \inst6|Add2~19\,
	combout => \inst6|Add2~20_combout\,
	cout => \inst6|Add2~21\);

-- Location: LCCOMB_X7_Y34_N24
\inst6|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~22_combout\ = (\inst6|b_y2\(12) & (\inst6|Add2~21\ & VCC)) # (!\inst6|b_y2\(12) & (!\inst6|Add2~21\))
-- \inst6|Add2~23\ = CARRY((!\inst6|b_y2\(12) & !\inst6|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(12),
	datad => VCC,
	cin => \inst6|Add2~21\,
	combout => \inst6|Add2~22_combout\,
	cout => \inst6|Add2~23\);

-- Location: LCCOMB_X8_Y34_N14
\inst6|Add2~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~65_combout\ = (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & \inst6|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \keypjump~input_o\,
	datac => \inst6|LessThan1~2_combout\,
	datad => \inst6|Add2~22_combout\,
	combout => \inst6|Add2~65_combout\);

-- Location: LCCOMB_X1_Y36_N4
\inst6|b_y2[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[12]~feeder_combout\ = \inst6|Add2~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add2~65_combout\,
	combout => \inst6|b_y2[12]~feeder_combout\);

-- Location: FF_X1_Y36_N5
\inst6|b_y2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[12]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(12));

-- Location: LCCOMB_X7_Y34_N26
\inst6|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~24_combout\ = (\inst6|b_y2\(13) & ((GND) # (!\inst6|Add2~23\))) # (!\inst6|b_y2\(13) & (\inst6|Add2~23\ $ (GND)))
-- \inst6|Add2~25\ = CARRY((\inst6|b_y2\(13)) # (!\inst6|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(13),
	datad => VCC,
	cin => \inst6|Add2~23\,
	combout => \inst6|Add2~24_combout\,
	cout => \inst6|Add2~25\);

-- Location: LCCOMB_X8_Y34_N30
\inst6|Add2~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~66_combout\ = (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & (\inst6|Add2~24_combout\ & \inst6|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \keypjump~input_o\,
	datac => \inst6|Add2~24_combout\,
	datad => \inst6|LessThan1~2_combout\,
	combout => \inst6|Add2~66_combout\);

-- Location: LCCOMB_X1_Y36_N24
\inst6|b_y2[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[13]~feeder_combout\ = \inst6|Add2~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add2~66_combout\,
	combout => \inst6|b_y2[13]~feeder_combout\);

-- Location: FF_X1_Y36_N25
\inst6|b_y2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[13]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(13));

-- Location: LCCOMB_X7_Y34_N28
\inst6|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~26_combout\ = (\inst6|b_y2\(14) & (\inst6|Add2~25\ & VCC)) # (!\inst6|b_y2\(14) & (!\inst6|Add2~25\))
-- \inst6|Add2~27\ = CARRY((!\inst6|b_y2\(14) & !\inst6|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(14),
	datad => VCC,
	cin => \inst6|Add2~25\,
	combout => \inst6|Add2~26_combout\,
	cout => \inst6|Add2~27\);

-- Location: LCCOMB_X8_Y34_N10
\inst6|Add2~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~67_combout\ = (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & \inst6|Add2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \keypjump~input_o\,
	datac => \inst6|LessThan1~2_combout\,
	datad => \inst6|Add2~26_combout\,
	combout => \inst6|Add2~67_combout\);

-- Location: LCCOMB_X1_Y36_N18
\inst6|b_y2[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[14]~feeder_combout\ = \inst6|Add2~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add2~67_combout\,
	combout => \inst6|b_y2[14]~feeder_combout\);

-- Location: FF_X1_Y36_N19
\inst6|b_y2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[14]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(14));

-- Location: LCCOMB_X7_Y34_N30
\inst6|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~28_combout\ = (\inst6|b_y2\(15) & ((GND) # (!\inst6|Add2~27\))) # (!\inst6|b_y2\(15) & (\inst6|Add2~27\ $ (GND)))
-- \inst6|Add2~29\ = CARRY((\inst6|b_y2\(15)) # (!\inst6|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(15),
	datad => VCC,
	cin => \inst6|Add2~27\,
	combout => \inst6|Add2~28_combout\,
	cout => \inst6|Add2~29\);

-- Location: LCCOMB_X3_Y36_N10
\inst6|Add2~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~68_combout\ = (\inst6|LessThan1~2_combout\ & (!\keypjump~input_o\ & (!\inst6|b_y2\(31) & \inst6|Add2~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan1~2_combout\,
	datab => \keypjump~input_o\,
	datac => \inst6|b_y2\(31),
	datad => \inst6|Add2~28_combout\,
	combout => \inst6|Add2~68_combout\);

-- Location: FF_X3_Y36_N11
\inst6|b_y2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add2~68_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(15));

-- Location: LCCOMB_X7_Y33_N0
\inst6|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~30_combout\ = (\inst6|b_y2\(16) & (\inst6|Add2~29\ & VCC)) # (!\inst6|b_y2\(16) & (!\inst6|Add2~29\))
-- \inst6|Add2~31\ = CARRY((!\inst6|b_y2\(16) & !\inst6|Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(16),
	datad => VCC,
	cin => \inst6|Add2~29\,
	combout => \inst6|Add2~30_combout\,
	cout => \inst6|Add2~31\);

-- Location: LCCOMB_X8_Y33_N16
\inst6|Add2~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~69_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (\inst6|Add2~30_combout\ & !\keypjump~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add2~30_combout\,
	datad => \keypjump~input_o\,
	combout => \inst6|Add2~69_combout\);

-- Location: LCCOMB_X3_Y36_N12
\inst6|b_y2[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[16]~feeder_combout\ = \inst6|Add2~69_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add2~69_combout\,
	combout => \inst6|b_y2[16]~feeder_combout\);

-- Location: FF_X3_Y36_N13
\inst6|b_y2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[16]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(16));

-- Location: LCCOMB_X7_Y33_N2
\inst6|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~32_combout\ = (\inst6|b_y2\(17) & ((GND) # (!\inst6|Add2~31\))) # (!\inst6|b_y2\(17) & (\inst6|Add2~31\ $ (GND)))
-- \inst6|Add2~33\ = CARRY((\inst6|b_y2\(17)) # (!\inst6|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(17),
	datad => VCC,
	cin => \inst6|Add2~31\,
	combout => \inst6|Add2~32_combout\,
	cout => \inst6|Add2~33\);

-- Location: LCCOMB_X8_Y33_N10
\inst6|Add2~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~70_combout\ = (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & \inst6|Add2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|b_y2\(31),
	datad => \inst6|Add2~32_combout\,
	combout => \inst6|Add2~70_combout\);

-- Location: LCCOMB_X3_Y36_N22
\inst6|b_y2[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[17]~feeder_combout\ = \inst6|Add2~70_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add2~70_combout\,
	combout => \inst6|b_y2[17]~feeder_combout\);

-- Location: FF_X3_Y36_N23
\inst6|b_y2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[17]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(17));

-- Location: LCCOMB_X7_Y33_N4
\inst6|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~34_combout\ = (\inst6|b_y2\(18) & (\inst6|Add2~33\ & VCC)) # (!\inst6|b_y2\(18) & (!\inst6|Add2~33\))
-- \inst6|Add2~35\ = CARRY((!\inst6|b_y2\(18) & !\inst6|Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(18),
	datad => VCC,
	cin => \inst6|Add2~33\,
	combout => \inst6|Add2~34_combout\,
	cout => \inst6|Add2~35\);

-- Location: LCCOMB_X8_Y33_N12
\inst6|Add2~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~71_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (\inst6|Add2~34_combout\ & !\keypjump~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add2~34_combout\,
	datad => \keypjump~input_o\,
	combout => \inst6|Add2~71_combout\);

-- Location: LCCOMB_X1_Y36_N2
\inst6|b_y2[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[18]~feeder_combout\ = \inst6|Add2~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add2~71_combout\,
	combout => \inst6|b_y2[18]~feeder_combout\);

-- Location: FF_X1_Y36_N3
\inst6|b_y2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[18]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(18));

-- Location: LCCOMB_X7_Y33_N6
\inst6|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~36_combout\ = (\inst6|b_y2\(19) & ((GND) # (!\inst6|Add2~35\))) # (!\inst6|b_y2\(19) & (\inst6|Add2~35\ $ (GND)))
-- \inst6|Add2~37\ = CARRY((\inst6|b_y2\(19)) # (!\inst6|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(19),
	datad => VCC,
	cin => \inst6|Add2~35\,
	combout => \inst6|Add2~36_combout\,
	cout => \inst6|Add2~37\);

-- Location: LCCOMB_X8_Y33_N30
\inst6|Add2~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~72_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (\inst6|Add2~36_combout\ & !\keypjump~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add2~36_combout\,
	datad => \keypjump~input_o\,
	combout => \inst6|Add2~72_combout\);

-- Location: LCCOMB_X2_Y36_N26
\inst6|b_y2[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[19]~feeder_combout\ = \inst6|Add2~72_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add2~72_combout\,
	combout => \inst6|b_y2[19]~feeder_combout\);

-- Location: FF_X2_Y36_N27
\inst6|b_y2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[19]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(19));

-- Location: LCCOMB_X7_Y33_N8
\inst6|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~38_combout\ = (\inst6|b_y2\(20) & (\inst6|Add2~37\ & VCC)) # (!\inst6|b_y2\(20) & (!\inst6|Add2~37\))
-- \inst6|Add2~39\ = CARRY((!\inst6|b_y2\(20) & !\inst6|Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(20),
	datad => VCC,
	cin => \inst6|Add2~37\,
	combout => \inst6|Add2~38_combout\,
	cout => \inst6|Add2~39\);

-- Location: LCCOMB_X8_Y33_N8
\inst6|Add2~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~73_combout\ = (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & \inst6|Add2~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|b_y2\(31),
	datad => \inst6|Add2~38_combout\,
	combout => \inst6|Add2~73_combout\);

-- Location: LCCOMB_X2_Y36_N18
\inst6|b_y2[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[20]~feeder_combout\ = \inst6|Add2~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add2~73_combout\,
	combout => \inst6|b_y2[20]~feeder_combout\);

-- Location: FF_X2_Y36_N19
\inst6|b_y2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[20]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(20));

-- Location: LCCOMB_X7_Y33_N10
\inst6|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~40_combout\ = (\inst6|b_y2\(21) & ((GND) # (!\inst6|Add2~39\))) # (!\inst6|b_y2\(21) & (\inst6|Add2~39\ $ (GND)))
-- \inst6|Add2~41\ = CARRY((\inst6|b_y2\(21)) # (!\inst6|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(21),
	datad => VCC,
	cin => \inst6|Add2~39\,
	combout => \inst6|Add2~40_combout\,
	cout => \inst6|Add2~41\);

-- Location: LCCOMB_X8_Y33_N2
\inst6|Add2~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~74_combout\ = (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & \inst6|Add2~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|b_y2\(31),
	datad => \inst6|Add2~40_combout\,
	combout => \inst6|Add2~74_combout\);

-- Location: LCCOMB_X2_Y36_N22
\inst6|b_y2[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[21]~feeder_combout\ = \inst6|Add2~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add2~74_combout\,
	combout => \inst6|b_y2[21]~feeder_combout\);

-- Location: FF_X2_Y36_N23
\inst6|b_y2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[21]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(21));

-- Location: LCCOMB_X7_Y33_N12
\inst6|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~42_combout\ = (\inst6|b_y2\(22) & (\inst6|Add2~41\ & VCC)) # (!\inst6|b_y2\(22) & (!\inst6|Add2~41\))
-- \inst6|Add2~43\ = CARRY((!\inst6|b_y2\(22) & !\inst6|Add2~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(22),
	datad => VCC,
	cin => \inst6|Add2~41\,
	combout => \inst6|Add2~42_combout\,
	cout => \inst6|Add2~43\);

-- Location: LCCOMB_X8_Y33_N28
\inst6|Add2~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~75_combout\ = (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & \inst6|Add2~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|b_y2\(31),
	datad => \inst6|Add2~42_combout\,
	combout => \inst6|Add2~75_combout\);

-- Location: LCCOMB_X2_Y36_N16
\inst6|b_y2[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[22]~feeder_combout\ = \inst6|Add2~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add2~75_combout\,
	combout => \inst6|b_y2[22]~feeder_combout\);

-- Location: FF_X2_Y36_N17
\inst6|b_y2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[22]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(22));

-- Location: LCCOMB_X7_Y33_N14
\inst6|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~44_combout\ = (\inst6|b_y2\(23) & ((GND) # (!\inst6|Add2~43\))) # (!\inst6|b_y2\(23) & (\inst6|Add2~43\ $ (GND)))
-- \inst6|Add2~45\ = CARRY((\inst6|b_y2\(23)) # (!\inst6|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(23),
	datad => VCC,
	cin => \inst6|Add2~43\,
	combout => \inst6|Add2~44_combout\,
	cout => \inst6|Add2~45\);

-- Location: LCCOMB_X8_Y33_N6
\inst6|Add2~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~76_combout\ = (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & \inst6|Add2~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|b_y2\(31),
	datad => \inst6|Add2~44_combout\,
	combout => \inst6|Add2~76_combout\);

-- Location: LCCOMB_X4_Y36_N18
\inst6|b_y2[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[23]~feeder_combout\ = \inst6|Add2~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add2~76_combout\,
	combout => \inst6|b_y2[23]~feeder_combout\);

-- Location: FF_X4_Y36_N19
\inst6|b_y2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[23]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(23));

-- Location: LCCOMB_X7_Y33_N16
\inst6|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~46_combout\ = (\inst6|b_y2\(24) & (\inst6|Add2~45\ & VCC)) # (!\inst6|b_y2\(24) & (!\inst6|Add2~45\))
-- \inst6|Add2~47\ = CARRY((!\inst6|b_y2\(24) & !\inst6|Add2~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(24),
	datad => VCC,
	cin => \inst6|Add2~45\,
	combout => \inst6|Add2~46_combout\,
	cout => \inst6|Add2~47\);

-- Location: LCCOMB_X8_Y33_N0
\inst6|Add2~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~77_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (\inst6|Add2~46_combout\ & !\keypjump~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add2~46_combout\,
	datad => \keypjump~input_o\,
	combout => \inst6|Add2~77_combout\);

-- Location: LCCOMB_X4_Y36_N22
\inst6|b_y2[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[24]~feeder_combout\ = \inst6|Add2~77_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add2~77_combout\,
	combout => \inst6|b_y2[24]~feeder_combout\);

-- Location: FF_X4_Y36_N23
\inst6|b_y2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[24]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(24));

-- Location: LCCOMB_X7_Y33_N18
\inst6|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~48_combout\ = (\inst6|b_y2\(25) & ((GND) # (!\inst6|Add2~47\))) # (!\inst6|b_y2\(25) & (\inst6|Add2~47\ $ (GND)))
-- \inst6|Add2~49\ = CARRY((\inst6|b_y2\(25)) # (!\inst6|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(25),
	datad => VCC,
	cin => \inst6|Add2~47\,
	combout => \inst6|Add2~48_combout\,
	cout => \inst6|Add2~49\);

-- Location: LCCOMB_X8_Y33_N26
\inst6|Add2~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~78_combout\ = (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & \inst6|Add2~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|b_y2\(31),
	datad => \inst6|Add2~48_combout\,
	combout => \inst6|Add2~78_combout\);

-- Location: LCCOMB_X4_Y36_N24
\inst6|b_y2[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[25]~feeder_combout\ = \inst6|Add2~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add2~78_combout\,
	combout => \inst6|b_y2[25]~feeder_combout\);

-- Location: FF_X4_Y36_N25
\inst6|b_y2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[25]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(25));

-- Location: LCCOMB_X7_Y33_N20
\inst6|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~50_combout\ = (\inst6|b_y2\(26) & (\inst6|Add2~49\ & VCC)) # (!\inst6|b_y2\(26) & (!\inst6|Add2~49\))
-- \inst6|Add2~51\ = CARRY((!\inst6|b_y2\(26) & !\inst6|Add2~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(26),
	datad => VCC,
	cin => \inst6|Add2~49\,
	combout => \inst6|Add2~50_combout\,
	cout => \inst6|Add2~51\);

-- Location: LCCOMB_X8_Y33_N4
\inst6|Add2~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~79_combout\ = (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & \inst6|Add2~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|b_y2\(31),
	datad => \inst6|Add2~50_combout\,
	combout => \inst6|Add2~79_combout\);

-- Location: LCCOMB_X4_Y36_N26
\inst6|b_y2[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[26]~feeder_combout\ = \inst6|Add2~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add2~79_combout\,
	combout => \inst6|b_y2[26]~feeder_combout\);

-- Location: FF_X4_Y36_N27
\inst6|b_y2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[26]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(26));

-- Location: LCCOMB_X7_Y33_N22
\inst6|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~52_combout\ = (\inst6|b_y2\(27) & ((GND) # (!\inst6|Add2~51\))) # (!\inst6|b_y2\(27) & (\inst6|Add2~51\ $ (GND)))
-- \inst6|Add2~53\ = CARRY((\inst6|b_y2\(27)) # (!\inst6|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(27),
	datad => VCC,
	cin => \inst6|Add2~51\,
	combout => \inst6|Add2~52_combout\,
	cout => \inst6|Add2~53\);

-- Location: LCCOMB_X7_Y36_N28
\inst6|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~54_combout\ = (!\keypjump~input_o\ & (\inst6|Add2~52_combout\ & (\inst6|LessThan1~2_combout\ & !\inst6|b_y2\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|Add2~52_combout\,
	datac => \inst6|LessThan1~2_combout\,
	datad => \inst6|b_y2\(31),
	combout => \inst6|Add2~54_combout\);

-- Location: FF_X7_Y36_N29
\inst6|b_y2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add2~54_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(27));

-- Location: LCCOMB_X7_Y33_N24
\inst6|Add2~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~55_combout\ = (\inst6|b_y2\(28) & (\inst6|Add2~53\ & VCC)) # (!\inst6|b_y2\(28) & (!\inst6|Add2~53\))
-- \inst6|Add2~56\ = CARRY((!\inst6|b_y2\(28) & !\inst6|Add2~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(28),
	datad => VCC,
	cin => \inst6|Add2~53\,
	combout => \inst6|Add2~55_combout\,
	cout => \inst6|Add2~56\);

-- Location: LCCOMB_X8_Y34_N26
\inst6|Add2~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~57_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (\inst6|Add2~55_combout\ & !\keypjump~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add2~55_combout\,
	datad => \keypjump~input_o\,
	combout => \inst6|Add2~57_combout\);

-- Location: FF_X8_Y34_N27
\inst6|b_y2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add2~57_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(28));

-- Location: LCCOMB_X7_Y33_N26
\inst6|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~58_combout\ = (\inst6|b_y2\(29) & ((GND) # (!\inst6|Add2~56\))) # (!\inst6|b_y2\(29) & (\inst6|Add2~56\ $ (GND)))
-- \inst6|Add2~59\ = CARRY((\inst6|b_y2\(29)) # (!\inst6|Add2~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(29),
	datad => VCC,
	cin => \inst6|Add2~56\,
	combout => \inst6|Add2~58_combout\,
	cout => \inst6|Add2~59\);

-- Location: LCCOMB_X8_Y34_N6
\inst6|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~60_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (\inst6|Add2~58_combout\ & !\keypjump~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add2~58_combout\,
	datad => \keypjump~input_o\,
	combout => \inst6|Add2~60_combout\);

-- Location: FF_X8_Y34_N7
\inst6|b_y2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add2~60_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(29));

-- Location: LCCOMB_X7_Y33_N28
\inst6|Add2~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~61_combout\ = (\inst6|b_y2\(30) & (\inst6|Add2~59\ & VCC)) # (!\inst6|b_y2\(30) & (!\inst6|Add2~59\))
-- \inst6|Add2~62\ = CARRY((!\inst6|b_y2\(30) & !\inst6|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(30),
	datad => VCC,
	cin => \inst6|Add2~59\,
	combout => \inst6|Add2~61_combout\,
	cout => \inst6|Add2~62\);

-- Location: LCCOMB_X8_Y34_N20
\inst6|Add2~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~63_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (\inst6|Add2~61_combout\ & !\keypjump~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add2~61_combout\,
	datad => \keypjump~input_o\,
	combout => \inst6|Add2~63_combout\);

-- Location: FF_X8_Y34_N21
\inst6|b_y2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add2~63_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(30));

-- Location: LCCOMB_X7_Y33_N30
\inst6|Add2~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~80_combout\ = \inst6|Add2~62\ $ (\inst6|b_y2\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|b_y2\(31),
	cin => \inst6|Add2~62\,
	combout => \inst6|Add2~80_combout\);

-- Location: LCCOMB_X7_Y35_N0
\inst6|Add2~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~82_combout\ = (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & \inst6|Add2~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypjump~input_o\,
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|b_y2\(31),
	datad => \inst6|Add2~80_combout\,
	combout => \inst6|Add2~82_combout\);

-- Location: FF_X7_Y35_N1
\inst6|b_y2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add2~82_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(31));

-- Location: LCCOMB_X8_Y34_N22
\inst6|Add2~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add2~64_combout\ = (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & (\inst6|LessThan1~2_combout\ & \inst6|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \keypjump~input_o\,
	datac => \inst6|LessThan1~2_combout\,
	datad => \inst6|Add2~20_combout\,
	combout => \inst6|Add2~64_combout\);

-- Location: LCCOMB_X1_Y36_N26
\inst6|b_y2[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|b_y2[11]~feeder_combout\ = \inst6|Add2~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add2~64_combout\,
	combout => \inst6|b_y2[11]~feeder_combout\);

-- Location: FF_X1_Y36_N27
\inst6|b_y2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|b_y2[11]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y2\(11));

-- Location: LCCOMB_X1_Y36_N16
\inst6|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~1_combout\ = (!\inst6|b_y2\(11) & (!\inst6|b_y2\(14) & (!\inst6|b_y2\(12) & !\inst6|b_y2\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(11),
	datab => \inst6|b_y2\(14),
	datac => \inst6|b_y2\(12),
	datad => \inst6|b_y2\(13),
	combout => \inst6|LessThan7~1_combout\);

-- Location: LCCOMB_X3_Y36_N18
\inst6|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~2_combout\ = (!\inst6|b_y2\(16) & (!\inst6|b_y2\(18) & (!\inst6|b_y2\(17) & !\inst6|b_y2\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(16),
	datab => \inst6|b_y2\(18),
	datac => \inst6|b_y2\(17),
	datad => \inst6|b_y2\(15),
	combout => \inst6|LessThan7~2_combout\);

-- Location: LCCOMB_X2_Y36_N6
\inst6|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~3_combout\ = (!\inst6|b_y2\(19) & (!\inst6|b_y2\(20) & (!\inst6|b_y2\(21) & !\inst6|b_y2\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(19),
	datab => \inst6|b_y2\(20),
	datac => \inst6|b_y2\(21),
	datad => \inst6|b_y2\(22),
	combout => \inst6|LessThan7~3_combout\);

-- Location: LCCOMB_X4_Y36_N28
\inst6|LessThan7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~4_combout\ = (!\inst6|b_y2\(26) & (!\inst6|b_y2\(25) & (!\inst6|b_y2\(24) & !\inst6|b_y2\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(26),
	datab => \inst6|b_y2\(25),
	datac => \inst6|b_y2\(24),
	datad => \inst6|b_y2\(23),
	combout => \inst6|LessThan7~4_combout\);

-- Location: LCCOMB_X3_Y36_N30
\inst6|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~5_combout\ = (\inst6|LessThan7~1_combout\ & (\inst6|LessThan7~2_combout\ & (\inst6|LessThan7~3_combout\ & \inst6|LessThan7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan7~1_combout\,
	datab => \inst6|LessThan7~2_combout\,
	datac => \inst6|LessThan7~3_combout\,
	datad => \inst6|LessThan7~4_combout\,
	combout => \inst6|LessThan7~5_combout\);

-- Location: LCCOMB_X8_Y34_N0
\inst6|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~0_combout\ = (!\inst6|b_y2\(29) & (!\inst6|b_y2\(27) & (!\inst6|b_y2\(28) & !\inst6|b_y2\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(29),
	datab => \inst6|b_y2\(27),
	datac => \inst6|b_y2\(28),
	datad => \inst6|b_y2\(30),
	combout => \inst6|LessThan7~0_combout\);

-- Location: LCCOMB_X7_Y35_N22
\inst6|LessThan7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~6_combout\ = (\inst6|LessThan7~5_combout\ & (\inst6|LessThan7~0_combout\ & \inst6|b_y2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan7~5_combout\,
	datac => \inst6|LessThan7~0_combout\,
	datad => \inst6|b_y2\(10),
	combout => \inst6|LessThan7~6_combout\);

-- Location: LCCOMB_X5_Y35_N26
\inst6|Add7~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~58_combout\ = (\inst6|d_x1\(29) & (\inst6|Add7~57\ & VCC)) # (!\inst6|d_x1\(29) & (!\inst6|Add7~57\))
-- \inst6|Add7~59\ = CARRY((!\inst6|d_x1\(29) & !\inst6|Add7~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(29),
	datad => VCC,
	cin => \inst6|Add7~57\,
	combout => \inst6|Add7~58_combout\,
	cout => \inst6|Add7~59\);

-- Location: LCCOMB_X7_Y35_N6
\inst6|d_x1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~5_combout\ = (\inst6|Add7~12_combout\) # ((\inst6|Add7~62_combout\) # ((\inst6|LessThan4~8_combout\ & \inst6|LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~12_combout\,
	datab => \inst6|Add7~62_combout\,
	datac => \inst6|LessThan4~8_combout\,
	datad => \inst6|LessThan4~3_combout\,
	combout => \inst6|d_x1~5_combout\);

-- Location: FF_X7_Y35_N7
\inst6|d_x1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~5_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(6));

-- Location: LCCOMB_X12_Y38_N0
\inst6|Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~0_combout\ = \inst6|d_x2\(0) $ (VCC)
-- \inst6|Add8~1\ = CARRY(\inst6|d_x2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(0),
	datad => VCC,
	combout => \inst6|Add8~0_combout\,
	cout => \inst6|Add8~1\);

-- Location: LCCOMB_X9_Y35_N10
\inst6|Add8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~5_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~0_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|Add7~62_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|Add8~0_combout\,
	combout => \inst6|Add8~5_combout\);

-- Location: FF_X9_Y35_N11
\inst6|d_x2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add8~5_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(0));

-- Location: LCCOMB_X12_Y38_N2
\inst6|Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~2_combout\ = (\inst6|d_x2\(1) & (\inst6|Add8~1\ & VCC)) # (!\inst6|d_x2\(1) & (!\inst6|Add8~1\))
-- \inst6|Add8~3\ = CARRY((!\inst6|d_x2\(1) & !\inst6|Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(1),
	datad => VCC,
	cin => \inst6|Add8~1\,
	combout => \inst6|Add8~2_combout\,
	cout => \inst6|Add8~3\);

-- Location: LCCOMB_X8_Y35_N24
\inst6|Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~4_combout\ = (\inst6|Add7~62_combout\) # ((\inst6|Add8~2_combout\) # ((\inst6|LessThan4~8_combout\ & \inst6|LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|Add7~62_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|Add8~2_combout\,
	combout => \inst6|Add8~4_combout\);

-- Location: FF_X8_Y35_N25
\inst6|d_x2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add8~4_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(1));

-- Location: LCCOMB_X5_Y36_N0
\inst6|Add7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~1_cout\ = CARRY(\inst6|d_x2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(0),
	datad => VCC,
	cout => \inst6|Add7~1_cout\);

-- Location: LCCOMB_X5_Y36_N2
\inst6|Add7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~3_cout\ = CARRY((!\inst6|d_x2\(1) & !\inst6|Add7~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(1),
	datad => VCC,
	cin => \inst6|Add7~1_cout\,
	cout => \inst6|Add7~3_cout\);

-- Location: LCCOMB_X5_Y36_N4
\inst6|Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~4_combout\ = (\inst6|d_x1\(2) & ((GND) # (!\inst6|Add7~3_cout\))) # (!\inst6|d_x1\(2) & (\inst6|Add7~3_cout\ $ (GND)))
-- \inst6|Add7~5\ = CARRY((\inst6|d_x1\(2)) # (!\inst6|Add7~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(2),
	datad => VCC,
	cin => \inst6|Add7~3_cout\,
	combout => \inst6|Add7~4_combout\,
	cout => \inst6|Add7~5\);

-- Location: LCCOMB_X8_Y35_N26
\inst6|d_x1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~9_combout\ = (\inst6|Add7~62_combout\) # ((\inst6|Add7~4_combout\) # ((\inst6|LessThan4~8_combout\ & \inst6|LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|Add7~62_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|Add7~4_combout\,
	combout => \inst6|d_x1~9_combout\);

-- Location: FF_X8_Y35_N27
\inst6|d_x1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~9_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(2));

-- Location: LCCOMB_X5_Y36_N6
\inst6|Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~6_combout\ = (\inst6|d_x1\(3) & ((\inst6|Add7~5\) # (GND))) # (!\inst6|d_x1\(3) & (!\inst6|Add7~5\))
-- \inst6|Add7~7\ = CARRY((\inst6|d_x1\(3)) # (!\inst6|Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(3),
	datad => VCC,
	cin => \inst6|Add7~5\,
	combout => \inst6|Add7~6_combout\,
	cout => \inst6|Add7~7\);

-- Location: LCCOMB_X8_Y35_N2
\inst6|d_x1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~8_combout\ = (!\inst6|Add7~6_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add7~6_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|d_x1~8_combout\);

-- Location: FF_X8_Y35_N3
\inst6|d_x1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~8_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(3));

-- Location: LCCOMB_X5_Y36_N8
\inst6|Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~8_combout\ = (\inst6|d_x1\(4) & ((GND) # (!\inst6|Add7~7\))) # (!\inst6|d_x1\(4) & (\inst6|Add7~7\ $ (GND)))
-- \inst6|Add7~9\ = CARRY((\inst6|d_x1\(4)) # (!\inst6|Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(4),
	datad => VCC,
	cin => \inst6|Add7~7\,
	combout => \inst6|Add7~8_combout\,
	cout => \inst6|Add7~9\);

-- Location: LCCOMB_X8_Y35_N12
\inst6|d_x1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~7_combout\ = (\inst6|Add7~8_combout\) # ((\inst6|Add7~62_combout\) # ((\inst6|LessThan4~8_combout\ & \inst6|LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add7~8_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|d_x1~7_combout\);

-- Location: FF_X8_Y35_N13
\inst6|d_x1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~7_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(4));

-- Location: LCCOMB_X5_Y36_N10
\inst6|Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~10_combout\ = (\inst6|d_x1\(5) & (\inst6|Add7~9\ & VCC)) # (!\inst6|d_x1\(5) & (!\inst6|Add7~9\))
-- \inst6|Add7~11\ = CARRY((!\inst6|d_x1\(5) & !\inst6|Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(5),
	datad => VCC,
	cin => \inst6|Add7~9\,
	combout => \inst6|Add7~10_combout\,
	cout => \inst6|Add7~11\);

-- Location: LCCOMB_X8_Y35_N30
\inst6|d_x1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~6_combout\ = (\inst6|Add7~62_combout\) # ((\inst6|Add7~10_combout\) # ((\inst6|LessThan4~8_combout\ & \inst6|LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|Add7~62_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|Add7~10_combout\,
	combout => \inst6|d_x1~6_combout\);

-- Location: FF_X8_Y35_N31
\inst6|d_x1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~6_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(5));

-- Location: LCCOMB_X5_Y36_N12
\inst6|Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~12_combout\ = (\inst6|d_x1\(6) & ((GND) # (!\inst6|Add7~11\))) # (!\inst6|d_x1\(6) & (\inst6|Add7~11\ $ (GND)))
-- \inst6|Add7~13\ = CARRY((\inst6|d_x1\(6)) # (!\inst6|Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(6),
	datad => VCC,
	cin => \inst6|Add7~11\,
	combout => \inst6|Add7~12_combout\,
	cout => \inst6|Add7~13\);

-- Location: LCCOMB_X8_Y35_N8
\inst6|d_x1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~2_combout\ = (!\inst6|Add7~62_combout\ & (!\inst6|Add7~18_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|Add7~62_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|Add7~18_combout\,
	combout => \inst6|d_x1~2_combout\);

-- Location: FF_X8_Y35_N9
\inst6|d_x1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~2_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(9));

-- Location: LCCOMB_X5_Y36_N14
\inst6|Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~14_combout\ = (\inst6|d_x1\(7) & (\inst6|Add7~13\ & VCC)) # (!\inst6|d_x1\(7) & (!\inst6|Add7~13\))
-- \inst6|Add7~15\ = CARRY((!\inst6|d_x1\(7) & !\inst6|Add7~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(7),
	datad => VCC,
	cin => \inst6|Add7~13\,
	combout => \inst6|Add7~14_combout\,
	cout => \inst6|Add7~15\);

-- Location: LCCOMB_X8_Y35_N16
\inst6|d_x1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~4_combout\ = (\inst6|Add7~14_combout\) # ((\inst6|Add7~62_combout\) # ((\inst6|LessThan4~8_combout\ & \inst6|LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add7~14_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|d_x1~4_combout\);

-- Location: FF_X8_Y35_N17
\inst6|d_x1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~4_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(7));

-- Location: LCCOMB_X5_Y36_N16
\inst6|Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~16_combout\ = (\inst6|d_x1\(8) & (\inst6|Add7~15\ $ (GND))) # (!\inst6|d_x1\(8) & ((GND) # (!\inst6|Add7~15\)))
-- \inst6|Add7~17\ = CARRY((!\inst6|Add7~15\) # (!\inst6|d_x1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(8),
	datad => VCC,
	cin => \inst6|Add7~15\,
	combout => \inst6|Add7~16_combout\,
	cout => \inst6|Add7~17\);

-- Location: LCCOMB_X8_Y35_N20
\inst6|d_x1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~3_combout\ = (\inst6|Add7~62_combout\) # (((\inst6|LessThan4~8_combout\ & \inst6|LessThan4~3_combout\)) # (!\inst6|Add7~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|Add7~62_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|Add7~16_combout\,
	combout => \inst6|d_x1~3_combout\);

-- Location: FF_X8_Y35_N21
\inst6|d_x1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~3_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(8));

-- Location: LCCOMB_X5_Y36_N18
\inst6|Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~18_combout\ = (\inst6|d_x1\(9) & (!\inst6|Add7~17\)) # (!\inst6|d_x1\(9) & (\inst6|Add7~17\ & VCC))
-- \inst6|Add7~19\ = CARRY((\inst6|d_x1\(9) & !\inst6|Add7~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(9),
	datad => VCC,
	cin => \inst6|Add7~17\,
	combout => \inst6|Add7~18_combout\,
	cout => \inst6|Add7~19\);

-- Location: LCCOMB_X8_Y35_N28
\inst6|d_x1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~1_combout\ = (!\inst6|Add7~62_combout\ & (!\inst6|Add7~20_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|Add7~62_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|Add7~20_combout\,
	combout => \inst6|d_x1~1_combout\);

-- Location: FF_X8_Y35_N29
\inst6|d_x1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~1_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(10));

-- Location: LCCOMB_X5_Y36_N20
\inst6|Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~20_combout\ = (\inst6|d_x1\(10) & (\inst6|Add7~19\ $ (GND))) # (!\inst6|d_x1\(10) & ((GND) # (!\inst6|Add7~19\)))
-- \inst6|Add7~21\ = CARRY((!\inst6|Add7~19\) # (!\inst6|d_x1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(10),
	datad => VCC,
	cin => \inst6|Add7~19\,
	combout => \inst6|Add7~20_combout\,
	cout => \inst6|Add7~21\);

-- Location: LCCOMB_X8_Y35_N18
\inst6|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~0_combout\ = (!\inst6|Add7~18_combout\ & (!\inst6|Add7~20_combout\ & (!\inst6|Add7~14_combout\ & !\inst6|Add7~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~18_combout\,
	datab => \inst6|Add7~20_combout\,
	datac => \inst6|Add7~14_combout\,
	datad => \inst6|Add7~16_combout\,
	combout => \inst6|LessThan4~0_combout\);

-- Location: LCCOMB_X4_Y35_N8
\inst6|d_x1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~10_combout\ = (\inst6|Add7~24_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~24_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|LessThan4~3_combout\,
	combout => \inst6|d_x1~10_combout\);

-- Location: FF_X4_Y35_N9
\inst6|d_x1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~10_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(12));

-- Location: LCCOMB_X5_Y36_N22
\inst6|Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~22_combout\ = (\inst6|d_x1\(11) & (\inst6|Add7~21\ & VCC)) # (!\inst6|d_x1\(11) & (!\inst6|Add7~21\))
-- \inst6|Add7~23\ = CARRY((!\inst6|d_x1\(11) & !\inst6|Add7~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(11),
	datad => VCC,
	cin => \inst6|Add7~21\,
	combout => \inst6|Add7~22_combout\,
	cout => \inst6|Add7~23\);

-- Location: LCCOMB_X3_Y35_N20
\inst6|d_x1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~0_combout\ = (\inst6|Add7~22_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~22_combout\,
	datab => \inst6|Add7~62_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|LessThan4~8_combout\,
	combout => \inst6|d_x1~0_combout\);

-- Location: FF_X3_Y35_N21
\inst6|d_x1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(11));

-- Location: LCCOMB_X5_Y36_N24
\inst6|Add7~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~24_combout\ = (\inst6|d_x1\(12) & ((GND) # (!\inst6|Add7~23\))) # (!\inst6|d_x1\(12) & (\inst6|Add7~23\ $ (GND)))
-- \inst6|Add7~25\ = CARRY((\inst6|d_x1\(12)) # (!\inst6|Add7~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(12),
	datad => VCC,
	cin => \inst6|Add7~23\,
	combout => \inst6|Add7~24_combout\,
	cout => \inst6|Add7~25\);

-- Location: LCCOMB_X4_Y35_N0
\inst6|d_x1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~11_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add7~26_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add7~26_combout\,
	combout => \inst6|d_x1~11_combout\);

-- Location: FF_X4_Y35_N1
\inst6|d_x1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~11_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(13));

-- Location: LCCOMB_X5_Y36_N26
\inst6|Add7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~26_combout\ = (\inst6|d_x1\(13) & (\inst6|Add7~25\ & VCC)) # (!\inst6|d_x1\(13) & (!\inst6|Add7~25\))
-- \inst6|Add7~27\ = CARRY((!\inst6|d_x1\(13) & !\inst6|Add7~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(13),
	datad => VCC,
	cin => \inst6|Add7~25\,
	combout => \inst6|Add7~26_combout\,
	cout => \inst6|Add7~27\);

-- Location: LCCOMB_X4_Y35_N22
\inst6|d_x1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~12_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add7~28_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add7~28_combout\,
	combout => \inst6|d_x1~12_combout\);

-- Location: FF_X4_Y35_N23
\inst6|d_x1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~12_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(14));

-- Location: LCCOMB_X5_Y36_N28
\inst6|Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~28_combout\ = (\inst6|d_x1\(14) & ((GND) # (!\inst6|Add7~27\))) # (!\inst6|d_x1\(14) & (\inst6|Add7~27\ $ (GND)))
-- \inst6|Add7~29\ = CARRY((\inst6|d_x1\(14)) # (!\inst6|Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(14),
	datad => VCC,
	cin => \inst6|Add7~27\,
	combout => \inst6|Add7~28_combout\,
	cout => \inst6|Add7~29\);

-- Location: LCCOMB_X4_Y35_N10
\inst6|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~1_combout\ = (!\inst6|Add7~24_combout\ & (!\inst6|Add7~26_combout\ & (!\inst6|Add7~22_combout\ & !\inst6|Add7~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~24_combout\,
	datab => \inst6|Add7~26_combout\,
	datac => \inst6|Add7~22_combout\,
	datad => \inst6|Add7~28_combout\,
	combout => \inst6|LessThan4~1_combout\);

-- Location: LCCOMB_X8_Y35_N10
\inst6|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~2_combout\ = ((!\inst6|Add7~8_combout\ & (!\inst6|Add7~6_combout\ & !\inst6|Add7~4_combout\))) # (!\inst6|Add7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~10_combout\,
	datab => \inst6|Add7~8_combout\,
	datac => \inst6|Add7~6_combout\,
	datad => \inst6|Add7~4_combout\,
	combout => \inst6|LessThan4~2_combout\);

-- Location: LCCOMB_X8_Y35_N14
\inst6|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~3_combout\ = (\inst6|LessThan4~0_combout\ & (\inst6|LessThan4~1_combout\ & ((\inst6|LessThan4~2_combout\) # (!\inst6|Add7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~12_combout\,
	datab => \inst6|LessThan4~0_combout\,
	datac => \inst6|LessThan4~1_combout\,
	datad => \inst6|LessThan4~2_combout\,
	combout => \inst6|LessThan4~3_combout\);

-- Location: LCCOMB_X5_Y36_N30
\inst6|Add7~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~30_combout\ = (\inst6|d_x1\(15) & (\inst6|Add7~29\ & VCC)) # (!\inst6|d_x1\(15) & (!\inst6|Add7~29\))
-- \inst6|Add7~31\ = CARRY((!\inst6|d_x1\(15) & !\inst6|Add7~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(15),
	datad => VCC,
	cin => \inst6|Add7~29\,
	combout => \inst6|Add7~30_combout\,
	cout => \inst6|Add7~31\);

-- Location: LCCOMB_X4_Y35_N16
\inst6|d_x1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~13_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add7~30_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~62_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add7~30_combout\,
	datad => \inst6|LessThan4~3_combout\,
	combout => \inst6|d_x1~13_combout\);

-- Location: FF_X4_Y35_N17
\inst6|d_x1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~13_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(15));

-- Location: LCCOMB_X5_Y35_N0
\inst6|Add7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~32_combout\ = (\inst6|d_x1\(16) & ((GND) # (!\inst6|Add7~31\))) # (!\inst6|d_x1\(16) & (\inst6|Add7~31\ $ (GND)))
-- \inst6|Add7~33\ = CARRY((\inst6|d_x1\(16)) # (!\inst6|Add7~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(16),
	datad => VCC,
	cin => \inst6|Add7~31\,
	combout => \inst6|Add7~32_combout\,
	cout => \inst6|Add7~33\);

-- Location: LCCOMB_X4_Y35_N24
\inst6|d_x1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~14_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add7~32_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~62_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add7~32_combout\,
	datad => \inst6|LessThan4~3_combout\,
	combout => \inst6|d_x1~14_combout\);

-- Location: FF_X4_Y35_N25
\inst6|d_x1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~14_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(16));

-- Location: LCCOMB_X5_Y35_N2
\inst6|Add7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~34_combout\ = (\inst6|d_x1\(17) & (\inst6|Add7~33\ & VCC)) # (!\inst6|d_x1\(17) & (!\inst6|Add7~33\))
-- \inst6|Add7~35\ = CARRY((!\inst6|d_x1\(17) & !\inst6|Add7~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(17),
	datad => VCC,
	cin => \inst6|Add7~33\,
	combout => \inst6|Add7~34_combout\,
	cout => \inst6|Add7~35\);

-- Location: LCCOMB_X4_Y35_N12
\inst6|d_x1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~15_combout\ = (\inst6|Add7~34_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~34_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|LessThan4~3_combout\,
	combout => \inst6|d_x1~15_combout\);

-- Location: FF_X4_Y35_N13
\inst6|d_x1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~15_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(17));

-- Location: LCCOMB_X5_Y35_N4
\inst6|Add7~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~36_combout\ = (\inst6|d_x1\(18) & ((GND) # (!\inst6|Add7~35\))) # (!\inst6|d_x1\(18) & (\inst6|Add7~35\ $ (GND)))
-- \inst6|Add7~37\ = CARRY((\inst6|d_x1\(18)) # (!\inst6|Add7~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(18),
	datad => VCC,
	cin => \inst6|Add7~35\,
	combout => \inst6|Add7~36_combout\,
	cout => \inst6|Add7~37\);

-- Location: LCCOMB_X3_Y35_N6
\inst6|d_x1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~16_combout\ = (\inst6|Add7~36_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add7~36_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|d_x1~16_combout\);

-- Location: FF_X3_Y35_N7
\inst6|d_x1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~16_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(18));

-- Location: LCCOMB_X5_Y35_N6
\inst6|Add7~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~38_combout\ = (\inst6|d_x1\(19) & (\inst6|Add7~37\ & VCC)) # (!\inst6|d_x1\(19) & (!\inst6|Add7~37\))
-- \inst6|Add7~39\ = CARRY((!\inst6|d_x1\(19) & !\inst6|Add7~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(19),
	datad => VCC,
	cin => \inst6|Add7~37\,
	combout => \inst6|Add7~38_combout\,
	cout => \inst6|Add7~39\);

-- Location: LCCOMB_X4_Y35_N14
\inst6|d_x1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~17_combout\ = (\inst6|Add7~38_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~38_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|LessThan4~3_combout\,
	combout => \inst6|d_x1~17_combout\);

-- Location: FF_X4_Y35_N15
\inst6|d_x1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~17_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(19));

-- Location: LCCOMB_X5_Y35_N8
\inst6|Add7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~40_combout\ = (\inst6|d_x1\(20) & ((GND) # (!\inst6|Add7~39\))) # (!\inst6|d_x1\(20) & (\inst6|Add7~39\ $ (GND)))
-- \inst6|Add7~41\ = CARRY((\inst6|d_x1\(20)) # (!\inst6|Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(20),
	datad => VCC,
	cin => \inst6|Add7~39\,
	combout => \inst6|Add7~40_combout\,
	cout => \inst6|Add7~41\);

-- Location: LCCOMB_X3_Y35_N16
\inst6|d_x1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~18_combout\ = (\inst6|Add7~40_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add7~40_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|d_x1~18_combout\);

-- Location: FF_X3_Y35_N17
\inst6|d_x1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~18_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(20));

-- Location: LCCOMB_X5_Y35_N10
\inst6|Add7~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~42_combout\ = (\inst6|d_x1\(21) & (\inst6|Add7~41\ & VCC)) # (!\inst6|d_x1\(21) & (!\inst6|Add7~41\))
-- \inst6|Add7~43\ = CARRY((!\inst6|d_x1\(21) & !\inst6|Add7~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(21),
	datad => VCC,
	cin => \inst6|Add7~41\,
	combout => \inst6|Add7~42_combout\,
	cout => \inst6|Add7~43\);

-- Location: LCCOMB_X3_Y35_N30
\inst6|d_x1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~19_combout\ = (\inst6|Add7~42_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add7~42_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|d_x1~19_combout\);

-- Location: FF_X3_Y35_N31
\inst6|d_x1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~19_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(21));

-- Location: LCCOMB_X5_Y35_N12
\inst6|Add7~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~44_combout\ = (\inst6|d_x1\(22) & ((GND) # (!\inst6|Add7~43\))) # (!\inst6|d_x1\(22) & (\inst6|Add7~43\ $ (GND)))
-- \inst6|Add7~45\ = CARRY((\inst6|d_x1\(22)) # (!\inst6|Add7~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(22),
	datad => VCC,
	cin => \inst6|Add7~43\,
	combout => \inst6|Add7~44_combout\,
	cout => \inst6|Add7~45\);

-- Location: LCCOMB_X3_Y35_N12
\inst6|d_x1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~20_combout\ = (\inst6|Add7~44_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add7~44_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|d_x1~20_combout\);

-- Location: FF_X3_Y35_N13
\inst6|d_x1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~20_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(22));

-- Location: LCCOMB_X5_Y35_N14
\inst6|Add7~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~46_combout\ = (\inst6|d_x1\(23) & (\inst6|Add7~45\ & VCC)) # (!\inst6|d_x1\(23) & (!\inst6|Add7~45\))
-- \inst6|Add7~47\ = CARRY((!\inst6|d_x1\(23) & !\inst6|Add7~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(23),
	datad => VCC,
	cin => \inst6|Add7~45\,
	combout => \inst6|Add7~46_combout\,
	cout => \inst6|Add7~47\);

-- Location: LCCOMB_X3_Y35_N18
\inst6|d_x1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~21_combout\ = (\inst6|Add7~46_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~46_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|d_x1~21_combout\);

-- Location: FF_X3_Y35_N19
\inst6|d_x1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~21_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(23));

-- Location: LCCOMB_X5_Y35_N16
\inst6|Add7~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~48_combout\ = (\inst6|d_x1\(24) & ((GND) # (!\inst6|Add7~47\))) # (!\inst6|d_x1\(24) & (\inst6|Add7~47\ $ (GND)))
-- \inst6|Add7~49\ = CARRY((\inst6|d_x1\(24)) # (!\inst6|Add7~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(24),
	datad => VCC,
	cin => \inst6|Add7~47\,
	combout => \inst6|Add7~48_combout\,
	cout => \inst6|Add7~49\);

-- Location: LCCOMB_X3_Y35_N0
\inst6|d_x1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~22_combout\ = (\inst6|Add7~48_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~48_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|d_x1~22_combout\);

-- Location: FF_X3_Y35_N1
\inst6|d_x1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~22_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(24));

-- Location: LCCOMB_X5_Y35_N18
\inst6|Add7~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~50_combout\ = (\inst6|d_x1\(25) & (\inst6|Add7~49\ & VCC)) # (!\inst6|d_x1\(25) & (!\inst6|Add7~49\))
-- \inst6|Add7~51\ = CARRY((!\inst6|d_x1\(25) & !\inst6|Add7~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(25),
	datad => VCC,
	cin => \inst6|Add7~49\,
	combout => \inst6|Add7~50_combout\,
	cout => \inst6|Add7~51\);

-- Location: LCCOMB_X3_Y35_N26
\inst6|d_x1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~23_combout\ = (\inst6|Add7~50_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~50_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|d_x1~23_combout\);

-- Location: FF_X3_Y35_N27
\inst6|d_x1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~23_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(25));

-- Location: LCCOMB_X5_Y35_N20
\inst6|Add7~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~52_combout\ = (\inst6|d_x1\(26) & ((GND) # (!\inst6|Add7~51\))) # (!\inst6|d_x1\(26) & (\inst6|Add7~51\ $ (GND)))
-- \inst6|Add7~53\ = CARRY((\inst6|d_x1\(26)) # (!\inst6|Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(26),
	datad => VCC,
	cin => \inst6|Add7~51\,
	combout => \inst6|Add7~52_combout\,
	cout => \inst6|Add7~53\);

-- Location: LCCOMB_X3_Y35_N2
\inst6|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~5_combout\ = (!\inst6|Add7~38_combout\ & (!\inst6|Add7~44_combout\ & (!\inst6|Add7~40_combout\ & !\inst6|Add7~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~38_combout\,
	datab => \inst6|Add7~44_combout\,
	datac => \inst6|Add7~40_combout\,
	datad => \inst6|Add7~42_combout\,
	combout => \inst6|LessThan4~5_combout\);

-- Location: LCCOMB_X3_Y35_N28
\inst6|LessThan4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~4_combout\ = (!\inst6|Add7~32_combout\ & (!\inst6|Add7~36_combout\ & (!\inst6|Add7~34_combout\ & !\inst6|Add7~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~32_combout\,
	datab => \inst6|Add7~36_combout\,
	datac => \inst6|Add7~34_combout\,
	datad => \inst6|Add7~30_combout\,
	combout => \inst6|LessThan4~4_combout\);

-- Location: LCCOMB_X4_Y35_N2
\inst6|LessThan4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~6_combout\ = (\inst6|LessThan4~5_combout\ & (\inst6|LessThan4~4_combout\ & (!\inst6|Add7~46_combout\ & !\inst6|Add7~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~5_combout\,
	datab => \inst6|LessThan4~4_combout\,
	datac => \inst6|Add7~46_combout\,
	datad => \inst6|Add7~48_combout\,
	combout => \inst6|LessThan4~6_combout\);

-- Location: LCCOMB_X3_Y35_N4
\inst6|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~7_combout\ = (!\inst6|Add7~54_combout\ & (!\inst6|Add7~52_combout\ & (!\inst6|Add7~50_combout\ & \inst6|LessThan4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~54_combout\,
	datab => \inst6|Add7~52_combout\,
	datac => \inst6|Add7~50_combout\,
	datad => \inst6|LessThan4~6_combout\,
	combout => \inst6|LessThan4~7_combout\);

-- Location: LCCOMB_X3_Y35_N24
\inst6|LessThan4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan4~8_combout\ = (!\inst6|Add7~58_combout\ & (!\inst6|Add7~56_combout\ & (\inst6|LessThan4~7_combout\ & !\inst6|Add7~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~58_combout\,
	datab => \inst6|Add7~56_combout\,
	datac => \inst6|LessThan4~7_combout\,
	datad => \inst6|Add7~60_combout\,
	combout => \inst6|LessThan4~8_combout\);

-- Location: LCCOMB_X3_Y35_N8
\inst6|d_x1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~24_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add7~52_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|Add7~62_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|Add7~52_combout\,
	combout => \inst6|d_x1~24_combout\);

-- Location: FF_X3_Y35_N9
\inst6|d_x1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~24_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(26));

-- Location: LCCOMB_X5_Y35_N22
\inst6|Add7~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~54_combout\ = (\inst6|d_x1\(27) & (\inst6|Add7~53\ & VCC)) # (!\inst6|d_x1\(27) & (!\inst6|Add7~53\))
-- \inst6|Add7~55\ = CARRY((!\inst6|d_x1\(27) & !\inst6|Add7~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(27),
	datad => VCC,
	cin => \inst6|Add7~53\,
	combout => \inst6|Add7~54_combout\,
	cout => \inst6|Add7~55\);

-- Location: LCCOMB_X3_Y35_N10
\inst6|d_x1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~25_combout\ = (\inst6|Add7~54_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~54_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|d_x1~25_combout\);

-- Location: FF_X3_Y35_N11
\inst6|d_x1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~25_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(27));

-- Location: LCCOMB_X5_Y35_N24
\inst6|Add7~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~56_combout\ = (\inst6|d_x1\(28) & ((GND) # (!\inst6|Add7~55\))) # (!\inst6|d_x1\(28) & (\inst6|Add7~55\ $ (GND)))
-- \inst6|Add7~57\ = CARRY((\inst6|d_x1\(28)) # (!\inst6|Add7~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(28),
	datad => VCC,
	cin => \inst6|Add7~55\,
	combout => \inst6|Add7~56_combout\,
	cout => \inst6|Add7~57\);

-- Location: LCCOMB_X4_Y35_N20
\inst6|d_x1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~26_combout\ = (!\inst6|Add7~62_combout\ & \inst6|Add7~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add7~56_combout\,
	combout => \inst6|d_x1~26_combout\);

-- Location: FF_X4_Y35_N21
\inst6|d_x1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~26_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(28));

-- Location: LCCOMB_X5_Y35_N28
\inst6|Add7~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~60_combout\ = (\inst6|d_x1\(30) & ((GND) # (!\inst6|Add7~59\))) # (!\inst6|d_x1\(30) & (\inst6|Add7~59\ $ (GND)))
-- \inst6|Add7~61\ = CARRY((\inst6|d_x1\(30)) # (!\inst6|Add7~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x1\(30),
	datad => VCC,
	cin => \inst6|Add7~59\,
	combout => \inst6|Add7~60_combout\,
	cout => \inst6|Add7~61\);

-- Location: LCCOMB_X4_Y35_N6
\inst6|d_x1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~28_combout\ = (\inst6|Add7~60_combout\ & !\inst6|Add7~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~60_combout\,
	datac => \inst6|Add7~62_combout\,
	combout => \inst6|d_x1~28_combout\);

-- Location: FF_X4_Y35_N7
\inst6|d_x1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~28_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(30));

-- Location: LCCOMB_X5_Y35_N30
\inst6|Add7~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add7~62_combout\ = !\inst6|Add7~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Add7~61\,
	combout => \inst6|Add7~62_combout\);

-- Location: LCCOMB_X4_Y35_N30
\inst6|d_x1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|d_x1~27_combout\ = (!\inst6|Add7~62_combout\ & \inst6|Add7~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add7~58_combout\,
	combout => \inst6|d_x1~27_combout\);

-- Location: FF_X4_Y35_N31
\inst6|d_x1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|d_x1~27_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x1\(29));

-- Location: LCCOMB_X3_Y35_N14
\inst6|process_0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~40_combout\ = (!\inst6|d_x1\(25) & (!\inst6|d_x1\(24) & (!\inst6|d_x1\(26) & !\inst6|d_x1\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(25),
	datab => \inst6|d_x1\(24),
	datac => \inst6|d_x1\(26),
	datad => \inst6|d_x1\(27),
	combout => \inst6|process_0~40_combout\);

-- Location: LCCOMB_X3_Y35_N22
\inst6|process_0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~39_combout\ = (!\inst6|d_x1\(22) & (!\inst6|d_x1\(20) & (!\inst6|d_x1\(21) & !\inst6|d_x1\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(22),
	datab => \inst6|d_x1\(20),
	datac => \inst6|d_x1\(21),
	datad => \inst6|d_x1\(23),
	combout => \inst6|process_0~39_combout\);

-- Location: LCCOMB_X4_Y35_N26
\inst6|process_0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~37_combout\ = (!\inst6|d_x1\(14) & (!\inst6|d_x1\(15) & (!\inst6|d_x1\(12) & !\inst6|d_x1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(14),
	datab => \inst6|d_x1\(15),
	datac => \inst6|d_x1\(12),
	datad => \inst6|d_x1\(13),
	combout => \inst6|process_0~37_combout\);

-- Location: LCCOMB_X4_Y35_N18
\inst6|process_0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~38_combout\ = (!\inst6|d_x1\(17) & (!\inst6|d_x1\(18) & (!\inst6|d_x1\(19) & !\inst6|d_x1\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(17),
	datab => \inst6|d_x1\(18),
	datac => \inst6|d_x1\(19),
	datad => \inst6|d_x1\(16),
	combout => \inst6|process_0~38_combout\);

-- Location: LCCOMB_X4_Y35_N4
\inst6|process_0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~41_combout\ = (\inst6|process_0~40_combout\ & (\inst6|process_0~39_combout\ & (\inst6|process_0~37_combout\ & \inst6|process_0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~40_combout\,
	datab => \inst6|process_0~39_combout\,
	datac => \inst6|process_0~37_combout\,
	datad => \inst6|process_0~38_combout\,
	combout => \inst6|process_0~41_combout\);

-- Location: LCCOMB_X4_Y35_N28
\inst6|process_0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~42_combout\ = (!\inst6|d_x1\(29) & (!\inst6|d_x1\(28) & (\inst6|process_0~41_combout\ & !\inst6|d_x1\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(29),
	datab => \inst6|d_x1\(28),
	datac => \inst6|process_0~41_combout\,
	datad => \inst6|d_x1\(30),
	combout => \inst6|process_0~42_combout\);

-- Location: LCCOMB_X8_Y35_N4
\inst6|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan8~0_combout\ = (!\inst6|d_x1\(3) & ((\inst6|d_x1\(2)) # ((\inst6|d_x2\(1)) # (\inst6|d_x2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(2),
	datab => \inst6|d_x2\(1),
	datac => \inst6|d_x2\(0),
	datad => \inst6|d_x1\(3),
	combout => \inst6|LessThan8~0_combout\);

-- Location: LCCOMB_X8_Y35_N6
\inst6|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan8~1_combout\ = (\inst6|d_x1\(5)) # ((\inst6|LessThan8~0_combout\) # (\inst6|d_x1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(5),
	datac => \inst6|LessThan8~0_combout\,
	datad => \inst6|d_x1\(4),
	combout => \inst6|LessThan8~1_combout\);

-- Location: LCCOMB_X8_Y35_N22
\inst6|process_0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~60_combout\ = (\inst6|d_x1\(11)) # (((!\inst6|d_x1\(10)) # (!\inst6|d_x1\(9))) # (!\inst6|d_x1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(11),
	datab => \inst6|d_x1\(8),
	datac => \inst6|d_x1\(9),
	datad => \inst6|d_x1\(10),
	combout => \inst6|process_0~60_combout\);

-- Location: LCCOMB_X8_Y35_N0
\inst6|process_0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~61_combout\ = (\inst6|process_0~60_combout\) # ((\inst6|LessThan8~1_combout\ & (\inst6|d_x1\(6) & \inst6|d_x1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan8~1_combout\,
	datab => \inst6|d_x1\(6),
	datac => \inst6|process_0~60_combout\,
	datad => \inst6|d_x1\(7),
	combout => \inst6|process_0~61_combout\);

-- Location: LCCOMB_X7_Y35_N8
\inst6|LessThan7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~8_combout\ = (\inst6|b_y2\(8) & (\inst6|b_y2\(9) & \inst6|b_y2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(8),
	datac => \inst6|b_y2\(9),
	datad => \inst6|b_y2\(7),
	combout => \inst6|LessThan7~8_combout\);

-- Location: LCCOMB_X6_Y35_N28
\inst6|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~7_combout\ = (!\inst6|b_y2\(4) & (!\inst6|b_y2\(3) & \inst6|b_y2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y2\(4),
	datac => \inst6|b_y2\(3),
	datad => \inst6|b_y2\(2),
	combout => \inst6|LessThan7~7_combout\);

-- Location: LCCOMB_X7_Y35_N18
\inst6|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan9~0_combout\ = (!\inst6|b_y2\(6) & (((\inst6|b_y2\(1) & \inst6|LessThan7~7_combout\)) # (!\inst6|b_y2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(1),
	datab => \inst6|b_y2\(5),
	datac => \inst6|b_y2\(6),
	datad => \inst6|LessThan7~7_combout\,
	combout => \inst6|LessThan9~0_combout\);

-- Location: LCCOMB_X7_Y35_N30
\inst6|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan9~1_combout\ = (\inst6|b_y2\(31)) # ((\inst6|LessThan7~6_combout\ & ((\inst6|LessThan9~0_combout\) # (!\inst6|LessThan7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan7~6_combout\,
	datab => \inst6|b_y2\(31),
	datac => \inst6|LessThan7~8_combout\,
	datad => \inst6|LessThan9~0_combout\,
	combout => \inst6|LessThan9~1_combout\);

-- Location: LCCOMB_X9_Y43_N0
\inst6|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~0_combout\ = \inst6|a_x2\(0) $ (VCC)
-- \inst6|Add4~1\ = CARRY(\inst6|a_x2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(0),
	datad => VCC,
	combout => \inst6|Add4~0_combout\,
	cout => \inst6|Add4~1\);

-- Location: LCCOMB_X2_Y43_N8
\inst6|Add4~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~79_combout\ = (\inst6|Add4~0_combout\ & (!\inst6|Add3~62_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add4~0_combout\,
	datad => \inst6|Add3~62_combout\,
	combout => \inst6|Add4~79_combout\);

-- Location: FF_X2_Y43_N9
\inst6|a_x2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add4~79_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(0));

-- Location: LCCOMB_X9_Y43_N2
\inst6|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~2_combout\ = (\inst6|a_x2\(1) & (\inst6|Add4~1\ & VCC)) # (!\inst6|a_x2\(1) & (!\inst6|Add4~1\))
-- \inst6|Add4~3\ = CARRY((!\inst6|a_x2\(1) & !\inst6|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(1),
	datad => VCC,
	cin => \inst6|Add4~1\,
	combout => \inst6|Add4~2_combout\,
	cout => \inst6|Add4~3\);

-- Location: LCCOMB_X2_Y43_N26
\inst6|Add4~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~78_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~2_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|Add3~62_combout\,
	datac => \inst6|Add4~2_combout\,
	datad => \inst6|LessThan2~3_combout\,
	combout => \inst6|Add4~78_combout\);

-- Location: FF_X2_Y43_N27
\inst6|a_x2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|Add4~78_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(1));

-- Location: LCCOMB_X3_Y43_N0
\inst6|Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~1_cout\ = CARRY(\inst6|a_x2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(0),
	datad => VCC,
	cout => \inst6|Add3~1_cout\);

-- Location: LCCOMB_X3_Y43_N2
\inst6|Add3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~3_cout\ = CARRY((!\inst6|a_x2\(1) & !\inst6|Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(1),
	datad => VCC,
	cin => \inst6|Add3~1_cout\,
	cout => \inst6|Add3~3_cout\);

-- Location: LCCOMB_X3_Y43_N4
\inst6|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~4_combout\ = (\inst6|a_x1\(2) & (\inst6|Add3~3_cout\ $ (GND))) # (!\inst6|a_x1\(2) & ((GND) # (!\inst6|Add3~3_cout\)))
-- \inst6|Add3~5\ = CARRY((!\inst6|Add3~3_cout\) # (!\inst6|a_x1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(2),
	datad => VCC,
	cin => \inst6|Add3~3_cout\,
	combout => \inst6|Add3~4_combout\,
	cout => \inst6|Add3~5\);

-- Location: LCCOMB_X2_Y43_N16
\inst6|a_x1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~28_combout\ = (\inst6|Add3~62_combout\) # (((\inst6|LessThan2~8_combout\ & \inst6|LessThan2~3_combout\)) # (!\inst6|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add3~4_combout\,
	combout => \inst6|a_x1~28_combout\);

-- Location: FF_X2_Y43_N17
\inst6|a_x1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~28_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(2));

-- Location: LCCOMB_X3_Y43_N6
\inst6|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~6_combout\ = (\inst6|a_x1\(3) & (!\inst6|Add3~5\)) # (!\inst6|a_x1\(3) & ((\inst6|Add3~5\) # (GND)))
-- \inst6|Add3~7\ = CARRY((!\inst6|Add3~5\) # (!\inst6|a_x1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x1\(3),
	datad => VCC,
	cin => \inst6|Add3~5\,
	combout => \inst6|Add3~6_combout\,
	cout => \inst6|Add3~7\);

-- Location: LCCOMB_X2_Y43_N12
\inst6|a_x1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~27_combout\ = (\inst6|Add3~62_combout\) # ((\inst6|Add3~6_combout\) # ((\inst6|LessThan2~8_combout\ & \inst6|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add3~6_combout\,
	combout => \inst6|a_x1~27_combout\);

-- Location: FF_X2_Y43_N13
\inst6|a_x1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~27_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(3));

-- Location: LCCOMB_X3_Y43_N8
\inst6|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~8_combout\ = (\inst6|a_x1\(4) & (\inst6|Add3~7\ $ (GND))) # (!\inst6|a_x1\(4) & ((GND) # (!\inst6|Add3~7\)))
-- \inst6|Add3~9\ = CARRY((!\inst6|Add3~7\) # (!\inst6|a_x1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(4),
	datad => VCC,
	cin => \inst6|Add3~7\,
	combout => \inst6|Add3~8_combout\,
	cout => \inst6|Add3~9\);

-- Location: LCCOMB_X2_Y43_N14
\inst6|a_x1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~26_combout\ = (\inst6|Add3~62_combout\) # (((\inst6|LessThan2~8_combout\ & \inst6|LessThan2~3_combout\)) # (!\inst6|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|Add3~62_combout\,
	datac => \inst6|Add3~8_combout\,
	datad => \inst6|LessThan2~3_combout\,
	combout => \inst6|a_x1~26_combout\);

-- Location: FF_X2_Y43_N15
\inst6|a_x1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~26_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(4));

-- Location: LCCOMB_X3_Y43_N10
\inst6|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~10_combout\ = (\inst6|a_x1\(5) & (!\inst6|Add3~9\)) # (!\inst6|a_x1\(5) & (\inst6|Add3~9\ & VCC))
-- \inst6|Add3~11\ = CARRY((\inst6|a_x1\(5) & !\inst6|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(5),
	datad => VCC,
	cin => \inst6|Add3~9\,
	combout => \inst6|Add3~10_combout\,
	cout => \inst6|Add3~11\);

-- Location: LCCOMB_X2_Y43_N10
\inst6|a_x1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~25_combout\ = (\inst6|Add3~62_combout\) # (((\inst6|LessThan2~8_combout\ & \inst6|LessThan2~3_combout\)) # (!\inst6|Add3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|Add3~62_combout\,
	datac => \inst6|Add3~10_combout\,
	datad => \inst6|LessThan2~3_combout\,
	combout => \inst6|a_x1~25_combout\);

-- Location: FF_X2_Y43_N11
\inst6|a_x1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~25_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(5));

-- Location: LCCOMB_X3_Y43_N12
\inst6|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~12_combout\ = (\inst6|a_x1\(6) & (\inst6|Add3~11\ $ (GND))) # (!\inst6|a_x1\(6) & ((GND) # (!\inst6|Add3~11\)))
-- \inst6|Add3~13\ = CARRY((!\inst6|Add3~11\) # (!\inst6|a_x1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x1\(6),
	datad => VCC,
	cin => \inst6|Add3~11\,
	combout => \inst6|Add3~12_combout\,
	cout => \inst6|Add3~13\);

-- Location: LCCOMB_X1_Y43_N14
\inst6|a_x1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~24_combout\ = (\inst6|Add3~62_combout\) # (((\inst6|LessThan2~3_combout\ & \inst6|LessThan2~8_combout\)) # (!\inst6|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|LessThan2~8_combout\,
	datad => \inst6|Add3~12_combout\,
	combout => \inst6|a_x1~24_combout\);

-- Location: FF_X1_Y43_N15
\inst6|a_x1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~24_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(6));

-- Location: LCCOMB_X3_Y43_N14
\inst6|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~14_combout\ = (\inst6|a_x1\(7) & (!\inst6|Add3~13\)) # (!\inst6|a_x1\(7) & (\inst6|Add3~13\ & VCC))
-- \inst6|Add3~15\ = CARRY((\inst6|a_x1\(7) & !\inst6|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x1\(7),
	datad => VCC,
	cin => \inst6|Add3~13\,
	combout => \inst6|Add3~14_combout\,
	cout => \inst6|Add3~15\);

-- Location: LCCOMB_X1_Y43_N20
\inst6|a_x1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~23_combout\ = (\inst6|Add3~62_combout\) # (((\inst6|LessThan2~8_combout\ & \inst6|LessThan2~3_combout\)) # (!\inst6|Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~8_combout\,
	datac => \inst6|Add3~14_combout\,
	datad => \inst6|LessThan2~3_combout\,
	combout => \inst6|a_x1~23_combout\);

-- Location: FF_X1_Y43_N21
\inst6|a_x1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~23_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(7));

-- Location: LCCOMB_X2_Y43_N22
\inst6|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~0_combout\ = (\inst6|a_x1\(3) & ((\inst6|a_x2\(0)) # ((\inst6|a_x2\(1)) # (!\inst6|a_x1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(3),
	datab => \inst6|a_x2\(0),
	datac => \inst6|a_x2\(1),
	datad => \inst6|a_x1\(2),
	combout => \inst6|LessThan5~0_combout\);

-- Location: LCCOMB_X2_Y43_N24
\inst6|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~1_combout\ = (!\inst6|a_x1\(5)) # (!\inst6|a_x1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|a_x1\(4),
	datad => \inst6|a_x1\(5),
	combout => \inst6|LessThan5~1_combout\);

-- Location: LCCOMB_X2_Y43_N6
\inst6|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan5~2_combout\ = (!\inst6|a_x1\(6) & (!\inst6|a_x1\(7) & ((\inst6|LessThan5~0_combout\) # (\inst6|LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(6),
	datab => \inst6|a_x1\(7),
	datac => \inst6|LessThan5~0_combout\,
	datad => \inst6|LessThan5~1_combout\,
	combout => \inst6|LessThan5~2_combout\);

-- Location: LCCOMB_X3_Y43_N16
\inst6|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~16_combout\ = (\inst6|a_x1\(8) & (\inst6|Add3~15\ $ (GND))) # (!\inst6|a_x1\(8) & ((GND) # (!\inst6|Add3~15\)))
-- \inst6|Add3~17\ = CARRY((!\inst6|Add3~15\) # (!\inst6|a_x1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x1\(8),
	datad => VCC,
	cin => \inst6|Add3~15\,
	combout => \inst6|Add3~16_combout\,
	cout => \inst6|Add3~17\);

-- Location: LCCOMB_X1_Y43_N28
\inst6|a_x1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~22_combout\ = (!\inst6|Add3~62_combout\ & (!\inst6|Add3~16_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~8_combout\,
	datac => \inst6|Add3~16_combout\,
	datad => \inst6|LessThan2~3_combout\,
	combout => \inst6|a_x1~22_combout\);

-- Location: FF_X1_Y43_N29
\inst6|a_x1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~22_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(8));

-- Location: LCCOMB_X3_Y43_N18
\inst6|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~18_combout\ = (\inst6|a_x1\(9) & (\inst6|Add3~17\ & VCC)) # (!\inst6|a_x1\(9) & (!\inst6|Add3~17\))
-- \inst6|Add3~19\ = CARRY((!\inst6|a_x1\(9) & !\inst6|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(9),
	datad => VCC,
	cin => \inst6|Add3~17\,
	combout => \inst6|Add3~18_combout\,
	cout => \inst6|Add3~19\);

-- Location: LCCOMB_X1_Y43_N24
\inst6|a_x1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~21_combout\ = (\inst6|Add3~62_combout\) # ((\inst6|Add3~18_combout\) # ((\inst6|LessThan2~3_combout\ & \inst6|LessThan2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|LessThan2~8_combout\,
	datad => \inst6|Add3~18_combout\,
	combout => \inst6|a_x1~21_combout\);

-- Location: FF_X1_Y43_N25
\inst6|a_x1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~21_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(9));

-- Location: LCCOMB_X3_Y43_N20
\inst6|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~20_combout\ = (\inst6|a_x1\(10) & ((GND) # (!\inst6|Add3~19\))) # (!\inst6|a_x1\(10) & (\inst6|Add3~19\ $ (GND)))
-- \inst6|Add3~21\ = CARRY((\inst6|a_x1\(10)) # (!\inst6|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(10),
	datad => VCC,
	cin => \inst6|Add3~19\,
	combout => \inst6|Add3~20_combout\,
	cout => \inst6|Add3~21\);

-- Location: LCCOMB_X1_Y43_N16
\inst6|a_x1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~20_combout\ = (\inst6|Add3~62_combout\) # ((\inst6|Add3~20_combout\) # ((\inst6|LessThan2~8_combout\ & \inst6|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~8_combout\,
	datac => \inst6|Add3~20_combout\,
	datad => \inst6|LessThan2~3_combout\,
	combout => \inst6|a_x1~20_combout\);

-- Location: FF_X1_Y43_N17
\inst6|a_x1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~20_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(10));

-- Location: LCCOMB_X3_Y43_N22
\inst6|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~22_combout\ = (\inst6|a_x1\(11) & (\inst6|Add3~21\ & VCC)) # (!\inst6|a_x1\(11) & (!\inst6|Add3~21\))
-- \inst6|Add3~23\ = CARRY((!\inst6|a_x1\(11) & !\inst6|Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(11),
	datad => VCC,
	cin => \inst6|Add3~21\,
	combout => \inst6|Add3~22_combout\,
	cout => \inst6|Add3~23\);

-- Location: LCCOMB_X1_Y43_N22
\inst6|a_x1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~19_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add3~22_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~8_combout\,
	datac => \inst6|Add3~22_combout\,
	datad => \inst6|LessThan2~3_combout\,
	combout => \inst6|a_x1~19_combout\);

-- Location: FF_X1_Y43_N23
\inst6|a_x1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~19_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(11));

-- Location: LCCOMB_X1_Y43_N6
\inst6|process_0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~58_combout\ = (\inst6|a_x1\(10)) # ((\inst6|a_x1\(9)) # ((\inst6|a_x1\(11)) # (!\inst6|a_x1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(10),
	datab => \inst6|a_x1\(9),
	datac => \inst6|a_x1\(11),
	datad => \inst6|a_x1\(8),
	combout => \inst6|process_0~58_combout\);

-- Location: LCCOMB_X2_Y43_N28
\inst6|process_0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~47_combout\ = (!\inst6|a_x1\(29) & (!\inst6|a_x1\(30) & !\inst6|a_x1\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(29),
	datac => \inst6|a_x1\(30),
	datad => \inst6|a_x1\(28),
	combout => \inst6|process_0~47_combout\);

-- Location: LCCOMB_X2_Y43_N0
\inst6|process_0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~59_combout\ = (\inst6|LessThan5~2_combout\) # ((\inst6|process_0~58_combout\) # ((!\inst6|process_0~47_combout\) # (!\inst6|process_0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan5~2_combout\,
	datab => \inst6|process_0~58_combout\,
	datac => \inst6|process_0~52_combout\,
	datad => \inst6|process_0~47_combout\,
	combout => \inst6|process_0~59_combout\);

-- Location: LCCOMB_X7_Y35_N24
\inst6|endgame~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|endgame~0_combout\ = (\inst6|LessThan9~1_combout\) # ((\inst6|process_0~59_combout\ & ((\inst6|process_0~61_combout\) # (!\inst6|process_0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~42_combout\,
	datab => \inst6|process_0~61_combout\,
	datac => \inst6|LessThan9~1_combout\,
	datad => \inst6|process_0~59_combout\,
	combout => \inst6|endgame~0_combout\);

-- Location: LCCOMB_X9_Y36_N26
\inst6|c_x1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~19_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add5~22_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~3_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add5~62_combout\,
	datad => \inst6|Add5~22_combout\,
	combout => \inst6|c_x1~19_combout\);

-- Location: LCCOMB_X4_Y36_N12
\inst6|c_x1[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1[11]~feeder_combout\ = \inst6|c_x1~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|c_x1~19_combout\,
	combout => \inst6|c_x1[11]~feeder_combout\);

-- Location: FF_X4_Y36_N13
\inst6|c_x1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1[11]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(11));

-- Location: LCCOMB_X11_Y40_N0
\inst6|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~0_combout\ = \inst6|c_x2\(0) $ (VCC)
-- \inst6|Add6~1\ = CARRY(\inst6|c_x2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(0),
	datad => VCC,
	combout => \inst6|Add6~0_combout\,
	cout => \inst6|Add6~1\);

-- Location: LCCOMB_X7_Y36_N12
\inst6|Add6~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~76_combout\ = (\inst6|Add6~0_combout\ & (!\inst6|Add5~62_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~0_combout\,
	datab => \inst6|Add5~62_combout\,
	datac => \inst6|LessThan3~3_combout\,
	datad => \inst6|LessThan3~8_combout\,
	combout => \inst6|Add6~76_combout\);

-- Location: LCCOMB_X6_Y36_N16
\inst6|c_x2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x2[0]~feeder_combout\ = \inst6|Add6~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add6~76_combout\,
	combout => \inst6|c_x2[0]~feeder_combout\);

-- Location: FF_X6_Y36_N17
\inst6|c_x2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x2[0]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(0));

-- Location: LCCOMB_X11_Y40_N2
\inst6|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~2_combout\ = (\inst6|c_x2\(1) & (\inst6|Add6~1\ & VCC)) # (!\inst6|c_x2\(1) & (!\inst6|Add6~1\))
-- \inst6|Add6~3\ = CARRY((!\inst6|c_x2\(1) & !\inst6|Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(1),
	datad => VCC,
	cin => \inst6|Add6~1\,
	combout => \inst6|Add6~2_combout\,
	cout => \inst6|Add6~3\);

-- Location: LCCOMB_X7_Y36_N4
\inst6|Add6~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~75_combout\ = (\inst6|Add6~2_combout\ & (!\inst6|Add5~62_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~2_combout\,
	datab => \inst6|Add5~62_combout\,
	datac => \inst6|LessThan3~3_combout\,
	datad => \inst6|LessThan3~8_combout\,
	combout => \inst6|Add6~75_combout\);

-- Location: LCCOMB_X6_Y36_N14
\inst6|c_x2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x2[1]~feeder_combout\ = \inst6|Add6~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|Add6~75_combout\,
	combout => \inst6|c_x2[1]~feeder_combout\);

-- Location: FF_X6_Y36_N15
\inst6|c_x2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x2[1]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(1));

-- Location: LCCOMB_X10_Y37_N0
\inst6|Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~1_cout\ = CARRY(\inst6|c_x2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(0),
	datad => VCC,
	cout => \inst6|Add5~1_cout\);

-- Location: LCCOMB_X10_Y37_N2
\inst6|Add5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~3_cout\ = CARRY((!\inst6|c_x2\(1) & !\inst6|Add5~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(1),
	datad => VCC,
	cin => \inst6|Add5~1_cout\,
	cout => \inst6|Add5~3_cout\);

-- Location: LCCOMB_X10_Y37_N4
\inst6|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~4_combout\ = (\inst6|c_x1\(2) & ((GND) # (!\inst6|Add5~3_cout\))) # (!\inst6|c_x1\(2) & (\inst6|Add5~3_cout\ $ (GND)))
-- \inst6|Add5~5\ = CARRY((\inst6|c_x1\(2)) # (!\inst6|Add5~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(2),
	datad => VCC,
	cin => \inst6|Add5~3_cout\,
	combout => \inst6|Add5~4_combout\,
	cout => \inst6|Add5~5\);

-- Location: LCCOMB_X7_Y36_N6
\inst6|c_x1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~28_combout\ = (\inst6|Add5~4_combout\ & (!\inst6|Add5~62_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~3_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add5~4_combout\,
	datad => \inst6|Add5~62_combout\,
	combout => \inst6|c_x1~28_combout\);

-- Location: LCCOMB_X6_Y36_N24
\inst6|c_x1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1[2]~feeder_combout\ = \inst6|c_x1~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|c_x1~28_combout\,
	combout => \inst6|c_x1[2]~feeder_combout\);

-- Location: FF_X6_Y36_N25
\inst6|c_x1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1[2]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(2));

-- Location: LCCOMB_X10_Y37_N6
\inst6|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~6_combout\ = (\inst6|c_x1\(3) & (!\inst6|Add5~5\)) # (!\inst6|c_x1\(3) & ((\inst6|Add5~5\) # (GND)))
-- \inst6|Add5~7\ = CARRY((!\inst6|Add5~5\) # (!\inst6|c_x1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x1\(3),
	datad => VCC,
	cin => \inst6|Add5~5\,
	combout => \inst6|Add5~6_combout\,
	cout => \inst6|Add5~7\);

-- Location: LCCOMB_X7_Y36_N2
\inst6|c_x1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~27_combout\ = (\inst6|Add5~6_combout\) # ((\inst6|Add5~62_combout\) # ((\inst6|LessThan3~3_combout\ & \inst6|LessThan3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~3_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add5~6_combout\,
	datad => \inst6|Add5~62_combout\,
	combout => \inst6|c_x1~27_combout\);

-- Location: LCCOMB_X6_Y36_N26
\inst6|c_x1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1[3]~feeder_combout\ = \inst6|c_x1~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|c_x1~27_combout\,
	combout => \inst6|c_x1[3]~feeder_combout\);

-- Location: FF_X6_Y36_N27
\inst6|c_x1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1[3]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(3));

-- Location: LCCOMB_X10_Y37_N8
\inst6|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~8_combout\ = (\inst6|c_x1\(4) & (\inst6|Add5~7\ $ (GND))) # (!\inst6|c_x1\(4) & ((GND) # (!\inst6|Add5~7\)))
-- \inst6|Add5~9\ = CARRY((!\inst6|Add5~7\) # (!\inst6|c_x1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x1\(4),
	datad => VCC,
	cin => \inst6|Add5~7\,
	combout => \inst6|Add5~8_combout\,
	cout => \inst6|Add5~9\);

-- Location: LCCOMB_X10_Y37_N10
\inst6|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~10_combout\ = (\inst6|c_x1\(5) & (!\inst6|Add5~9\)) # (!\inst6|c_x1\(5) & (\inst6|Add5~9\ & VCC))
-- \inst6|Add5~11\ = CARRY((\inst6|c_x1\(5) & !\inst6|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(5),
	datad => VCC,
	cin => \inst6|Add5~9\,
	combout => \inst6|Add5~10_combout\,
	cout => \inst6|Add5~11\);

-- Location: LCCOMB_X8_Y36_N0
\inst6|c_x1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~25_combout\ = (\inst6|Add5~62_combout\) # (((\inst6|LessThan3~3_combout\ & \inst6|LessThan3~8_combout\)) # (!\inst6|Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~3_combout\,
	datab => \inst6|Add5~62_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|Add5~10_combout\,
	combout => \inst6|c_x1~25_combout\);

-- Location: LCCOMB_X6_Y36_N10
\inst6|c_x1[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1[5]~feeder_combout\ = \inst6|c_x1~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|c_x1~25_combout\,
	combout => \inst6|c_x1[5]~feeder_combout\);

-- Location: FF_X6_Y36_N11
\inst6|c_x1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1[5]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(5));

-- Location: LCCOMB_X10_Y37_N12
\inst6|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~12_combout\ = (\inst6|c_x1\(6) & ((GND) # (!\inst6|Add5~11\))) # (!\inst6|c_x1\(6) & (\inst6|Add5~11\ $ (GND)))
-- \inst6|Add5~13\ = CARRY((\inst6|c_x1\(6)) # (!\inst6|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(6),
	datad => VCC,
	cin => \inst6|Add5~11\,
	combout => \inst6|Add5~12_combout\,
	cout => \inst6|Add5~13\);

-- Location: LCCOMB_X7_Y36_N24
\inst6|c_x1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~24_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add5~12_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~3_combout\,
	datab => \inst6|Add5~62_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|Add5~12_combout\,
	combout => \inst6|c_x1~24_combout\);

-- Location: LCCOMB_X6_Y36_N22
\inst6|c_x1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1[6]~feeder_combout\ = \inst6|c_x1~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|c_x1~24_combout\,
	combout => \inst6|c_x1[6]~feeder_combout\);

-- Location: FF_X6_Y36_N23
\inst6|c_x1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1[6]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(6));

-- Location: LCCOMB_X10_Y37_N14
\inst6|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~14_combout\ = (\inst6|c_x1\(7) & (!\inst6|Add5~13\)) # (!\inst6|c_x1\(7) & (\inst6|Add5~13\ & VCC))
-- \inst6|Add5~15\ = CARRY((\inst6|c_x1\(7) & !\inst6|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(7),
	datad => VCC,
	cin => \inst6|Add5~13\,
	combout => \inst6|Add5~14_combout\,
	cout => \inst6|Add5~15\);

-- Location: LCCOMB_X9_Y36_N28
\inst6|c_x1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~23_combout\ = (\inst6|Add5~62_combout\) # (((\inst6|LessThan3~8_combout\ & \inst6|LessThan3~3_combout\)) # (!\inst6|Add5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add5~14_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|c_x1~23_combout\);

-- Location: LCCOMB_X6_Y36_N20
\inst6|c_x1[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1[7]~feeder_combout\ = \inst6|c_x1~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|c_x1~23_combout\,
	combout => \inst6|c_x1[7]~feeder_combout\);

-- Location: FF_X6_Y36_N21
\inst6|c_x1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1[7]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(7));

-- Location: LCCOMB_X10_Y37_N16
\inst6|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~16_combout\ = (\inst6|c_x1\(8) & ((GND) # (!\inst6|Add5~15\))) # (!\inst6|c_x1\(8) & (\inst6|Add5~15\ $ (GND)))
-- \inst6|Add5~17\ = CARRY((\inst6|c_x1\(8)) # (!\inst6|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x1\(8),
	datad => VCC,
	cin => \inst6|Add5~15\,
	combout => \inst6|Add5~16_combout\,
	cout => \inst6|Add5~17\);

-- Location: LCCOMB_X9_Y36_N10
\inst6|c_x1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~22_combout\ = (\inst6|Add5~62_combout\) # ((\inst6|Add5~16_combout\) # ((\inst6|LessThan3~3_combout\ & \inst6|LessThan3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~3_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add5~62_combout\,
	datad => \inst6|Add5~16_combout\,
	combout => \inst6|c_x1~22_combout\);

-- Location: LCCOMB_X4_Y36_N30
\inst6|c_x1[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1[8]~feeder_combout\ = \inst6|c_x1~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|c_x1~22_combout\,
	combout => \inst6|c_x1[8]~feeder_combout\);

-- Location: FF_X4_Y36_N31
\inst6|c_x1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1[8]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(8));

-- Location: LCCOMB_X10_Y37_N18
\inst6|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~18_combout\ = (\inst6|c_x1\(9) & (\inst6|Add5~17\ & VCC)) # (!\inst6|c_x1\(9) & (!\inst6|Add5~17\))
-- \inst6|Add5~19\ = CARRY((!\inst6|c_x1\(9) & !\inst6|Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x1\(9),
	datad => VCC,
	cin => \inst6|Add5~17\,
	combout => \inst6|Add5~18_combout\,
	cout => \inst6|Add5~19\);

-- Location: LCCOMB_X9_Y36_N20
\inst6|c_x1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~21_combout\ = (\inst6|Add5~62_combout\) # ((\inst6|Add5~18_combout\) # ((\inst6|LessThan3~3_combout\ & \inst6|LessThan3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~3_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add5~62_combout\,
	datad => \inst6|Add5~18_combout\,
	combout => \inst6|c_x1~21_combout\);

-- Location: FF_X9_Y36_N21
\inst6|c_x1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~21_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(9));

-- Location: LCCOMB_X10_Y37_N20
\inst6|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~20_combout\ = (\inst6|c_x1\(10) & (\inst6|Add5~19\ $ (GND))) # (!\inst6|c_x1\(10) & ((GND) # (!\inst6|Add5~19\)))
-- \inst6|Add5~21\ = CARRY((!\inst6|Add5~19\) # (!\inst6|c_x1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x1\(10),
	datad => VCC,
	cin => \inst6|Add5~19\,
	combout => \inst6|Add5~20_combout\,
	cout => \inst6|Add5~21\);

-- Location: LCCOMB_X9_Y36_N24
\inst6|c_x1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~20_combout\ = (!\inst6|Add5~62_combout\ & (!\inst6|Add5~20_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add5~20_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|c_x1~20_combout\);

-- Location: LCCOMB_X4_Y36_N10
\inst6|c_x1[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1[10]~feeder_combout\ = \inst6|c_x1~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|c_x1~20_combout\,
	combout => \inst6|c_x1[10]~feeder_combout\);

-- Location: FF_X4_Y36_N11
\inst6|c_x1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1[10]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(10));

-- Location: LCCOMB_X10_Y37_N22
\inst6|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~22_combout\ = (\inst6|c_x1\(11) & (\inst6|Add5~21\ & VCC)) # (!\inst6|c_x1\(11) & (!\inst6|Add5~21\))
-- \inst6|Add5~23\ = CARRY((!\inst6|c_x1\(11) & !\inst6|Add5~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(11),
	datad => VCC,
	cin => \inst6|Add5~21\,
	combout => \inst6|Add5~22_combout\,
	cout => \inst6|Add5~23\);

-- Location: LCCOMB_X9_Y36_N12
\inst6|c_x1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~2_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add5~28_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add5~28_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|c_x1~2_combout\);

-- Location: FF_X9_Y36_N13
\inst6|c_x1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~2_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(14));

-- Location: LCCOMB_X10_Y37_N24
\inst6|Add5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~24_combout\ = (\inst6|c_x1\(12) & ((GND) # (!\inst6|Add5~23\))) # (!\inst6|c_x1\(12) & (\inst6|Add5~23\ $ (GND)))
-- \inst6|Add5~25\ = CARRY((\inst6|c_x1\(12)) # (!\inst6|Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(12),
	datad => VCC,
	cin => \inst6|Add5~23\,
	combout => \inst6|Add5~24_combout\,
	cout => \inst6|Add5~25\);

-- Location: LCCOMB_X9_Y36_N8
\inst6|c_x1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~0_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add5~24_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add5~24_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|c_x1~0_combout\);

-- Location: FF_X9_Y36_N9
\inst6|c_x1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(12));

-- Location: LCCOMB_X10_Y37_N26
\inst6|Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~26_combout\ = (\inst6|c_x1\(13) & (\inst6|Add5~25\ & VCC)) # (!\inst6|c_x1\(13) & (!\inst6|Add5~25\))
-- \inst6|Add5~27\ = CARRY((!\inst6|c_x1\(13) & !\inst6|Add5~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(13),
	datad => VCC,
	cin => \inst6|Add5~25\,
	combout => \inst6|Add5~26_combout\,
	cout => \inst6|Add5~27\);

-- Location: LCCOMB_X9_Y36_N14
\inst6|c_x1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~1_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add5~26_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~3_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add5~62_combout\,
	datad => \inst6|Add5~26_combout\,
	combout => \inst6|c_x1~1_combout\);

-- Location: FF_X9_Y36_N15
\inst6|c_x1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~1_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(13));

-- Location: LCCOMB_X10_Y37_N28
\inst6|Add5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~28_combout\ = (\inst6|c_x1\(14) & ((GND) # (!\inst6|Add5~27\))) # (!\inst6|c_x1\(14) & (\inst6|Add5~27\ $ (GND)))
-- \inst6|Add5~29\ = CARRY((\inst6|c_x1\(14)) # (!\inst6|Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x1\(14),
	datad => VCC,
	cin => \inst6|Add5~27\,
	combout => \inst6|Add5~28_combout\,
	cout => \inst6|Add5~29\);

-- Location: LCCOMB_X9_Y36_N22
\inst6|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~1_combout\ = (!\inst6|Add5~22_combout\ & (!\inst6|Add5~28_combout\ & (!\inst6|Add5~24_combout\ & !\inst6|Add5~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~22_combout\,
	datab => \inst6|Add5~28_combout\,
	datac => \inst6|Add5~24_combout\,
	datad => \inst6|Add5~26_combout\,
	combout => \inst6|LessThan3~1_combout\);

-- Location: LCCOMB_X9_Y36_N18
\inst6|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~0_combout\ = (!\inst6|Add5~14_combout\ & (!\inst6|Add5~18_combout\ & (!\inst6|Add5~20_combout\ & !\inst6|Add5~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~14_combout\,
	datab => \inst6|Add5~18_combout\,
	datac => \inst6|Add5~20_combout\,
	datad => \inst6|Add5~16_combout\,
	combout => \inst6|LessThan3~0_combout\);

-- Location: LCCOMB_X7_Y36_N22
\inst6|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~2_combout\ = ((!\inst6|Add5~4_combout\ & (!\inst6|Add5~8_combout\ & !\inst6|Add5~6_combout\))) # (!\inst6|Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~4_combout\,
	datab => \inst6|Add5~8_combout\,
	datac => \inst6|Add5~6_combout\,
	datad => \inst6|Add5~10_combout\,
	combout => \inst6|LessThan3~2_combout\);

-- Location: LCCOMB_X9_Y36_N6
\inst6|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~3_combout\ = (\inst6|LessThan3~1_combout\ & (\inst6|LessThan3~0_combout\ & ((\inst6|LessThan3~2_combout\) # (!\inst6|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~1_combout\,
	datab => \inst6|LessThan3~0_combout\,
	datac => \inst6|LessThan3~2_combout\,
	datad => \inst6|Add5~12_combout\,
	combout => \inst6|LessThan3~3_combout\);

-- Location: LCCOMB_X10_Y37_N30
\inst6|Add5~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~30_combout\ = (\inst6|c_x1\(15) & (\inst6|Add5~29\ & VCC)) # (!\inst6|c_x1\(15) & (!\inst6|Add5~29\))
-- \inst6|Add5~31\ = CARRY((!\inst6|c_x1\(15) & !\inst6|Add5~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x1\(15),
	datad => VCC,
	cin => \inst6|Add5~29\,
	combout => \inst6|Add5~30_combout\,
	cout => \inst6|Add5~31\);

-- Location: LCCOMB_X9_Y36_N30
\inst6|c_x1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~3_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add5~30_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|LessThan3~3_combout\,
	datad => \inst6|Add5~30_combout\,
	combout => \inst6|c_x1~3_combout\);

-- Location: FF_X9_Y36_N31
\inst6|c_x1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~3_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(15));

-- Location: LCCOMB_X10_Y36_N0
\inst6|Add5~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~32_combout\ = (\inst6|c_x1\(16) & ((GND) # (!\inst6|Add5~31\))) # (!\inst6|c_x1\(16) & (\inst6|Add5~31\ $ (GND)))
-- \inst6|Add5~33\ = CARRY((\inst6|c_x1\(16)) # (!\inst6|Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(16),
	datad => VCC,
	cin => \inst6|Add5~31\,
	combout => \inst6|Add5~32_combout\,
	cout => \inst6|Add5~33\);

-- Location: LCCOMB_X7_Y36_N26
\inst6|c_x1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~4_combout\ = (\inst6|Add5~32_combout\ & (!\inst6|Add5~62_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~3_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add5~32_combout\,
	datad => \inst6|Add5~62_combout\,
	combout => \inst6|c_x1~4_combout\);

-- Location: FF_X7_Y36_N27
\inst6|c_x1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~4_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(16));

-- Location: LCCOMB_X10_Y36_N2
\inst6|Add5~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~34_combout\ = (\inst6|c_x1\(17) & (\inst6|Add5~33\ & VCC)) # (!\inst6|c_x1\(17) & (!\inst6|Add5~33\))
-- \inst6|Add5~35\ = CARRY((!\inst6|c_x1\(17) & !\inst6|Add5~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x1\(17),
	datad => VCC,
	cin => \inst6|Add5~33\,
	combout => \inst6|Add5~34_combout\,
	cout => \inst6|Add5~35\);

-- Location: LCCOMB_X7_Y36_N0
\inst6|c_x1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~5_combout\ = (\inst6|Add5~34_combout\ & (!\inst6|Add5~62_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~3_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add5~34_combout\,
	datad => \inst6|Add5~62_combout\,
	combout => \inst6|c_x1~5_combout\);

-- Location: FF_X7_Y36_N1
\inst6|c_x1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~5_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(17));

-- Location: LCCOMB_X10_Y36_N4
\inst6|Add5~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~36_combout\ = (\inst6|c_x1\(18) & ((GND) # (!\inst6|Add5~35\))) # (!\inst6|c_x1\(18) & (\inst6|Add5~35\ $ (GND)))
-- \inst6|Add5~37\ = CARRY((\inst6|c_x1\(18)) # (!\inst6|Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(18),
	datad => VCC,
	cin => \inst6|Add5~35\,
	combout => \inst6|Add5~36_combout\,
	cout => \inst6|Add5~37\);

-- Location: LCCOMB_X7_Y36_N20
\inst6|c_x1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~6_combout\ = (\inst6|Add5~36_combout\ & (!\inst6|Add5~62_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~3_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add5~36_combout\,
	datad => \inst6|Add5~62_combout\,
	combout => \inst6|c_x1~6_combout\);

-- Location: FF_X7_Y36_N21
\inst6|c_x1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~6_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(18));

-- Location: LCCOMB_X10_Y36_N6
\inst6|Add5~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~38_combout\ = (\inst6|c_x1\(19) & (\inst6|Add5~37\ & VCC)) # (!\inst6|c_x1\(19) & (!\inst6|Add5~37\))
-- \inst6|Add5~39\ = CARRY((!\inst6|c_x1\(19) & !\inst6|Add5~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x1\(19),
	datad => VCC,
	cin => \inst6|Add5~37\,
	combout => \inst6|Add5~38_combout\,
	cout => \inst6|Add5~39\);

-- Location: LCCOMB_X7_Y36_N8
\inst6|c_x1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~7_combout\ = (\inst6|Add5~38_combout\ & (!\inst6|Add5~62_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~3_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add5~38_combout\,
	datad => \inst6|Add5~62_combout\,
	combout => \inst6|c_x1~7_combout\);

-- Location: FF_X7_Y36_N9
\inst6|c_x1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~7_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(19));

-- Location: LCCOMB_X10_Y36_N8
\inst6|Add5~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~40_combout\ = (\inst6|c_x1\(20) & ((GND) # (!\inst6|Add5~39\))) # (!\inst6|c_x1\(20) & (\inst6|Add5~39\ $ (GND)))
-- \inst6|Add5~41\ = CARRY((\inst6|c_x1\(20)) # (!\inst6|Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x1\(20),
	datad => VCC,
	cin => \inst6|Add5~39\,
	combout => \inst6|Add5~40_combout\,
	cout => \inst6|Add5~41\);

-- Location: LCCOMB_X11_Y36_N26
\inst6|c_x1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~8_combout\ = (\inst6|Add5~40_combout\ & (!\inst6|Add5~62_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~40_combout\,
	datab => \inst6|Add5~62_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|c_x1~8_combout\);

-- Location: FF_X11_Y36_N27
\inst6|c_x1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~8_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(20));

-- Location: LCCOMB_X10_Y36_N10
\inst6|Add5~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~42_combout\ = (\inst6|c_x1\(21) & (\inst6|Add5~41\ & VCC)) # (!\inst6|c_x1\(21) & (!\inst6|Add5~41\))
-- \inst6|Add5~43\ = CARRY((!\inst6|c_x1\(21) & !\inst6|Add5~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x1\(21),
	datad => VCC,
	cin => \inst6|Add5~41\,
	combout => \inst6|Add5~42_combout\,
	cout => \inst6|Add5~43\);

-- Location: LCCOMB_X11_Y36_N28
\inst6|c_x1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~9_combout\ = (\inst6|Add5~42_combout\ & (!\inst6|Add5~62_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~42_combout\,
	datab => \inst6|Add5~62_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|c_x1~9_combout\);

-- Location: FF_X11_Y36_N29
\inst6|c_x1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~9_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(21));

-- Location: LCCOMB_X10_Y36_N12
\inst6|Add5~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~44_combout\ = (\inst6|c_x1\(22) & ((GND) # (!\inst6|Add5~43\))) # (!\inst6|c_x1\(22) & (\inst6|Add5~43\ $ (GND)))
-- \inst6|Add5~45\ = CARRY((\inst6|c_x1\(22)) # (!\inst6|Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(22),
	datad => VCC,
	cin => \inst6|Add5~43\,
	combout => \inst6|Add5~44_combout\,
	cout => \inst6|Add5~45\);

-- Location: LCCOMB_X11_Y36_N20
\inst6|c_x1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~10_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add5~44_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~8_combout\,
	datab => \inst6|Add5~62_combout\,
	datac => \inst6|Add5~44_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|c_x1~10_combout\);

-- Location: FF_X11_Y36_N21
\inst6|c_x1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~10_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(22));

-- Location: LCCOMB_X10_Y36_N14
\inst6|Add5~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~46_combout\ = (\inst6|c_x1\(23) & (\inst6|Add5~45\ & VCC)) # (!\inst6|c_x1\(23) & (!\inst6|Add5~45\))
-- \inst6|Add5~47\ = CARRY((!\inst6|c_x1\(23) & !\inst6|Add5~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(23),
	datad => VCC,
	cin => \inst6|Add5~45\,
	combout => \inst6|Add5~46_combout\,
	cout => \inst6|Add5~47\);

-- Location: LCCOMB_X11_Y36_N30
\inst6|c_x1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~11_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add5~46_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~8_combout\,
	datab => \inst6|Add5~62_combout\,
	datac => \inst6|Add5~46_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|c_x1~11_combout\);

-- Location: FF_X11_Y36_N31
\inst6|c_x1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~11_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(23));

-- Location: LCCOMB_X10_Y36_N16
\inst6|Add5~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~48_combout\ = (\inst6|c_x1\(24) & ((GND) # (!\inst6|Add5~47\))) # (!\inst6|c_x1\(24) & (\inst6|Add5~47\ $ (GND)))
-- \inst6|Add5~49\ = CARRY((\inst6|c_x1\(24)) # (!\inst6|Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(24),
	datad => VCC,
	cin => \inst6|Add5~47\,
	combout => \inst6|Add5~48_combout\,
	cout => \inst6|Add5~49\);

-- Location: LCCOMB_X11_Y36_N4
\inst6|c_x1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~12_combout\ = (\inst6|Add5~48_combout\ & (!\inst6|Add5~62_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~8_combout\,
	datab => \inst6|LessThan3~3_combout\,
	datac => \inst6|Add5~48_combout\,
	datad => \inst6|Add5~62_combout\,
	combout => \inst6|c_x1~12_combout\);

-- Location: FF_X11_Y36_N5
\inst6|c_x1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~12_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(24));

-- Location: LCCOMB_X10_Y36_N18
\inst6|Add5~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~50_combout\ = (\inst6|c_x1\(25) & (\inst6|Add5~49\ & VCC)) # (!\inst6|c_x1\(25) & (!\inst6|Add5~49\))
-- \inst6|Add5~51\ = CARRY((!\inst6|c_x1\(25) & !\inst6|Add5~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(25),
	datad => VCC,
	cin => \inst6|Add5~49\,
	combout => \inst6|Add5~50_combout\,
	cout => \inst6|Add5~51\);

-- Location: LCCOMB_X11_Y36_N2
\inst6|c_x1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~13_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add5~50_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~8_combout\,
	datab => \inst6|Add5~62_combout\,
	datac => \inst6|LessThan3~3_combout\,
	datad => \inst6|Add5~50_combout\,
	combout => \inst6|c_x1~13_combout\);

-- Location: FF_X11_Y36_N3
\inst6|c_x1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~13_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(25));

-- Location: LCCOMB_X10_Y36_N20
\inst6|Add5~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~52_combout\ = (\inst6|c_x1\(26) & ((GND) # (!\inst6|Add5~51\))) # (!\inst6|c_x1\(26) & (\inst6|Add5~51\ $ (GND)))
-- \inst6|Add5~53\ = CARRY((\inst6|c_x1\(26)) # (!\inst6|Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(26),
	datad => VCC,
	cin => \inst6|Add5~51\,
	combout => \inst6|Add5~52_combout\,
	cout => \inst6|Add5~53\);

-- Location: LCCOMB_X11_Y36_N6
\inst6|c_x1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~14_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add5~52_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~8_combout\,
	datab => \inst6|Add5~62_combout\,
	datac => \inst6|Add5~52_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|c_x1~14_combout\);

-- Location: FF_X11_Y36_N7
\inst6|c_x1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~14_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(26));

-- Location: LCCOMB_X10_Y36_N22
\inst6|Add5~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~54_combout\ = (\inst6|c_x1\(27) & (\inst6|Add5~53\ & VCC)) # (!\inst6|c_x1\(27) & (!\inst6|Add5~53\))
-- \inst6|Add5~55\ = CARRY((!\inst6|c_x1\(27) & !\inst6|Add5~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x1\(27),
	datad => VCC,
	cin => \inst6|Add5~53\,
	combout => \inst6|Add5~54_combout\,
	cout => \inst6|Add5~55\);

-- Location: LCCOMB_X10_Y36_N24
\inst6|Add5~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~56_combout\ = (\inst6|c_x1\(28) & ((GND) # (!\inst6|Add5~55\))) # (!\inst6|c_x1\(28) & (\inst6|Add5~55\ $ (GND)))
-- \inst6|Add5~57\ = CARRY((\inst6|c_x1\(28)) # (!\inst6|Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x1\(28),
	datad => VCC,
	cin => \inst6|Add5~55\,
	combout => \inst6|Add5~56_combout\,
	cout => \inst6|Add5~57\);

-- Location: LCCOMB_X1_Y36_N28
\inst6|c_x1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~16_combout\ = (!\inst6|Add5~62_combout\ & \inst6|Add5~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add5~62_combout\,
	datad => \inst6|Add5~56_combout\,
	combout => \inst6|c_x1~16_combout\);

-- Location: FF_X1_Y36_N29
\inst6|c_x1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~16_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(28));

-- Location: LCCOMB_X10_Y36_N26
\inst6|Add5~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~58_combout\ = (\inst6|c_x1\(29) & (\inst6|Add5~57\ & VCC)) # (!\inst6|c_x1\(29) & (!\inst6|Add5~57\))
-- \inst6|Add5~59\ = CARRY((!\inst6|c_x1\(29) & !\inst6|Add5~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(29),
	datad => VCC,
	cin => \inst6|Add5~57\,
	combout => \inst6|Add5~58_combout\,
	cout => \inst6|Add5~59\);

-- Location: LCCOMB_X16_Y38_N18
\inst6|c_x1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~17_combout\ = (!\inst6|Add5~62_combout\ & \inst6|Add5~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add5~62_combout\,
	datad => \inst6|Add5~58_combout\,
	combout => \inst6|c_x1~17_combout\);

-- Location: LCCOMB_X1_Y36_N20
\inst6|c_x1[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1[29]~feeder_combout\ = \inst6|c_x1~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|c_x1~17_combout\,
	combout => \inst6|c_x1[29]~feeder_combout\);

-- Location: FF_X1_Y36_N21
\inst6|c_x1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1[29]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(29));

-- Location: LCCOMB_X10_Y36_N28
\inst6|Add5~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~60_combout\ = (\inst6|c_x1\(30) & ((GND) # (!\inst6|Add5~59\))) # (!\inst6|c_x1\(30) & (\inst6|Add5~59\ $ (GND)))
-- \inst6|Add5~61\ = CARRY((\inst6|c_x1\(30)) # (!\inst6|Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x1\(30),
	datad => VCC,
	cin => \inst6|Add5~59\,
	combout => \inst6|Add5~60_combout\,
	cout => \inst6|Add5~61\);

-- Location: LCCOMB_X16_Y38_N12
\inst6|c_x1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~18_combout\ = (!\inst6|Add5~62_combout\ & \inst6|Add5~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add5~62_combout\,
	datad => \inst6|Add5~60_combout\,
	combout => \inst6|c_x1~18_combout\);

-- Location: LCCOMB_X1_Y36_N14
\inst6|c_x1[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1[30]~feeder_combout\ = \inst6|c_x1~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|c_x1~18_combout\,
	combout => \inst6|c_x1[30]~feeder_combout\);

-- Location: FF_X1_Y36_N15
\inst6|c_x1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1[30]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(30));

-- Location: LCCOMB_X10_Y36_N30
\inst6|Add5~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add5~62_combout\ = !\inst6|Add5~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Add5~61\,
	combout => \inst6|Add5~62_combout\);

-- Location: LCCOMB_X11_Y36_N8
\inst6|c_x1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~15_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add5~54_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~8_combout\,
	datab => \inst6|Add5~62_combout\,
	datac => \inst6|Add5~54_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|c_x1~15_combout\);

-- Location: FF_X11_Y36_N9
\inst6|c_x1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~15_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(27));

-- Location: LCCOMB_X7_Y36_N14
\inst6|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~4_combout\ = (!\inst6|Add5~36_combout\ & (!\inst6|Add5~34_combout\ & (!\inst6|Add5~32_combout\ & !\inst6|Add5~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~36_combout\,
	datab => \inst6|Add5~34_combout\,
	datac => \inst6|Add5~32_combout\,
	datad => \inst6|Add5~30_combout\,
	combout => \inst6|LessThan3~4_combout\);

-- Location: LCCOMB_X11_Y36_N16
\inst6|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~5_combout\ = (!\inst6|Add5~42_combout\ & (!\inst6|Add5~44_combout\ & (!\inst6|Add5~38_combout\ & !\inst6|Add5~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~42_combout\,
	datab => \inst6|Add5~44_combout\,
	datac => \inst6|Add5~38_combout\,
	datad => \inst6|Add5~40_combout\,
	combout => \inst6|LessThan3~5_combout\);

-- Location: LCCOMB_X11_Y36_N14
\inst6|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~6_combout\ = (!\inst6|Add5~46_combout\ & (\inst6|LessThan3~4_combout\ & (!\inst6|Add5~48_combout\ & \inst6|LessThan3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~46_combout\,
	datab => \inst6|LessThan3~4_combout\,
	datac => \inst6|Add5~48_combout\,
	datad => \inst6|LessThan3~5_combout\,
	combout => \inst6|LessThan3~6_combout\);

-- Location: LCCOMB_X11_Y36_N22
\inst6|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~7_combout\ = (!\inst6|Add5~54_combout\ & (!\inst6|Add5~52_combout\ & (\inst6|LessThan3~6_combout\ & !\inst6|Add5~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~54_combout\,
	datab => \inst6|Add5~52_combout\,
	datac => \inst6|LessThan3~6_combout\,
	datad => \inst6|Add5~50_combout\,
	combout => \inst6|LessThan3~7_combout\);

-- Location: LCCOMB_X11_Y36_N12
\inst6|LessThan3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan3~8_combout\ = (\inst6|LessThan3~7_combout\ & (!\inst6|Add5~60_combout\ & (!\inst6|Add5~58_combout\ & !\inst6|Add5~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~7_combout\,
	datab => \inst6|Add5~60_combout\,
	datac => \inst6|Add5~58_combout\,
	datad => \inst6|Add5~56_combout\,
	combout => \inst6|LessThan3~8_combout\);

-- Location: LCCOMB_X6_Y36_N8
\inst6|c_x1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|c_x1~26_combout\ = (\inst6|Add5~62_combout\) # (((\inst6|LessThan3~8_combout\ & \inst6|LessThan3~3_combout\)) # (!\inst6|Add5~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan3~8_combout\,
	datab => \inst6|Add5~62_combout\,
	datac => \inst6|LessThan3~3_combout\,
	datad => \inst6|Add5~8_combout\,
	combout => \inst6|c_x1~26_combout\);

-- Location: FF_X6_Y36_N9
\inst6|c_x1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|c_x1~26_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x1\(4));

-- Location: LCCOMB_X6_Y36_N30
\inst6|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~0_combout\ = (\inst6|c_x1\(3) & ((\inst6|c_x1\(2)) # ((\inst6|c_x2\(1)) # (\inst6|c_x2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(3),
	datab => \inst6|c_x1\(2),
	datac => \inst6|c_x2\(1),
	datad => \inst6|c_x2\(0),
	combout => \inst6|LessThan6~0_combout\);

-- Location: LCCOMB_X6_Y36_N6
\inst6|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan6~1_combout\ = ((\inst6|LessThan6~0_combout\) # (!\inst6|c_x1\(5))) # (!\inst6|c_x1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x1\(4),
	datac => \inst6|LessThan6~0_combout\,
	datad => \inst6|c_x1\(5),
	combout => \inst6|LessThan6~1_combout\);

-- Location: LCCOMB_X4_Y36_N20
\inst6|process_0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~62_combout\ = ((\inst6|c_x1\(9)) # ((\inst6|c_x1\(8)) # (\inst6|c_x1\(11)))) # (!\inst6|c_x1\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(10),
	datab => \inst6|c_x1\(9),
	datac => \inst6|c_x1\(8),
	datad => \inst6|c_x1\(11),
	combout => \inst6|process_0~62_combout\);

-- Location: LCCOMB_X6_Y36_N4
\inst6|process_0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~63_combout\ = (\inst6|process_0~62_combout\) # ((\inst6|LessThan6~1_combout\ & (\inst6|c_x1\(6) & !\inst6|c_x1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan6~1_combout\,
	datab => \inst6|process_0~62_combout\,
	datac => \inst6|c_x1\(6),
	datad => \inst6|c_x1\(7),
	combout => \inst6|process_0~63_combout\);

-- Location: LCCOMB_X7_Y36_N30
\inst6|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~8_combout\ = (!\inst6|c_x1\(16) & (!\inst6|c_x1\(17) & (!\inst6|c_x1\(19) & !\inst6|c_x1\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(16),
	datab => \inst6|c_x1\(17),
	datac => \inst6|c_x1\(19),
	datad => \inst6|c_x1\(18),
	combout => \inst6|process_0~8_combout\);

-- Location: LCCOMB_X11_Y36_N24
\inst6|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~9_combout\ = (!\inst6|c_x1\(20) & (!\inst6|c_x1\(21) & (!\inst6|c_x1\(23) & !\inst6|c_x1\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(20),
	datab => \inst6|c_x1\(21),
	datac => \inst6|c_x1\(23),
	datad => \inst6|c_x1\(22),
	combout => \inst6|process_0~9_combout\);

-- Location: LCCOMB_X9_Y36_N16
\inst6|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~7_combout\ = (!\inst6|c_x1\(15) & (!\inst6|c_x1\(12) & (!\inst6|c_x1\(13) & !\inst6|c_x1\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(15),
	datab => \inst6|c_x1\(12),
	datac => \inst6|c_x1\(13),
	datad => \inst6|c_x1\(14),
	combout => \inst6|process_0~7_combout\);

-- Location: LCCOMB_X11_Y36_N10
\inst6|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~10_combout\ = (!\inst6|c_x1\(26) & (!\inst6|c_x1\(24) & (!\inst6|c_x1\(27) & !\inst6|c_x1\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(26),
	datab => \inst6|c_x1\(24),
	datac => \inst6|c_x1\(27),
	datad => \inst6|c_x1\(25),
	combout => \inst6|process_0~10_combout\);

-- Location: LCCOMB_X11_Y36_N18
\inst6|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~11_combout\ = (\inst6|process_0~8_combout\ & (\inst6|process_0~9_combout\ & (\inst6|process_0~7_combout\ & \inst6|process_0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~8_combout\,
	datab => \inst6|process_0~9_combout\,
	datac => \inst6|process_0~7_combout\,
	datad => \inst6|process_0~10_combout\,
	combout => \inst6|process_0~11_combout\);

-- Location: LCCOMB_X1_Y36_N22
\inst6|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~12_combout\ = (\inst6|process_0~11_combout\ & (!\inst6|c_x1\(29) & (!\inst6|c_x1\(30) & !\inst6|c_x1\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~11_combout\,
	datab => \inst6|c_x1\(29),
	datac => \inst6|c_x1\(30),
	datad => \inst6|c_x1\(28),
	combout => \inst6|process_0~12_combout\);

-- Location: LCCOMB_X6_Y36_N28
\inst6|process_0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~64_combout\ = (\inst6|process_0~63_combout\) # ((\inst6|b_y2\(31)) # (!\inst6|process_0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_0~63_combout\,
	datac => \inst6|b_y2\(31),
	datad => \inst6|process_0~12_combout\,
	combout => \inst6|process_0~64_combout\);

-- Location: LCCOMB_X7_Y35_N16
\inst6|LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan7~9_combout\ = ((!\inst6|b_y2\(6) & (\inst6|LessThan7~7_combout\ & !\inst6|b_y2\(5)))) # (!\inst6|LessThan7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(6),
	datab => \inst6|LessThan7~7_combout\,
	datac => \inst6|LessThan7~8_combout\,
	datad => \inst6|b_y2\(5),
	combout => \inst6|LessThan7~9_combout\);

-- Location: LCCOMB_X7_Y35_N14
\inst6|endgame~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|endgame~1_combout\ = (\inst6|endgame~0_combout\ & ((\inst6|process_0~64_combout\) # ((\inst6|LessThan7~6_combout\ & \inst6|LessThan7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan7~6_combout\,
	datab => \inst6|endgame~0_combout\,
	datac => \inst6|process_0~64_combout\,
	datad => \inst6|LessThan7~9_combout\,
	combout => \inst6|endgame~1_combout\);

-- Location: LCCOMB_X14_Y38_N20
\inst6|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|comb~0_combout\ = (\reset~input_o\ & !\inst6|endgame~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst6|endgame~1_combout\,
	combout => \inst6|comb~0_combout\);

-- Location: FF_X14_Y41_N1
\inst6|n_x2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[0]~94_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(0));

-- Location: LCCOMB_X16_Y40_N2
\inst6|n_x2[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[1]~32_combout\ = (\inst6|n_x2\(0) & (\inst6|n_x2\(1) & VCC)) # (!\inst6|n_x2\(0) & (\inst6|n_x2\(1) $ (VCC)))
-- \inst6|n_x2[1]~33\ = CARRY((!\inst6|n_x2\(0) & \inst6|n_x2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(0),
	datab => \inst6|n_x2\(1),
	datad => VCC,
	combout => \inst6|n_x2[1]~32_combout\,
	cout => \inst6|n_x2[1]~33\);

-- Location: FF_X16_Y40_N3
\inst6|n_x2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[1]~32_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(1));

-- Location: LCCOMB_X16_Y40_N4
\inst6|n_x2[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[2]~34_combout\ = (\inst6|n_x2\(2) & (!\inst6|n_x2[1]~33\)) # (!\inst6|n_x2\(2) & ((\inst6|n_x2[1]~33\) # (GND)))
-- \inst6|n_x2[2]~35\ = CARRY((!\inst6|n_x2[1]~33\) # (!\inst6|n_x2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(2),
	datad => VCC,
	cin => \inst6|n_x2[1]~33\,
	combout => \inst6|n_x2[2]~34_combout\,
	cout => \inst6|n_x2[2]~35\);

-- Location: FF_X16_Y40_N5
\inst6|n_x2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[2]~34_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(2));

-- Location: LCCOMB_X16_Y40_N6
\inst6|n_x2[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[3]~36_combout\ = (\inst6|n_x2\(3) & (\inst6|n_x2[2]~35\ & VCC)) # (!\inst6|n_x2\(3) & (!\inst6|n_x2[2]~35\))
-- \inst6|n_x2[3]~37\ = CARRY((!\inst6|n_x2\(3) & !\inst6|n_x2[2]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(3),
	datad => VCC,
	cin => \inst6|n_x2[2]~35\,
	combout => \inst6|n_x2[3]~36_combout\,
	cout => \inst6|n_x2[3]~37\);

-- Location: FF_X16_Y40_N7
\inst6|n_x2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[3]~36_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(3));

-- Location: LCCOMB_X16_Y40_N8
\inst6|n_x2[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[4]~38_combout\ = (\inst6|n_x2\(4) & ((GND) # (!\inst6|n_x2[3]~37\))) # (!\inst6|n_x2\(4) & (\inst6|n_x2[3]~37\ $ (GND)))
-- \inst6|n_x2[4]~39\ = CARRY((\inst6|n_x2\(4)) # (!\inst6|n_x2[3]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(4),
	datad => VCC,
	cin => \inst6|n_x2[3]~37\,
	combout => \inst6|n_x2[4]~38_combout\,
	cout => \inst6|n_x2[4]~39\);

-- Location: FF_X16_Y40_N9
\inst6|n_x2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[4]~38_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(4));

-- Location: LCCOMB_X16_Y40_N10
\inst6|n_x2[5]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[5]~40_combout\ = (\inst6|n_x2\(5) & (\inst6|n_x2[4]~39\ $ (GND))) # (!\inst6|n_x2\(5) & (!\inst6|n_x2[4]~39\ & VCC))
-- \inst6|n_x2[5]~41\ = CARRY((\inst6|n_x2\(5) & !\inst6|n_x2[4]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(5),
	datad => VCC,
	cin => \inst6|n_x2[4]~39\,
	combout => \inst6|n_x2[5]~40_combout\,
	cout => \inst6|n_x2[5]~41\);

-- Location: FF_X16_Y40_N11
\inst6|n_x2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[5]~40_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(5));

-- Location: LCCOMB_X16_Y40_N12
\inst6|n_x2[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[6]~42_combout\ = (\inst6|n_x2\(6) & (!\inst6|n_x2[5]~41\)) # (!\inst6|n_x2\(6) & ((\inst6|n_x2[5]~41\) # (GND)))
-- \inst6|n_x2[6]~43\ = CARRY((!\inst6|n_x2[5]~41\) # (!\inst6|n_x2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(6),
	datad => VCC,
	cin => \inst6|n_x2[5]~41\,
	combout => \inst6|n_x2[6]~42_combout\,
	cout => \inst6|n_x2[6]~43\);

-- Location: FF_X16_Y40_N13
\inst6|n_x2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[6]~42_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(6));

-- Location: LCCOMB_X16_Y40_N14
\inst6|n_x2[7]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[7]~44_combout\ = (\inst6|n_x2\(7) & (\inst6|n_x2[6]~43\ $ (GND))) # (!\inst6|n_x2\(7) & (!\inst6|n_x2[6]~43\ & VCC))
-- \inst6|n_x2[7]~45\ = CARRY((\inst6|n_x2\(7) & !\inst6|n_x2[6]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(7),
	datad => VCC,
	cin => \inst6|n_x2[6]~43\,
	combout => \inst6|n_x2[7]~44_combout\,
	cout => \inst6|n_x2[7]~45\);

-- Location: FF_X16_Y40_N15
\inst6|n_x2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[7]~44_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(7));

-- Location: LCCOMB_X16_Y40_N16
\inst6|n_x2[8]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[8]~46_combout\ = (\inst6|n_x2\(8) & (!\inst6|n_x2[7]~45\)) # (!\inst6|n_x2\(8) & ((\inst6|n_x2[7]~45\) # (GND)))
-- \inst6|n_x2[8]~47\ = CARRY((!\inst6|n_x2[7]~45\) # (!\inst6|n_x2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(8),
	datad => VCC,
	cin => \inst6|n_x2[7]~45\,
	combout => \inst6|n_x2[8]~46_combout\,
	cout => \inst6|n_x2[8]~47\);

-- Location: FF_X16_Y40_N17
\inst6|n_x2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[8]~46_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(8));

-- Location: LCCOMB_X16_Y40_N18
\inst6|n_x2[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[9]~48_combout\ = (\inst6|n_x2\(9) & (\inst6|n_x2[8]~47\ $ (GND))) # (!\inst6|n_x2\(9) & (!\inst6|n_x2[8]~47\ & VCC))
-- \inst6|n_x2[9]~49\ = CARRY((\inst6|n_x2\(9) & !\inst6|n_x2[8]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(9),
	datad => VCC,
	cin => \inst6|n_x2[8]~47\,
	combout => \inst6|n_x2[9]~48_combout\,
	cout => \inst6|n_x2[9]~49\);

-- Location: FF_X16_Y40_N19
\inst6|n_x2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[9]~48_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(9));

-- Location: LCCOMB_X16_Y40_N20
\inst6|n_x2[10]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[10]~50_combout\ = (\inst6|n_x2\(10) & (!\inst6|n_x2[9]~49\)) # (!\inst6|n_x2\(10) & ((\inst6|n_x2[9]~49\) # (GND)))
-- \inst6|n_x2[10]~51\ = CARRY((!\inst6|n_x2[9]~49\) # (!\inst6|n_x2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(10),
	datad => VCC,
	cin => \inst6|n_x2[9]~49\,
	combout => \inst6|n_x2[10]~50_combout\,
	cout => \inst6|n_x2[10]~51\);

-- Location: FF_X16_Y40_N21
\inst6|n_x2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[10]~50_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(10));

-- Location: LCCOMB_X16_Y40_N22
\inst6|n_x2[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[11]~52_combout\ = (\inst6|n_x2\(11) & (\inst6|n_x2[10]~51\ $ (GND))) # (!\inst6|n_x2\(11) & (!\inst6|n_x2[10]~51\ & VCC))
-- \inst6|n_x2[11]~53\ = CARRY((\inst6|n_x2\(11) & !\inst6|n_x2[10]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(11),
	datad => VCC,
	cin => \inst6|n_x2[10]~51\,
	combout => \inst6|n_x2[11]~52_combout\,
	cout => \inst6|n_x2[11]~53\);

-- Location: FF_X16_Y40_N23
\inst6|n_x2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[11]~52_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(11));

-- Location: LCCOMB_X16_Y40_N24
\inst6|n_x2[12]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[12]~54_combout\ = (\inst6|n_x2\(12) & (!\inst6|n_x2[11]~53\)) # (!\inst6|n_x2\(12) & ((\inst6|n_x2[11]~53\) # (GND)))
-- \inst6|n_x2[12]~55\ = CARRY((!\inst6|n_x2[11]~53\) # (!\inst6|n_x2\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(12),
	datad => VCC,
	cin => \inst6|n_x2[11]~53\,
	combout => \inst6|n_x2[12]~54_combout\,
	cout => \inst6|n_x2[12]~55\);

-- Location: FF_X16_Y40_N25
\inst6|n_x2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[12]~54_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(12));

-- Location: LCCOMB_X16_Y40_N26
\inst6|n_x2[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[13]~56_combout\ = (\inst6|n_x2\(13) & (\inst6|n_x2[12]~55\ $ (GND))) # (!\inst6|n_x2\(13) & (!\inst6|n_x2[12]~55\ & VCC))
-- \inst6|n_x2[13]~57\ = CARRY((\inst6|n_x2\(13) & !\inst6|n_x2[12]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(13),
	datad => VCC,
	cin => \inst6|n_x2[12]~55\,
	combout => \inst6|n_x2[13]~56_combout\,
	cout => \inst6|n_x2[13]~57\);

-- Location: FF_X16_Y40_N27
\inst6|n_x2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[13]~56_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(13));

-- Location: LCCOMB_X16_Y40_N28
\inst6|n_x2[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[14]~58_combout\ = (\inst6|n_x2\(14) & (!\inst6|n_x2[13]~57\)) # (!\inst6|n_x2\(14) & ((\inst6|n_x2[13]~57\) # (GND)))
-- \inst6|n_x2[14]~59\ = CARRY((!\inst6|n_x2[13]~57\) # (!\inst6|n_x2\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(14),
	datad => VCC,
	cin => \inst6|n_x2[13]~57\,
	combout => \inst6|n_x2[14]~58_combout\,
	cout => \inst6|n_x2[14]~59\);

-- Location: FF_X16_Y40_N29
\inst6|n_x2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[14]~58_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(14));

-- Location: LCCOMB_X16_Y40_N30
\inst6|n_x2[15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[15]~60_combout\ = (\inst6|n_x2\(15) & (\inst6|n_x2[14]~59\ $ (GND))) # (!\inst6|n_x2\(15) & (!\inst6|n_x2[14]~59\ & VCC))
-- \inst6|n_x2[15]~61\ = CARRY((\inst6|n_x2\(15) & !\inst6|n_x2[14]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(15),
	datad => VCC,
	cin => \inst6|n_x2[14]~59\,
	combout => \inst6|n_x2[15]~60_combout\,
	cout => \inst6|n_x2[15]~61\);

-- Location: FF_X16_Y40_N31
\inst6|n_x2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[15]~60_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(15));

-- Location: LCCOMB_X16_Y39_N0
\inst6|n_x2[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[16]~62_combout\ = (\inst6|n_x2\(16) & (!\inst6|n_x2[15]~61\)) # (!\inst6|n_x2\(16) & ((\inst6|n_x2[15]~61\) # (GND)))
-- \inst6|n_x2[16]~63\ = CARRY((!\inst6|n_x2[15]~61\) # (!\inst6|n_x2\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(16),
	datad => VCC,
	cin => \inst6|n_x2[15]~61\,
	combout => \inst6|n_x2[16]~62_combout\,
	cout => \inst6|n_x2[16]~63\);

-- Location: FF_X16_Y39_N1
\inst6|n_x2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[16]~62_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(16));

-- Location: LCCOMB_X16_Y39_N2
\inst6|n_x2[17]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[17]~64_combout\ = (\inst6|n_x2\(17) & (\inst6|n_x2[16]~63\ $ (GND))) # (!\inst6|n_x2\(17) & (!\inst6|n_x2[16]~63\ & VCC))
-- \inst6|n_x2[17]~65\ = CARRY((\inst6|n_x2\(17) & !\inst6|n_x2[16]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(17),
	datad => VCC,
	cin => \inst6|n_x2[16]~63\,
	combout => \inst6|n_x2[17]~64_combout\,
	cout => \inst6|n_x2[17]~65\);

-- Location: FF_X16_Y39_N3
\inst6|n_x2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[17]~64_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(17));

-- Location: LCCOMB_X16_Y39_N4
\inst6|n_x2[18]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[18]~66_combout\ = (\inst6|n_x2\(18) & (!\inst6|n_x2[17]~65\)) # (!\inst6|n_x2\(18) & ((\inst6|n_x2[17]~65\) # (GND)))
-- \inst6|n_x2[18]~67\ = CARRY((!\inst6|n_x2[17]~65\) # (!\inst6|n_x2\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(18),
	datad => VCC,
	cin => \inst6|n_x2[17]~65\,
	combout => \inst6|n_x2[18]~66_combout\,
	cout => \inst6|n_x2[18]~67\);

-- Location: FF_X16_Y39_N5
\inst6|n_x2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[18]~66_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(18));

-- Location: LCCOMB_X16_Y39_N6
\inst6|n_x2[19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[19]~68_combout\ = (\inst6|n_x2\(19) & (\inst6|n_x2[18]~67\ $ (GND))) # (!\inst6|n_x2\(19) & (!\inst6|n_x2[18]~67\ & VCC))
-- \inst6|n_x2[19]~69\ = CARRY((\inst6|n_x2\(19) & !\inst6|n_x2[18]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(19),
	datad => VCC,
	cin => \inst6|n_x2[18]~67\,
	combout => \inst6|n_x2[19]~68_combout\,
	cout => \inst6|n_x2[19]~69\);

-- Location: FF_X16_Y39_N7
\inst6|n_x2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[19]~68_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(19));

-- Location: LCCOMB_X16_Y39_N8
\inst6|n_x2[20]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[20]~70_combout\ = (\inst6|n_x2\(20) & (!\inst6|n_x2[19]~69\)) # (!\inst6|n_x2\(20) & ((\inst6|n_x2[19]~69\) # (GND)))
-- \inst6|n_x2[20]~71\ = CARRY((!\inst6|n_x2[19]~69\) # (!\inst6|n_x2\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(20),
	datad => VCC,
	cin => \inst6|n_x2[19]~69\,
	combout => \inst6|n_x2[20]~70_combout\,
	cout => \inst6|n_x2[20]~71\);

-- Location: FF_X16_Y39_N9
\inst6|n_x2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[20]~70_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(20));

-- Location: LCCOMB_X16_Y39_N10
\inst6|n_x2[21]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[21]~72_combout\ = (\inst6|n_x2\(21) & (\inst6|n_x2[20]~71\ $ (GND))) # (!\inst6|n_x2\(21) & (!\inst6|n_x2[20]~71\ & VCC))
-- \inst6|n_x2[21]~73\ = CARRY((\inst6|n_x2\(21) & !\inst6|n_x2[20]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(21),
	datad => VCC,
	cin => \inst6|n_x2[20]~71\,
	combout => \inst6|n_x2[21]~72_combout\,
	cout => \inst6|n_x2[21]~73\);

-- Location: FF_X16_Y39_N11
\inst6|n_x2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[21]~72_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(21));

-- Location: LCCOMB_X16_Y39_N12
\inst6|n_x2[22]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[22]~74_combout\ = (\inst6|n_x2\(22) & (!\inst6|n_x2[21]~73\)) # (!\inst6|n_x2\(22) & ((\inst6|n_x2[21]~73\) # (GND)))
-- \inst6|n_x2[22]~75\ = CARRY((!\inst6|n_x2[21]~73\) # (!\inst6|n_x2\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(22),
	datad => VCC,
	cin => \inst6|n_x2[21]~73\,
	combout => \inst6|n_x2[22]~74_combout\,
	cout => \inst6|n_x2[22]~75\);

-- Location: FF_X16_Y39_N13
\inst6|n_x2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[22]~74_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(22));

-- Location: LCCOMB_X16_Y39_N14
\inst6|n_x2[23]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[23]~76_combout\ = (\inst6|n_x2\(23) & (\inst6|n_x2[22]~75\ $ (GND))) # (!\inst6|n_x2\(23) & (!\inst6|n_x2[22]~75\ & VCC))
-- \inst6|n_x2[23]~77\ = CARRY((\inst6|n_x2\(23) & !\inst6|n_x2[22]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(23),
	datad => VCC,
	cin => \inst6|n_x2[22]~75\,
	combout => \inst6|n_x2[23]~76_combout\,
	cout => \inst6|n_x2[23]~77\);

-- Location: FF_X16_Y39_N15
\inst6|n_x2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[23]~76_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(23));

-- Location: LCCOMB_X16_Y39_N16
\inst6|n_x2[24]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[24]~78_combout\ = (\inst6|n_x2\(24) & (!\inst6|n_x2[23]~77\)) # (!\inst6|n_x2\(24) & ((\inst6|n_x2[23]~77\) # (GND)))
-- \inst6|n_x2[24]~79\ = CARRY((!\inst6|n_x2[23]~77\) # (!\inst6|n_x2\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(24),
	datad => VCC,
	cin => \inst6|n_x2[23]~77\,
	combout => \inst6|n_x2[24]~78_combout\,
	cout => \inst6|n_x2[24]~79\);

-- Location: FF_X16_Y39_N17
\inst6|n_x2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[24]~78_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(24));

-- Location: LCCOMB_X16_Y39_N18
\inst6|n_x2[25]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[25]~80_combout\ = (\inst6|n_x2\(25) & (\inst6|n_x2[24]~79\ $ (GND))) # (!\inst6|n_x2\(25) & (!\inst6|n_x2[24]~79\ & VCC))
-- \inst6|n_x2[25]~81\ = CARRY((\inst6|n_x2\(25) & !\inst6|n_x2[24]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(25),
	datad => VCC,
	cin => \inst6|n_x2[24]~79\,
	combout => \inst6|n_x2[25]~80_combout\,
	cout => \inst6|n_x2[25]~81\);

-- Location: FF_X16_Y39_N19
\inst6|n_x2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[25]~80_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(25));

-- Location: LCCOMB_X16_Y39_N20
\inst6|n_x2[26]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[26]~82_combout\ = (\inst6|n_x2\(26) & (!\inst6|n_x2[25]~81\)) # (!\inst6|n_x2\(26) & ((\inst6|n_x2[25]~81\) # (GND)))
-- \inst6|n_x2[26]~83\ = CARRY((!\inst6|n_x2[25]~81\) # (!\inst6|n_x2\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(26),
	datad => VCC,
	cin => \inst6|n_x2[25]~81\,
	combout => \inst6|n_x2[26]~82_combout\,
	cout => \inst6|n_x2[26]~83\);

-- Location: FF_X16_Y39_N21
\inst6|n_x2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[26]~82_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(26));

-- Location: LCCOMB_X16_Y39_N22
\inst6|n_x2[27]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[27]~84_combout\ = (\inst6|n_x2\(27) & (\inst6|n_x2[26]~83\ $ (GND))) # (!\inst6|n_x2\(27) & (!\inst6|n_x2[26]~83\ & VCC))
-- \inst6|n_x2[27]~85\ = CARRY((\inst6|n_x2\(27) & !\inst6|n_x2[26]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(27),
	datad => VCC,
	cin => \inst6|n_x2[26]~83\,
	combout => \inst6|n_x2[27]~84_combout\,
	cout => \inst6|n_x2[27]~85\);

-- Location: FF_X16_Y39_N23
\inst6|n_x2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[27]~84_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(27));

-- Location: LCCOMB_X16_Y39_N24
\inst6|n_x2[28]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[28]~86_combout\ = (\inst6|n_x2\(28) & (!\inst6|n_x2[27]~85\)) # (!\inst6|n_x2\(28) & ((\inst6|n_x2[27]~85\) # (GND)))
-- \inst6|n_x2[28]~87\ = CARRY((!\inst6|n_x2[27]~85\) # (!\inst6|n_x2\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(28),
	datad => VCC,
	cin => \inst6|n_x2[27]~85\,
	combout => \inst6|n_x2[28]~86_combout\,
	cout => \inst6|n_x2[28]~87\);

-- Location: FF_X16_Y39_N25
\inst6|n_x2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[28]~86_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(28));

-- Location: LCCOMB_X16_Y39_N26
\inst6|n_x2[29]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[29]~88_combout\ = (\inst6|n_x2\(29) & (\inst6|n_x2[28]~87\ $ (GND))) # (!\inst6|n_x2\(29) & (!\inst6|n_x2[28]~87\ & VCC))
-- \inst6|n_x2[29]~89\ = CARRY((\inst6|n_x2\(29) & !\inst6|n_x2[28]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(29),
	datad => VCC,
	cin => \inst6|n_x2[28]~87\,
	combout => \inst6|n_x2[29]~88_combout\,
	cout => \inst6|n_x2[29]~89\);

-- Location: FF_X16_Y39_N27
\inst6|n_x2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[29]~88_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(29));

-- Location: LCCOMB_X16_Y39_N28
\inst6|n_x2[30]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[30]~90_combout\ = (\inst6|n_x2\(30) & (!\inst6|n_x2[29]~89\)) # (!\inst6|n_x2\(30) & ((\inst6|n_x2[29]~89\) # (GND)))
-- \inst6|n_x2[30]~91\ = CARRY((!\inst6|n_x2[29]~89\) # (!\inst6|n_x2\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x2\(30),
	datad => VCC,
	cin => \inst6|n_x2[29]~89\,
	combout => \inst6|n_x2[30]~90_combout\,
	cout => \inst6|n_x2[30]~91\);

-- Location: FF_X16_Y39_N29
\inst6|n_x2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[30]~90_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(30));

-- Location: LCCOMB_X16_Y39_N30
\inst6|n_x2[31]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[31]~92_combout\ = \inst6|n_x2\(31) $ (!\inst6|n_x2[30]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(31),
	cin => \inst6|n_x2[30]~91\,
	combout => \inst6|n_x2[31]~92_combout\);

-- Location: FF_X16_Y39_N31
\inst6|n_x2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x2[31]~92_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x2\(31));

-- Location: LCCOMB_X17_Y40_N24
\inst6|LessThan10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~6_combout\ = ((!\inst6|n_x2\(6) & (!\inst6|n_x2\(7) & !\inst6|n_x2\(5)))) # (!\inst6|n_x2\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(6),
	datab => \inst6|n_x2\(7),
	datac => \inst6|n_x2\(8),
	datad => \inst6|n_x2\(5),
	combout => \inst6|LessThan10~6_combout\);

-- Location: LCCOMB_X14_Y40_N2
\inst6|LessThan10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~7_combout\ = (!\inst6|n_x2\(11) & (!\inst6|n_x2\(10) & ((\inst6|LessThan10~6_combout\) # (!\inst6|n_x2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(11),
	datab => \inst6|n_x2\(10),
	datac => \inst6|n_x2\(9),
	datad => \inst6|LessThan10~6_combout\,
	combout => \inst6|LessThan10~7_combout\);

-- Location: LCCOMB_X17_Y40_N12
\inst6|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~3_combout\ = (!\inst6|n_x2\(26) & (!\inst6|n_x2\(25) & (!\inst6|n_x2\(27) & !\inst6|n_x2\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(26),
	datab => \inst6|n_x2\(25),
	datac => \inst6|n_x2\(27),
	datad => \inst6|n_x2\(24),
	combout => \inst6|LessThan10~3_combout\);

-- Location: LCCOMB_X17_Y40_N16
\inst6|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~1_combout\ = (!\inst6|n_x2\(19) & (!\inst6|n_x2\(18) & (!\inst6|n_x2\(16) & !\inst6|n_x2\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(19),
	datab => \inst6|n_x2\(18),
	datac => \inst6|n_x2\(16),
	datad => \inst6|n_x2\(17),
	combout => \inst6|LessThan10~1_combout\);

-- Location: LCCOMB_X16_Y40_N0
\inst6|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~0_combout\ = (!\inst6|n_x2\(15) & (!\inst6|n_x2\(14) & (!\inst6|n_x2\(13) & !\inst6|n_x2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(15),
	datab => \inst6|n_x2\(14),
	datac => \inst6|n_x2\(13),
	datad => \inst6|n_x2\(12),
	combout => \inst6|LessThan10~0_combout\);

-- Location: LCCOMB_X17_Y40_N10
\inst6|LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~2_combout\ = (!\inst6|n_x2\(23) & (!\inst6|n_x2\(21) & (!\inst6|n_x2\(22) & !\inst6|n_x2\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(23),
	datab => \inst6|n_x2\(21),
	datac => \inst6|n_x2\(22),
	datad => \inst6|n_x2\(20),
	combout => \inst6|LessThan10~2_combout\);

-- Location: LCCOMB_X17_Y40_N30
\inst6|LessThan10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~4_combout\ = (\inst6|LessThan10~3_combout\ & (\inst6|LessThan10~1_combout\ & (\inst6|LessThan10~0_combout\ & \inst6|LessThan10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan10~3_combout\,
	datab => \inst6|LessThan10~1_combout\,
	datac => \inst6|LessThan10~0_combout\,
	datad => \inst6|LessThan10~2_combout\,
	combout => \inst6|LessThan10~4_combout\);

-- Location: LCCOMB_X16_Y38_N8
\inst6|LessThan10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~5_combout\ = (!\inst6|n_x2\(30) & (\inst6|LessThan10~4_combout\ & (!\inst6|n_x2\(28) & !\inst6|n_x2\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(30),
	datab => \inst6|LessThan10~4_combout\,
	datac => \inst6|n_x2\(28),
	datad => \inst6|n_x2\(29),
	combout => \inst6|LessThan10~5_combout\);

-- Location: LCCOMB_X14_Y38_N26
\inst6|back2[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|back2[31]~0_combout\ = (!\inst6|n_x2\(31) & (\reset~input_o\ & ((!\inst6|LessThan10~5_combout\) # (!\inst6|LessThan10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(31),
	datab => \reset~input_o\,
	datac => \inst6|LessThan10~7_combout\,
	datad => \inst6|LessThan10~5_combout\,
	combout => \inst6|back2[31]~0_combout\);

-- Location: LCCOMB_X14_Y38_N0
\inst6|endgame2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|endgame2~combout\ = (\inst6|comb~0_combout\ & (\inst6|endgame2~combout\)) # (!\inst6|comb~0_combout\ & ((\inst6|back2[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|endgame2~combout\,
	datac => \inst6|back2[31]~0_combout\,
	datad => \inst6|comb~0_combout\,
	combout => \inst6|endgame2~combout\);

-- Location: LCCOMB_X14_Y38_N18
\inst6|LessThan10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan10~8_combout\ = (\inst6|n_x2\(31)) # ((\inst6|LessThan10~7_combout\ & \inst6|LessThan10~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(31),
	datac => \inst6|LessThan10~7_combout\,
	datad => \inst6|LessThan10~5_combout\,
	combout => \inst6|LessThan10~8_combout\);

-- Location: LCCOMB_X14_Y38_N22
\inst6|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|comb~1_combout\ = (\reset~input_o\ & ((!\inst6|LessThan10~8_combout\) # (!\inst6|endgame~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst6|endgame~1_combout\,
	datad => \inst6|LessThan10~8_combout\,
	combout => \inst6|comb~1_combout\);

-- Location: LCCOMB_X14_Y38_N4
\inst6|endgame~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|endgame~2_combout\ = ((\inst6|LessThan10~8_combout\) # (!\inst6|endgame~1_combout\)) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst6|endgame~1_combout\,
	datad => \inst6|LessThan10~8_combout\,
	combout => \inst6|endgame~2_combout\);

-- Location: LCCOMB_X14_Y38_N6
\inst6|endgame\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|endgame~combout\ = (\inst6|comb~1_combout\ & ((\inst6|endgame~2_combout\) # (\inst6|endgame~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|comb~1_combout\,
	datac => \inst6|endgame~2_combout\,
	datad => \inst6|endgame~combout\,
	combout => \inst6|endgame~combout\);

-- Location: LCCOMB_X17_Y39_N8
\inst6|counter1[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[0]~25_combout\ = \inst6|counter1\(0) $ (VCC)
-- \inst6|counter1[0]~26\ = CARRY(\inst6|counter1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(0),
	datad => VCC,
	combout => \inst6|counter1[0]~25_combout\,
	cout => \inst6|counter1[0]~26\);

-- Location: LCCOMB_X14_Y38_N24
\inst6|process_0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~65_combout\ = (!\inst6|endgame2~combout\ & !\inst6|endgame~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|endgame2~combout\,
	datad => \inst6|endgame~combout\,
	combout => \inst6|process_0~65_combout\);

-- Location: FF_X17_Y39_N9
\inst6|counter1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[0]~25_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(0));

-- Location: LCCOMB_X17_Y39_N10
\inst6|counter1[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[1]~27_combout\ = (\inst6|counter1\(1) & (!\inst6|counter1[0]~26\)) # (!\inst6|counter1\(1) & ((\inst6|counter1[0]~26\) # (GND)))
-- \inst6|counter1[1]~28\ = CARRY((!\inst6|counter1[0]~26\) # (!\inst6|counter1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter1\(1),
	datad => VCC,
	cin => \inst6|counter1[0]~26\,
	combout => \inst6|counter1[1]~27_combout\,
	cout => \inst6|counter1[1]~28\);

-- Location: FF_X17_Y39_N11
\inst6|counter1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[1]~27_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(1));

-- Location: LCCOMB_X17_Y39_N12
\inst6|counter1[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[2]~29_combout\ = (\inst6|counter1\(2) & (\inst6|counter1[1]~28\ $ (GND))) # (!\inst6|counter1\(2) & (!\inst6|counter1[1]~28\ & VCC))
-- \inst6|counter1[2]~30\ = CARRY((\inst6|counter1\(2) & !\inst6|counter1[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter1\(2),
	datad => VCC,
	cin => \inst6|counter1[1]~28\,
	combout => \inst6|counter1[2]~29_combout\,
	cout => \inst6|counter1[2]~30\);

-- Location: FF_X17_Y39_N13
\inst6|counter1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[2]~29_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(2));

-- Location: LCCOMB_X17_Y39_N14
\inst6|counter1[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[3]~31_combout\ = (\inst6|counter1\(3) & (!\inst6|counter1[2]~30\)) # (!\inst6|counter1\(3) & ((\inst6|counter1[2]~30\) # (GND)))
-- \inst6|counter1[3]~32\ = CARRY((!\inst6|counter1[2]~30\) # (!\inst6|counter1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(3),
	datad => VCC,
	cin => \inst6|counter1[2]~30\,
	combout => \inst6|counter1[3]~31_combout\,
	cout => \inst6|counter1[3]~32\);

-- Location: FF_X17_Y39_N15
\inst6|counter1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[3]~31_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(3));

-- Location: LCCOMB_X17_Y39_N16
\inst6|counter1[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[4]~33_combout\ = (\inst6|counter1\(4) & (\inst6|counter1[3]~32\ $ (GND))) # (!\inst6|counter1\(4) & (!\inst6|counter1[3]~32\ & VCC))
-- \inst6|counter1[4]~34\ = CARRY((\inst6|counter1\(4) & !\inst6|counter1[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(4),
	datad => VCC,
	cin => \inst6|counter1[3]~32\,
	combout => \inst6|counter1[4]~33_combout\,
	cout => \inst6|counter1[4]~34\);

-- Location: FF_X17_Y39_N17
\inst6|counter1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[4]~33_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(4));

-- Location: LCCOMB_X17_Y39_N18
\inst6|counter1[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[5]~35_combout\ = (\inst6|counter1\(5) & (!\inst6|counter1[4]~34\)) # (!\inst6|counter1\(5) & ((\inst6|counter1[4]~34\) # (GND)))
-- \inst6|counter1[5]~36\ = CARRY((!\inst6|counter1[4]~34\) # (!\inst6|counter1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(5),
	datad => VCC,
	cin => \inst6|counter1[4]~34\,
	combout => \inst6|counter1[5]~35_combout\,
	cout => \inst6|counter1[5]~36\);

-- Location: FF_X17_Y39_N19
\inst6|counter1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[5]~35_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(5));

-- Location: LCCOMB_X17_Y39_N20
\inst6|counter1[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[6]~37_combout\ = (\inst6|counter1\(6) & (\inst6|counter1[5]~36\ $ (GND))) # (!\inst6|counter1\(6) & (!\inst6|counter1[5]~36\ & VCC))
-- \inst6|counter1[6]~38\ = CARRY((\inst6|counter1\(6) & !\inst6|counter1[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(6),
	datad => VCC,
	cin => \inst6|counter1[5]~36\,
	combout => \inst6|counter1[6]~37_combout\,
	cout => \inst6|counter1[6]~38\);

-- Location: FF_X17_Y39_N21
\inst6|counter1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[6]~37_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(6));

-- Location: LCCOMB_X17_Y39_N22
\inst6|counter1[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[7]~39_combout\ = (\inst6|counter1\(7) & (!\inst6|counter1[6]~38\)) # (!\inst6|counter1\(7) & ((\inst6|counter1[6]~38\) # (GND)))
-- \inst6|counter1[7]~40\ = CARRY((!\inst6|counter1[6]~38\) # (!\inst6|counter1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter1\(7),
	datad => VCC,
	cin => \inst6|counter1[6]~38\,
	combout => \inst6|counter1[7]~39_combout\,
	cout => \inst6|counter1[7]~40\);

-- Location: FF_X17_Y39_N23
\inst6|counter1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[7]~39_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(7));

-- Location: LCCOMB_X17_Y39_N24
\inst6|counter1[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[8]~41_combout\ = (\inst6|counter1\(8) & (\inst6|counter1[7]~40\ $ (GND))) # (!\inst6|counter1\(8) & (!\inst6|counter1[7]~40\ & VCC))
-- \inst6|counter1[8]~42\ = CARRY((\inst6|counter1\(8) & !\inst6|counter1[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(8),
	datad => VCC,
	cin => \inst6|counter1[7]~40\,
	combout => \inst6|counter1[8]~41_combout\,
	cout => \inst6|counter1[8]~42\);

-- Location: FF_X17_Y39_N25
\inst6|counter1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[8]~41_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(8));

-- Location: LCCOMB_X17_Y39_N26
\inst6|counter1[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[9]~43_combout\ = (\inst6|counter1\(9) & (!\inst6|counter1[8]~42\)) # (!\inst6|counter1\(9) & ((\inst6|counter1[8]~42\) # (GND)))
-- \inst6|counter1[9]~44\ = CARRY((!\inst6|counter1[8]~42\) # (!\inst6|counter1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter1\(9),
	datad => VCC,
	cin => \inst6|counter1[8]~42\,
	combout => \inst6|counter1[9]~43_combout\,
	cout => \inst6|counter1[9]~44\);

-- Location: FF_X17_Y39_N27
\inst6|counter1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[9]~43_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(9));

-- Location: LCCOMB_X17_Y39_N28
\inst6|counter1[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[10]~45_combout\ = (\inst6|counter1\(10) & (\inst6|counter1[9]~44\ $ (GND))) # (!\inst6|counter1\(10) & (!\inst6|counter1[9]~44\ & VCC))
-- \inst6|counter1[10]~46\ = CARRY((\inst6|counter1\(10) & !\inst6|counter1[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(10),
	datad => VCC,
	cin => \inst6|counter1[9]~44\,
	combout => \inst6|counter1[10]~45_combout\,
	cout => \inst6|counter1[10]~46\);

-- Location: FF_X17_Y39_N29
\inst6|counter1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[10]~45_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(10));

-- Location: LCCOMB_X17_Y39_N30
\inst6|counter1[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[11]~47_combout\ = (\inst6|counter1\(11) & (!\inst6|counter1[10]~46\)) # (!\inst6|counter1\(11) & ((\inst6|counter1[10]~46\) # (GND)))
-- \inst6|counter1[11]~48\ = CARRY((!\inst6|counter1[10]~46\) # (!\inst6|counter1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter1\(11),
	datad => VCC,
	cin => \inst6|counter1[10]~46\,
	combout => \inst6|counter1[11]~47_combout\,
	cout => \inst6|counter1[11]~48\);

-- Location: FF_X17_Y39_N31
\inst6|counter1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[11]~47_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(11));

-- Location: LCCOMB_X17_Y38_N0
\inst6|counter1[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[12]~49_combout\ = (\inst6|counter1\(12) & (\inst6|counter1[11]~48\ $ (GND))) # (!\inst6|counter1\(12) & (!\inst6|counter1[11]~48\ & VCC))
-- \inst6|counter1[12]~50\ = CARRY((\inst6|counter1\(12) & !\inst6|counter1[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(12),
	datad => VCC,
	cin => \inst6|counter1[11]~48\,
	combout => \inst6|counter1[12]~49_combout\,
	cout => \inst6|counter1[12]~50\);

-- Location: FF_X17_Y38_N1
\inst6|counter1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[12]~49_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(12));

-- Location: LCCOMB_X17_Y38_N2
\inst6|counter1[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[13]~51_combout\ = (\inst6|counter1\(13) & (!\inst6|counter1[12]~50\)) # (!\inst6|counter1\(13) & ((\inst6|counter1[12]~50\) # (GND)))
-- \inst6|counter1[13]~52\ = CARRY((!\inst6|counter1[12]~50\) # (!\inst6|counter1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(13),
	datad => VCC,
	cin => \inst6|counter1[12]~50\,
	combout => \inst6|counter1[13]~51_combout\,
	cout => \inst6|counter1[13]~52\);

-- Location: FF_X17_Y38_N3
\inst6|counter1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[13]~51_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(13));

-- Location: LCCOMB_X17_Y38_N4
\inst6|counter1[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[14]~53_combout\ = (\inst6|counter1\(14) & (\inst6|counter1[13]~52\ $ (GND))) # (!\inst6|counter1\(14) & (!\inst6|counter1[13]~52\ & VCC))
-- \inst6|counter1[14]~54\ = CARRY((\inst6|counter1\(14) & !\inst6|counter1[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(14),
	datad => VCC,
	cin => \inst6|counter1[13]~52\,
	combout => \inst6|counter1[14]~53_combout\,
	cout => \inst6|counter1[14]~54\);

-- Location: FF_X17_Y38_N5
\inst6|counter1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[14]~53_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(14));

-- Location: LCCOMB_X17_Y38_N6
\inst6|counter1[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[15]~55_combout\ = (\inst6|counter1\(15) & (!\inst6|counter1[14]~54\)) # (!\inst6|counter1\(15) & ((\inst6|counter1[14]~54\) # (GND)))
-- \inst6|counter1[15]~56\ = CARRY((!\inst6|counter1[14]~54\) # (!\inst6|counter1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter1\(15),
	datad => VCC,
	cin => \inst6|counter1[14]~54\,
	combout => \inst6|counter1[15]~55_combout\,
	cout => \inst6|counter1[15]~56\);

-- Location: FF_X17_Y38_N7
\inst6|counter1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[15]~55_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(15));

-- Location: LCCOMB_X17_Y38_N8
\inst6|counter1[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[16]~57_combout\ = (\inst6|counter1\(16) & (\inst6|counter1[15]~56\ $ (GND))) # (!\inst6|counter1\(16) & (!\inst6|counter1[15]~56\ & VCC))
-- \inst6|counter1[16]~58\ = CARRY((\inst6|counter1\(16) & !\inst6|counter1[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(16),
	datad => VCC,
	cin => \inst6|counter1[15]~56\,
	combout => \inst6|counter1[16]~57_combout\,
	cout => \inst6|counter1[16]~58\);

-- Location: FF_X17_Y38_N9
\inst6|counter1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[16]~57_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(16));

-- Location: LCCOMB_X17_Y38_N10
\inst6|counter1[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[17]~59_combout\ = (\inst6|counter1\(17) & (!\inst6|counter1[16]~58\)) # (!\inst6|counter1\(17) & ((\inst6|counter1[16]~58\) # (GND)))
-- \inst6|counter1[17]~60\ = CARRY((!\inst6|counter1[16]~58\) # (!\inst6|counter1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter1\(17),
	datad => VCC,
	cin => \inst6|counter1[16]~58\,
	combout => \inst6|counter1[17]~59_combout\,
	cout => \inst6|counter1[17]~60\);

-- Location: FF_X17_Y38_N11
\inst6|counter1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[17]~59_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(17));

-- Location: LCCOMB_X17_Y38_N12
\inst6|counter1[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[18]~61_combout\ = (\inst6|counter1\(18) & (\inst6|counter1[17]~60\ $ (GND))) # (!\inst6|counter1\(18) & (!\inst6|counter1[17]~60\ & VCC))
-- \inst6|counter1[18]~62\ = CARRY((\inst6|counter1\(18) & !\inst6|counter1[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter1\(18),
	datad => VCC,
	cin => \inst6|counter1[17]~60\,
	combout => \inst6|counter1[18]~61_combout\,
	cout => \inst6|counter1[18]~62\);

-- Location: FF_X17_Y38_N13
\inst6|counter1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[18]~61_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(18));

-- Location: LCCOMB_X17_Y38_N14
\inst6|counter1[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[19]~63_combout\ = (\inst6|counter1\(19) & (!\inst6|counter1[18]~62\)) # (!\inst6|counter1\(19) & ((\inst6|counter1[18]~62\) # (GND)))
-- \inst6|counter1[19]~64\ = CARRY((!\inst6|counter1[18]~62\) # (!\inst6|counter1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(19),
	datad => VCC,
	cin => \inst6|counter1[18]~62\,
	combout => \inst6|counter1[19]~63_combout\,
	cout => \inst6|counter1[19]~64\);

-- Location: FF_X17_Y38_N15
\inst6|counter1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[19]~63_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(19));

-- Location: LCCOMB_X17_Y38_N16
\inst6|counter1[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[20]~65_combout\ = (\inst6|counter1\(20) & (\inst6|counter1[19]~64\ $ (GND))) # (!\inst6|counter1\(20) & (!\inst6|counter1[19]~64\ & VCC))
-- \inst6|counter1[20]~66\ = CARRY((\inst6|counter1\(20) & !\inst6|counter1[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(20),
	datad => VCC,
	cin => \inst6|counter1[19]~64\,
	combout => \inst6|counter1[20]~65_combout\,
	cout => \inst6|counter1[20]~66\);

-- Location: FF_X17_Y38_N17
\inst6|counter1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[20]~65_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(20));

-- Location: LCCOMB_X17_Y38_N18
\inst6|counter1[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[21]~67_combout\ = (\inst6|counter1\(21) & (!\inst6|counter1[20]~66\)) # (!\inst6|counter1\(21) & ((\inst6|counter1[20]~66\) # (GND)))
-- \inst6|counter1[21]~68\ = CARRY((!\inst6|counter1[20]~66\) # (!\inst6|counter1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(21),
	datad => VCC,
	cin => \inst6|counter1[20]~66\,
	combout => \inst6|counter1[21]~67_combout\,
	cout => \inst6|counter1[21]~68\);

-- Location: FF_X17_Y38_N19
\inst6|counter1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[21]~67_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(21));

-- Location: LCCOMB_X17_Y38_N20
\inst6|counter1[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[22]~69_combout\ = (\inst6|counter1\(22) & (\inst6|counter1[21]~68\ $ (GND))) # (!\inst6|counter1\(22) & (!\inst6|counter1[21]~68\ & VCC))
-- \inst6|counter1[22]~70\ = CARRY((\inst6|counter1\(22) & !\inst6|counter1[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(22),
	datad => VCC,
	cin => \inst6|counter1[21]~68\,
	combout => \inst6|counter1[22]~69_combout\,
	cout => \inst6|counter1[22]~70\);

-- Location: FF_X17_Y38_N21
\inst6|counter1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[22]~69_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(22));

-- Location: LCCOMB_X17_Y38_N22
\inst6|counter1[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[23]~71_combout\ = (\inst6|counter1\(23) & (!\inst6|counter1[22]~70\)) # (!\inst6|counter1\(23) & ((\inst6|counter1[22]~70\) # (GND)))
-- \inst6|counter1[23]~72\ = CARRY((!\inst6|counter1[22]~70\) # (!\inst6|counter1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter1\(23),
	datad => VCC,
	cin => \inst6|counter1[22]~70\,
	combout => \inst6|counter1[23]~71_combout\,
	cout => \inst6|counter1[23]~72\);

-- Location: FF_X17_Y38_N23
\inst6|counter1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[23]~71_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(23));

-- Location: LCCOMB_X17_Y38_N26
\inst6|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~0_combout\ = (!\inst6|counter1\(21) & (!\inst6|counter1\(22) & (!\inst6|counter1\(23) & !\inst6|counter1\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter1\(21),
	datab => \inst6|counter1\(22),
	datac => \inst6|counter1\(23),
	datad => \inst6|counter1\(20),
	combout => \inst6|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y38_N24
\inst6|counter1[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|counter1[24]~73_combout\ = \inst6|counter1\(24) $ (!\inst6|counter1[23]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|counter1\(24),
	cin => \inst6|counter1[23]~72\,
	combout => \inst6|counter1[24]~73_combout\);

-- Location: FF_X17_Y38_N25
\inst6|counter1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|counter1[24]~73_combout\,
	sclr => \inst6|LessThan0~7_combout\,
	ena => \inst6|process_0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|counter1\(24));

-- Location: LCCOMB_X17_Y38_N28
\inst6|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~5_combout\ = (((!\inst6|counter1\(13)) # (!\inst6|counter1\(16))) # (!\inst6|counter1\(14))) # (!\inst6|counter1\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter1\(15),
	datab => \inst6|counter1\(14),
	datac => \inst6|counter1\(16),
	datad => \inst6|counter1\(13),
	combout => \inst6|LessThan0~5_combout\);

-- Location: LCCOMB_X17_Y39_N0
\inst6|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~1_combout\ = (((!\inst6|counter1\(6)) # (!\inst6|counter1\(7))) # (!\inst6|counter1\(8))) # (!\inst6|counter1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter1\(9),
	datab => \inst6|counter1\(8),
	datac => \inst6|counter1\(7),
	datad => \inst6|counter1\(6),
	combout => \inst6|LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y39_N2
\inst6|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~2_combout\ = (!\inst6|counter1\(2) & (!\inst6|counter1\(4) & (!\inst6|counter1\(3) & !\inst6|counter1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter1\(2),
	datab => \inst6|counter1\(4),
	datac => \inst6|counter1\(3),
	datad => \inst6|counter1\(1),
	combout => \inst6|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y39_N4
\inst6|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~3_combout\ = (!\inst6|counter1\(10) & ((\inst6|LessThan0~1_combout\) # ((\inst6|LessThan0~2_combout\ & !\inst6|counter1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan0~1_combout\,
	datab => \inst6|counter1\(10),
	datac => \inst6|LessThan0~2_combout\,
	datad => \inst6|counter1\(5),
	combout => \inst6|LessThan0~3_combout\);

-- Location: LCCOMB_X17_Y39_N6
\inst6|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~4_combout\ = (!\inst6|counter1\(12) & ((\inst6|LessThan0~3_combout\) # (!\inst6|counter1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|counter1\(11),
	datab => \inst6|counter1\(12),
	datac => \inst6|LessThan0~3_combout\,
	combout => \inst6|LessThan0~4_combout\);

-- Location: LCCOMB_X19_Y39_N8
\inst6|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~6_combout\ = (!\inst6|counter1\(18) & ((\inst6|LessThan0~5_combout\) # ((\inst6|LessThan0~4_combout\) # (!\inst6|counter1\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan0~5_combout\,
	datab => \inst6|counter1\(17),
	datac => \inst6|counter1\(18),
	datad => \inst6|LessThan0~4_combout\,
	combout => \inst6|LessThan0~6_combout\);

-- Location: LCCOMB_X17_Y38_N30
\inst6|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~7_combout\ = ((\inst6|counter1\(24)) # ((\inst6|counter1\(19) & !\inst6|LessThan0~6_combout\))) # (!\inst6|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan0~0_combout\,
	datab => \inst6|counter1\(24),
	datac => \inst6|counter1\(19),
	datad => \inst6|LessThan0~6_combout\,
	combout => \inst6|LessThan0~7_combout\);

-- Location: LCCOMB_X7_Y36_N10
\inst6|n_x2[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x2[31]~31_combout\ = (!\inst6|endgame2~combout\ & (!\inst6|endgame~combout\ & \inst6|LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|endgame2~combout\,
	datac => \inst6|endgame~combout\,
	datad => \inst6|LessThan0~7_combout\,
	combout => \inst6|n_x2[31]~31_combout\);

-- Location: FF_X1_Y43_N27
\inst6|a_x1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~4_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(13));

-- Location: LCCOMB_X3_Y43_N24
\inst6|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~24_combout\ = (\inst6|a_x1\(12) & ((GND) # (!\inst6|Add3~23\))) # (!\inst6|a_x1\(12) & (\inst6|Add3~23\ $ (GND)))
-- \inst6|Add3~25\ = CARRY((\inst6|a_x1\(12)) # (!\inst6|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x1\(12),
	datad => VCC,
	cin => \inst6|Add3~23\,
	combout => \inst6|Add3~24_combout\,
	cout => \inst6|Add3~25\);

-- Location: LCCOMB_X1_Y43_N0
\inst6|a_x1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~3_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add3~24_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~8_combout\,
	datac => \inst6|Add3~24_combout\,
	datad => \inst6|LessThan2~3_combout\,
	combout => \inst6|a_x1~3_combout\);

-- Location: FF_X1_Y43_N1
\inst6|a_x1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~3_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(12));

-- Location: LCCOMB_X3_Y43_N26
\inst6|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~26_combout\ = (\inst6|a_x1\(13) & (\inst6|Add3~25\ & VCC)) # (!\inst6|a_x1\(13) & (!\inst6|Add3~25\))
-- \inst6|Add3~27\ = CARRY((!\inst6|a_x1\(13) & !\inst6|Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x1\(13),
	datad => VCC,
	cin => \inst6|Add3~25\,
	combout => \inst6|Add3~26_combout\,
	cout => \inst6|Add3~27\);

-- Location: LCCOMB_X3_Y43_N28
\inst6|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~28_combout\ = (\inst6|a_x1\(14) & ((GND) # (!\inst6|Add3~27\))) # (!\inst6|a_x1\(14) & (\inst6|Add3~27\ $ (GND)))
-- \inst6|Add3~29\ = CARRY((\inst6|a_x1\(14)) # (!\inst6|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(14),
	datad => VCC,
	cin => \inst6|Add3~27\,
	combout => \inst6|Add3~28_combout\,
	cout => \inst6|Add3~29\);

-- Location: LCCOMB_X1_Y43_N12
\inst6|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~1_combout\ = (!\inst6|Add3~26_combout\ & (!\inst6|Add3~22_combout\ & (!\inst6|Add3~24_combout\ & !\inst6|Add3~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~26_combout\,
	datab => \inst6|Add3~22_combout\,
	datac => \inst6|Add3~24_combout\,
	datad => \inst6|Add3~28_combout\,
	combout => \inst6|LessThan2~1_combout\);

-- Location: LCCOMB_X2_Y43_N18
\inst6|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~2_combout\ = ((!\inst6|Add3~4_combout\ & (!\inst6|Add3~8_combout\ & !\inst6|Add3~6_combout\))) # (!\inst6|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~4_combout\,
	datab => \inst6|Add3~8_combout\,
	datac => \inst6|Add3~10_combout\,
	datad => \inst6|Add3~6_combout\,
	combout => \inst6|LessThan2~2_combout\);

-- Location: LCCOMB_X1_Y43_N4
\inst6|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~0_combout\ = (!\inst6|Add3~20_combout\ & (!\inst6|Add3~14_combout\ & (!\inst6|Add3~16_combout\ & !\inst6|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~20_combout\,
	datab => \inst6|Add3~14_combout\,
	datac => \inst6|Add3~16_combout\,
	datad => \inst6|Add3~18_combout\,
	combout => \inst6|LessThan2~0_combout\);

-- Location: LCCOMB_X1_Y43_N18
\inst6|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~3_combout\ = (\inst6|LessThan2~1_combout\ & (\inst6|LessThan2~0_combout\ & ((\inst6|LessThan2~2_combout\) # (!\inst6|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~1_combout\,
	datab => \inst6|LessThan2~2_combout\,
	datac => \inst6|LessThan2~0_combout\,
	datad => \inst6|Add3~12_combout\,
	combout => \inst6|LessThan2~3_combout\);

-- Location: LCCOMB_X3_Y43_N30
\inst6|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~30_combout\ = (\inst6|a_x1\(15) & (\inst6|Add3~29\ & VCC)) # (!\inst6|a_x1\(15) & (!\inst6|Add3~29\))
-- \inst6|Add3~31\ = CARRY((!\inst6|a_x1\(15) & !\inst6|Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x1\(15),
	datad => VCC,
	cin => \inst6|Add3~29\,
	combout => \inst6|Add3~30_combout\,
	cout => \inst6|Add3~31\);

-- Location: LCCOMB_X1_Y43_N8
\inst6|a_x1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~6_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add3~30_combout\ & ((!\inst6|LessThan2~8_combout\) # (!\inst6|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|LessThan2~8_combout\,
	datad => \inst6|Add3~30_combout\,
	combout => \inst6|a_x1~6_combout\);

-- Location: FF_X1_Y43_N9
\inst6|a_x1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~6_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(15));

-- Location: LCCOMB_X3_Y42_N0
\inst6|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~32_combout\ = (\inst6|a_x1\(16) & ((GND) # (!\inst6|Add3~31\))) # (!\inst6|a_x1\(16) & (\inst6|Add3~31\ $ (GND)))
-- \inst6|Add3~33\ = CARRY((\inst6|a_x1\(16)) # (!\inst6|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(16),
	datad => VCC,
	cin => \inst6|Add3~31\,
	combout => \inst6|Add3~32_combout\,
	cout => \inst6|Add3~33\);

-- Location: LCCOMB_X2_Y42_N16
\inst6|a_x1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~7_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add3~32_combout\ & ((!\inst6|LessThan2~8_combout\) # (!\inst6|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~32_combout\,
	datad => \inst6|LessThan2~8_combout\,
	combout => \inst6|a_x1~7_combout\);

-- Location: LCCOMB_X1_Y42_N14
\inst6|a_x1[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1[16]~feeder_combout\ = \inst6|a_x1~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|a_x1~7_combout\,
	combout => \inst6|a_x1[16]~feeder_combout\);

-- Location: FF_X1_Y42_N15
\inst6|a_x1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1[16]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(16));

-- Location: LCCOMB_X3_Y42_N2
\inst6|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~34_combout\ = (\inst6|a_x1\(17) & (\inst6|Add3~33\ & VCC)) # (!\inst6|a_x1\(17) & (!\inst6|Add3~33\))
-- \inst6|Add3~35\ = CARRY((!\inst6|a_x1\(17) & !\inst6|Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(17),
	datad => VCC,
	cin => \inst6|Add3~33\,
	combout => \inst6|Add3~34_combout\,
	cout => \inst6|Add3~35\);

-- Location: LCCOMB_X2_Y42_N18
\inst6|a_x1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~8_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add3~34_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add3~34_combout\,
	combout => \inst6|a_x1~8_combout\);

-- Location: LCCOMB_X1_Y42_N16
\inst6|a_x1[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1[17]~feeder_combout\ = \inst6|a_x1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|a_x1~8_combout\,
	combout => \inst6|a_x1[17]~feeder_combout\);

-- Location: FF_X1_Y42_N17
\inst6|a_x1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1[17]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(17));

-- Location: LCCOMB_X3_Y42_N4
\inst6|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~36_combout\ = (\inst6|a_x1\(18) & ((GND) # (!\inst6|Add3~35\))) # (!\inst6|a_x1\(18) & (\inst6|Add3~35\ $ (GND)))
-- \inst6|Add3~37\ = CARRY((\inst6|a_x1\(18)) # (!\inst6|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x1\(18),
	datad => VCC,
	cin => \inst6|Add3~35\,
	combout => \inst6|Add3~36_combout\,
	cout => \inst6|Add3~37\);

-- Location: LCCOMB_X2_Y42_N28
\inst6|a_x1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~9_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add3~36_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add3~36_combout\,
	combout => \inst6|a_x1~9_combout\);

-- Location: LCCOMB_X1_Y42_N22
\inst6|a_x1[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1[18]~feeder_combout\ = \inst6|a_x1~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|a_x1~9_combout\,
	combout => \inst6|a_x1[18]~feeder_combout\);

-- Location: FF_X1_Y42_N23
\inst6|a_x1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1[18]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(18));

-- Location: LCCOMB_X3_Y42_N6
\inst6|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~38_combout\ = (\inst6|a_x1\(19) & (\inst6|Add3~37\ & VCC)) # (!\inst6|a_x1\(19) & (!\inst6|Add3~37\))
-- \inst6|Add3~39\ = CARRY((!\inst6|a_x1\(19) & !\inst6|Add3~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(19),
	datad => VCC,
	cin => \inst6|Add3~37\,
	combout => \inst6|Add3~38_combout\,
	cout => \inst6|Add3~39\);

-- Location: LCCOMB_X2_Y42_N22
\inst6|a_x1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~10_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add3~38_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add3~38_combout\,
	combout => \inst6|a_x1~10_combout\);

-- Location: LCCOMB_X1_Y42_N18
\inst6|a_x1[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1[19]~feeder_combout\ = \inst6|a_x1~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|a_x1~10_combout\,
	combout => \inst6|a_x1[19]~feeder_combout\);

-- Location: FF_X1_Y42_N19
\inst6|a_x1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1[19]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(19));

-- Location: LCCOMB_X3_Y42_N8
\inst6|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~40_combout\ = (\inst6|a_x1\(20) & ((GND) # (!\inst6|Add3~39\))) # (!\inst6|a_x1\(20) & (\inst6|Add3~39\ $ (GND)))
-- \inst6|Add3~41\ = CARRY((\inst6|a_x1\(20)) # (!\inst6|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x1\(20),
	datad => VCC,
	cin => \inst6|Add3~39\,
	combout => \inst6|Add3~40_combout\,
	cout => \inst6|Add3~41\);

-- Location: LCCOMB_X4_Y42_N24
\inst6|a_x1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~11_combout\ = (\inst6|Add3~40_combout\ & (!\inst6|Add3~62_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~40_combout\,
	datab => \inst6|LessThan2~8_combout\,
	datac => \inst6|LessThan2~3_combout\,
	datad => \inst6|Add3~62_combout\,
	combout => \inst6|a_x1~11_combout\);

-- Location: FF_X4_Y42_N25
\inst6|a_x1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~11_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(20));

-- Location: LCCOMB_X3_Y42_N10
\inst6|Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~42_combout\ = (\inst6|a_x1\(21) & (\inst6|Add3~41\ & VCC)) # (!\inst6|a_x1\(21) & (!\inst6|Add3~41\))
-- \inst6|Add3~43\ = CARRY((!\inst6|a_x1\(21) & !\inst6|Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x1\(21),
	datad => VCC,
	cin => \inst6|Add3~41\,
	combout => \inst6|Add3~42_combout\,
	cout => \inst6|Add3~43\);

-- Location: LCCOMB_X4_Y42_N14
\inst6|a_x1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~12_combout\ = (\inst6|Add3~42_combout\ & (!\inst6|Add3~62_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~42_combout\,
	datab => \inst6|LessThan2~8_combout\,
	datac => \inst6|LessThan2~3_combout\,
	datad => \inst6|Add3~62_combout\,
	combout => \inst6|a_x1~12_combout\);

-- Location: FF_X4_Y42_N15
\inst6|a_x1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~12_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(21));

-- Location: LCCOMB_X3_Y42_N12
\inst6|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~44_combout\ = (\inst6|a_x1\(22) & ((GND) # (!\inst6|Add3~43\))) # (!\inst6|a_x1\(22) & (\inst6|Add3~43\ $ (GND)))
-- \inst6|Add3~45\ = CARRY((\inst6|a_x1\(22)) # (!\inst6|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(22),
	datad => VCC,
	cin => \inst6|Add3~43\,
	combout => \inst6|Add3~44_combout\,
	cout => \inst6|Add3~45\);

-- Location: LCCOMB_X4_Y42_N30
\inst6|a_x1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~13_combout\ = (\inst6|Add3~44_combout\ & (!\inst6|Add3~62_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~44_combout\,
	datab => \inst6|LessThan2~8_combout\,
	datac => \inst6|LessThan2~3_combout\,
	datad => \inst6|Add3~62_combout\,
	combout => \inst6|a_x1~13_combout\);

-- Location: FF_X4_Y42_N31
\inst6|a_x1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~13_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(22));

-- Location: LCCOMB_X3_Y42_N14
\inst6|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~46_combout\ = (\inst6|a_x1\(23) & (\inst6|Add3~45\ & VCC)) # (!\inst6|a_x1\(23) & (!\inst6|Add3~45\))
-- \inst6|Add3~47\ = CARRY((!\inst6|a_x1\(23) & !\inst6|Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x1\(23),
	datad => VCC,
	cin => \inst6|Add3~45\,
	combout => \inst6|Add3~46_combout\,
	cout => \inst6|Add3~47\);

-- Location: LCCOMB_X4_Y42_N18
\inst6|a_x1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~14_combout\ = (\inst6|Add3~46_combout\ & (!\inst6|Add3~62_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~46_combout\,
	datab => \inst6|LessThan2~8_combout\,
	datac => \inst6|LessThan2~3_combout\,
	datad => \inst6|Add3~62_combout\,
	combout => \inst6|a_x1~14_combout\);

-- Location: FF_X4_Y42_N19
\inst6|a_x1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~14_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(23));

-- Location: LCCOMB_X3_Y42_N16
\inst6|Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~48_combout\ = (\inst6|a_x1\(24) & ((GND) # (!\inst6|Add3~47\))) # (!\inst6|a_x1\(24) & (\inst6|Add3~47\ $ (GND)))
-- \inst6|Add3~49\ = CARRY((\inst6|a_x1\(24)) # (!\inst6|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(24),
	datad => VCC,
	cin => \inst6|Add3~47\,
	combout => \inst6|Add3~48_combout\,
	cout => \inst6|Add3~49\);

-- Location: LCCOMB_X1_Y42_N28
\inst6|a_x1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~15_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add3~48_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|Add3~62_combout\,
	datac => \inst6|Add3~48_combout\,
	datad => \inst6|LessThan2~3_combout\,
	combout => \inst6|a_x1~15_combout\);

-- Location: FF_X1_Y42_N29
\inst6|a_x1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~15_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(24));

-- Location: LCCOMB_X3_Y42_N18
\inst6|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~50_combout\ = (\inst6|a_x1\(25) & (\inst6|Add3~49\ & VCC)) # (!\inst6|a_x1\(25) & (!\inst6|Add3~49\))
-- \inst6|Add3~51\ = CARRY((!\inst6|a_x1\(25) & !\inst6|Add3~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x1\(25),
	datad => VCC,
	cin => \inst6|Add3~49\,
	combout => \inst6|Add3~50_combout\,
	cout => \inst6|Add3~51\);

-- Location: LCCOMB_X2_Y42_N24
\inst6|a_x1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~16_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add3~50_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add3~50_combout\,
	combout => \inst6|a_x1~16_combout\);

-- Location: LCCOMB_X1_Y42_N12
\inst6|a_x1[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1[25]~feeder_combout\ = \inst6|a_x1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|a_x1~16_combout\,
	combout => \inst6|a_x1[25]~feeder_combout\);

-- Location: FF_X1_Y42_N13
\inst6|a_x1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1[25]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(25));

-- Location: LCCOMB_X3_Y42_N20
\inst6|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~52_combout\ = (\inst6|a_x1\(26) & ((GND) # (!\inst6|Add3~51\))) # (!\inst6|a_x1\(26) & (\inst6|Add3~51\ $ (GND)))
-- \inst6|Add3~53\ = CARRY((\inst6|a_x1\(26)) # (!\inst6|Add3~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(26),
	datad => VCC,
	cin => \inst6|Add3~51\,
	combout => \inst6|Add3~52_combout\,
	cout => \inst6|Add3~53\);

-- Location: LCCOMB_X2_Y42_N10
\inst6|a_x1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~17_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add3~52_combout\ & ((!\inst6|LessThan2~8_combout\) # (!\inst6|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~52_combout\,
	datad => \inst6|LessThan2~8_combout\,
	combout => \inst6|a_x1~17_combout\);

-- Location: LCCOMB_X1_Y42_N8
\inst6|a_x1[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1[26]~feeder_combout\ = \inst6|a_x1~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|a_x1~17_combout\,
	combout => \inst6|a_x1[26]~feeder_combout\);

-- Location: FF_X1_Y42_N9
\inst6|a_x1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1[26]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(26));

-- Location: LCCOMB_X3_Y42_N22
\inst6|Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~54_combout\ = (\inst6|a_x1\(27) & (\inst6|Add3~53\ & VCC)) # (!\inst6|a_x1\(27) & (!\inst6|Add3~53\))
-- \inst6|Add3~55\ = CARRY((!\inst6|a_x1\(27) & !\inst6|Add3~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(27),
	datad => VCC,
	cin => \inst6|Add3~53\,
	combout => \inst6|Add3~54_combout\,
	cout => \inst6|Add3~55\);

-- Location: LCCOMB_X2_Y42_N12
\inst6|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~7_combout\ = (!\inst6|Add3~58_combout\ & (!\inst6|Add3~60_combout\ & (!\inst6|Add3~56_combout\ & !\inst6|Add3~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~58_combout\,
	datab => \inst6|Add3~60_combout\,
	datac => \inst6|Add3~56_combout\,
	datad => \inst6|Add3~54_combout\,
	combout => \inst6|LessThan2~7_combout\);

-- Location: LCCOMB_X2_Y42_N0
\inst6|LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~4_combout\ = (!\inst6|Add3~36_combout\ & (!\inst6|Add3~32_combout\ & (!\inst6|Add3~30_combout\ & !\inst6|Add3~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~36_combout\,
	datab => \inst6|Add3~32_combout\,
	datac => \inst6|Add3~30_combout\,
	datad => \inst6|Add3~34_combout\,
	combout => \inst6|LessThan2~4_combout\);

-- Location: LCCOMB_X2_Y42_N26
\inst6|LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~6_combout\ = (!\inst6|Add3~52_combout\ & (!\inst6|Add3~48_combout\ & (!\inst6|Add3~46_combout\ & !\inst6|Add3~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~52_combout\,
	datab => \inst6|Add3~48_combout\,
	datac => \inst6|Add3~46_combout\,
	datad => \inst6|Add3~50_combout\,
	combout => \inst6|LessThan2~6_combout\);

-- Location: LCCOMB_X4_Y42_N26
\inst6|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~5_combout\ = (!\inst6|Add3~44_combout\ & (!\inst6|Add3~40_combout\ & (!\inst6|Add3~38_combout\ & !\inst6|Add3~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~44_combout\,
	datab => \inst6|Add3~40_combout\,
	datac => \inst6|Add3~38_combout\,
	datad => \inst6|Add3~42_combout\,
	combout => \inst6|LessThan2~5_combout\);

-- Location: LCCOMB_X2_Y42_N6
\inst6|LessThan2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan2~8_combout\ = (\inst6|LessThan2~7_combout\ & (\inst6|LessThan2~4_combout\ & (\inst6|LessThan2~6_combout\ & \inst6|LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~7_combout\,
	datab => \inst6|LessThan2~4_combout\,
	datac => \inst6|LessThan2~6_combout\,
	datad => \inst6|LessThan2~5_combout\,
	combout => \inst6|LessThan2~8_combout\);

-- Location: LCCOMB_X2_Y42_N4
\inst6|a_x1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~18_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add3~54_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add3~54_combout\,
	combout => \inst6|a_x1~18_combout\);

-- Location: LCCOMB_X1_Y42_N26
\inst6|a_x1[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1[27]~feeder_combout\ = \inst6|a_x1~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|a_x1~18_combout\,
	combout => \inst6|a_x1[27]~feeder_combout\);

-- Location: FF_X1_Y42_N27
\inst6|a_x1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1[27]~feeder_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(27));

-- Location: LCCOMB_X3_Y42_N24
\inst6|Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~56_combout\ = (\inst6|a_x1\(28) & ((GND) # (!\inst6|Add3~55\))) # (!\inst6|a_x1\(28) & (\inst6|Add3~55\ $ (GND)))
-- \inst6|Add3~57\ = CARRY((\inst6|a_x1\(28)) # (!\inst6|Add3~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x1\(28),
	datad => VCC,
	cin => \inst6|Add3~55\,
	combout => \inst6|Add3~56_combout\,
	cout => \inst6|Add3~57\);

-- Location: LCCOMB_X2_Y43_N20
\inst6|a_x1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~0_combout\ = (!\inst6|Add3~62_combout\ & \inst6|Add3~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add3~62_combout\,
	datac => \inst6|Add3~56_combout\,
	combout => \inst6|a_x1~0_combout\);

-- Location: FF_X2_Y43_N21
\inst6|a_x1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(28));

-- Location: LCCOMB_X3_Y42_N26
\inst6|Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~58_combout\ = (\inst6|a_x1\(29) & (\inst6|Add3~57\ & VCC)) # (!\inst6|a_x1\(29) & (!\inst6|Add3~57\))
-- \inst6|Add3~59\ = CARRY((!\inst6|a_x1\(29) & !\inst6|Add3~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x1\(29),
	datad => VCC,
	cin => \inst6|Add3~57\,
	combout => \inst6|Add3~58_combout\,
	cout => \inst6|Add3~59\);

-- Location: LCCOMB_X1_Y42_N0
\inst6|a_x1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~1_combout\ = (\inst6|Add3~58_combout\ & !\inst6|Add3~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|Add3~58_combout\,
	datad => \inst6|Add3~62_combout\,
	combout => \inst6|a_x1~1_combout\);

-- Location: FF_X1_Y42_N1
\inst6|a_x1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~1_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(29));

-- Location: LCCOMB_X3_Y42_N28
\inst6|Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~60_combout\ = (\inst6|a_x1\(30) & ((GND) # (!\inst6|Add3~59\))) # (!\inst6|a_x1\(30) & (\inst6|Add3~59\ $ (GND)))
-- \inst6|Add3~61\ = CARRY((\inst6|a_x1\(30)) # (!\inst6|Add3~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x1\(30),
	datad => VCC,
	cin => \inst6|Add3~59\,
	combout => \inst6|Add3~60_combout\,
	cout => \inst6|Add3~61\);

-- Location: LCCOMB_X2_Y43_N30
\inst6|a_x1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~2_combout\ = (!\inst6|Add3~62_combout\ & \inst6|Add3~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|Add3~62_combout\,
	datac => \inst6|Add3~60_combout\,
	combout => \inst6|a_x1~2_combout\);

-- Location: FF_X2_Y43_N31
\inst6|a_x1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~2_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(30));

-- Location: LCCOMB_X3_Y42_N30
\inst6|Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add3~62_combout\ = !\inst6|Add3~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst6|Add3~61\,
	combout => \inst6|Add3~62_combout\);

-- Location: LCCOMB_X1_Y43_N10
\inst6|a_x1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|a_x1~5_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add3~28_combout\ & ((!\inst6|LessThan2~8_combout\) # (!\inst6|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|LessThan2~8_combout\,
	datad => \inst6|Add3~28_combout\,
	combout => \inst6|a_x1~5_combout\);

-- Location: FF_X1_Y43_N11
\inst6|a_x1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst6|a_x1~5_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x1\(14));

-- Location: LCCOMB_X1_Y43_N30
\inst6|process_0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~48_combout\ = (!\inst6|a_x1\(14) & (!\inst6|a_x1\(15) & (!\inst6|a_x1\(13) & !\inst6|a_x1\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(14),
	datab => \inst6|a_x1\(15),
	datac => \inst6|a_x1\(13),
	datad => \inst6|a_x1\(12),
	combout => \inst6|process_0~48_combout\);

-- Location: LCCOMB_X1_Y42_N20
\inst6|process_0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~51_combout\ = (!\inst6|a_x1\(25) & (!\inst6|a_x1\(26) & (!\inst6|a_x1\(27) & !\inst6|a_x1\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(25),
	datab => \inst6|a_x1\(26),
	datac => \inst6|a_x1\(27),
	datad => \inst6|a_x1\(24),
	combout => \inst6|process_0~51_combout\);

-- Location: LCCOMB_X4_Y42_N22
\inst6|process_0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~50_combout\ = (!\inst6|a_x1\(22) & (!\inst6|a_x1\(23) & (!\inst6|a_x1\(21) & !\inst6|a_x1\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(22),
	datab => \inst6|a_x1\(23),
	datac => \inst6|a_x1\(21),
	datad => \inst6|a_x1\(20),
	combout => \inst6|process_0~50_combout\);

-- Location: LCCOMB_X1_Y42_N24
\inst6|process_0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~49_combout\ = (!\inst6|a_x1\(18) & (!\inst6|a_x1\(17) & (!\inst6|a_x1\(16) & !\inst6|a_x1\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(18),
	datab => \inst6|a_x1\(17),
	datac => \inst6|a_x1\(16),
	datad => \inst6|a_x1\(19),
	combout => \inst6|process_0~49_combout\);

-- Location: LCCOMB_X1_Y42_N30
\inst6|process_0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~52_combout\ = (\inst6|process_0~48_combout\ & (\inst6|process_0~51_combout\ & (\inst6|process_0~50_combout\ & \inst6|process_0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~48_combout\,
	datab => \inst6|process_0~51_combout\,
	datac => \inst6|process_0~50_combout\,
	datad => \inst6|process_0~49_combout\,
	combout => \inst6|process_0~52_combout\);

-- Location: LCCOMB_X9_Y43_N4
\inst6|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~4_combout\ = (\inst6|a_x2\(2) & ((GND) # (!\inst6|Add4~3\))) # (!\inst6|a_x2\(2) & (\inst6|Add4~3\ $ (GND)))
-- \inst6|Add4~5\ = CARRY((\inst6|a_x2\(2)) # (!\inst6|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(2),
	datad => VCC,
	cin => \inst6|Add4~3\,
	combout => \inst6|Add4~4_combout\,
	cout => \inst6|Add4~5\);

-- Location: LCCOMB_X8_Y43_N20
\inst6|Add4~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~77_combout\ = (\inst6|Add3~62_combout\) # ((\inst6|Add4~4_combout\) # ((\inst6|LessThan2~8_combout\ & \inst6|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add4~4_combout\,
	combout => \inst6|Add4~77_combout\);

-- Location: FF_X9_Y43_N19
\inst6|a_x2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~77_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(2));

-- Location: LCCOMB_X9_Y43_N6
\inst6|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~6_combout\ = (\inst6|a_x2\(3) & ((\inst6|Add4~5\) # (GND))) # (!\inst6|a_x2\(3) & (!\inst6|Add4~5\))
-- \inst6|Add4~7\ = CARRY((\inst6|a_x2\(3)) # (!\inst6|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(3),
	datad => VCC,
	cin => \inst6|Add4~5\,
	combout => \inst6|Add4~6_combout\,
	cout => \inst6|Add4~7\);

-- Location: LCCOMB_X8_Y43_N10
\inst6|Add4~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~76_combout\ = (!\inst6|Add3~62_combout\ & (!\inst6|Add4~6_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add4~6_combout\,
	combout => \inst6|Add4~76_combout\);

-- Location: FF_X9_Y43_N17
\inst6|a_x2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~76_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(3));

-- Location: LCCOMB_X9_Y43_N8
\inst6|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~8_combout\ = (\inst6|a_x2\(4) & (\inst6|Add4~7\ $ (GND))) # (!\inst6|a_x2\(4) & ((GND) # (!\inst6|Add4~7\)))
-- \inst6|Add4~9\ = CARRY((!\inst6|Add4~7\) # (!\inst6|a_x2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(4),
	datad => VCC,
	cin => \inst6|Add4~7\,
	combout => \inst6|Add4~8_combout\,
	cout => \inst6|Add4~9\);

-- Location: LCCOMB_X8_Y43_N24
\inst6|Add4~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~75_combout\ = (\inst6|Add3~62_combout\) # (((\inst6|LessThan2~3_combout\ & \inst6|LessThan2~8_combout\)) # (!\inst6|Add4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add4~8_combout\,
	datad => \inst6|LessThan2~8_combout\,
	combout => \inst6|Add4~75_combout\);

-- Location: FF_X9_Y43_N15
\inst6|a_x2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~75_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(4));

-- Location: LCCOMB_X9_Y43_N10
\inst6|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~10_combout\ = (\inst6|a_x2\(5) & (\inst6|Add4~9\ & VCC)) # (!\inst6|a_x2\(5) & (!\inst6|Add4~9\))
-- \inst6|Add4~11\ = CARRY((!\inst6|a_x2\(5) & !\inst6|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(5),
	datad => VCC,
	cin => \inst6|Add4~9\,
	combout => \inst6|Add4~10_combout\,
	cout => \inst6|Add4~11\);

-- Location: LCCOMB_X8_Y43_N22
\inst6|Add4~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~74_combout\ = (\inst6|Add3~62_combout\) # ((\inst6|Add4~10_combout\) # ((\inst6|LessThan2~3_combout\ & \inst6|LessThan2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add4~10_combout\,
	datad => \inst6|LessThan2~8_combout\,
	combout => \inst6|Add4~74_combout\);

-- Location: FF_X9_Y43_N13
\inst6|a_x2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~74_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(5));

-- Location: LCCOMB_X9_Y43_N12
\inst6|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~12_combout\ = (\inst6|a_x2\(6) & (\inst6|Add4~11\ $ (GND))) # (!\inst6|a_x2\(6) & ((GND) # (!\inst6|Add4~11\)))
-- \inst6|Add4~13\ = CARRY((!\inst6|Add4~11\) # (!\inst6|a_x2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(6),
	datad => VCC,
	cin => \inst6|Add4~11\,
	combout => \inst6|Add4~12_combout\,
	cout => \inst6|Add4~13\);

-- Location: LCCOMB_X8_Y43_N28
\inst6|Add4~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~73_combout\ = (!\inst6|Add3~62_combout\ & (!\inst6|Add4~12_combout\ & ((!\inst6|LessThan2~8_combout\) # (!\inst6|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add4~12_combout\,
	datad => \inst6|LessThan2~8_combout\,
	combout => \inst6|Add4~73_combout\);

-- Location: FF_X9_Y43_N11
\inst6|a_x2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~73_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(6));

-- Location: LCCOMB_X9_Y43_N14
\inst6|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~14_combout\ = (\inst6|a_x2\(7) & (\inst6|Add4~13\ & VCC)) # (!\inst6|a_x2\(7) & (!\inst6|Add4~13\))
-- \inst6|Add4~15\ = CARRY((!\inst6|a_x2\(7) & !\inst6|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(7),
	datad => VCC,
	cin => \inst6|Add4~13\,
	combout => \inst6|Add4~14_combout\,
	cout => \inst6|Add4~15\);

-- Location: LCCOMB_X8_Y43_N18
\inst6|Add4~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~72_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~14_combout\ & ((!\inst6|LessThan2~8_combout\) # (!\inst6|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add4~14_combout\,
	datad => \inst6|LessThan2~8_combout\,
	combout => \inst6|Add4~72_combout\);

-- Location: FF_X9_Y43_N9
\inst6|a_x2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~72_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(7));

-- Location: LCCOMB_X9_Y43_N16
\inst6|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~16_combout\ = (\inst6|a_x2\(8) & ((GND) # (!\inst6|Add4~15\))) # (!\inst6|a_x2\(8) & (\inst6|Add4~15\ $ (GND)))
-- \inst6|Add4~17\ = CARRY((\inst6|a_x2\(8)) # (!\inst6|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(8),
	datad => VCC,
	cin => \inst6|Add4~15\,
	combout => \inst6|Add4~16_combout\,
	cout => \inst6|Add4~17\);

-- Location: LCCOMB_X8_Y43_N16
\inst6|Add4~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~71_combout\ = (\inst6|Add3~62_combout\) # ((\inst6|Add4~16_combout\) # ((\inst6|LessThan2~8_combout\ & \inst6|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add4~16_combout\,
	combout => \inst6|Add4~71_combout\);

-- Location: FF_X9_Y43_N7
\inst6|a_x2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~71_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(8));

-- Location: LCCOMB_X9_Y43_N18
\inst6|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~18_combout\ = (\inst6|a_x2\(9) & (!\inst6|Add4~17\)) # (!\inst6|a_x2\(9) & (\inst6|Add4~17\ & VCC))
-- \inst6|Add4~19\ = CARRY((\inst6|a_x2\(9) & !\inst6|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(9),
	datad => VCC,
	cin => \inst6|Add4~17\,
	combout => \inst6|Add4~18_combout\,
	cout => \inst6|Add4~19\);

-- Location: LCCOMB_X8_Y43_N6
\inst6|Add4~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~70_combout\ = (!\inst6|Add3~62_combout\ & (!\inst6|Add4~18_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add4~18_combout\,
	combout => \inst6|Add4~70_combout\);

-- Location: FF_X9_Y43_N5
\inst6|a_x2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~70_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(9));

-- Location: LCCOMB_X9_Y43_N20
\inst6|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~20_combout\ = (\inst6|a_x2\(10) & ((GND) # (!\inst6|Add4~19\))) # (!\inst6|a_x2\(10) & (\inst6|Add4~19\ $ (GND)))
-- \inst6|Add4~21\ = CARRY((\inst6|a_x2\(10)) # (!\inst6|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(10),
	datad => VCC,
	cin => \inst6|Add4~19\,
	combout => \inst6|Add4~20_combout\,
	cout => \inst6|Add4~21\);

-- Location: LCCOMB_X8_Y43_N4
\inst6|Add4~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~69_combout\ = (\inst6|Add3~62_combout\) # ((\inst6|Add4~20_combout\) # ((\inst6|LessThan2~8_combout\ & \inst6|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add4~20_combout\,
	combout => \inst6|Add4~69_combout\);

-- Location: FF_X9_Y43_N3
\inst6|a_x2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~69_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(10));

-- Location: LCCOMB_X9_Y43_N22
\inst6|Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~22_combout\ = (\inst6|a_x2\(11) & (\inst6|Add4~21\ & VCC)) # (!\inst6|a_x2\(11) & (!\inst6|Add4~21\))
-- \inst6|Add4~23\ = CARRY((!\inst6|a_x2\(11) & !\inst6|Add4~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(11),
	datad => VCC,
	cin => \inst6|Add4~21\,
	combout => \inst6|Add4~22_combout\,
	cout => \inst6|Add4~23\);

-- Location: LCCOMB_X8_Y43_N26
\inst6|Add4~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~68_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~22_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add4~22_combout\,
	combout => \inst6|Add4~68_combout\);

-- Location: FF_X9_Y43_N1
\inst6|a_x2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~68_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(11));

-- Location: LCCOMB_X9_Y43_N24
\inst6|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~24_combout\ = (\inst6|a_x2\(12) & ((GND) # (!\inst6|Add4~23\))) # (!\inst6|a_x2\(12) & (\inst6|Add4~23\ $ (GND)))
-- \inst6|Add4~25\ = CARRY((\inst6|a_x2\(12)) # (!\inst6|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(12),
	datad => VCC,
	cin => \inst6|Add4~23\,
	combout => \inst6|Add4~24_combout\,
	cout => \inst6|Add4~25\);

-- Location: LCCOMB_X8_Y43_N14
\inst6|Add4~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~80_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~24_combout\ & ((!\inst6|LessThan2~8_combout\) # (!\inst6|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add4~24_combout\,
	datad => \inst6|LessThan2~8_combout\,
	combout => \inst6|Add4~80_combout\);

-- Location: FF_X9_Y43_N21
\inst6|a_x2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~80_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(12));

-- Location: LCCOMB_X9_Y43_N26
\inst6|Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~26_combout\ = (\inst6|a_x2\(13) & (\inst6|Add4~25\ & VCC)) # (!\inst6|a_x2\(13) & (!\inst6|Add4~25\))
-- \inst6|Add4~27\ = CARRY((!\inst6|a_x2\(13) & !\inst6|Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(13),
	datad => VCC,
	cin => \inst6|Add4~25\,
	combout => \inst6|Add4~26_combout\,
	cout => \inst6|Add4~27\);

-- Location: LCCOMB_X8_Y43_N0
\inst6|Add4~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~81_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~26_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add4~26_combout\,
	combout => \inst6|Add4~81_combout\);

-- Location: FF_X9_Y43_N23
\inst6|a_x2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~81_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(13));

-- Location: LCCOMB_X9_Y43_N28
\inst6|Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~28_combout\ = (\inst6|a_x2\(14) & ((GND) # (!\inst6|Add4~27\))) # (!\inst6|a_x2\(14) & (\inst6|Add4~27\ $ (GND)))
-- \inst6|Add4~29\ = CARRY((\inst6|a_x2\(14)) # (!\inst6|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(14),
	datad => VCC,
	cin => \inst6|Add4~27\,
	combout => \inst6|Add4~28_combout\,
	cout => \inst6|Add4~29\);

-- Location: LCCOMB_X8_Y43_N2
\inst6|Add4~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~82_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~28_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add4~28_combout\,
	combout => \inst6|Add4~82_combout\);

-- Location: FF_X9_Y43_N25
\inst6|a_x2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~82_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(14));

-- Location: LCCOMB_X9_Y43_N30
\inst6|Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~30_combout\ = (\inst6|a_x2\(15) & (\inst6|Add4~29\ & VCC)) # (!\inst6|a_x2\(15) & (!\inst6|Add4~29\))
-- \inst6|Add4~31\ = CARRY((!\inst6|a_x2\(15) & !\inst6|Add4~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(15),
	datad => VCC,
	cin => \inst6|Add4~29\,
	combout => \inst6|Add4~30_combout\,
	cout => \inst6|Add4~31\);

-- Location: LCCOMB_X8_Y43_N12
\inst6|Add4~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~83_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~30_combout\ & ((!\inst6|LessThan2~8_combout\) # (!\inst6|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add4~30_combout\,
	datad => \inst6|LessThan2~8_combout\,
	combout => \inst6|Add4~83_combout\);

-- Location: FF_X9_Y43_N27
\inst6|a_x2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~83_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(15));

-- Location: LCCOMB_X9_Y42_N0
\inst6|Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~32_combout\ = (\inst6|a_x2\(16) & ((GND) # (!\inst6|Add4~31\))) # (!\inst6|a_x2\(16) & (\inst6|Add4~31\ $ (GND)))
-- \inst6|Add4~33\ = CARRY((\inst6|a_x2\(16)) # (!\inst6|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(16),
	datad => VCC,
	cin => \inst6|Add4~31\,
	combout => \inst6|Add4~32_combout\,
	cout => \inst6|Add4~33\);

-- Location: LCCOMB_X8_Y42_N24
\inst6|Add4~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~84_combout\ = (\inst6|Add4~32_combout\ & (!\inst6|Add3~62_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add4~32_combout\,
	datad => \inst6|Add3~62_combout\,
	combout => \inst6|Add4~84_combout\);

-- Location: FF_X9_Y42_N1
\inst6|a_x2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~84_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(16));

-- Location: LCCOMB_X9_Y42_N2
\inst6|Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~34_combout\ = (\inst6|a_x2\(17) & (\inst6|Add4~33\ & VCC)) # (!\inst6|a_x2\(17) & (!\inst6|Add4~33\))
-- \inst6|Add4~35\ = CARRY((!\inst6|a_x2\(17) & !\inst6|Add4~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(17),
	datad => VCC,
	cin => \inst6|Add4~33\,
	combout => \inst6|Add4~34_combout\,
	cout => \inst6|Add4~35\);

-- Location: LCCOMB_X8_Y42_N26
\inst6|Add4~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~85_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~34_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|Add3~62_combout\,
	datac => \inst6|LessThan2~3_combout\,
	datad => \inst6|Add4~34_combout\,
	combout => \inst6|Add4~85_combout\);

-- Location: FF_X9_Y42_N3
\inst6|a_x2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~85_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(17));

-- Location: LCCOMB_X9_Y42_N4
\inst6|Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~36_combout\ = (\inst6|a_x2\(18) & ((GND) # (!\inst6|Add4~35\))) # (!\inst6|a_x2\(18) & (\inst6|Add4~35\ $ (GND)))
-- \inst6|Add4~37\ = CARRY((\inst6|a_x2\(18)) # (!\inst6|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(18),
	datad => VCC,
	cin => \inst6|Add4~35\,
	combout => \inst6|Add4~36_combout\,
	cout => \inst6|Add4~37\);

-- Location: LCCOMB_X8_Y42_N28
\inst6|Add4~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~86_combout\ = (\inst6|Add4~36_combout\ & (!\inst6|Add3~62_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add4~36_combout\,
	datad => \inst6|Add3~62_combout\,
	combout => \inst6|Add4~86_combout\);

-- Location: FF_X9_Y42_N5
\inst6|a_x2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~86_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(18));

-- Location: LCCOMB_X9_Y42_N6
\inst6|Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~38_combout\ = (\inst6|a_x2\(19) & (\inst6|Add4~37\ & VCC)) # (!\inst6|a_x2\(19) & (!\inst6|Add4~37\))
-- \inst6|Add4~39\ = CARRY((!\inst6|a_x2\(19) & !\inst6|Add4~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(19),
	datad => VCC,
	cin => \inst6|Add4~37\,
	combout => \inst6|Add4~38_combout\,
	cout => \inst6|Add4~39\);

-- Location: LCCOMB_X8_Y42_N6
\inst6|Add4~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~87_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~38_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|Add3~62_combout\,
	datac => \inst6|LessThan2~3_combout\,
	datad => \inst6|Add4~38_combout\,
	combout => \inst6|Add4~87_combout\);

-- Location: FF_X9_Y42_N7
\inst6|a_x2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~87_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(19));

-- Location: LCCOMB_X9_Y42_N8
\inst6|Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~40_combout\ = (\inst6|a_x2\(20) & ((GND) # (!\inst6|Add4~39\))) # (!\inst6|a_x2\(20) & (\inst6|Add4~39\ $ (GND)))
-- \inst6|Add4~41\ = CARRY((\inst6|a_x2\(20)) # (!\inst6|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(20),
	datad => VCC,
	cin => \inst6|Add4~39\,
	combout => \inst6|Add4~40_combout\,
	cout => \inst6|Add4~41\);

-- Location: LCCOMB_X8_Y42_N0
\inst6|Add4~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~88_combout\ = (\inst6|Add4~40_combout\ & (!\inst6|Add3~62_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add4~40_combout\,
	datad => \inst6|Add3~62_combout\,
	combout => \inst6|Add4~88_combout\);

-- Location: FF_X9_Y42_N11
\inst6|a_x2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~88_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(20));

-- Location: LCCOMB_X9_Y42_N10
\inst6|Add4~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~42_combout\ = (\inst6|a_x2\(21) & (\inst6|Add4~41\ & VCC)) # (!\inst6|a_x2\(21) & (!\inst6|Add4~41\))
-- \inst6|Add4~43\ = CARRY((!\inst6|a_x2\(21) & !\inst6|Add4~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(21),
	datad => VCC,
	cin => \inst6|Add4~41\,
	combout => \inst6|Add4~42_combout\,
	cout => \inst6|Add4~43\);

-- Location: LCCOMB_X8_Y42_N2
\inst6|Add4~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~89_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~42_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add3~62_combout\,
	datad => \inst6|Add4~42_combout\,
	combout => \inst6|Add4~89_combout\);

-- Location: FF_X9_Y42_N13
\inst6|a_x2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~89_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(21));

-- Location: LCCOMB_X9_Y42_N12
\inst6|Add4~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~44_combout\ = (\inst6|a_x2\(22) & ((GND) # (!\inst6|Add4~43\))) # (!\inst6|a_x2\(22) & (\inst6|Add4~43\ $ (GND)))
-- \inst6|Add4~45\ = CARRY((\inst6|a_x2\(22)) # (!\inst6|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(22),
	datad => VCC,
	cin => \inst6|Add4~43\,
	combout => \inst6|Add4~44_combout\,
	cout => \inst6|Add4~45\);

-- Location: LCCOMB_X8_Y42_N20
\inst6|Add4~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~90_combout\ = (\inst6|Add4~44_combout\ & (!\inst6|Add3~62_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add4~44_combout\,
	datad => \inst6|Add3~62_combout\,
	combout => \inst6|Add4~90_combout\);

-- Location: FF_X9_Y42_N15
\inst6|a_x2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~90_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(22));

-- Location: LCCOMB_X9_Y42_N14
\inst6|Add4~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~46_combout\ = (\inst6|a_x2\(23) & (\inst6|Add4~45\ & VCC)) # (!\inst6|a_x2\(23) & (!\inst6|Add4~45\))
-- \inst6|Add4~47\ = CARRY((!\inst6|a_x2\(23) & !\inst6|Add4~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(23),
	datad => VCC,
	cin => \inst6|Add4~45\,
	combout => \inst6|Add4~46_combout\,
	cout => \inst6|Add4~47\);

-- Location: LCCOMB_X8_Y42_N30
\inst6|Add4~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~91_combout\ = (\inst6|Add4~46_combout\ & (!\inst6|Add3~62_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add4~46_combout\,
	datad => \inst6|Add3~62_combout\,
	combout => \inst6|Add4~91_combout\);

-- Location: FF_X9_Y42_N17
\inst6|a_x2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~91_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(23));

-- Location: LCCOMB_X9_Y42_N16
\inst6|Add4~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~48_combout\ = (\inst6|a_x2\(24) & ((GND) # (!\inst6|Add4~47\))) # (!\inst6|a_x2\(24) & (\inst6|Add4~47\ $ (GND)))
-- \inst6|Add4~49\ = CARRY((\inst6|a_x2\(24)) # (!\inst6|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(24),
	datad => VCC,
	cin => \inst6|Add4~47\,
	combout => \inst6|Add4~48_combout\,
	cout => \inst6|Add4~49\);

-- Location: LCCOMB_X8_Y42_N16
\inst6|Add4~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~92_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~48_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|Add3~62_combout\,
	datac => \inst6|LessThan2~3_combout\,
	datad => \inst6|Add4~48_combout\,
	combout => \inst6|Add4~92_combout\);

-- Location: FF_X9_Y42_N21
\inst6|a_x2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~92_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(24));

-- Location: LCCOMB_X9_Y42_N18
\inst6|Add4~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~50_combout\ = (\inst6|a_x2\(25) & (\inst6|Add4~49\ & VCC)) # (!\inst6|a_x2\(25) & (!\inst6|Add4~49\))
-- \inst6|Add4~51\ = CARRY((!\inst6|a_x2\(25) & !\inst6|Add4~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(25),
	datad => VCC,
	cin => \inst6|Add4~49\,
	combout => \inst6|Add4~50_combout\,
	cout => \inst6|Add4~51\);

-- Location: LCCOMB_X8_Y42_N10
\inst6|Add4~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~93_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~50_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|Add3~62_combout\,
	datac => \inst6|LessThan2~3_combout\,
	datad => \inst6|Add4~50_combout\,
	combout => \inst6|Add4~93_combout\);

-- Location: FF_X9_Y42_N23
\inst6|a_x2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~93_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(25));

-- Location: LCCOMB_X9_Y42_N20
\inst6|Add4~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~52_combout\ = (\inst6|a_x2\(26) & ((GND) # (!\inst6|Add4~51\))) # (!\inst6|a_x2\(26) & (\inst6|Add4~51\ $ (GND)))
-- \inst6|Add4~53\ = CARRY((\inst6|a_x2\(26)) # (!\inst6|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(26),
	datad => VCC,
	cin => \inst6|Add4~51\,
	combout => \inst6|Add4~52_combout\,
	cout => \inst6|Add4~53\);

-- Location: LCCOMB_X8_Y42_N4
\inst6|Add4~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~94_combout\ = (\inst6|Add4~52_combout\ & (!\inst6|Add3~62_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|LessThan2~3_combout\,
	datac => \inst6|Add4~52_combout\,
	datad => \inst6|Add3~62_combout\,
	combout => \inst6|Add4~94_combout\);

-- Location: FF_X9_Y42_N25
\inst6|a_x2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~94_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(26));

-- Location: LCCOMB_X9_Y42_N22
\inst6|Add4~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~54_combout\ = (\inst6|a_x2\(27) & (\inst6|Add4~53\ & VCC)) # (!\inst6|a_x2\(27) & (!\inst6|Add4~53\))
-- \inst6|Add4~55\ = CARRY((!\inst6|a_x2\(27) & !\inst6|Add4~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(27),
	datad => VCC,
	cin => \inst6|Add4~53\,
	combout => \inst6|Add4~54_combout\,
	cout => \inst6|Add4~55\);

-- Location: LCCOMB_X8_Y42_N14
\inst6|Add4~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~95_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~54_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan2~8_combout\,
	datab => \inst6|Add3~62_combout\,
	datac => \inst6|LessThan2~3_combout\,
	datad => \inst6|Add4~54_combout\,
	combout => \inst6|Add4~95_combout\);

-- Location: FF_X9_Y42_N27
\inst6|a_x2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add4~95_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(27));

-- Location: LCCOMB_X9_Y42_N24
\inst6|Add4~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~56_combout\ = (\inst6|a_x2\(28) & ((GND) # (!\inst6|Add4~55\))) # (!\inst6|a_x2\(28) & (\inst6|Add4~55\ $ (GND)))
-- \inst6|Add4~57\ = CARRY((\inst6|a_x2\(28)) # (!\inst6|Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(28),
	datad => VCC,
	cin => \inst6|Add4~55\,
	combout => \inst6|Add4~56_combout\,
	cout => \inst6|Add4~57\);

-- Location: LCCOMB_X7_Y43_N2
\inst6|Add4~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~65_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~56_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~8_combout\,
	datac => \inst6|LessThan2~3_combout\,
	datad => \inst6|Add4~56_combout\,
	combout => \inst6|Add4~65_combout\);

-- Location: FF_X7_Y43_N3
\inst6|a_x2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add4~65_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(28));

-- Location: LCCOMB_X9_Y42_N26
\inst6|Add4~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~58_combout\ = (\inst6|a_x2\(29) & (\inst6|Add4~57\ & VCC)) # (!\inst6|a_x2\(29) & (!\inst6|Add4~57\))
-- \inst6|Add4~59\ = CARRY((!\inst6|a_x2\(29) & !\inst6|Add4~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|a_x2\(29),
	datad => VCC,
	cin => \inst6|Add4~57\,
	combout => \inst6|Add4~58_combout\,
	cout => \inst6|Add4~59\);

-- Location: LCCOMB_X7_Y43_N4
\inst6|Add4~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~66_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~58_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~8_combout\,
	datac => \inst6|LessThan2~3_combout\,
	datad => \inst6|Add4~58_combout\,
	combout => \inst6|Add4~66_combout\);

-- Location: FF_X7_Y43_N5
\inst6|a_x2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add4~66_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(29));

-- Location: LCCOMB_X9_Y42_N28
\inst6|Add4~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~60_combout\ = (\inst6|a_x2\(30) & ((GND) # (!\inst6|Add4~59\))) # (!\inst6|a_x2\(30) & (\inst6|Add4~59\ $ (GND)))
-- \inst6|Add4~61\ = CARRY((\inst6|a_x2\(30)) # (!\inst6|Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(30),
	datad => VCC,
	cin => \inst6|Add4~59\,
	combout => \inst6|Add4~60_combout\,
	cout => \inst6|Add4~61\);

-- Location: LCCOMB_X7_Y43_N30
\inst6|Add4~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~67_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~60_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~8_combout\,
	datac => \inst6|LessThan2~3_combout\,
	datad => \inst6|Add4~60_combout\,
	combout => \inst6|Add4~67_combout\);

-- Location: FF_X7_Y43_N31
\inst6|a_x2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add4~67_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(30));

-- Location: LCCOMB_X14_Y42_N26
\inst1|column[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|column[11]~feeder_combout\ = \inst1|h_count~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count~0_combout\,
	combout => \inst1|column[11]~feeder_combout\);

-- Location: LCCOMB_X13_Y40_N22
\inst1|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan6~0_combout\ = ((!\inst1|Add0~22_combout\ & !\inst1|LessThan2~1_combout\)) # (!\inst1|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan0~3_combout\,
	datac => \inst1|Add0~22_combout\,
	datad => \inst1|LessThan2~1_combout\,
	combout => \inst1|LessThan6~0_combout\);

-- Location: FF_X14_Y42_N27
\inst1|column[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|column[11]~feeder_combout\,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(11));

-- Location: FF_X13_Y44_N15
\inst1|column[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~9_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(10));

-- Location: FF_X13_Y40_N3
\inst1|column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~10_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(9));

-- Location: FF_X12_Y41_N1
\inst1|column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~11_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(8));

-- Location: FF_X12_Y41_N25
\inst1|column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~3_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(7));

-- Location: FF_X13_Y39_N25
\inst1|column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~1_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(6));

-- Location: LCCOMB_X12_Y41_N18
\inst1|column[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|column[5]~feeder_combout\ = \inst1|h_count~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|h_count~2_combout\,
	combout => \inst1|column[5]~feeder_combout\);

-- Location: FF_X12_Y41_N19
\inst1|column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|column[5]~feeder_combout\,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(5));

-- Location: LCCOMB_X14_Y40_N0
\inst1|column[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|column[4]~feeder_combout\ = \inst1|h_count~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count~7_combout\,
	combout => \inst1|column[4]~feeder_combout\);

-- Location: FF_X14_Y40_N1
\inst1|column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|column[4]~feeder_combout\,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(4));

-- Location: FF_X13_Y39_N31
\inst1|column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~8_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(3));

-- Location: FF_X11_Y41_N27
\inst1|column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~4_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(2));

-- Location: FF_X13_Y39_N27
\inst1|column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count~5_combout\,
	sload => VCC,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(1));

-- Location: LCCOMB_X13_Y44_N20
\inst1|column[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|column[0]~0_combout\ = !\inst1|h_count~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|h_count~6_combout\,
	combout => \inst1|column[0]~0_combout\);

-- Location: FF_X13_Y44_N21
\inst1|column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|column[0]~0_combout\,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(0));

-- Location: LCCOMB_X10_Y43_N0
\inst6|LessThan18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~1_cout\ = CARRY((\inst6|a_x2\(0) & \inst1|column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(0),
	datab => \inst1|column\(0),
	datad => VCC,
	cout => \inst6|LessThan18~1_cout\);

-- Location: LCCOMB_X10_Y43_N2
\inst6|LessThan18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~3_cout\ = CARRY((\inst6|a_x2\(1) & (\inst1|column\(1) & !\inst6|LessThan18~1_cout\)) # (!\inst6|a_x2\(1) & ((\inst1|column\(1)) # (!\inst6|LessThan18~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(1),
	datab => \inst1|column\(1),
	datad => VCC,
	cin => \inst6|LessThan18~1_cout\,
	cout => \inst6|LessThan18~3_cout\);

-- Location: LCCOMB_X10_Y43_N4
\inst6|LessThan18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~5_cout\ = CARRY((\inst1|column\(2) & (\inst6|a_x2\(2) & !\inst6|LessThan18~3_cout\)) # (!\inst1|column\(2) & ((\inst6|a_x2\(2)) # (!\inst6|LessThan18~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(2),
	datab => \inst6|a_x2\(2),
	datad => VCC,
	cin => \inst6|LessThan18~3_cout\,
	cout => \inst6|LessThan18~5_cout\);

-- Location: LCCOMB_X10_Y43_N6
\inst6|LessThan18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~7_cout\ = CARRY((\inst1|column\(3) & ((\inst6|a_x2\(3)) # (!\inst6|LessThan18~5_cout\))) # (!\inst1|column\(3) & (\inst6|a_x2\(3) & !\inst6|LessThan18~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(3),
	datab => \inst6|a_x2\(3),
	datad => VCC,
	cin => \inst6|LessThan18~5_cout\,
	cout => \inst6|LessThan18~7_cout\);

-- Location: LCCOMB_X10_Y43_N8
\inst6|LessThan18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~9_cout\ = CARRY((\inst6|a_x2\(4) & (!\inst1|column\(4) & !\inst6|LessThan18~7_cout\)) # (!\inst6|a_x2\(4) & ((!\inst6|LessThan18~7_cout\) # (!\inst1|column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(4),
	datab => \inst1|column\(4),
	datad => VCC,
	cin => \inst6|LessThan18~7_cout\,
	cout => \inst6|LessThan18~9_cout\);

-- Location: LCCOMB_X10_Y43_N10
\inst6|LessThan18~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~11_cout\ = CARRY((\inst6|a_x2\(5) & (\inst1|column\(5) & !\inst6|LessThan18~9_cout\)) # (!\inst6|a_x2\(5) & ((\inst1|column\(5)) # (!\inst6|LessThan18~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(5),
	datab => \inst1|column\(5),
	datad => VCC,
	cin => \inst6|LessThan18~9_cout\,
	cout => \inst6|LessThan18~11_cout\);

-- Location: LCCOMB_X10_Y43_N12
\inst6|LessThan18~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~13_cout\ = CARRY((\inst6|a_x2\(6) & (!\inst1|column\(6) & !\inst6|LessThan18~11_cout\)) # (!\inst6|a_x2\(6) & ((!\inst6|LessThan18~11_cout\) # (!\inst1|column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(6),
	datab => \inst1|column\(6),
	datad => VCC,
	cin => \inst6|LessThan18~11_cout\,
	cout => \inst6|LessThan18~13_cout\);

-- Location: LCCOMB_X10_Y43_N14
\inst6|LessThan18~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~15_cout\ = CARRY((\inst6|a_x2\(7) & (\inst1|column\(7) & !\inst6|LessThan18~13_cout\)) # (!\inst6|a_x2\(7) & ((\inst1|column\(7)) # (!\inst6|LessThan18~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(7),
	datab => \inst1|column\(7),
	datad => VCC,
	cin => \inst6|LessThan18~13_cout\,
	cout => \inst6|LessThan18~15_cout\);

-- Location: LCCOMB_X10_Y43_N16
\inst6|LessThan18~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~17_cout\ = CARRY((\inst1|column\(8) & (\inst6|a_x2\(8) & !\inst6|LessThan18~15_cout\)) # (!\inst1|column\(8) & ((\inst6|a_x2\(8)) # (!\inst6|LessThan18~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(8),
	datab => \inst6|a_x2\(8),
	datad => VCC,
	cin => \inst6|LessThan18~15_cout\,
	cout => \inst6|LessThan18~17_cout\);

-- Location: LCCOMB_X10_Y43_N18
\inst6|LessThan18~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~19_cout\ = CARRY((\inst1|column\(9) & ((\inst6|a_x2\(9)) # (!\inst6|LessThan18~17_cout\))) # (!\inst1|column\(9) & (\inst6|a_x2\(9) & !\inst6|LessThan18~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst6|a_x2\(9),
	datad => VCC,
	cin => \inst6|LessThan18~17_cout\,
	cout => \inst6|LessThan18~19_cout\);

-- Location: LCCOMB_X10_Y43_N20
\inst6|LessThan18~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~21_cout\ = CARRY((\inst1|column\(10) & (\inst6|a_x2\(10) & !\inst6|LessThan18~19_cout\)) # (!\inst1|column\(10) & ((\inst6|a_x2\(10)) # (!\inst6|LessThan18~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst6|a_x2\(10),
	datad => VCC,
	cin => \inst6|LessThan18~19_cout\,
	cout => \inst6|LessThan18~21_cout\);

-- Location: LCCOMB_X10_Y43_N22
\inst6|LessThan18~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~22_combout\ = (\inst6|a_x2\(11) & ((\inst6|LessThan18~21_cout\) # (!\inst1|column\(11)))) # (!\inst6|a_x2\(11) & (!\inst1|column\(11) & \inst6|LessThan18~21_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(11),
	datab => \inst1|column\(11),
	cin => \inst6|LessThan18~21_cout\,
	combout => \inst6|LessThan18~22_combout\);

-- Location: LCCOMB_X5_Y43_N8
\inst6|LessThan18~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~24_combout\ = (!\inst6|a_x2\(29) & (!\inst6|a_x2\(30) & (!\inst6|a_x2\(28) & !\inst6|LessThan18~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(29),
	datab => \inst6|a_x2\(30),
	datac => \inst6|a_x2\(28),
	datad => \inst6|LessThan18~22_combout\,
	combout => \inst6|LessThan18~24_combout\);

-- Location: LCCOMB_X8_Y42_N12
\inst6|LessThan18~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~28_combout\ = (!\inst6|a_x2\(26) & (!\inst6|a_x2\(27) & (!\inst6|a_x2\(24) & !\inst6|a_x2\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(26),
	datab => \inst6|a_x2\(27),
	datac => \inst6|a_x2\(24),
	datad => \inst6|a_x2\(25),
	combout => \inst6|LessThan18~28_combout\);

-- Location: LCCOMB_X8_Y42_N18
\inst6|LessThan18~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~27_combout\ = (!\inst6|a_x2\(22) & (!\inst6|a_x2\(21) & (!\inst6|a_x2\(20) & !\inst6|a_x2\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(22),
	datab => \inst6|a_x2\(21),
	datac => \inst6|a_x2\(20),
	datad => \inst6|a_x2\(23),
	combout => \inst6|LessThan18~27_combout\);

-- Location: LCCOMB_X8_Y42_N8
\inst6|LessThan18~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~26_combout\ = (!\inst6|a_x2\(19) & (!\inst6|a_x2\(18) & (!\inst6|a_x2\(16) & !\inst6|a_x2\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(19),
	datab => \inst6|a_x2\(18),
	datac => \inst6|a_x2\(16),
	datad => \inst6|a_x2\(17),
	combout => \inst6|LessThan18~26_combout\);

-- Location: LCCOMB_X8_Y43_N8
\inst6|LessThan18~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~25_combout\ = (!\inst6|a_x2\(14) & (!\inst6|a_x2\(15) & (!\inst6|a_x2\(12) & !\inst6|a_x2\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x2\(14),
	datab => \inst6|a_x2\(15),
	datac => \inst6|a_x2\(12),
	datad => \inst6|a_x2\(13),
	combout => \inst6|LessThan18~25_combout\);

-- Location: LCCOMB_X8_Y42_N22
\inst6|LessThan18~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan18~29_combout\ = (\inst6|LessThan18~28_combout\ & (\inst6|LessThan18~27_combout\ & (\inst6|LessThan18~26_combout\ & \inst6|LessThan18~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan18~28_combout\,
	datab => \inst6|LessThan18~27_combout\,
	datac => \inst6|LessThan18~26_combout\,
	datad => \inst6|LessThan18~25_combout\,
	combout => \inst6|LessThan18~29_combout\);

-- Location: LCCOMB_X2_Y43_N2
\inst6|process_0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~53_combout\ = (((\inst6|LessThan18~24_combout\ & \inst6|LessThan18~29_combout\)) # (!\inst6|process_0~47_combout\)) # (!\inst6|process_0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~52_combout\,
	datab => \inst6|process_0~47_combout\,
	datac => \inst6|LessThan18~24_combout\,
	datad => \inst6|LessThan18~29_combout\,
	combout => \inst6|process_0~53_combout\);

-- Location: LCCOMB_X7_Y43_N6
\inst6|LessThan19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~1_cout\ = CARRY((!\inst1|column\(0) & !\inst6|a_x2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(0),
	datab => \inst6|a_x2\(0),
	datad => VCC,
	cout => \inst6|LessThan19~1_cout\);

-- Location: LCCOMB_X7_Y43_N8
\inst6|LessThan19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~3_cout\ = CARRY((\inst1|column\(1) & (\inst6|a_x2\(1) & !\inst6|LessThan19~1_cout\)) # (!\inst1|column\(1) & ((\inst6|a_x2\(1)) # (!\inst6|LessThan19~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(1),
	datab => \inst6|a_x2\(1),
	datad => VCC,
	cin => \inst6|LessThan19~1_cout\,
	cout => \inst6|LessThan19~3_cout\);

-- Location: LCCOMB_X7_Y43_N10
\inst6|LessThan19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~5_cout\ = CARRY((\inst6|a_x1\(2) & ((\inst1|column\(2)) # (!\inst6|LessThan19~3_cout\))) # (!\inst6|a_x1\(2) & (\inst1|column\(2) & !\inst6|LessThan19~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(2),
	datab => \inst1|column\(2),
	datad => VCC,
	cin => \inst6|LessThan19~3_cout\,
	cout => \inst6|LessThan19~5_cout\);

-- Location: LCCOMB_X7_Y43_N12
\inst6|LessThan19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~7_cout\ = CARRY((\inst6|a_x1\(3) & ((!\inst6|LessThan19~5_cout\) # (!\inst1|column\(3)))) # (!\inst6|a_x1\(3) & (!\inst1|column\(3) & !\inst6|LessThan19~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(3),
	datab => \inst1|column\(3),
	datad => VCC,
	cin => \inst6|LessThan19~5_cout\,
	cout => \inst6|LessThan19~7_cout\);

-- Location: LCCOMB_X7_Y43_N14
\inst6|LessThan19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~9_cout\ = CARRY((\inst1|column\(4) & ((\inst6|a_x1\(4)) # (!\inst6|LessThan19~7_cout\))) # (!\inst1|column\(4) & (\inst6|a_x1\(4) & !\inst6|LessThan19~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(4),
	datab => \inst6|a_x1\(4),
	datad => VCC,
	cin => \inst6|LessThan19~7_cout\,
	cout => \inst6|LessThan19~9_cout\);

-- Location: LCCOMB_X7_Y43_N16
\inst6|LessThan19~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~11_cout\ = CARRY((\inst1|column\(5) & (!\inst6|a_x1\(5) & !\inst6|LessThan19~9_cout\)) # (!\inst1|column\(5) & ((!\inst6|LessThan19~9_cout\) # (!\inst6|a_x1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst6|a_x1\(5),
	datad => VCC,
	cin => \inst6|LessThan19~9_cout\,
	cout => \inst6|LessThan19~11_cout\);

-- Location: LCCOMB_X7_Y43_N18
\inst6|LessThan19~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~13_cout\ = CARRY((\inst6|a_x1\(6) & ((\inst1|column\(6)) # (!\inst6|LessThan19~11_cout\))) # (!\inst6|a_x1\(6) & (\inst1|column\(6) & !\inst6|LessThan19~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(6),
	datab => \inst1|column\(6),
	datad => VCC,
	cin => \inst6|LessThan19~11_cout\,
	cout => \inst6|LessThan19~13_cout\);

-- Location: LCCOMB_X7_Y43_N20
\inst6|LessThan19~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~15_cout\ = CARRY((\inst6|a_x1\(7) & (!\inst1|column\(7) & !\inst6|LessThan19~13_cout\)) # (!\inst6|a_x1\(7) & ((!\inst6|LessThan19~13_cout\) # (!\inst1|column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(7),
	datab => \inst1|column\(7),
	datad => VCC,
	cin => \inst6|LessThan19~13_cout\,
	cout => \inst6|LessThan19~15_cout\);

-- Location: LCCOMB_X7_Y43_N22
\inst6|LessThan19~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~17_cout\ = CARRY((\inst6|a_x1\(8) & ((\inst1|column\(8)) # (!\inst6|LessThan19~15_cout\))) # (!\inst6|a_x1\(8) & (\inst1|column\(8) & !\inst6|LessThan19~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(8),
	datab => \inst1|column\(8),
	datad => VCC,
	cin => \inst6|LessThan19~15_cout\,
	cout => \inst6|LessThan19~17_cout\);

-- Location: LCCOMB_X7_Y43_N24
\inst6|LessThan19~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~19_cout\ = CARRY((\inst6|a_x1\(9) & ((!\inst6|LessThan19~17_cout\) # (!\inst1|column\(9)))) # (!\inst6|a_x1\(9) & (!\inst1|column\(9) & !\inst6|LessThan19~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(9),
	datab => \inst1|column\(9),
	datad => VCC,
	cin => \inst6|LessThan19~17_cout\,
	cout => \inst6|LessThan19~19_cout\);

-- Location: LCCOMB_X7_Y43_N26
\inst6|LessThan19~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~21_cout\ = CARRY((\inst6|a_x1\(10) & (\inst1|column\(10) & !\inst6|LessThan19~19_cout\)) # (!\inst6|a_x1\(10) & ((\inst1|column\(10)) # (!\inst6|LessThan19~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(10),
	datab => \inst1|column\(10),
	datad => VCC,
	cin => \inst6|LessThan19~19_cout\,
	cout => \inst6|LessThan19~21_cout\);

-- Location: LCCOMB_X7_Y43_N28
\inst6|LessThan19~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan19~22_combout\ = (\inst6|a_x1\(11) & (\inst1|column\(11) & \inst6|LessThan19~21_cout\)) # (!\inst6|a_x1\(11) & ((\inst1|column\(11)) # (\inst6|LessThan19~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|a_x1\(11),
	datab => \inst1|column\(11),
	cin => \inst6|LessThan19~21_cout\,
	combout => \inst6|LessThan19~22_combout\);

-- Location: LCCOMB_X9_Y42_N30
\inst6|Add4~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~62_combout\ = \inst6|Add4~61\ $ (!\inst6|a_x2\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|a_x2\(31),
	cin => \inst6|Add4~61\,
	combout => \inst6|Add4~62_combout\);

-- Location: LCCOMB_X7_Y43_N0
\inst6|Add4~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add4~64_combout\ = (!\inst6|Add3~62_combout\ & (\inst6|Add4~62_combout\ & ((!\inst6|LessThan2~3_combout\) # (!\inst6|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add3~62_combout\,
	datab => \inst6|LessThan2~8_combout\,
	datac => \inst6|LessThan2~3_combout\,
	datad => \inst6|Add4~62_combout\,
	combout => \inst6|Add4~64_combout\);

-- Location: FF_X7_Y43_N1
\inst6|a_x2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add4~64_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|a_x2\(31));

-- Location: LCCOMB_X19_Y44_N8
\inst1|row[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|row[0]~0_combout\ = !\inst1|Add1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add1~3_combout\,
	combout => \inst1|row[0]~0_combout\);

-- Location: LCCOMB_X19_Y44_N20
\inst1|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~2_combout\ = ((!\inst1|LessThan7~1_combout\ & \inst1|LessThan7~0_combout\)) # (!\inst1|Add1~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add1~25_combout\,
	datac => \inst1|LessThan7~1_combout\,
	datad => \inst1|LessThan7~0_combout\,
	combout => \inst1|LessThan7~2_combout\);

-- Location: FF_X19_Y44_N9
\inst1|row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|row[0]~0_combout\,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(0));

-- Location: FF_X18_Y43_N29
\inst1|row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~30_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(2));

-- Location: FF_X18_Y43_N23
\inst1|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~6_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(1));

-- Location: FF_X19_Y44_N13
\inst1|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~26_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(6));

-- Location: FF_X18_Y43_N3
\inst1|row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~31_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(3));

-- Location: LCCOMB_X17_Y44_N16
\inst1|row[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|row[4]~feeder_combout\ = \inst1|Add1~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add1~32_combout\,
	combout => \inst1|row[4]~feeder_combout\);

-- Location: FF_X17_Y44_N17
\inst1|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|row[4]~feeder_combout\,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(4));

-- Location: FF_X18_Y43_N17
\inst1|row[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~25_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(10));

-- Location: LCCOMB_X18_Y43_N24
\inst6|process_0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~33_combout\ = (!\inst1|row\(6) & (!\inst1|row\(3) & (!\inst1|row\(4) & !\inst1|row\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst1|row\(3),
	datac => \inst1|row\(4),
	datad => \inst1|row\(10),
	combout => \inst6|process_0~33_combout\);

-- Location: LCCOMB_X18_Y43_N26
\inst6|process_0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~34_combout\ = (!\inst1|row\(2) & (\inst6|process_0~33_combout\ & ((\inst1|row\(0)) # (!\inst1|row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(0),
	datab => \inst1|row\(2),
	datac => \inst1|row\(1),
	datad => \inst6|process_0~33_combout\,
	combout => \inst6|process_0~34_combout\);

-- Location: FF_X19_Y44_N31
\inst1|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~33_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(5));

-- Location: LCCOMB_X18_Y43_N0
\inst6|LessThan23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan23~1_combout\ = (!\inst1|row\(3) & (!\inst1|row\(4) & ((!\inst1|row\(2)) # (!\inst1|row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(1),
	datab => \inst1|row\(3),
	datac => \inst1|row\(4),
	datad => \inst1|row\(2),
	combout => \inst6|LessThan23~1_combout\);

-- Location: FF_X10_Y42_N25
\inst1|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~27_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(7));

-- Location: FF_X19_Y44_N25
\inst1|row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~29_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(9));

-- Location: FF_X19_Y44_N19
\inst1|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Add1~28_combout\,
	sload => VCC,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(8));

-- Location: LCCOMB_X19_Y44_N26
\inst6|LessThan23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan23~0_combout\ = (!\inst1|row\(7) & (!\inst1|row\(9) & (!\inst1|row\(8) & !\inst1|row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(7),
	datab => \inst1|row\(9),
	datac => \inst1|row\(8),
	datad => \inst1|row\(6),
	combout => \inst6|LessThan23~0_combout\);

-- Location: LCCOMB_X18_Y43_N18
\inst6|LessThan23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan23~2_combout\ = ((!\inst1|row\(5) & (\inst6|LessThan23~1_combout\ & \inst6|LessThan23~0_combout\))) # (!\inst1|row\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst1|row\(10),
	datac => \inst6|LessThan23~1_combout\,
	datad => \inst6|LessThan23~0_combout\,
	combout => \inst6|LessThan23~2_combout\);

-- Location: LCCOMB_X14_Y42_N4
\inst1|column[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|column[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|column[31]~feeder_combout\);

-- Location: FF_X14_Y42_N5
\inst1|column[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|column[31]~feeder_combout\,
	ena => \inst1|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|column\(31));

-- Location: LCCOMB_X12_Y43_N24
\inst1|row[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|row[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|row[31]~feeder_combout\);

-- Location: FF_X12_Y43_N25
\inst1|row[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|row[31]~feeder_combout\,
	ena => \inst1|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|row\(31));

-- Location: LCCOMB_X14_Y42_N0
\inst6|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~14_combout\ = (\inst1|column\(31) & \inst1|row\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(31),
	datac => \inst1|row\(31),
	combout => \inst6|process_0~14_combout\);

-- Location: LCCOMB_X19_Y44_N18
\inst6|process_0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~31_combout\ = (\inst1|row\(10)) # ((\inst1|row\(8) & ((\inst1|row\(5)) # (\inst1|row\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst1|row\(6),
	datac => \inst1|row\(8),
	datad => \inst1|row\(10),
	combout => \inst6|process_0~31_combout\);

-- Location: LCCOMB_X19_Y44_N24
\inst6|process_0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~32_combout\ = (\inst6|process_0~31_combout\ & ((\inst1|row\(10)) # ((\inst1|row\(7) & \inst1|row\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(7),
	datab => \inst6|process_0~31_combout\,
	datac => \inst1|row\(9),
	datad => \inst1|row\(10),
	combout => \inst6|process_0~32_combout\);

-- Location: LCCOMB_X13_Y41_N10
\inst6|process_0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~35_combout\ = (!\inst6|process_0~34_combout\ & (\inst6|LessThan23~2_combout\ & (\inst6|process_0~14_combout\ & \inst6|process_0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~34_combout\,
	datab => \inst6|LessThan23~2_combout\,
	datac => \inst6|process_0~14_combout\,
	datad => \inst6|process_0~32_combout\,
	combout => \inst6|process_0~35_combout\);

-- Location: LCCOMB_X1_Y43_N2
\inst6|process_0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~54_combout\ = (\inst6|process_0~53_combout\) # (((\inst6|a_x2\(31)) # (!\inst6|process_0~35_combout\)) # (!\inst6|LessThan19~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~53_combout\,
	datab => \inst6|LessThan19~22_combout\,
	datac => \inst6|a_x2\(31),
	datad => \inst6|process_0~35_combout\,
	combout => \inst6|process_0~54_combout\);

-- Location: LCCOMB_X13_Y44_N18
\inst1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = (\inst1|LessThan6~0_combout\ & (((!\inst1|LessThan7~1_combout\ & \inst1|LessThan7~0_combout\)) # (!\inst1|Add1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan7~1_combout\,
	datab => \inst1|Add1~25_combout\,
	datac => \inst1|LessThan7~0_combout\,
	datad => \inst1|LessThan6~0_combout\,
	combout => \inst1|process_0~6_combout\);

-- Location: FF_X13_Y44_N19
\inst1|disp_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|disp_ena~q\);

-- Location: LCCOMB_X14_Y42_N6
\inst6|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~4_combout\ = (\inst1|column\(11)) # (((\inst1|row\(31) & \inst6|b_y2\(31))) # (!\inst1|column\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(11),
	datab => \inst1|row\(31),
	datac => \inst1|column\(31),
	datad => \inst6|b_y2\(31),
	combout => \inst6|process_0~4_combout\);

-- Location: LCCOMB_X11_Y42_N10
\inst6|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~5_combout\ = (\inst1|column\(9)) # ((\inst1|column\(10)) # ((\inst1|column\(8)) # (\inst6|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst1|column\(10),
	datac => \inst1|column\(8),
	datad => \inst6|process_0~4_combout\,
	combout => \inst6|process_0~5_combout\);

-- Location: LCCOMB_X6_Y35_N6
\inst6|LessThan14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~1_cout\ = CARRY((!\inst1|row\(1) & !\inst6|b_y2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(1),
	datab => \inst6|b_y2\(1),
	datad => VCC,
	cout => \inst6|LessThan14~1_cout\);

-- Location: LCCOMB_X6_Y35_N8
\inst6|LessThan14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~3_cout\ = CARRY((\inst1|row\(2) & ((\inst6|b_y2\(2)) # (!\inst6|LessThan14~1_cout\))) # (!\inst1|row\(2) & (\inst6|b_y2\(2) & !\inst6|LessThan14~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(2),
	datab => \inst6|b_y2\(2),
	datad => VCC,
	cin => \inst6|LessThan14~1_cout\,
	cout => \inst6|LessThan14~3_cout\);

-- Location: LCCOMB_X6_Y35_N10
\inst6|LessThan14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~5_cout\ = CARRY((\inst1|row\(3) & (\inst6|b_y2\(3) & !\inst6|LessThan14~3_cout\)) # (!\inst1|row\(3) & ((\inst6|b_y2\(3)) # (!\inst6|LessThan14~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(3),
	datab => \inst6|b_y2\(3),
	datad => VCC,
	cin => \inst6|LessThan14~3_cout\,
	cout => \inst6|LessThan14~5_cout\);

-- Location: LCCOMB_X6_Y35_N12
\inst6|LessThan14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~7_cout\ = CARRY((\inst1|row\(4) & ((!\inst6|LessThan14~5_cout\) # (!\inst6|b_y2\(4)))) # (!\inst1|row\(4) & (!\inst6|b_y2\(4) & !\inst6|LessThan14~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst6|b_y2\(4),
	datad => VCC,
	cin => \inst6|LessThan14~5_cout\,
	cout => \inst6|LessThan14~7_cout\);

-- Location: LCCOMB_X6_Y35_N14
\inst6|LessThan14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~9_cout\ = CARRY((\inst6|b_y2\(5) & ((!\inst6|LessThan14~7_cout\) # (!\inst1|row\(5)))) # (!\inst6|b_y2\(5) & (!\inst1|row\(5) & !\inst6|LessThan14~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(5),
	datab => \inst1|row\(5),
	datad => VCC,
	cin => \inst6|LessThan14~7_cout\,
	cout => \inst6|LessThan14~9_cout\);

-- Location: LCCOMB_X6_Y35_N16
\inst6|LessThan14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~11_cout\ = CARRY((\inst6|b_y2\(6) & (\inst1|row\(6) & !\inst6|LessThan14~9_cout\)) # (!\inst6|b_y2\(6) & ((\inst1|row\(6)) # (!\inst6|LessThan14~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(6),
	datab => \inst1|row\(6),
	datad => VCC,
	cin => \inst6|LessThan14~9_cout\,
	cout => \inst6|LessThan14~11_cout\);

-- Location: LCCOMB_X6_Y35_N18
\inst6|LessThan14~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~13_cout\ = CARRY((\inst1|row\(7) & (\inst6|b_y2\(7) & !\inst6|LessThan14~11_cout\)) # (!\inst1|row\(7) & ((\inst6|b_y2\(7)) # (!\inst6|LessThan14~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(7),
	datab => \inst6|b_y2\(7),
	datad => VCC,
	cin => \inst6|LessThan14~11_cout\,
	cout => \inst6|LessThan14~13_cout\);

-- Location: LCCOMB_X6_Y35_N20
\inst6|LessThan14~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~15_cout\ = CARRY((\inst1|row\(8) & ((!\inst6|LessThan14~13_cout\) # (!\inst6|b_y2\(8)))) # (!\inst1|row\(8) & (!\inst6|b_y2\(8) & !\inst6|LessThan14~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(8),
	datab => \inst6|b_y2\(8),
	datad => VCC,
	cin => \inst6|LessThan14~13_cout\,
	cout => \inst6|LessThan14~15_cout\);

-- Location: LCCOMB_X6_Y35_N22
\inst6|LessThan14~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~17_cout\ = CARRY((\inst6|b_y2\(9) & ((!\inst6|LessThan14~15_cout\) # (!\inst1|row\(9)))) # (!\inst6|b_y2\(9) & (!\inst1|row\(9) & !\inst6|LessThan14~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(9),
	datab => \inst1|row\(9),
	datad => VCC,
	cin => \inst6|LessThan14~15_cout\,
	cout => \inst6|LessThan14~17_cout\);

-- Location: LCCOMB_X6_Y35_N24
\inst6|LessThan14~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan14~18_combout\ = (\inst1|row\(10) & (\inst6|LessThan14~17_cout\ & !\inst6|b_y2\(10))) # (!\inst1|row\(10) & ((\inst6|LessThan14~17_cout\) # (!\inst6|b_y2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datad => \inst6|b_y2\(10),
	cin => \inst6|LessThan14~17_cout\,
	combout => \inst6|LessThan14~18_combout\);

-- Location: LCCOMB_X8_Y34_N18
\inst6|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~1_combout\ = (\inst1|row\(31)) # (\inst6|b_y2\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(31),
	datad => \inst6|b_y2\(31),
	combout => \inst6|process_0~1_combout\);

-- Location: LCCOMB_X8_Y34_N16
\inst6|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~2_combout\ = (\inst6|LessThan7~5_combout\ & (\inst6|LessThan7~0_combout\ & (!\inst6|LessThan14~18_combout\ & \inst6|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan7~5_combout\,
	datab => \inst6|LessThan7~0_combout\,
	datac => \inst6|LessThan14~18_combout\,
	datad => \inst6|process_0~1_combout\,
	combout => \inst6|process_0~2_combout\);

-- Location: LCCOMB_X11_Y42_N8
\inst6|LessThan17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~1_combout\ = (!\inst1|column\(3) & !\inst1|column\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(3),
	datac => \inst1|column\(4),
	combout => \inst6|LessThan17~1_combout\);

-- Location: LCCOMB_X12_Y42_N0
\inst6|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~3_combout\ = (\inst1|column\(6) & (\inst1|column\(7) & ((\inst1|column\(5)) # (!\inst6|LessThan17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan17~1_combout\,
	datab => \inst1|column\(5),
	datac => \inst1|column\(6),
	datad => \inst1|column\(7),
	combout => \inst6|process_0~3_combout\);

-- Location: LCCOMB_X16_Y42_N2
\inst6|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~0_combout\ = \inst6|b_y1\(1) $ (GND)
-- \inst6|Add1~1\ = CARRY(!\inst6|b_y1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(1),
	datad => VCC,
	combout => \inst6|Add1~0_combout\,
	cout => \inst6|Add1~1\);

-- Location: LCCOMB_X16_Y38_N16
\inst6|Add1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~90_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (!\keypjump~input_o\ & !\inst6|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~0_combout\,
	combout => \inst6|Add1~90_combout\);

-- Location: FF_X16_Y42_N3
\inst6|b_y1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~90_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(1));

-- Location: LCCOMB_X16_Y42_N4
\inst6|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~2_combout\ = (\inst6|b_y1\(2) & ((\inst6|Add1~1\) # (GND))) # (!\inst6|b_y1\(2) & (!\inst6|Add1~1\))
-- \inst6|Add1~3\ = CARRY((\inst6|b_y1\(2)) # (!\inst6|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(2),
	datad => VCC,
	cin => \inst6|Add1~1\,
	combout => \inst6|Add1~2_combout\,
	cout => \inst6|Add1~3\);

-- Location: LCCOMB_X8_Y34_N24
\inst6|Add1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~89_combout\ = (\inst6|b_y2\(31)) # (((\keypjump~input_o\) # (!\inst6|Add1~2_combout\)) # (!\inst6|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add1~2_combout\,
	datad => \keypjump~input_o\,
	combout => \inst6|Add1~89_combout\);

-- Location: FF_X16_Y42_N5
\inst6|b_y1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~89_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(2));

-- Location: LCCOMB_X16_Y42_N6
\inst6|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~4_combout\ = (\inst6|b_y1\(3) & ((GND) # (!\inst6|Add1~3\))) # (!\inst6|b_y1\(3) & (\inst6|Add1~3\ $ (GND)))
-- \inst6|Add1~5\ = CARRY((\inst6|b_y1\(3)) # (!\inst6|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(3),
	datad => VCC,
	cin => \inst6|Add1~3\,
	combout => \inst6|Add1~4_combout\,
	cout => \inst6|Add1~5\);

-- Location: LCCOMB_X17_Y41_N10
\inst6|Add1~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~88_combout\ = (\inst6|Add1~4_combout\ & (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & \inst6|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~4_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|LessThan1~2_combout\,
	combout => \inst6|Add1~88_combout\);

-- Location: FF_X16_Y42_N7
\inst6|b_y1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~88_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(3));

-- Location: LCCOMB_X16_Y42_N8
\inst6|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~6_combout\ = (\inst6|b_y1\(4) & (\inst6|Add1~5\ & VCC)) # (!\inst6|b_y1\(4) & (!\inst6|Add1~5\))
-- \inst6|Add1~7\ = CARRY((!\inst6|b_y1\(4) & !\inst6|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(4),
	datad => VCC,
	cin => \inst6|Add1~5\,
	combout => \inst6|Add1~6_combout\,
	cout => \inst6|Add1~7\);

-- Location: LCCOMB_X12_Y33_N10
\inst6|Add1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~87_combout\ = (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & (\inst6|Add1~6_combout\ & !\keypjump~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan1~2_combout\,
	datab => \inst6|b_y2\(31),
	datac => \inst6|Add1~6_combout\,
	datad => \keypjump~input_o\,
	combout => \inst6|Add1~87_combout\);

-- Location: FF_X16_Y42_N9
\inst6|b_y1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~87_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(4));

-- Location: LCCOMB_X16_Y42_N10
\inst6|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~8_combout\ = (\inst6|b_y1\(5) & (\inst6|Add1~7\ $ (GND))) # (!\inst6|b_y1\(5) & ((GND) # (!\inst6|Add1~7\)))
-- \inst6|Add1~9\ = CARRY((!\inst6|Add1~7\) # (!\inst6|b_y1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(5),
	datad => VCC,
	cin => \inst6|Add1~7\,
	combout => \inst6|Add1~8_combout\,
	cout => \inst6|Add1~9\);

-- Location: LCCOMB_X8_Y34_N12
\inst6|Add1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~86_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (!\inst6|Add1~8_combout\ & !\keypjump~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \inst6|Add1~8_combout\,
	datad => \keypjump~input_o\,
	combout => \inst6|Add1~86_combout\);

-- Location: FF_X16_Y42_N11
\inst6|b_y1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~86_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(5));

-- Location: LCCOMB_X16_Y42_N12
\inst6|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~10_combout\ = (\inst6|b_y1\(6) & (!\inst6|Add1~9\)) # (!\inst6|b_y1\(6) & (\inst6|Add1~9\ & VCC))
-- \inst6|Add1~11\ = CARRY((\inst6|b_y1\(6) & !\inst6|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(6),
	datad => VCC,
	cin => \inst6|Add1~9\,
	combout => \inst6|Add1~10_combout\,
	cout => \inst6|Add1~11\);

-- Location: LCCOMB_X17_Y41_N24
\inst6|Add1~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~85_combout\ = ((\inst6|b_y2\(31)) # ((\keypjump~input_o\) # (!\inst6|LessThan1~2_combout\))) # (!\inst6|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~10_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|LessThan1~2_combout\,
	combout => \inst6|Add1~85_combout\);

-- Location: FF_X16_Y42_N13
\inst6|b_y1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~85_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(6));

-- Location: LCCOMB_X16_Y42_N14
\inst6|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~12_combout\ = (\inst6|b_y1\(7) & ((GND) # (!\inst6|Add1~11\))) # (!\inst6|b_y1\(7) & (\inst6|Add1~11\ $ (GND)))
-- \inst6|Add1~13\ = CARRY((\inst6|b_y1\(7)) # (!\inst6|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(7),
	datad => VCC,
	cin => \inst6|Add1~11\,
	combout => \inst6|Add1~12_combout\,
	cout => \inst6|Add1~13\);

-- Location: LCCOMB_X16_Y38_N14
\inst6|Add1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~84_combout\ = (\inst6|b_y2\(31)) # (((\keypjump~input_o\) # (\inst6|Add1~12_combout\)) # (!\inst6|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~12_combout\,
	combout => \inst6|Add1~84_combout\);

-- Location: FF_X16_Y42_N15
\inst6|b_y1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~84_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(7));

-- Location: LCCOMB_X16_Y42_N16
\inst6|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~14_combout\ = (\inst6|b_y1\(8) & (!\inst6|Add1~13\)) # (!\inst6|b_y1\(8) & (\inst6|Add1~13\ & VCC))
-- \inst6|Add1~15\ = CARRY((\inst6|b_y1\(8) & !\inst6|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(8),
	datad => VCC,
	cin => \inst6|Add1~13\,
	combout => \inst6|Add1~14_combout\,
	cout => \inst6|Add1~15\);

-- Location: LCCOMB_X16_Y38_N28
\inst6|Add1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~83_combout\ = (!\inst6|Add1~14_combout\ & (!\keypjump~input_o\ & (!\inst6|b_y2\(31) & \inst6|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~14_combout\,
	datab => \keypjump~input_o\,
	datac => \inst6|b_y2\(31),
	datad => \inst6|LessThan1~2_combout\,
	combout => \inst6|Add1~83_combout\);

-- Location: FF_X16_Y42_N17
\inst6|b_y1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~83_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(8));

-- Location: LCCOMB_X16_Y42_N18
\inst6|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~16_combout\ = (\inst6|b_y1\(9) & (\inst6|Add1~15\ $ (GND))) # (!\inst6|b_y1\(9) & ((GND) # (!\inst6|Add1~15\)))
-- \inst6|Add1~17\ = CARRY((!\inst6|Add1~15\) # (!\inst6|b_y1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(9),
	datad => VCC,
	cin => \inst6|Add1~15\,
	combout => \inst6|Add1~16_combout\,
	cout => \inst6|Add1~17\);

-- Location: LCCOMB_X16_Y38_N2
\inst6|Add1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~82_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (!\keypjump~input_o\ & !\inst6|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~16_combout\,
	combout => \inst6|Add1~82_combout\);

-- Location: FF_X16_Y42_N19
\inst6|b_y1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~82_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(9));

-- Location: LCCOMB_X16_Y42_N20
\inst6|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~18_combout\ = (\inst6|b_y1\(10) & (\inst6|Add1~17\ & VCC)) # (!\inst6|b_y1\(10) & (!\inst6|Add1~17\))
-- \inst6|Add1~19\ = CARRY((!\inst6|b_y1\(10) & !\inst6|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(10),
	datad => VCC,
	cin => \inst6|Add1~17\,
	combout => \inst6|Add1~18_combout\,
	cout => \inst6|Add1~19\);

-- Location: LCCOMB_X17_Y41_N22
\inst6|Add1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~81_combout\ = (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & \inst6|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan1~2_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~18_combout\,
	combout => \inst6|Add1~81_combout\);

-- Location: FF_X16_Y42_N21
\inst6|b_y1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~81_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(10));

-- Location: LCCOMB_X16_Y42_N22
\inst6|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~20_combout\ = (\inst6|b_y1\(11) & ((GND) # (!\inst6|Add1~19\))) # (!\inst6|b_y1\(11) & (\inst6|Add1~19\ $ (GND)))
-- \inst6|Add1~21\ = CARRY((\inst6|b_y1\(11)) # (!\inst6|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(11),
	datad => VCC,
	cin => \inst6|Add1~19\,
	combout => \inst6|Add1~20_combout\,
	cout => \inst6|Add1~21\);

-- Location: LCCOMB_X16_Y38_N26
\inst6|Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~63_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (!\keypjump~input_o\ & \inst6|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~20_combout\,
	combout => \inst6|Add1~63_combout\);

-- Location: FF_X16_Y42_N23
\inst6|b_y1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~63_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(11));

-- Location: LCCOMB_X16_Y42_N24
\inst6|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~22_combout\ = (\inst6|b_y1\(12) & (\inst6|Add1~21\ & VCC)) # (!\inst6|b_y1\(12) & (!\inst6|Add1~21\))
-- \inst6|Add1~23\ = CARRY((!\inst6|b_y1\(12) & !\inst6|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(12),
	datad => VCC,
	cin => \inst6|Add1~21\,
	combout => \inst6|Add1~22_combout\,
	cout => \inst6|Add1~23\);

-- Location: LCCOMB_X17_Y41_N26
\inst6|Add1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~64_combout\ = (\inst6|Add1~22_combout\ & (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & \inst6|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~22_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|LessThan1~2_combout\,
	combout => \inst6|Add1~64_combout\);

-- Location: FF_X16_Y42_N25
\inst6|b_y1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~64_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(12));

-- Location: LCCOMB_X16_Y42_N26
\inst6|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~24_combout\ = (\inst6|b_y1\(13) & ((GND) # (!\inst6|Add1~23\))) # (!\inst6|b_y1\(13) & (\inst6|Add1~23\ $ (GND)))
-- \inst6|Add1~25\ = CARRY((\inst6|b_y1\(13)) # (!\inst6|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(13),
	datad => VCC,
	cin => \inst6|Add1~23\,
	combout => \inst6|Add1~24_combout\,
	cout => \inst6|Add1~25\);

-- Location: LCCOMB_X17_Y41_N28
\inst6|Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~65_combout\ = (\inst6|Add1~24_combout\ & (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & \inst6|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~24_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|LessThan1~2_combout\,
	combout => \inst6|Add1~65_combout\);

-- Location: FF_X16_Y42_N27
\inst6|b_y1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~65_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(13));

-- Location: LCCOMB_X16_Y42_N28
\inst6|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~26_combout\ = (\inst6|b_y1\(14) & (\inst6|Add1~25\ & VCC)) # (!\inst6|b_y1\(14) & (!\inst6|Add1~25\))
-- \inst6|Add1~27\ = CARRY((!\inst6|b_y1\(14) & !\inst6|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(14),
	datad => VCC,
	cin => \inst6|Add1~25\,
	combout => \inst6|Add1~26_combout\,
	cout => \inst6|Add1~27\);

-- Location: LCCOMB_X17_Y41_N6
\inst6|Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~66_combout\ = (\inst6|Add1~26_combout\ & (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & \inst6|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~26_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|LessThan1~2_combout\,
	combout => \inst6|Add1~66_combout\);

-- Location: FF_X16_Y42_N29
\inst6|b_y1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~66_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(14));

-- Location: LCCOMB_X16_Y42_N30
\inst6|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~28_combout\ = (\inst6|b_y1\(15) & ((GND) # (!\inst6|Add1~27\))) # (!\inst6|b_y1\(15) & (\inst6|Add1~27\ $ (GND)))
-- \inst6|Add1~29\ = CARRY((\inst6|b_y1\(15)) # (!\inst6|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(15),
	datad => VCC,
	cin => \inst6|Add1~27\,
	combout => \inst6|Add1~28_combout\,
	cout => \inst6|Add1~29\);

-- Location: LCCOMB_X17_Y41_N16
\inst6|Add1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~67_combout\ = (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & \inst6|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan1~2_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~28_combout\,
	combout => \inst6|Add1~67_combout\);

-- Location: FF_X16_Y42_N31
\inst6|b_y1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~67_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(15));

-- Location: LCCOMB_X16_Y41_N0
\inst6|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~30_combout\ = (\inst6|b_y1\(16) & (\inst6|Add1~29\ & VCC)) # (!\inst6|b_y1\(16) & (!\inst6|Add1~29\))
-- \inst6|Add1~31\ = CARRY((!\inst6|b_y1\(16) & !\inst6|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(16),
	datad => VCC,
	cin => \inst6|Add1~29\,
	combout => \inst6|Add1~30_combout\,
	cout => \inst6|Add1~31\);

-- Location: LCCOMB_X17_Y41_N18
\inst6|Add1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~68_combout\ = (\inst6|Add1~30_combout\ & (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & \inst6|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~30_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|LessThan1~2_combout\,
	combout => \inst6|Add1~68_combout\);

-- Location: FF_X16_Y41_N1
\inst6|b_y1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~68_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(16));

-- Location: LCCOMB_X16_Y41_N2
\inst6|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~32_combout\ = (\inst6|b_y1\(17) & ((GND) # (!\inst6|Add1~31\))) # (!\inst6|b_y1\(17) & (\inst6|Add1~31\ $ (GND)))
-- \inst6|Add1~33\ = CARRY((\inst6|b_y1\(17)) # (!\inst6|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(17),
	datad => VCC,
	cin => \inst6|Add1~31\,
	combout => \inst6|Add1~32_combout\,
	cout => \inst6|Add1~33\);

-- Location: LCCOMB_X16_Y38_N20
\inst6|Add1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~69_combout\ = (!\inst6|b_y2\(31) & (\inst6|Add1~32_combout\ & (!\keypjump~input_o\ & \inst6|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|Add1~32_combout\,
	datac => \keypjump~input_o\,
	datad => \inst6|LessThan1~2_combout\,
	combout => \inst6|Add1~69_combout\);

-- Location: FF_X16_Y41_N3
\inst6|b_y1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~69_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(17));

-- Location: LCCOMB_X16_Y41_N4
\inst6|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~34_combout\ = (\inst6|b_y1\(18) & (\inst6|Add1~33\ & VCC)) # (!\inst6|b_y1\(18) & (!\inst6|Add1~33\))
-- \inst6|Add1~35\ = CARRY((!\inst6|b_y1\(18) & !\inst6|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(18),
	datad => VCC,
	cin => \inst6|Add1~33\,
	combout => \inst6|Add1~34_combout\,
	cout => \inst6|Add1~35\);

-- Location: LCCOMB_X17_Y41_N20
\inst6|Add1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~70_combout\ = (\inst6|Add1~34_combout\ & (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & \inst6|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~34_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|LessThan1~2_combout\,
	combout => \inst6|Add1~70_combout\);

-- Location: FF_X16_Y41_N5
\inst6|b_y1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~70_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(18));

-- Location: LCCOMB_X16_Y41_N6
\inst6|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~36_combout\ = (\inst6|b_y1\(19) & ((GND) # (!\inst6|Add1~35\))) # (!\inst6|b_y1\(19) & (\inst6|Add1~35\ $ (GND)))
-- \inst6|Add1~37\ = CARRY((\inst6|b_y1\(19)) # (!\inst6|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(19),
	datad => VCC,
	cin => \inst6|Add1~35\,
	combout => \inst6|Add1~36_combout\,
	cout => \inst6|Add1~37\);

-- Location: LCCOMB_X16_Y38_N30
\inst6|Add1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~71_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (!\keypjump~input_o\ & \inst6|Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~36_combout\,
	combout => \inst6|Add1~71_combout\);

-- Location: FF_X16_Y41_N7
\inst6|b_y1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~71_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(19));

-- Location: LCCOMB_X16_Y41_N8
\inst6|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~38_combout\ = (\inst6|b_y1\(20) & (\inst6|Add1~37\ & VCC)) # (!\inst6|b_y1\(20) & (!\inst6|Add1~37\))
-- \inst6|Add1~39\ = CARRY((!\inst6|b_y1\(20) & !\inst6|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(20),
	datad => VCC,
	cin => \inst6|Add1~37\,
	combout => \inst6|Add1~38_combout\,
	cout => \inst6|Add1~39\);

-- Location: LCCOMB_X17_Y41_N30
\inst6|Add1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~72_combout\ = (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & \inst6|Add1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan1~2_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~38_combout\,
	combout => \inst6|Add1~72_combout\);

-- Location: FF_X16_Y41_N9
\inst6|b_y1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~72_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(20));

-- Location: LCCOMB_X16_Y41_N10
\inst6|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~40_combout\ = (\inst6|b_y1\(21) & ((GND) # (!\inst6|Add1~39\))) # (!\inst6|b_y1\(21) & (\inst6|Add1~39\ $ (GND)))
-- \inst6|Add1~41\ = CARRY((\inst6|b_y1\(21)) # (!\inst6|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(21),
	datad => VCC,
	cin => \inst6|Add1~39\,
	combout => \inst6|Add1~40_combout\,
	cout => \inst6|Add1~41\);

-- Location: LCCOMB_X17_Y41_N0
\inst6|Add1~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~73_combout\ = (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & \inst6|Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan1~2_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~40_combout\,
	combout => \inst6|Add1~73_combout\);

-- Location: FF_X16_Y41_N11
\inst6|b_y1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~73_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(21));

-- Location: LCCOMB_X16_Y41_N12
\inst6|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~42_combout\ = (\inst6|b_y1\(22) & (\inst6|Add1~41\ & VCC)) # (!\inst6|b_y1\(22) & (!\inst6|Add1~41\))
-- \inst6|Add1~43\ = CARRY((!\inst6|b_y1\(22) & !\inst6|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(22),
	datad => VCC,
	cin => \inst6|Add1~41\,
	combout => \inst6|Add1~42_combout\,
	cout => \inst6|Add1~43\);

-- Location: LCCOMB_X17_Y41_N2
\inst6|Add1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~74_combout\ = (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & \inst6|Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan1~2_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~42_combout\,
	combout => \inst6|Add1~74_combout\);

-- Location: FF_X16_Y41_N13
\inst6|b_y1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~74_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(22));

-- Location: LCCOMB_X16_Y41_N14
\inst6|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~44_combout\ = (\inst6|b_y1\(23) & ((GND) # (!\inst6|Add1~43\))) # (!\inst6|b_y1\(23) & (\inst6|Add1~43\ $ (GND)))
-- \inst6|Add1~45\ = CARRY((\inst6|b_y1\(23)) # (!\inst6|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(23),
	datad => VCC,
	cin => \inst6|Add1~43\,
	combout => \inst6|Add1~44_combout\,
	cout => \inst6|Add1~45\);

-- Location: LCCOMB_X16_Y38_N24
\inst6|Add1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~75_combout\ = (!\inst6|b_y2\(31) & (\inst6|Add1~44_combout\ & (!\keypjump~input_o\ & \inst6|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|Add1~44_combout\,
	datac => \keypjump~input_o\,
	datad => \inst6|LessThan1~2_combout\,
	combout => \inst6|Add1~75_combout\);

-- Location: FF_X16_Y41_N15
\inst6|b_y1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~75_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(23));

-- Location: LCCOMB_X16_Y41_N16
\inst6|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~46_combout\ = (\inst6|b_y1\(24) & (\inst6|Add1~45\ & VCC)) # (!\inst6|b_y1\(24) & (!\inst6|Add1~45\))
-- \inst6|Add1~47\ = CARRY((!\inst6|b_y1\(24) & !\inst6|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(24),
	datad => VCC,
	cin => \inst6|Add1~45\,
	combout => \inst6|Add1~46_combout\,
	cout => \inst6|Add1~47\);

-- Location: LCCOMB_X16_Y38_N10
\inst6|Add1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~76_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (!\keypjump~input_o\ & \inst6|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~46_combout\,
	combout => \inst6|Add1~76_combout\);

-- Location: FF_X16_Y41_N17
\inst6|b_y1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~76_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(24));

-- Location: LCCOMB_X16_Y41_N18
\inst6|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~48_combout\ = (\inst6|b_y1\(25) & ((GND) # (!\inst6|Add1~47\))) # (!\inst6|b_y1\(25) & (\inst6|Add1~47\ $ (GND)))
-- \inst6|Add1~49\ = CARRY((\inst6|b_y1\(25)) # (!\inst6|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(25),
	datad => VCC,
	cin => \inst6|Add1~47\,
	combout => \inst6|Add1~48_combout\,
	cout => \inst6|Add1~49\);

-- Location: LCCOMB_X16_Y38_N4
\inst6|Add1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~77_combout\ = (\inst6|Add1~48_combout\ & (!\keypjump~input_o\ & (!\inst6|b_y2\(31) & \inst6|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~48_combout\,
	datab => \keypjump~input_o\,
	datac => \inst6|b_y2\(31),
	datad => \inst6|LessThan1~2_combout\,
	combout => \inst6|Add1~77_combout\);

-- Location: FF_X16_Y41_N19
\inst6|b_y1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~77_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(25));

-- Location: LCCOMB_X16_Y41_N20
\inst6|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~50_combout\ = (\inst6|b_y1\(26) & (\inst6|Add1~49\ & VCC)) # (!\inst6|b_y1\(26) & (!\inst6|Add1~49\))
-- \inst6|Add1~51\ = CARRY((!\inst6|b_y1\(26) & !\inst6|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(26),
	datad => VCC,
	cin => \inst6|Add1~49\,
	combout => \inst6|Add1~50_combout\,
	cout => \inst6|Add1~51\);

-- Location: LCCOMB_X16_Y38_N22
\inst6|Add1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~78_combout\ = (!\inst6|b_y2\(31) & (\inst6|LessThan1~2_combout\ & (!\keypjump~input_o\ & \inst6|Add1~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y2\(31),
	datab => \inst6|LessThan1~2_combout\,
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~50_combout\,
	combout => \inst6|Add1~78_combout\);

-- Location: FF_X16_Y41_N21
\inst6|b_y1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~78_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(26));

-- Location: LCCOMB_X16_Y41_N22
\inst6|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~52_combout\ = (\inst6|b_y1\(27) & ((GND) # (!\inst6|Add1~51\))) # (!\inst6|b_y1\(27) & (\inst6|Add1~51\ $ (GND)))
-- \inst6|Add1~53\ = CARRY((\inst6|b_y1\(27)) # (!\inst6|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(27),
	datad => VCC,
	cin => \inst6|Add1~51\,
	combout => \inst6|Add1~52_combout\,
	cout => \inst6|Add1~53\);

-- Location: LCCOMB_X17_Y41_N12
\inst6|Add1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~79_combout\ = (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & \inst6|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan1~2_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~52_combout\,
	combout => \inst6|Add1~79_combout\);

-- Location: FF_X16_Y41_N23
\inst6|b_y1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~79_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(27));

-- Location: LCCOMB_X16_Y41_N24
\inst6|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~54_combout\ = (\inst6|b_y1\(28) & (\inst6|Add1~53\ & VCC)) # (!\inst6|b_y1\(28) & (!\inst6|Add1~53\))
-- \inst6|Add1~55\ = CARRY((!\inst6|b_y1\(28) & !\inst6|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(28),
	datad => VCC,
	cin => \inst6|Add1~53\,
	combout => \inst6|Add1~54_combout\,
	cout => \inst6|Add1~55\);

-- Location: LCCOMB_X16_Y38_N0
\inst6|Add1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~80_combout\ = (\inst6|Add1~54_combout\ & (!\keypjump~input_o\ & (!\inst6|b_y2\(31) & \inst6|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add1~54_combout\,
	datab => \keypjump~input_o\,
	datac => \inst6|b_y2\(31),
	datad => \inst6|LessThan1~2_combout\,
	combout => \inst6|Add1~80_combout\);

-- Location: FF_X16_Y41_N25
\inst6|b_y1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~80_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(28));

-- Location: LCCOMB_X16_Y41_N26
\inst6|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~56_combout\ = (\inst6|b_y1\(29) & ((GND) # (!\inst6|Add1~55\))) # (!\inst6|b_y1\(29) & (\inst6|Add1~55\ $ (GND)))
-- \inst6|Add1~57\ = CARRY((\inst6|b_y1\(29)) # (!\inst6|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(29),
	datad => VCC,
	cin => \inst6|Add1~55\,
	combout => \inst6|Add1~56_combout\,
	cout => \inst6|Add1~57\);

-- Location: LCCOMB_X17_Y41_N4
\inst6|Add1~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~91_combout\ = (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & \inst6|Add1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan1~2_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~56_combout\,
	combout => \inst6|Add1~91_combout\);

-- Location: FF_X16_Y41_N27
\inst6|b_y1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~91_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(29));

-- Location: LCCOMB_X16_Y41_N28
\inst6|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~58_combout\ = (\inst6|b_y1\(30) & (\inst6|Add1~57\ & VCC)) # (!\inst6|b_y1\(30) & (!\inst6|Add1~57\))
-- \inst6|Add1~59\ = CARRY((!\inst6|b_y1\(30) & !\inst6|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|b_y1\(30),
	datad => VCC,
	cin => \inst6|Add1~57\,
	combout => \inst6|Add1~58_combout\,
	cout => \inst6|Add1~59\);

-- Location: LCCOMB_X17_Y41_N14
\inst6|Add1~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~92_combout\ = (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & \inst6|Add1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan1~2_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~58_combout\,
	combout => \inst6|Add1~92_combout\);

-- Location: FF_X16_Y41_N29
\inst6|b_y1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~92_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(30));

-- Location: LCCOMB_X16_Y41_N30
\inst6|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~60_combout\ = \inst6|b_y1\(31) $ (\inst6|Add1~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(31),
	cin => \inst6|Add1~59\,
	combout => \inst6|Add1~60_combout\);

-- Location: LCCOMB_X17_Y41_N8
\inst6|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add1~62_combout\ = (\inst6|LessThan1~2_combout\ & (!\inst6|b_y2\(31) & (!\keypjump~input_o\ & \inst6|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan1~2_combout\,
	datab => \inst6|b_y2\(31),
	datac => \keypjump~input_o\,
	datad => \inst6|Add1~60_combout\,
	combout => \inst6|Add1~62_combout\);

-- Location: FF_X16_Y41_N31
\inst6|b_y1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|Add1~62_combout\,
	sload => VCC,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|b_y1\(31));

-- Location: LCCOMB_X16_Y44_N10
\inst6|LessThan15~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~29_combout\ = (\inst6|b_y1\(31) & \inst1|row\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|b_y1\(31),
	datad => \inst1|row\(31),
	combout => \inst6|LessThan15~29_combout\);

-- Location: LCCOMB_X14_Y43_N4
\inst6|LessThan15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~7_cout\ = CARRY(!\inst1|row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(0),
	datad => VCC,
	cout => \inst6|LessThan15~7_cout\);

-- Location: LCCOMB_X14_Y43_N6
\inst6|LessThan15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~9_cout\ = CARRY((\inst6|b_y1\(1) & (!\inst1|row\(1) & !\inst6|LessThan15~7_cout\)) # (!\inst6|b_y1\(1) & ((!\inst6|LessThan15~7_cout\) # (!\inst1|row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(1),
	datab => \inst1|row\(1),
	datad => VCC,
	cin => \inst6|LessThan15~7_cout\,
	cout => \inst6|LessThan15~9_cout\);

-- Location: LCCOMB_X14_Y43_N8
\inst6|LessThan15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~11_cout\ = CARRY((\inst6|b_y1\(2) & ((\inst1|row\(2)) # (!\inst6|LessThan15~9_cout\))) # (!\inst6|b_y1\(2) & (\inst1|row\(2) & !\inst6|LessThan15~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(2),
	datab => \inst1|row\(2),
	datad => VCC,
	cin => \inst6|LessThan15~9_cout\,
	cout => \inst6|LessThan15~11_cout\);

-- Location: LCCOMB_X14_Y43_N10
\inst6|LessThan15~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~13_cout\ = CARRY((\inst1|row\(3) & (\inst6|b_y1\(3) & !\inst6|LessThan15~11_cout\)) # (!\inst1|row\(3) & ((\inst6|b_y1\(3)) # (!\inst6|LessThan15~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(3),
	datab => \inst6|b_y1\(3),
	datad => VCC,
	cin => \inst6|LessThan15~11_cout\,
	cout => \inst6|LessThan15~13_cout\);

-- Location: LCCOMB_X14_Y43_N12
\inst6|LessThan15~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~15_cout\ = CARRY((\inst6|b_y1\(4) & (\inst1|row\(4) & !\inst6|LessThan15~13_cout\)) # (!\inst6|b_y1\(4) & ((\inst1|row\(4)) # (!\inst6|LessThan15~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(4),
	datab => \inst1|row\(4),
	datad => VCC,
	cin => \inst6|LessThan15~13_cout\,
	cout => \inst6|LessThan15~15_cout\);

-- Location: LCCOMB_X14_Y43_N14
\inst6|LessThan15~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~17_cout\ = CARRY((\inst1|row\(5) & (!\inst6|b_y1\(5) & !\inst6|LessThan15~15_cout\)) # (!\inst1|row\(5) & ((!\inst6|LessThan15~15_cout\) # (!\inst6|b_y1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst6|b_y1\(5),
	datad => VCC,
	cin => \inst6|LessThan15~15_cout\,
	cout => \inst6|LessThan15~17_cout\);

-- Location: LCCOMB_X14_Y43_N16
\inst6|LessThan15~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~19_cout\ = CARRY((\inst1|row\(6) & ((\inst6|b_y1\(6)) # (!\inst6|LessThan15~17_cout\))) # (!\inst1|row\(6) & (\inst6|b_y1\(6) & !\inst6|LessThan15~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst6|b_y1\(6),
	datad => VCC,
	cin => \inst6|LessThan15~17_cout\,
	cout => \inst6|LessThan15~19_cout\);

-- Location: LCCOMB_X14_Y43_N18
\inst6|LessThan15~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~21_cout\ = CARRY((\inst6|b_y1\(7) & ((!\inst6|LessThan15~19_cout\) # (!\inst1|row\(7)))) # (!\inst6|b_y1\(7) & (!\inst1|row\(7) & !\inst6|LessThan15~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(7),
	datab => \inst1|row\(7),
	datad => VCC,
	cin => \inst6|LessThan15~19_cout\,
	cout => \inst6|LessThan15~21_cout\);

-- Location: LCCOMB_X14_Y43_N20
\inst6|LessThan15~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~23_cout\ = CARRY((\inst1|row\(8) & ((\inst6|b_y1\(8)) # (!\inst6|LessThan15~21_cout\))) # (!\inst1|row\(8) & (\inst6|b_y1\(8) & !\inst6|LessThan15~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(8),
	datab => \inst6|b_y1\(8),
	datad => VCC,
	cin => \inst6|LessThan15~21_cout\,
	cout => \inst6|LessThan15~23_cout\);

-- Location: LCCOMB_X14_Y43_N22
\inst6|LessThan15~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~25_cout\ = CARRY((\inst6|b_y1\(9) & (!\inst1|row\(9) & !\inst6|LessThan15~23_cout\)) # (!\inst6|b_y1\(9) & ((!\inst6|LessThan15~23_cout\) # (!\inst1|row\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(9),
	datab => \inst1|row\(9),
	datad => VCC,
	cin => \inst6|LessThan15~23_cout\,
	cout => \inst6|LessThan15~25_cout\);

-- Location: LCCOMB_X14_Y43_N24
\inst6|LessThan15~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~26_combout\ = (\inst1|row\(10) & ((!\inst6|b_y1\(10)) # (!\inst6|LessThan15~25_cout\))) # (!\inst1|row\(10) & (!\inst6|LessThan15~25_cout\ & !\inst6|b_y1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(10),
	datad => \inst6|b_y1\(10),
	cin => \inst6|LessThan15~25_cout\,
	combout => \inst6|LessThan15~26_combout\);

-- Location: LCCOMB_X16_Y44_N6
\inst6|LessThan15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~5_combout\ = (!\inst6|b_y1\(26) & (!\inst6|b_y1\(28) & (!\inst6|b_y1\(27) & !\inst6|b_y1\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(26),
	datab => \inst6|b_y1\(28),
	datac => \inst6|b_y1\(27),
	datad => \inst6|b_y1\(25),
	combout => \inst6|LessThan15~5_combout\);

-- Location: LCCOMB_X16_Y44_N8
\inst6|LessThan15~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~28_combout\ = (!\inst6|b_y1\(30) & (\inst6|LessThan15~26_combout\ & (!\inst6|b_y1\(29) & \inst6|LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(30),
	datab => \inst6|LessThan15~26_combout\,
	datac => \inst6|b_y1\(29),
	datad => \inst6|LessThan15~5_combout\,
	combout => \inst6|LessThan15~28_combout\);

-- Location: LCCOMB_X13_Y39_N28
\inst6|LessThan30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan30~0_combout\ = (\inst1|column\(2) & ((\inst1|column\(1)) # (!\inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(1),
	datac => \inst1|column\(2),
	datad => \inst1|column\(0),
	combout => \inst6|LessThan30~0_combout\);

-- Location: LCCOMB_X12_Y41_N28
\inst6|LessThan17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~0_combout\ = (\inst1|column\(5) & \inst1|column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(5),
	datad => \inst1|column\(6),
	combout => \inst6|LessThan17~0_combout\);

-- Location: LCCOMB_X12_Y41_N22
\inst6|LessThan17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan17~2_combout\ = (\inst1|column\(7)) # ((\inst6|LessThan17~0_combout\ & ((\inst6|LessThan30~0_combout\) # (!\inst6|LessThan17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan30~0_combout\,
	datab => \inst1|column\(7),
	datac => \inst6|LessThan17~1_combout\,
	datad => \inst6|LessThan17~0_combout\,
	combout => \inst6|LessThan17~2_combout\);

-- Location: LCCOMB_X14_Y42_N8
\inst6|LessThan15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~0_combout\ = (!\inst6|b_y1\(11) & (!\inst6|b_y1\(12) & (\inst6|b_y1\(31) $ (\inst1|row\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(11),
	datab => \inst6|b_y1\(31),
	datac => \inst1|row\(31),
	datad => \inst6|b_y1\(12),
	combout => \inst6|LessThan15~0_combout\);

-- Location: LCCOMB_X16_Y42_N0
\inst6|LessThan15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~1_combout\ = (!\inst6|b_y1\(15) & (!\inst6|b_y1\(16) & (!\inst6|b_y1\(13) & !\inst6|b_y1\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(15),
	datab => \inst6|b_y1\(16),
	datac => \inst6|b_y1\(13),
	datad => \inst6|b_y1\(14),
	combout => \inst6|LessThan15~1_combout\);

-- Location: LCCOMB_X16_Y44_N26
\inst6|LessThan15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~3_combout\ = (!\inst6|b_y1\(22) & (!\inst6|b_y1\(23) & (!\inst6|b_y1\(24) & !\inst6|b_y1\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(22),
	datab => \inst6|b_y1\(23),
	datac => \inst6|b_y1\(24),
	datad => \inst6|b_y1\(21),
	combout => \inst6|LessThan15~3_combout\);

-- Location: LCCOMB_X16_Y44_N16
\inst6|LessThan15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~2_combout\ = (!\inst6|b_y1\(19) & (!\inst6|b_y1\(18) & (!\inst6|b_y1\(20) & !\inst6|b_y1\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|b_y1\(19),
	datab => \inst6|b_y1\(18),
	datac => \inst6|b_y1\(20),
	datad => \inst6|b_y1\(17),
	combout => \inst6|LessThan15~2_combout\);

-- Location: LCCOMB_X16_Y44_N20
\inst6|LessThan15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan15~4_combout\ = (\inst6|LessThan15~0_combout\ & (\inst6|LessThan15~1_combout\ & (\inst6|LessThan15~3_combout\ & \inst6|LessThan15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan15~0_combout\,
	datab => \inst6|LessThan15~1_combout\,
	datac => \inst6|LessThan15~3_combout\,
	datad => \inst6|LessThan15~2_combout\,
	combout => \inst6|LessThan15~4_combout\);

-- Location: LCCOMB_X16_Y44_N12
\inst6|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~0_combout\ = ((!\inst6|LessThan15~29_combout\ & ((!\inst6|LessThan15~4_combout\) # (!\inst6|LessThan15~28_combout\)))) # (!\inst6|LessThan17~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan15~29_combout\,
	datab => \inst6|LessThan15~28_combout\,
	datac => \inst6|LessThan17~2_combout\,
	datad => \inst6|LessThan15~4_combout\,
	combout => \inst6|process_0~0_combout\);

-- Location: LCCOMB_X16_Y44_N30
\inst6|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~6_combout\ = (\inst6|process_0~5_combout\) # ((\inst6|process_0~2_combout\) # ((\inst6|process_0~3_combout\) # (\inst6|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~5_combout\,
	datab => \inst6|process_0~2_combout\,
	datac => \inst6|process_0~3_combout\,
	datad => \inst6|process_0~0_combout\,
	combout => \inst6|process_0~6_combout\);

-- Location: LCCOMB_X16_Y44_N24
\inst6|green[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[7]~0_combout\ = (\inst1|disp_ena~q\ & \inst6|process_0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|disp_ena~q\,
	datac => \inst6|process_0~6_combout\,
	combout => \inst6|green[7]~0_combout\);

-- Location: LCCOMB_X12_Y38_N4
\inst6|Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~6_combout\ = (\inst6|d_x2\(2) & (\inst6|Add8~3\ $ (GND))) # (!\inst6|d_x2\(2) & ((GND) # (!\inst6|Add8~3\)))
-- \inst6|Add8~7\ = CARRY((!\inst6|Add8~3\) # (!\inst6|d_x2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(2),
	datad => VCC,
	cin => \inst6|Add8~3\,
	combout => \inst6|Add8~6_combout\,
	cout => \inst6|Add8~7\);

-- Location: LCCOMB_X13_Y37_N26
\inst6|Add8~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~79_combout\ = (\inst6|Add7~62_combout\) # (((\inst6|LessThan4~8_combout\ & \inst6|LessThan4~3_combout\)) # (!\inst6|Add8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add8~6_combout\,
	combout => \inst6|Add8~79_combout\);

-- Location: FF_X13_Y37_N27
\inst6|d_x2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~79_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(2));

-- Location: LCCOMB_X12_Y38_N6
\inst6|Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~8_combout\ = (\inst6|d_x2\(3) & ((\inst6|Add8~7\) # (GND))) # (!\inst6|d_x2\(3) & (!\inst6|Add8~7\))
-- \inst6|Add8~9\ = CARRY((\inst6|d_x2\(3)) # (!\inst6|Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(3),
	datad => VCC,
	cin => \inst6|Add8~7\,
	combout => \inst6|Add8~8_combout\,
	cout => \inst6|Add8~9\);

-- Location: LCCOMB_X13_Y37_N8
\inst6|Add8~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~78_combout\ = (\inst6|Add7~62_combout\) # (((\inst6|LessThan4~8_combout\ & \inst6|LessThan4~3_combout\)) # (!\inst6|Add8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add8~8_combout\,
	combout => \inst6|Add8~78_combout\);

-- Location: FF_X13_Y37_N9
\inst6|d_x2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~78_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(3));

-- Location: LCCOMB_X12_Y38_N8
\inst6|Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~10_combout\ = (\inst6|d_x2\(4) & ((GND) # (!\inst6|Add8~9\))) # (!\inst6|d_x2\(4) & (\inst6|Add8~9\ $ (GND)))
-- \inst6|Add8~11\ = CARRY((\inst6|d_x2\(4)) # (!\inst6|Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(4),
	datad => VCC,
	cin => \inst6|Add8~9\,
	combout => \inst6|Add8~10_combout\,
	cout => \inst6|Add8~11\);

-- Location: LCCOMB_X13_Y37_N30
\inst6|Add8~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~77_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~10_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add8~10_combout\,
	combout => \inst6|Add8~77_combout\);

-- Location: FF_X13_Y37_N31
\inst6|d_x2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~77_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(4));

-- Location: LCCOMB_X12_Y38_N10
\inst6|Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~12_combout\ = (\inst6|d_x2\(5) & (!\inst6|Add8~11\)) # (!\inst6|d_x2\(5) & (\inst6|Add8~11\ & VCC))
-- \inst6|Add8~13\ = CARRY((\inst6|d_x2\(5) & !\inst6|Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(5),
	datad => VCC,
	cin => \inst6|Add8~11\,
	combout => \inst6|Add8~12_combout\,
	cout => \inst6|Add8~13\);

-- Location: LCCOMB_X12_Y33_N22
\inst6|Add8~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~76_combout\ = (!\inst6|Add7~62_combout\ & (!\inst6|Add8~12_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|Add7~62_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|Add8~12_combout\,
	combout => \inst6|Add8~76_combout\);

-- Location: FF_X12_Y33_N23
\inst6|d_x2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~76_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(5));

-- Location: LCCOMB_X12_Y38_N12
\inst6|Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~14_combout\ = (\inst6|d_x2\(6) & (\inst6|Add8~13\ $ (GND))) # (!\inst6|d_x2\(6) & ((GND) # (!\inst6|Add8~13\)))
-- \inst6|Add8~15\ = CARRY((!\inst6|Add8~13\) # (!\inst6|d_x2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(6),
	datad => VCC,
	cin => \inst6|Add8~13\,
	combout => \inst6|Add8~14_combout\,
	cout => \inst6|Add8~15\);

-- Location: LCCOMB_X13_Y37_N20
\inst6|Add8~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~75_combout\ = (!\inst6|Add7~62_combout\ & (!\inst6|Add8~14_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add8~14_combout\,
	combout => \inst6|Add8~75_combout\);

-- Location: FF_X13_Y37_N21
\inst6|d_x2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~75_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(6));

-- Location: LCCOMB_X12_Y38_N14
\inst6|Add8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~16_combout\ = (\inst6|d_x2\(7) & (\inst6|Add8~15\ & VCC)) # (!\inst6|d_x2\(7) & (!\inst6|Add8~15\))
-- \inst6|Add8~17\ = CARRY((!\inst6|d_x2\(7) & !\inst6|Add8~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(7),
	datad => VCC,
	cin => \inst6|Add8~15\,
	combout => \inst6|Add8~16_combout\,
	cout => \inst6|Add8~17\);

-- Location: LCCOMB_X13_Y37_N18
\inst6|Add8~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~74_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~16_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add8~16_combout\,
	combout => \inst6|Add8~74_combout\);

-- Location: FF_X13_Y37_N19
\inst6|d_x2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~74_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(7));

-- Location: LCCOMB_X12_Y38_N16
\inst6|Add8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~18_combout\ = (\inst6|d_x2\(8) & (\inst6|Add8~17\ $ (GND))) # (!\inst6|d_x2\(8) & ((GND) # (!\inst6|Add8~17\)))
-- \inst6|Add8~19\ = CARRY((!\inst6|Add8~17\) # (!\inst6|d_x2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(8),
	datad => VCC,
	cin => \inst6|Add8~17\,
	combout => \inst6|Add8~18_combout\,
	cout => \inst6|Add8~19\);

-- Location: LCCOMB_X13_Y37_N16
\inst6|Add8~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~73_combout\ = (!\inst6|Add7~62_combout\ & (!\inst6|Add8~18_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add8~18_combout\,
	combout => \inst6|Add8~73_combout\);

-- Location: FF_X13_Y37_N17
\inst6|d_x2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~73_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(8));

-- Location: LCCOMB_X12_Y38_N18
\inst6|Add8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~20_combout\ = (\inst6|d_x2\(9) & (!\inst6|Add8~19\)) # (!\inst6|d_x2\(9) & (\inst6|Add8~19\ & VCC))
-- \inst6|Add8~21\ = CARRY((\inst6|d_x2\(9) & !\inst6|Add8~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(9),
	datad => VCC,
	cin => \inst6|Add8~19\,
	combout => \inst6|Add8~20_combout\,
	cout => \inst6|Add8~21\);

-- Location: LCCOMB_X13_Y37_N6
\inst6|Add8~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~72_combout\ = (!\inst6|Add7~62_combout\ & (!\inst6|Add8~20_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~62_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add8~20_combout\,
	datad => \inst6|LessThan4~8_combout\,
	combout => \inst6|Add8~72_combout\);

-- Location: FF_X13_Y37_N7
\inst6|d_x2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~72_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(9));

-- Location: LCCOMB_X12_Y38_N20
\inst6|Add8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~22_combout\ = (\inst6|d_x2\(10) & (\inst6|Add8~21\ $ (GND))) # (!\inst6|d_x2\(10) & ((GND) # (!\inst6|Add8~21\)))
-- \inst6|Add8~23\ = CARRY((!\inst6|Add8~21\) # (!\inst6|d_x2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(10),
	datad => VCC,
	cin => \inst6|Add8~21\,
	combout => \inst6|Add8~22_combout\,
	cout => \inst6|Add8~23\);

-- Location: LCCOMB_X13_Y37_N28
\inst6|Add8~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~71_combout\ = (!\inst6|Add7~62_combout\ & (!\inst6|Add8~22_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~62_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add8~22_combout\,
	datad => \inst6|LessThan4~8_combout\,
	combout => \inst6|Add8~71_combout\);

-- Location: FF_X13_Y37_N29
\inst6|d_x2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~71_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(10));

-- Location: LCCOMB_X12_Y38_N22
\inst6|Add8~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~24_combout\ = (\inst6|d_x2\(11) & (\inst6|Add8~23\ & VCC)) # (!\inst6|d_x2\(11) & (!\inst6|Add8~23\))
-- \inst6|Add8~25\ = CARRY((!\inst6|d_x2\(11) & !\inst6|Add8~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(11),
	datad => VCC,
	cin => \inst6|Add8~23\,
	combout => \inst6|Add8~24_combout\,
	cout => \inst6|Add8~25\);

-- Location: LCCOMB_X13_Y37_N10
\inst6|Add8~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~70_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~24_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~62_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add8~24_combout\,
	datad => \inst6|LessThan4~8_combout\,
	combout => \inst6|Add8~70_combout\);

-- Location: FF_X13_Y37_N11
\inst6|d_x2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~70_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(11));

-- Location: LCCOMB_X13_Y38_N8
\inst6|LessThan25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~1_cout\ = CARRY((\inst1|column\(0) & \inst6|d_x2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(0),
	datab => \inst6|d_x2\(0),
	datad => VCC,
	cout => \inst6|LessThan25~1_cout\);

-- Location: LCCOMB_X13_Y38_N10
\inst6|LessThan25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~3_cout\ = CARRY((\inst6|d_x2\(1) & (\inst1|column\(1) & !\inst6|LessThan25~1_cout\)) # (!\inst6|d_x2\(1) & ((\inst1|column\(1)) # (!\inst6|LessThan25~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(1),
	datab => \inst1|column\(1),
	datad => VCC,
	cin => \inst6|LessThan25~1_cout\,
	cout => \inst6|LessThan25~3_cout\);

-- Location: LCCOMB_X13_Y38_N12
\inst6|LessThan25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~5_cout\ = CARRY((\inst6|d_x2\(2) & (!\inst1|column\(2) & !\inst6|LessThan25~3_cout\)) # (!\inst6|d_x2\(2) & ((!\inst6|LessThan25~3_cout\) # (!\inst1|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(2),
	datab => \inst1|column\(2),
	datad => VCC,
	cin => \inst6|LessThan25~3_cout\,
	cout => \inst6|LessThan25~5_cout\);

-- Location: LCCOMB_X13_Y38_N14
\inst6|LessThan25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~7_cout\ = CARRY((\inst1|column\(3) & ((\inst6|d_x2\(3)) # (!\inst6|LessThan25~5_cout\))) # (!\inst1|column\(3) & (\inst6|d_x2\(3) & !\inst6|LessThan25~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(3),
	datab => \inst6|d_x2\(3),
	datad => VCC,
	cin => \inst6|LessThan25~5_cout\,
	cout => \inst6|LessThan25~7_cout\);

-- Location: LCCOMB_X13_Y38_N16
\inst6|LessThan25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~9_cout\ = CARRY((\inst1|column\(4) & (\inst6|d_x2\(4) & !\inst6|LessThan25~7_cout\)) # (!\inst1|column\(4) & ((\inst6|d_x2\(4)) # (!\inst6|LessThan25~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(4),
	datab => \inst6|d_x2\(4),
	datad => VCC,
	cin => \inst6|LessThan25~7_cout\,
	cout => \inst6|LessThan25~9_cout\);

-- Location: LCCOMB_X13_Y38_N18
\inst6|LessThan25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~11_cout\ = CARRY((\inst1|column\(5) & ((\inst6|d_x2\(5)) # (!\inst6|LessThan25~9_cout\))) # (!\inst1|column\(5) & (\inst6|d_x2\(5) & !\inst6|LessThan25~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst6|d_x2\(5),
	datad => VCC,
	cin => \inst6|LessThan25~9_cout\,
	cout => \inst6|LessThan25~11_cout\);

-- Location: LCCOMB_X13_Y38_N20
\inst6|LessThan25~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~13_cout\ = CARRY((\inst1|column\(6) & (!\inst6|d_x2\(6) & !\inst6|LessThan25~11_cout\)) # (!\inst1|column\(6) & ((!\inst6|LessThan25~11_cout\) # (!\inst6|d_x2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(6),
	datab => \inst6|d_x2\(6),
	datad => VCC,
	cin => \inst6|LessThan25~11_cout\,
	cout => \inst6|LessThan25~13_cout\);

-- Location: LCCOMB_X13_Y38_N22
\inst6|LessThan25~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~15_cout\ = CARRY((\inst1|column\(7) & ((!\inst6|LessThan25~13_cout\) # (!\inst6|d_x2\(7)))) # (!\inst1|column\(7) & (!\inst6|d_x2\(7) & !\inst6|LessThan25~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(7),
	datab => \inst6|d_x2\(7),
	datad => VCC,
	cin => \inst6|LessThan25~13_cout\,
	cout => \inst6|LessThan25~15_cout\);

-- Location: LCCOMB_X13_Y38_N24
\inst6|LessThan25~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~17_cout\ = CARRY((\inst1|column\(8) & (!\inst6|d_x2\(8) & !\inst6|LessThan25~15_cout\)) # (!\inst1|column\(8) & ((!\inst6|LessThan25~15_cout\) # (!\inst6|d_x2\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(8),
	datab => \inst6|d_x2\(8),
	datad => VCC,
	cin => \inst6|LessThan25~15_cout\,
	cout => \inst6|LessThan25~17_cout\);

-- Location: LCCOMB_X13_Y38_N26
\inst6|LessThan25~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~19_cout\ = CARRY((\inst1|column\(9) & ((\inst6|d_x2\(9)) # (!\inst6|LessThan25~17_cout\))) # (!\inst1|column\(9) & (\inst6|d_x2\(9) & !\inst6|LessThan25~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst6|d_x2\(9),
	datad => VCC,
	cin => \inst6|LessThan25~17_cout\,
	cout => \inst6|LessThan25~19_cout\);

-- Location: LCCOMB_X13_Y38_N28
\inst6|LessThan25~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~21_cout\ = CARRY((\inst6|d_x2\(10) & (!\inst1|column\(10) & !\inst6|LessThan25~19_cout\)) # (!\inst6|d_x2\(10) & ((!\inst6|LessThan25~19_cout\) # (!\inst1|column\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(10),
	datab => \inst1|column\(10),
	datad => VCC,
	cin => \inst6|LessThan25~19_cout\,
	cout => \inst6|LessThan25~21_cout\);

-- Location: LCCOMB_X13_Y38_N30
\inst6|LessThan25~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~22_combout\ = (\inst6|d_x2\(11) & ((\inst6|LessThan25~21_cout\) # (!\inst1|column\(11)))) # (!\inst6|d_x2\(11) & (\inst6|LessThan25~21_cout\ & !\inst1|column\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(11),
	datad => \inst1|column\(11),
	cin => \inst6|LessThan25~21_cout\,
	combout => \inst6|LessThan25~22_combout\);

-- Location: LCCOMB_X12_Y38_N24
\inst6|Add8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~26_combout\ = (\inst6|d_x2\(12) & ((GND) # (!\inst6|Add8~25\))) # (!\inst6|d_x2\(12) & (\inst6|Add8~25\ $ (GND)))
-- \inst6|Add8~27\ = CARRY((\inst6|d_x2\(12)) # (!\inst6|Add8~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(12),
	datad => VCC,
	cin => \inst6|Add8~25\,
	combout => \inst6|Add8~26_combout\,
	cout => \inst6|Add8~27\);

-- Location: LCCOMB_X13_Y37_N4
\inst6|Add8~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~80_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~26_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~62_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add8~26_combout\,
	datad => \inst6|LessThan4~8_combout\,
	combout => \inst6|Add8~80_combout\);

-- Location: FF_X13_Y37_N5
\inst6|d_x2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~80_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(12));

-- Location: LCCOMB_X12_Y38_N26
\inst6|Add8~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~28_combout\ = (\inst6|d_x2\(13) & (\inst6|Add8~27\ & VCC)) # (!\inst6|d_x2\(13) & (!\inst6|Add8~27\))
-- \inst6|Add8~29\ = CARRY((!\inst6|d_x2\(13) & !\inst6|Add8~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(13),
	datad => VCC,
	cin => \inst6|Add8~27\,
	combout => \inst6|Add8~28_combout\,
	cout => \inst6|Add8~29\);

-- Location: LCCOMB_X13_Y37_N14
\inst6|Add8~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~81_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~28_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~62_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add8~28_combout\,
	datad => \inst6|LessThan4~8_combout\,
	combout => \inst6|Add8~81_combout\);

-- Location: FF_X13_Y37_N15
\inst6|d_x2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~81_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(13));

-- Location: LCCOMB_X12_Y38_N28
\inst6|Add8~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~30_combout\ = (\inst6|d_x2\(14) & ((GND) # (!\inst6|Add8~29\))) # (!\inst6|d_x2\(14) & (\inst6|Add8~29\ $ (GND)))
-- \inst6|Add8~31\ = CARRY((\inst6|d_x2\(14)) # (!\inst6|Add8~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(14),
	datad => VCC,
	cin => \inst6|Add8~29\,
	combout => \inst6|Add8~30_combout\,
	cout => \inst6|Add8~31\);

-- Location: LCCOMB_X13_Y37_N0
\inst6|Add8~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~82_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~30_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add7~62_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add8~30_combout\,
	datad => \inst6|LessThan4~8_combout\,
	combout => \inst6|Add8~82_combout\);

-- Location: FF_X13_Y37_N1
\inst6|d_x2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~82_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(14));

-- Location: LCCOMB_X12_Y38_N30
\inst6|Add8~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~32_combout\ = (\inst6|d_x2\(15) & (\inst6|Add8~31\ & VCC)) # (!\inst6|d_x2\(15) & (!\inst6|Add8~31\))
-- \inst6|Add8~33\ = CARRY((!\inst6|d_x2\(15) & !\inst6|Add8~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(15),
	datad => VCC,
	cin => \inst6|Add8~31\,
	combout => \inst6|Add8~32_combout\,
	cout => \inst6|Add8~33\);

-- Location: LCCOMB_X13_Y37_N2
\inst6|Add8~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~83_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~32_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add8~32_combout\,
	combout => \inst6|Add8~83_combout\);

-- Location: FF_X13_Y37_N3
\inst6|d_x2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~83_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(15));

-- Location: LCCOMB_X12_Y37_N0
\inst6|Add8~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~34_combout\ = (\inst6|d_x2\(16) & ((GND) # (!\inst6|Add8~33\))) # (!\inst6|d_x2\(16) & (\inst6|Add8~33\ $ (GND)))
-- \inst6|Add8~35\ = CARRY((\inst6|d_x2\(16)) # (!\inst6|Add8~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(16),
	datad => VCC,
	cin => \inst6|Add8~33\,
	combout => \inst6|Add8~34_combout\,
	cout => \inst6|Add8~35\);

-- Location: LCCOMB_X11_Y37_N16
\inst6|Add8~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~84_combout\ = (\inst6|Add8~34_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add8~34_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|Add8~84_combout\);

-- Location: FF_X11_Y37_N17
\inst6|d_x2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~84_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(16));

-- Location: LCCOMB_X12_Y37_N2
\inst6|Add8~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~36_combout\ = (\inst6|d_x2\(17) & (\inst6|Add8~35\ & VCC)) # (!\inst6|d_x2\(17) & (!\inst6|Add8~35\))
-- \inst6|Add8~37\ = CARRY((!\inst6|d_x2\(17) & !\inst6|Add8~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(17),
	datad => VCC,
	cin => \inst6|Add8~35\,
	combout => \inst6|Add8~36_combout\,
	cout => \inst6|Add8~37\);

-- Location: LCCOMB_X11_Y37_N2
\inst6|Add8~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~85_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~36_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add8~36_combout\,
	combout => \inst6|Add8~85_combout\);

-- Location: FF_X11_Y37_N3
\inst6|d_x2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~85_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(17));

-- Location: LCCOMB_X12_Y37_N4
\inst6|Add8~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~38_combout\ = (\inst6|d_x2\(18) & ((GND) # (!\inst6|Add8~37\))) # (!\inst6|d_x2\(18) & (\inst6|Add8~37\ $ (GND)))
-- \inst6|Add8~39\ = CARRY((\inst6|d_x2\(18)) # (!\inst6|Add8~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(18),
	datad => VCC,
	cin => \inst6|Add8~37\,
	combout => \inst6|Add8~38_combout\,
	cout => \inst6|Add8~39\);

-- Location: LCCOMB_X11_Y37_N20
\inst6|Add8~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~86_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~38_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add8~38_combout\,
	combout => \inst6|Add8~86_combout\);

-- Location: FF_X11_Y37_N21
\inst6|d_x2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~86_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(18));

-- Location: LCCOMB_X12_Y37_N6
\inst6|Add8~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~40_combout\ = (\inst6|d_x2\(19) & (\inst6|Add8~39\ & VCC)) # (!\inst6|d_x2\(19) & (!\inst6|Add8~39\))
-- \inst6|Add8~41\ = CARRY((!\inst6|d_x2\(19) & !\inst6|Add8~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(19),
	datad => VCC,
	cin => \inst6|Add8~39\,
	combout => \inst6|Add8~40_combout\,
	cout => \inst6|Add8~41\);

-- Location: LCCOMB_X11_Y37_N22
\inst6|Add8~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~87_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~40_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add8~40_combout\,
	combout => \inst6|Add8~87_combout\);

-- Location: FF_X11_Y37_N23
\inst6|d_x2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~87_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(19));

-- Location: LCCOMB_X12_Y37_N8
\inst6|Add8~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~42_combout\ = (\inst6|d_x2\(20) & ((GND) # (!\inst6|Add8~41\))) # (!\inst6|d_x2\(20) & (\inst6|Add8~41\ $ (GND)))
-- \inst6|Add8~43\ = CARRY((\inst6|d_x2\(20)) # (!\inst6|Add8~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(20),
	datad => VCC,
	cin => \inst6|Add8~41\,
	combout => \inst6|Add8~42_combout\,
	cout => \inst6|Add8~43\);

-- Location: LCCOMB_X11_Y37_N18
\inst6|Add8~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~88_combout\ = (\inst6|Add8~42_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add8~42_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|Add8~88_combout\);

-- Location: FF_X11_Y37_N19
\inst6|d_x2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~88_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(20));

-- Location: LCCOMB_X12_Y37_N10
\inst6|Add8~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~44_combout\ = (\inst6|d_x2\(21) & (\inst6|Add8~43\ & VCC)) # (!\inst6|d_x2\(21) & (!\inst6|Add8~43\))
-- \inst6|Add8~45\ = CARRY((!\inst6|d_x2\(21) & !\inst6|Add8~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(21),
	datad => VCC,
	cin => \inst6|Add8~43\,
	combout => \inst6|Add8~44_combout\,
	cout => \inst6|Add8~45\);

-- Location: LCCOMB_X11_Y37_N12
\inst6|Add8~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~89_combout\ = (\inst6|Add8~44_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add8~44_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|Add8~89_combout\);

-- Location: FF_X11_Y37_N13
\inst6|d_x2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~89_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(21));

-- Location: LCCOMB_X12_Y37_N12
\inst6|Add8~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~46_combout\ = (\inst6|d_x2\(22) & ((GND) # (!\inst6|Add8~45\))) # (!\inst6|d_x2\(22) & (\inst6|Add8~45\ $ (GND)))
-- \inst6|Add8~47\ = CARRY((\inst6|d_x2\(22)) # (!\inst6|Add8~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(22),
	datad => VCC,
	cin => \inst6|Add8~45\,
	combout => \inst6|Add8~46_combout\,
	cout => \inst6|Add8~47\);

-- Location: LCCOMB_X11_Y37_N14
\inst6|Add8~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~90_combout\ = (\inst6|Add8~46_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add8~46_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|Add8~90_combout\);

-- Location: FF_X11_Y37_N15
\inst6|d_x2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~90_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(22));

-- Location: LCCOMB_X12_Y37_N14
\inst6|Add8~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~48_combout\ = (\inst6|d_x2\(23) & (\inst6|Add8~47\ & VCC)) # (!\inst6|d_x2\(23) & (!\inst6|Add8~47\))
-- \inst6|Add8~49\ = CARRY((!\inst6|d_x2\(23) & !\inst6|Add8~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(23),
	datad => VCC,
	cin => \inst6|Add8~47\,
	combout => \inst6|Add8~48_combout\,
	cout => \inst6|Add8~49\);

-- Location: LCCOMB_X11_Y37_N0
\inst6|Add8~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~91_combout\ = (\inst6|Add8~48_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add8~48_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|Add8~91_combout\);

-- Location: FF_X11_Y37_N1
\inst6|d_x2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~91_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(23));

-- Location: LCCOMB_X12_Y37_N16
\inst6|Add8~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~50_combout\ = (\inst6|d_x2\(24) & ((GND) # (!\inst6|Add8~49\))) # (!\inst6|d_x2\(24) & (\inst6|Add8~49\ $ (GND)))
-- \inst6|Add8~51\ = CARRY((\inst6|d_x2\(24)) # (!\inst6|Add8~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(24),
	datad => VCC,
	cin => \inst6|Add8~49\,
	combout => \inst6|Add8~50_combout\,
	cout => \inst6|Add8~51\);

-- Location: LCCOMB_X11_Y37_N28
\inst6|Add8~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~92_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~50_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add8~50_combout\,
	combout => \inst6|Add8~92_combout\);

-- Location: FF_X11_Y37_N29
\inst6|d_x2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~92_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(24));

-- Location: LCCOMB_X12_Y37_N18
\inst6|Add8~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~52_combout\ = (\inst6|d_x2\(25) & (\inst6|Add8~51\ & VCC)) # (!\inst6|d_x2\(25) & (!\inst6|Add8~51\))
-- \inst6|Add8~53\ = CARRY((!\inst6|d_x2\(25) & !\inst6|Add8~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(25),
	datad => VCC,
	cin => \inst6|Add8~51\,
	combout => \inst6|Add8~52_combout\,
	cout => \inst6|Add8~53\);

-- Location: LCCOMB_X11_Y37_N6
\inst6|Add8~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~93_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~52_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add8~52_combout\,
	combout => \inst6|Add8~93_combout\);

-- Location: FF_X11_Y37_N7
\inst6|d_x2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~93_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(25));

-- Location: LCCOMB_X12_Y37_N20
\inst6|Add8~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~54_combout\ = (\inst6|d_x2\(26) & ((GND) # (!\inst6|Add8~53\))) # (!\inst6|d_x2\(26) & (\inst6|Add8~53\ $ (GND)))
-- \inst6|Add8~55\ = CARRY((\inst6|d_x2\(26)) # (!\inst6|Add8~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(26),
	datad => VCC,
	cin => \inst6|Add8~53\,
	combout => \inst6|Add8~54_combout\,
	cout => \inst6|Add8~55\);

-- Location: LCCOMB_X11_Y37_N8
\inst6|Add8~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~94_combout\ = (\inst6|Add8~54_combout\ & (!\inst6|Add7~62_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add8~54_combout\,
	datad => \inst6|Add7~62_combout\,
	combout => \inst6|Add8~94_combout\);

-- Location: FF_X11_Y37_N9
\inst6|d_x2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~94_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(26));

-- Location: LCCOMB_X12_Y37_N22
\inst6|Add8~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~56_combout\ = (\inst6|d_x2\(27) & (\inst6|Add8~55\ & VCC)) # (!\inst6|d_x2\(27) & (!\inst6|Add8~55\))
-- \inst6|Add8~57\ = CARRY((!\inst6|d_x2\(27) & !\inst6|Add8~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(27),
	datad => VCC,
	cin => \inst6|Add8~55\,
	combout => \inst6|Add8~56_combout\,
	cout => \inst6|Add8~57\);

-- Location: LCCOMB_X11_Y37_N26
\inst6|Add8~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~95_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~56_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|LessThan4~8_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add8~56_combout\,
	combout => \inst6|Add8~95_combout\);

-- Location: FF_X11_Y37_N27
\inst6|d_x2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~95_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(27));

-- Location: LCCOMB_X12_Y37_N24
\inst6|Add8~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~58_combout\ = (\inst6|d_x2\(28) & ((GND) # (!\inst6|Add8~57\))) # (!\inst6|d_x2\(28) & (\inst6|Add8~57\ $ (GND)))
-- \inst6|Add8~59\ = CARRY((\inst6|d_x2\(28)) # (!\inst6|Add8~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(28),
	datad => VCC,
	cin => \inst6|Add8~57\,
	combout => \inst6|Add8~58_combout\,
	cout => \inst6|Add8~59\);

-- Location: LCCOMB_X12_Y33_N0
\inst6|Add8~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~67_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~58_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|Add7~62_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|Add8~58_combout\,
	combout => \inst6|Add8~67_combout\);

-- Location: FF_X12_Y33_N1
\inst6|d_x2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~67_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(28));

-- Location: LCCOMB_X12_Y37_N26
\inst6|Add8~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~60_combout\ = (\inst6|d_x2\(29) & (\inst6|Add8~59\ & VCC)) # (!\inst6|d_x2\(29) & (!\inst6|Add8~59\))
-- \inst6|Add8~61\ = CARRY((!\inst6|d_x2\(29) & !\inst6|Add8~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(29),
	datad => VCC,
	cin => \inst6|Add8~59\,
	combout => \inst6|Add8~60_combout\,
	cout => \inst6|Add8~61\);

-- Location: LCCOMB_X12_Y33_N2
\inst6|Add8~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~68_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~60_combout\ & ((!\inst6|LessThan4~8_combout\) # (!\inst6|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~3_combout\,
	datab => \inst6|Add7~62_combout\,
	datac => \inst6|Add8~60_combout\,
	datad => \inst6|LessThan4~8_combout\,
	combout => \inst6|Add8~68_combout\);

-- Location: FF_X12_Y33_N3
\inst6|d_x2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~68_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(29));

-- Location: LCCOMB_X12_Y37_N28
\inst6|Add8~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~62_combout\ = (\inst6|d_x2\(30) & ((GND) # (!\inst6|Add8~61\))) # (!\inst6|d_x2\(30) & (\inst6|Add8~61\ $ (GND)))
-- \inst6|Add8~63\ = CARRY((\inst6|d_x2\(30)) # (!\inst6|Add8~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(30),
	datad => VCC,
	cin => \inst6|Add8~61\,
	combout => \inst6|Add8~62_combout\,
	cout => \inst6|Add8~63\);

-- Location: LCCOMB_X12_Y33_N4
\inst6|Add8~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~69_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~62_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|Add7~62_combout\,
	datac => \inst6|LessThan4~3_combout\,
	datad => \inst6|Add8~62_combout\,
	combout => \inst6|Add8~69_combout\);

-- Location: FF_X12_Y33_N5
\inst6|d_x2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~69_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(30));

-- Location: LCCOMB_X12_Y33_N24
\inst6|LessThan25~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~24_combout\ = (\inst6|LessThan25~22_combout\) # ((\inst6|d_x2\(29)) # ((\inst6|d_x2\(30)) # (\inst6|d_x2\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan25~22_combout\,
	datab => \inst6|d_x2\(29),
	datac => \inst6|d_x2\(30),
	datad => \inst6|d_x2\(28),
	combout => \inst6|LessThan25~24_combout\);

-- Location: LCCOMB_X11_Y37_N10
\inst6|LessThan25~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~27_combout\ = (\inst6|d_x2\(21)) # ((\inst6|d_x2\(23)) # ((\inst6|d_x2\(22)) # (\inst6|d_x2\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(21),
	datab => \inst6|d_x2\(23),
	datac => \inst6|d_x2\(22),
	datad => \inst6|d_x2\(20),
	combout => \inst6|LessThan25~27_combout\);

-- Location: LCCOMB_X11_Y37_N24
\inst6|LessThan25~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~26_combout\ = (\inst6|d_x2\(18)) # ((\inst6|d_x2\(16)) # ((\inst6|d_x2\(19)) # (\inst6|d_x2\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(18),
	datab => \inst6|d_x2\(16),
	datac => \inst6|d_x2\(19),
	datad => \inst6|d_x2\(17),
	combout => \inst6|LessThan25~26_combout\);

-- Location: LCCOMB_X11_Y37_N4
\inst6|LessThan25~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~28_combout\ = (\inst6|d_x2\(25)) # ((\inst6|d_x2\(26)) # ((\inst6|d_x2\(27)) # (\inst6|d_x2\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(25),
	datab => \inst6|d_x2\(26),
	datac => \inst6|d_x2\(27),
	datad => \inst6|d_x2\(24),
	combout => \inst6|LessThan25~28_combout\);

-- Location: LCCOMB_X13_Y37_N12
\inst6|LessThan25~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~25_combout\ = (\inst6|d_x2\(13)) # ((\inst6|d_x2\(15)) # ((\inst6|d_x2\(12)) # (\inst6|d_x2\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x2\(13),
	datab => \inst6|d_x2\(15),
	datac => \inst6|d_x2\(12),
	datad => \inst6|d_x2\(14),
	combout => \inst6|LessThan25~25_combout\);

-- Location: LCCOMB_X11_Y37_N30
\inst6|LessThan25~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan25~29_combout\ = (\inst6|LessThan25~27_combout\) # ((\inst6|LessThan25~26_combout\) # ((\inst6|LessThan25~28_combout\) # (\inst6|LessThan25~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan25~27_combout\,
	datab => \inst6|LessThan25~26_combout\,
	datac => \inst6|LessThan25~28_combout\,
	datad => \inst6|LessThan25~25_combout\,
	combout => \inst6|LessThan25~29_combout\);

-- Location: LCCOMB_X12_Y37_N30
\inst6|Add8~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~64_combout\ = \inst6|Add8~63\ $ (!\inst6|d_x2\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|d_x2\(31),
	cin => \inst6|Add8~63\,
	combout => \inst6|Add8~64_combout\);

-- Location: LCCOMB_X13_Y37_N24
\inst6|Add8~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add8~66_combout\ = (!\inst6|Add7~62_combout\ & (\inst6|Add8~64_combout\ & ((!\inst6|LessThan4~3_combout\) # (!\inst6|LessThan4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan4~8_combout\,
	datab => \inst6|LessThan4~3_combout\,
	datac => \inst6|Add7~62_combout\,
	datad => \inst6|Add8~64_combout\,
	combout => \inst6|Add8~66_combout\);

-- Location: FF_X13_Y37_N25
\inst6|d_x2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add8~66_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|d_x2\(31));

-- Location: LCCOMB_X13_Y39_N0
\inst6|LessThan26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~1_cout\ = CARRY((!\inst1|column\(0) & !\inst6|d_x2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(0),
	datab => \inst6|d_x2\(0),
	datad => VCC,
	cout => \inst6|LessThan26~1_cout\);

-- Location: LCCOMB_X13_Y39_N2
\inst6|LessThan26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~3_cout\ = CARRY((\inst1|column\(1) & (\inst6|d_x2\(1) & !\inst6|LessThan26~1_cout\)) # (!\inst1|column\(1) & ((\inst6|d_x2\(1)) # (!\inst6|LessThan26~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(1),
	datab => \inst6|d_x2\(1),
	datad => VCC,
	cin => \inst6|LessThan26~1_cout\,
	cout => \inst6|LessThan26~3_cout\);

-- Location: LCCOMB_X13_Y39_N4
\inst6|LessThan26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~5_cout\ = CARRY((\inst6|d_x1\(2) & (\inst1|column\(2) & !\inst6|LessThan26~3_cout\)) # (!\inst6|d_x1\(2) & ((\inst1|column\(2)) # (!\inst6|LessThan26~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(2),
	datab => \inst1|column\(2),
	datad => VCC,
	cin => \inst6|LessThan26~3_cout\,
	cout => \inst6|LessThan26~5_cout\);

-- Location: LCCOMB_X13_Y39_N6
\inst6|LessThan26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~7_cout\ = CARRY((\inst6|d_x1\(3) & (!\inst1|column\(3) & !\inst6|LessThan26~5_cout\)) # (!\inst6|d_x1\(3) & ((!\inst6|LessThan26~5_cout\) # (!\inst1|column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(3),
	datab => \inst1|column\(3),
	datad => VCC,
	cin => \inst6|LessThan26~5_cout\,
	cout => \inst6|LessThan26~7_cout\);

-- Location: LCCOMB_X13_Y39_N8
\inst6|LessThan26~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~9_cout\ = CARRY((\inst6|d_x1\(4) & (\inst1|column\(4) & !\inst6|LessThan26~7_cout\)) # (!\inst6|d_x1\(4) & ((\inst1|column\(4)) # (!\inst6|LessThan26~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(4),
	datab => \inst1|column\(4),
	datad => VCC,
	cin => \inst6|LessThan26~7_cout\,
	cout => \inst6|LessThan26~9_cout\);

-- Location: LCCOMB_X13_Y39_N10
\inst6|LessThan26~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~11_cout\ = CARRY((\inst1|column\(5) & (\inst6|d_x1\(5) & !\inst6|LessThan26~9_cout\)) # (!\inst1|column\(5) & ((\inst6|d_x1\(5)) # (!\inst6|LessThan26~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst6|d_x1\(5),
	datad => VCC,
	cin => \inst6|LessThan26~9_cout\,
	cout => \inst6|LessThan26~11_cout\);

-- Location: LCCOMB_X13_Y39_N12
\inst6|LessThan26~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~13_cout\ = CARRY((\inst1|column\(6) & ((!\inst6|LessThan26~11_cout\) # (!\inst6|d_x1\(6)))) # (!\inst1|column\(6) & (!\inst6|d_x1\(6) & !\inst6|LessThan26~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(6),
	datab => \inst6|d_x1\(6),
	datad => VCC,
	cin => \inst6|LessThan26~11_cout\,
	cout => \inst6|LessThan26~13_cout\);

-- Location: LCCOMB_X13_Y39_N14
\inst6|LessThan26~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~15_cout\ = CARRY((\inst6|d_x1\(7) & ((!\inst6|LessThan26~13_cout\) # (!\inst1|column\(7)))) # (!\inst6|d_x1\(7) & (!\inst1|column\(7) & !\inst6|LessThan26~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(7),
	datab => \inst1|column\(7),
	datad => VCC,
	cin => \inst6|LessThan26~13_cout\,
	cout => \inst6|LessThan26~15_cout\);

-- Location: LCCOMB_X13_Y39_N16
\inst6|LessThan26~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~17_cout\ = CARRY((\inst1|column\(8) & ((\inst6|d_x1\(8)) # (!\inst6|LessThan26~15_cout\))) # (!\inst1|column\(8) & (\inst6|d_x1\(8) & !\inst6|LessThan26~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(8),
	datab => \inst6|d_x1\(8),
	datad => VCC,
	cin => \inst6|LessThan26~15_cout\,
	cout => \inst6|LessThan26~17_cout\);

-- Location: LCCOMB_X13_Y39_N18
\inst6|LessThan26~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~19_cout\ = CARRY((\inst6|d_x1\(9) & (!\inst1|column\(9) & !\inst6|LessThan26~17_cout\)) # (!\inst6|d_x1\(9) & ((!\inst6|LessThan26~17_cout\) # (!\inst1|column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(9),
	datab => \inst1|column\(9),
	datad => VCC,
	cin => \inst6|LessThan26~17_cout\,
	cout => \inst6|LessThan26~19_cout\);

-- Location: LCCOMB_X13_Y39_N20
\inst6|LessThan26~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~21_cout\ = CARRY((\inst6|d_x1\(10) & ((\inst1|column\(10)) # (!\inst6|LessThan26~19_cout\))) # (!\inst6|d_x1\(10) & (\inst1|column\(10) & !\inst6|LessThan26~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|d_x1\(10),
	datab => \inst1|column\(10),
	datad => VCC,
	cin => \inst6|LessThan26~19_cout\,
	cout => \inst6|LessThan26~21_cout\);

-- Location: LCCOMB_X13_Y39_N22
\inst6|LessThan26~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan26~22_combout\ = (\inst1|column\(11) & ((\inst6|LessThan26~21_cout\) # (!\inst6|d_x1\(11)))) # (!\inst1|column\(11) & (\inst6|LessThan26~21_cout\ & !\inst6|d_x1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|column\(11),
	datad => \inst6|d_x1\(11),
	cin => \inst6|LessThan26~21_cout\,
	combout => \inst6|LessThan26~22_combout\);

-- Location: LCCOMB_X13_Y41_N20
\inst6|process_0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~36_combout\ = (!\inst6|d_x2\(31) & (\inst6|LessThan26~22_combout\ & \inst6|process_0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|d_x2\(31),
	datac => \inst6|LessThan26~22_combout\,
	datad => \inst6|process_0~35_combout\,
	combout => \inst6|process_0~36_combout\);

-- Location: LCCOMB_X13_Y41_N30
\inst6|process_0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~43_combout\ = (\inst6|process_0~42_combout\ & (\inst6|process_0~36_combout\ & ((\inst6|LessThan25~24_combout\) # (\inst6|LessThan25~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan25~24_combout\,
	datab => \inst6|process_0~42_combout\,
	datac => \inst6|LessThan25~29_combout\,
	datad => \inst6|process_0~36_combout\,
	combout => \inst6|process_0~43_combout\);

-- Location: LCCOMB_X11_Y42_N12
\inst6|LessThan29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~0_combout\ = (\inst6|LessThan17~1_combout\ & (!\inst1|column\(8) & (!\inst1|column\(6) & !\inst1|column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan17~1_combout\,
	datab => \inst1|column\(8),
	datac => \inst1|column\(6),
	datad => \inst1|column\(2),
	combout => \inst6|LessThan29~0_combout\);

-- Location: LCCOMB_X13_Y39_N26
\inst6|process_0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~25_combout\ = (!\inst1|column\(5) & (!\inst1|column\(7) & (!\inst1|column\(1) & \inst1|column\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst1|column\(7),
	datac => \inst1|column\(1),
	datad => \inst1|column\(0),
	combout => \inst6|process_0~25_combout\);

-- Location: LCCOMB_X14_Y43_N2
\inst6|process_0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~23_combout\ = (\inst1|row\(2) & (\inst1|row\(1) & !\inst1|row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(2),
	datac => \inst1|row\(1),
	datad => \inst1|row\(0),
	combout => \inst6|process_0~23_combout\);

-- Location: LCCOMB_X18_Y43_N30
\inst6|process_0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~24_combout\ = (\inst1|row\(4) & ((\inst1|row\(5)) # ((!\inst6|process_0~23_combout\ & !\inst1|row\(3))))) # (!\inst1|row\(4) & (((\inst6|process_0~23_combout\ & \inst1|row\(3))) # (!\inst1|row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~23_combout\,
	datab => \inst1|row\(3),
	datac => \inst1|row\(4),
	datad => \inst1|row\(5),
	combout => \inst6|process_0~24_combout\);

-- Location: LCCOMB_X11_Y42_N30
\inst6|process_0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~26_combout\ = (\inst6|process_0~24_combout\) # ((\inst6|LessThan29~0_combout\ & (\inst6|process_0~25_combout\ & !\inst1|column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan29~0_combout\,
	datab => \inst6|process_0~25_combout\,
	datac => \inst1|column\(9),
	datad => \inst6|process_0~24_combout\,
	combout => \inst6|process_0~26_combout\);

-- Location: LCCOMB_X18_Y43_N6
\inst6|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan11~0_combout\ = (\inst1|row\(5) & (\inst1|row\(4) & \inst1|row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst1|row\(4),
	datad => \inst1|row\(3),
	combout => \inst6|LessThan11~0_combout\);

-- Location: LCCOMB_X18_Y43_N8
\inst6|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~17_combout\ = (((!\inst1|row\(6)) # (!\inst1|row\(1))) # (!\inst1|row\(2))) # (!\inst6|LessThan11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan11~0_combout\,
	datab => \inst1|row\(2),
	datac => \inst1|row\(1),
	datad => \inst1|row\(6),
	combout => \inst6|process_0~17_combout\);

-- Location: LCCOMB_X14_Y43_N26
\inst6|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~18_combout\ = (\inst1|row\(31) & (!\inst1|row\(10) & !\inst1|row\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(31),
	datac => \inst1|row\(10),
	datad => \inst1|row\(9),
	combout => \inst6|process_0~18_combout\);

-- Location: LCCOMB_X14_Y42_N10
\inst6|process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~19_combout\ = (\inst1|row\(8)) # (((\inst6|process_0~17_combout\ & !\inst1|row\(7))) # (!\inst6|process_0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~17_combout\,
	datab => \inst1|row\(8),
	datac => \inst6|process_0~18_combout\,
	datad => \inst1|row\(7),
	combout => \inst6|process_0~19_combout\);

-- Location: LCCOMB_X13_Y43_N2
\inst6|n_x1[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[1]~31_combout\ = (\inst6|n_x2\(0) & (\inst6|n_x1\(1) $ (VCC))) # (!\inst6|n_x2\(0) & (\inst6|n_x1\(1) & VCC))
-- \inst6|n_x1[1]~32\ = CARRY((\inst6|n_x2\(0) & \inst6|n_x1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(0),
	datab => \inst6|n_x1\(1),
	datad => VCC,
	combout => \inst6|n_x1[1]~31_combout\,
	cout => \inst6|n_x1[1]~32\);

-- Location: FF_X13_Y43_N3
\inst6|n_x1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[1]~31_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(1));

-- Location: LCCOMB_X13_Y43_N4
\inst6|n_x1[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[2]~33_combout\ = (\inst6|n_x1\(2) & (!\inst6|n_x1[1]~32\)) # (!\inst6|n_x1\(2) & ((\inst6|n_x1[1]~32\) # (GND)))
-- \inst6|n_x1[2]~34\ = CARRY((!\inst6|n_x1[1]~32\) # (!\inst6|n_x1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(2),
	datad => VCC,
	cin => \inst6|n_x1[1]~32\,
	combout => \inst6|n_x1[2]~33_combout\,
	cout => \inst6|n_x1[2]~34\);

-- Location: FF_X13_Y43_N5
\inst6|n_x1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[2]~33_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(2));

-- Location: LCCOMB_X13_Y43_N6
\inst6|n_x1[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[3]~35_combout\ = (\inst6|n_x1\(3) & (\inst6|n_x1[2]~34\ $ (GND))) # (!\inst6|n_x1\(3) & (!\inst6|n_x1[2]~34\ & VCC))
-- \inst6|n_x1[3]~36\ = CARRY((\inst6|n_x1\(3) & !\inst6|n_x1[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(3),
	datad => VCC,
	cin => \inst6|n_x1[2]~34\,
	combout => \inst6|n_x1[3]~35_combout\,
	cout => \inst6|n_x1[3]~36\);

-- Location: FF_X13_Y43_N7
\inst6|n_x1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[3]~35_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(3));

-- Location: LCCOMB_X13_Y43_N8
\inst6|n_x1[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[4]~37_combout\ = (\inst6|n_x1\(4) & (!\inst6|n_x1[3]~36\)) # (!\inst6|n_x1\(4) & ((\inst6|n_x1[3]~36\) # (GND)))
-- \inst6|n_x1[4]~38\ = CARRY((!\inst6|n_x1[3]~36\) # (!\inst6|n_x1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(4),
	datad => VCC,
	cin => \inst6|n_x1[3]~36\,
	combout => \inst6|n_x1[4]~37_combout\,
	cout => \inst6|n_x1[4]~38\);

-- Location: FF_X13_Y43_N9
\inst6|n_x1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[4]~37_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(4));

-- Location: LCCOMB_X13_Y43_N10
\inst6|n_x1[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[5]~39_combout\ = (\inst6|n_x1\(5) & (\inst6|n_x1[4]~38\ $ (GND))) # (!\inst6|n_x1\(5) & (!\inst6|n_x1[4]~38\ & VCC))
-- \inst6|n_x1[5]~40\ = CARRY((\inst6|n_x1\(5) & !\inst6|n_x1[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(5),
	datad => VCC,
	cin => \inst6|n_x1[4]~38\,
	combout => \inst6|n_x1[5]~39_combout\,
	cout => \inst6|n_x1[5]~40\);

-- Location: FF_X13_Y43_N11
\inst6|n_x1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[5]~39_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(5));

-- Location: LCCOMB_X13_Y43_N12
\inst6|n_x1[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[6]~41_combout\ = (\inst6|n_x1\(6) & (!\inst6|n_x1[5]~40\)) # (!\inst6|n_x1\(6) & ((\inst6|n_x1[5]~40\) # (GND)))
-- \inst6|n_x1[6]~42\ = CARRY((!\inst6|n_x1[5]~40\) # (!\inst6|n_x1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(6),
	datad => VCC,
	cin => \inst6|n_x1[5]~40\,
	combout => \inst6|n_x1[6]~41_combout\,
	cout => \inst6|n_x1[6]~42\);

-- Location: FF_X13_Y43_N13
\inst6|n_x1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[6]~41_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(6));

-- Location: LCCOMB_X13_Y43_N14
\inst6|n_x1[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[7]~43_combout\ = (\inst6|n_x1\(7) & (\inst6|n_x1[6]~42\ $ (GND))) # (!\inst6|n_x1\(7) & (!\inst6|n_x1[6]~42\ & VCC))
-- \inst6|n_x1[7]~44\ = CARRY((\inst6|n_x1\(7) & !\inst6|n_x1[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(7),
	datad => VCC,
	cin => \inst6|n_x1[6]~42\,
	combout => \inst6|n_x1[7]~43_combout\,
	cout => \inst6|n_x1[7]~44\);

-- Location: FF_X13_Y43_N15
\inst6|n_x1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[7]~43_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(7));

-- Location: LCCOMB_X13_Y43_N16
\inst6|n_x1[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[8]~45_combout\ = (\inst6|n_x1\(8) & (!\inst6|n_x1[7]~44\)) # (!\inst6|n_x1\(8) & ((\inst6|n_x1[7]~44\) # (GND)))
-- \inst6|n_x1[8]~46\ = CARRY((!\inst6|n_x1[7]~44\) # (!\inst6|n_x1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(8),
	datad => VCC,
	cin => \inst6|n_x1[7]~44\,
	combout => \inst6|n_x1[8]~45_combout\,
	cout => \inst6|n_x1[8]~46\);

-- Location: FF_X13_Y43_N17
\inst6|n_x1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[8]~45_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(8));

-- Location: LCCOMB_X13_Y43_N18
\inst6|n_x1[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[9]~47_combout\ = (\inst6|n_x1\(9) & (\inst6|n_x1[8]~46\ $ (GND))) # (!\inst6|n_x1\(9) & (!\inst6|n_x1[8]~46\ & VCC))
-- \inst6|n_x1[9]~48\ = CARRY((\inst6|n_x1\(9) & !\inst6|n_x1[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(9),
	datad => VCC,
	cin => \inst6|n_x1[8]~46\,
	combout => \inst6|n_x1[9]~47_combout\,
	cout => \inst6|n_x1[9]~48\);

-- Location: FF_X13_Y43_N19
\inst6|n_x1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[9]~47_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(9));

-- Location: LCCOMB_X13_Y43_N20
\inst6|n_x1[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[10]~49_combout\ = (\inst6|n_x1\(10) & (!\inst6|n_x1[9]~48\)) # (!\inst6|n_x1\(10) & ((\inst6|n_x1[9]~48\) # (GND)))
-- \inst6|n_x1[10]~50\ = CARRY((!\inst6|n_x1[9]~48\) # (!\inst6|n_x1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(10),
	datad => VCC,
	cin => \inst6|n_x1[9]~48\,
	combout => \inst6|n_x1[10]~49_combout\,
	cout => \inst6|n_x1[10]~50\);

-- Location: FF_X13_Y43_N21
\inst6|n_x1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[10]~49_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(10));

-- Location: LCCOMB_X13_Y43_N22
\inst6|n_x1[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[11]~51_combout\ = (\inst6|n_x1\(11) & (\inst6|n_x1[10]~50\ $ (GND))) # (!\inst6|n_x1\(11) & (!\inst6|n_x1[10]~50\ & VCC))
-- \inst6|n_x1[11]~52\ = CARRY((\inst6|n_x1\(11) & !\inst6|n_x1[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(11),
	datad => VCC,
	cin => \inst6|n_x1[10]~50\,
	combout => \inst6|n_x1[11]~51_combout\,
	cout => \inst6|n_x1[11]~52\);

-- Location: FF_X13_Y43_N23
\inst6|n_x1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[11]~51_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(11));

-- Location: LCCOMB_X13_Y43_N24
\inst6|n_x1[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[12]~53_combout\ = (\inst6|n_x1\(12) & (!\inst6|n_x1[11]~52\)) # (!\inst6|n_x1\(12) & ((\inst6|n_x1[11]~52\) # (GND)))
-- \inst6|n_x1[12]~54\ = CARRY((!\inst6|n_x1[11]~52\) # (!\inst6|n_x1\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(12),
	datad => VCC,
	cin => \inst6|n_x1[11]~52\,
	combout => \inst6|n_x1[12]~53_combout\,
	cout => \inst6|n_x1[12]~54\);

-- Location: FF_X13_Y43_N25
\inst6|n_x1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[12]~53_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(12));

-- Location: LCCOMB_X13_Y43_N26
\inst6|n_x1[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[13]~55_combout\ = (\inst6|n_x1\(13) & (\inst6|n_x1[12]~54\ $ (GND))) # (!\inst6|n_x1\(13) & (!\inst6|n_x1[12]~54\ & VCC))
-- \inst6|n_x1[13]~56\ = CARRY((\inst6|n_x1\(13) & !\inst6|n_x1[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(13),
	datad => VCC,
	cin => \inst6|n_x1[12]~54\,
	combout => \inst6|n_x1[13]~55_combout\,
	cout => \inst6|n_x1[13]~56\);

-- Location: FF_X13_Y43_N27
\inst6|n_x1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[13]~55_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(13));

-- Location: LCCOMB_X13_Y43_N28
\inst6|n_x1[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[14]~57_combout\ = (\inst6|n_x1\(14) & (!\inst6|n_x1[13]~56\)) # (!\inst6|n_x1\(14) & ((\inst6|n_x1[13]~56\) # (GND)))
-- \inst6|n_x1[14]~58\ = CARRY((!\inst6|n_x1[13]~56\) # (!\inst6|n_x1\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(14),
	datad => VCC,
	cin => \inst6|n_x1[13]~56\,
	combout => \inst6|n_x1[14]~57_combout\,
	cout => \inst6|n_x1[14]~58\);

-- Location: FF_X13_Y43_N29
\inst6|n_x1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[14]~57_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(14));

-- Location: LCCOMB_X13_Y43_N30
\inst6|n_x1[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[15]~59_combout\ = (\inst6|n_x1\(15) & (\inst6|n_x1[14]~58\ $ (GND))) # (!\inst6|n_x1\(15) & (!\inst6|n_x1[14]~58\ & VCC))
-- \inst6|n_x1[15]~60\ = CARRY((\inst6|n_x1\(15) & !\inst6|n_x1[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(15),
	datad => VCC,
	cin => \inst6|n_x1[14]~58\,
	combout => \inst6|n_x1[15]~59_combout\,
	cout => \inst6|n_x1[15]~60\);

-- Location: FF_X13_Y43_N31
\inst6|n_x1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[15]~59_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(15));

-- Location: LCCOMB_X13_Y42_N0
\inst6|n_x1[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[16]~61_combout\ = (\inst6|n_x1\(16) & (!\inst6|n_x1[15]~60\)) # (!\inst6|n_x1\(16) & ((\inst6|n_x1[15]~60\) # (GND)))
-- \inst6|n_x1[16]~62\ = CARRY((!\inst6|n_x1[15]~60\) # (!\inst6|n_x1\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(16),
	datad => VCC,
	cin => \inst6|n_x1[15]~60\,
	combout => \inst6|n_x1[16]~61_combout\,
	cout => \inst6|n_x1[16]~62\);

-- Location: FF_X13_Y42_N1
\inst6|n_x1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[16]~61_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(16));

-- Location: LCCOMB_X13_Y42_N2
\inst6|n_x1[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[17]~63_combout\ = (\inst6|n_x1\(17) & (\inst6|n_x1[16]~62\ $ (GND))) # (!\inst6|n_x1\(17) & (!\inst6|n_x1[16]~62\ & VCC))
-- \inst6|n_x1[17]~64\ = CARRY((\inst6|n_x1\(17) & !\inst6|n_x1[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(17),
	datad => VCC,
	cin => \inst6|n_x1[16]~62\,
	combout => \inst6|n_x1[17]~63_combout\,
	cout => \inst6|n_x1[17]~64\);

-- Location: FF_X13_Y42_N3
\inst6|n_x1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[17]~63_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(17));

-- Location: LCCOMB_X13_Y42_N4
\inst6|n_x1[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[18]~65_combout\ = (\inst6|n_x1\(18) & (!\inst6|n_x1[17]~64\)) # (!\inst6|n_x1\(18) & ((\inst6|n_x1[17]~64\) # (GND)))
-- \inst6|n_x1[18]~66\ = CARRY((!\inst6|n_x1[17]~64\) # (!\inst6|n_x1\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(18),
	datad => VCC,
	cin => \inst6|n_x1[17]~64\,
	combout => \inst6|n_x1[18]~65_combout\,
	cout => \inst6|n_x1[18]~66\);

-- Location: FF_X13_Y42_N5
\inst6|n_x1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[18]~65_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(18));

-- Location: LCCOMB_X13_Y42_N6
\inst6|n_x1[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[19]~67_combout\ = (\inst6|n_x1\(19) & (\inst6|n_x1[18]~66\ $ (GND))) # (!\inst6|n_x1\(19) & (!\inst6|n_x1[18]~66\ & VCC))
-- \inst6|n_x1[19]~68\ = CARRY((\inst6|n_x1\(19) & !\inst6|n_x1[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(19),
	datad => VCC,
	cin => \inst6|n_x1[18]~66\,
	combout => \inst6|n_x1[19]~67_combout\,
	cout => \inst6|n_x1[19]~68\);

-- Location: FF_X13_Y42_N7
\inst6|n_x1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[19]~67_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(19));

-- Location: LCCOMB_X13_Y42_N8
\inst6|n_x1[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[20]~69_combout\ = (\inst6|n_x1\(20) & (!\inst6|n_x1[19]~68\)) # (!\inst6|n_x1\(20) & ((\inst6|n_x1[19]~68\) # (GND)))
-- \inst6|n_x1[20]~70\ = CARRY((!\inst6|n_x1[19]~68\) # (!\inst6|n_x1\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(20),
	datad => VCC,
	cin => \inst6|n_x1[19]~68\,
	combout => \inst6|n_x1[20]~69_combout\,
	cout => \inst6|n_x1[20]~70\);

-- Location: FF_X13_Y42_N9
\inst6|n_x1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[20]~69_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(20));

-- Location: LCCOMB_X13_Y42_N10
\inst6|n_x1[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[21]~71_combout\ = (\inst6|n_x1\(21) & (\inst6|n_x1[20]~70\ $ (GND))) # (!\inst6|n_x1\(21) & (!\inst6|n_x1[20]~70\ & VCC))
-- \inst6|n_x1[21]~72\ = CARRY((\inst6|n_x1\(21) & !\inst6|n_x1[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(21),
	datad => VCC,
	cin => \inst6|n_x1[20]~70\,
	combout => \inst6|n_x1[21]~71_combout\,
	cout => \inst6|n_x1[21]~72\);

-- Location: FF_X13_Y42_N11
\inst6|n_x1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[21]~71_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(21));

-- Location: LCCOMB_X13_Y42_N12
\inst6|n_x1[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[22]~73_combout\ = (\inst6|n_x1\(22) & (!\inst6|n_x1[21]~72\)) # (!\inst6|n_x1\(22) & ((\inst6|n_x1[21]~72\) # (GND)))
-- \inst6|n_x1[22]~74\ = CARRY((!\inst6|n_x1[21]~72\) # (!\inst6|n_x1\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(22),
	datad => VCC,
	cin => \inst6|n_x1[21]~72\,
	combout => \inst6|n_x1[22]~73_combout\,
	cout => \inst6|n_x1[22]~74\);

-- Location: FF_X13_Y42_N13
\inst6|n_x1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[22]~73_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(22));

-- Location: LCCOMB_X13_Y42_N14
\inst6|n_x1[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[23]~75_combout\ = (\inst6|n_x1\(23) & (\inst6|n_x1[22]~74\ $ (GND))) # (!\inst6|n_x1\(23) & (!\inst6|n_x1[22]~74\ & VCC))
-- \inst6|n_x1[23]~76\ = CARRY((\inst6|n_x1\(23) & !\inst6|n_x1[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(23),
	datad => VCC,
	cin => \inst6|n_x1[22]~74\,
	combout => \inst6|n_x1[23]~75_combout\,
	cout => \inst6|n_x1[23]~76\);

-- Location: FF_X13_Y42_N15
\inst6|n_x1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[23]~75_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(23));

-- Location: LCCOMB_X13_Y42_N16
\inst6|n_x1[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[24]~77_combout\ = (\inst6|n_x1\(24) & (!\inst6|n_x1[23]~76\)) # (!\inst6|n_x1\(24) & ((\inst6|n_x1[23]~76\) # (GND)))
-- \inst6|n_x1[24]~78\ = CARRY((!\inst6|n_x1[23]~76\) # (!\inst6|n_x1\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(24),
	datad => VCC,
	cin => \inst6|n_x1[23]~76\,
	combout => \inst6|n_x1[24]~77_combout\,
	cout => \inst6|n_x1[24]~78\);

-- Location: FF_X13_Y42_N17
\inst6|n_x1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[24]~77_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(24));

-- Location: LCCOMB_X13_Y42_N18
\inst6|n_x1[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[25]~79_combout\ = (\inst6|n_x1\(25) & (\inst6|n_x1[24]~78\ $ (GND))) # (!\inst6|n_x1\(25) & (!\inst6|n_x1[24]~78\ & VCC))
-- \inst6|n_x1[25]~80\ = CARRY((\inst6|n_x1\(25) & !\inst6|n_x1[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(25),
	datad => VCC,
	cin => \inst6|n_x1[24]~78\,
	combout => \inst6|n_x1[25]~79_combout\,
	cout => \inst6|n_x1[25]~80\);

-- Location: FF_X13_Y42_N19
\inst6|n_x1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[25]~79_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(25));

-- Location: LCCOMB_X13_Y42_N20
\inst6|n_x1[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[26]~81_combout\ = (\inst6|n_x1\(26) & (!\inst6|n_x1[25]~80\)) # (!\inst6|n_x1\(26) & ((\inst6|n_x1[25]~80\) # (GND)))
-- \inst6|n_x1[26]~82\ = CARRY((!\inst6|n_x1[25]~80\) # (!\inst6|n_x1\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(26),
	datad => VCC,
	cin => \inst6|n_x1[25]~80\,
	combout => \inst6|n_x1[26]~81_combout\,
	cout => \inst6|n_x1[26]~82\);

-- Location: FF_X13_Y42_N21
\inst6|n_x1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[26]~81_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(26));

-- Location: LCCOMB_X13_Y42_N22
\inst6|n_x1[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[27]~83_combout\ = (\inst6|n_x1\(27) & (\inst6|n_x1[26]~82\ $ (GND))) # (!\inst6|n_x1\(27) & (!\inst6|n_x1[26]~82\ & VCC))
-- \inst6|n_x1[27]~84\ = CARRY((\inst6|n_x1\(27) & !\inst6|n_x1[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(27),
	datad => VCC,
	cin => \inst6|n_x1[26]~82\,
	combout => \inst6|n_x1[27]~83_combout\,
	cout => \inst6|n_x1[27]~84\);

-- Location: FF_X13_Y42_N23
\inst6|n_x1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[27]~83_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(27));

-- Location: LCCOMB_X13_Y42_N24
\inst6|n_x1[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[28]~85_combout\ = (\inst6|n_x1\(28) & (!\inst6|n_x1[27]~84\)) # (!\inst6|n_x1\(28) & ((\inst6|n_x1[27]~84\) # (GND)))
-- \inst6|n_x1[28]~86\ = CARRY((!\inst6|n_x1[27]~84\) # (!\inst6|n_x1\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(28),
	datad => VCC,
	cin => \inst6|n_x1[27]~84\,
	combout => \inst6|n_x1[28]~85_combout\,
	cout => \inst6|n_x1[28]~86\);

-- Location: FF_X13_Y42_N25
\inst6|n_x1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[28]~85_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(28));

-- Location: LCCOMB_X13_Y42_N26
\inst6|n_x1[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[29]~87_combout\ = (\inst6|n_x1\(29) & (\inst6|n_x1[28]~86\ $ (GND))) # (!\inst6|n_x1\(29) & (!\inst6|n_x1[28]~86\ & VCC))
-- \inst6|n_x1[29]~88\ = CARRY((\inst6|n_x1\(29) & !\inst6|n_x1[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(29),
	datad => VCC,
	cin => \inst6|n_x1[28]~86\,
	combout => \inst6|n_x1[29]~87_combout\,
	cout => \inst6|n_x1[29]~88\);

-- Location: FF_X13_Y42_N27
\inst6|n_x1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[29]~87_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(29));

-- Location: LCCOMB_X13_Y42_N28
\inst6|n_x1[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[30]~89_combout\ = (\inst6|n_x1\(30) & (!\inst6|n_x1[29]~88\)) # (!\inst6|n_x1\(30) & ((\inst6|n_x1[29]~88\) # (GND)))
-- \inst6|n_x1[30]~90\ = CARRY((!\inst6|n_x1[29]~88\) # (!\inst6|n_x1\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(30),
	datad => VCC,
	cin => \inst6|n_x1[29]~88\,
	combout => \inst6|n_x1[30]~89_combout\,
	cout => \inst6|n_x1[30]~90\);

-- Location: FF_X13_Y42_N29
\inst6|n_x1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[30]~89_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(30));

-- Location: LCCOMB_X13_Y42_N30
\inst6|n_x1[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|n_x1[31]~91_combout\ = \inst6|n_x1\(31) $ (!\inst6|n_x1[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(31),
	cin => \inst6|n_x1[30]~90\,
	combout => \inst6|n_x1[31]~91_combout\);

-- Location: FF_X13_Y42_N31
\inst6|n_x1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|n_x1[31]~91_combout\,
	clrn => \inst6|ALT_INV_comb~0_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|n_x1\(31));

-- Location: LCCOMB_X14_Y42_N16
\inst6|LessThan38~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~31_combout\ = (\inst1|column\(31) & \inst6|n_x1\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|column\(31),
	datad => \inst6|n_x1\(31),
	combout => \inst6|LessThan38~31_combout\);

-- Location: LCCOMB_X14_Y42_N28
\inst6|LessThan38~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~29_combout\ = (!\inst6|n_x1\(28) & (!\inst6|n_x1\(26) & (!\inst6|n_x1\(27) & !\inst6|n_x1\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(28),
	datab => \inst6|n_x1\(26),
	datac => \inst6|n_x1\(27),
	datad => \inst6|n_x1\(25),
	combout => \inst6|LessThan38~29_combout\);

-- Location: LCCOMB_X14_Y42_N22
\inst6|LessThan38~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~30_combout\ = (!\inst6|n_x1\(30) & (!\inst6|n_x1\(29) & \inst6|LessThan38~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|n_x1\(30),
	datac => \inst6|n_x1\(29),
	datad => \inst6|LessThan38~29_combout\,
	combout => \inst6|LessThan38~30_combout\);

-- Location: LCCOMB_X13_Y43_N0
\inst6|LessThan38~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~25_combout\ = (!\inst6|n_x1\(15) & (!\inst6|n_x1\(16) & (!\inst6|n_x1\(13) & !\inst6|n_x1\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(15),
	datab => \inst6|n_x1\(16),
	datac => \inst6|n_x1\(13),
	datad => \inst6|n_x1\(14),
	combout => \inst6|LessThan38~25_combout\);

-- Location: LCCOMB_X14_Y42_N24
\inst6|LessThan38~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~27_combout\ = (!\inst6|n_x1\(21) & (!\inst6|n_x1\(23) & (!\inst6|n_x1\(24) & !\inst6|n_x1\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(21),
	datab => \inst6|n_x1\(23),
	datac => \inst6|n_x1\(24),
	datad => \inst6|n_x1\(22),
	combout => \inst6|LessThan38~27_combout\);

-- Location: LCCOMB_X14_Y42_N14
\inst6|LessThan38~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~26_combout\ = (!\inst6|n_x1\(20) & (!\inst6|n_x1\(19) & (!\inst6|n_x1\(18) & !\inst6|n_x1\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(20),
	datab => \inst6|n_x1\(19),
	datac => \inst6|n_x1\(18),
	datad => \inst6|n_x1\(17),
	combout => \inst6|LessThan38~26_combout\);

-- Location: LCCOMB_X14_Y41_N6
\inst6|LessThan38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~1_cout\ = CARRY((!\inst6|n_x2\(0) & !\inst1|column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(0),
	datab => \inst1|column\(0),
	datad => VCC,
	cout => \inst6|LessThan38~1_cout\);

-- Location: LCCOMB_X14_Y41_N8
\inst6|LessThan38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~3_cout\ = CARRY((\inst1|column\(1) & (\inst6|n_x1\(1) & !\inst6|LessThan38~1_cout\)) # (!\inst1|column\(1) & ((\inst6|n_x1\(1)) # (!\inst6|LessThan38~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(1),
	datab => \inst6|n_x1\(1),
	datad => VCC,
	cin => \inst6|LessThan38~1_cout\,
	cout => \inst6|LessThan38~3_cout\);

-- Location: LCCOMB_X14_Y41_N10
\inst6|LessThan38~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~5_cout\ = CARRY((\inst1|column\(2) & ((!\inst6|LessThan38~3_cout\) # (!\inst6|n_x1\(2)))) # (!\inst1|column\(2) & (!\inst6|n_x1\(2) & !\inst6|LessThan38~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(2),
	datab => \inst6|n_x1\(2),
	datad => VCC,
	cin => \inst6|LessThan38~3_cout\,
	cout => \inst6|LessThan38~5_cout\);

-- Location: LCCOMB_X14_Y41_N12
\inst6|LessThan38~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~7_cout\ = CARRY((\inst1|column\(3) & (\inst6|n_x1\(3) & !\inst6|LessThan38~5_cout\)) # (!\inst1|column\(3) & ((\inst6|n_x1\(3)) # (!\inst6|LessThan38~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(3),
	datab => \inst6|n_x1\(3),
	datad => VCC,
	cin => \inst6|LessThan38~5_cout\,
	cout => \inst6|LessThan38~7_cout\);

-- Location: LCCOMB_X14_Y41_N14
\inst6|LessThan38~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~9_cout\ = CARRY((\inst6|n_x1\(4) & (\inst1|column\(4) & !\inst6|LessThan38~7_cout\)) # (!\inst6|n_x1\(4) & ((\inst1|column\(4)) # (!\inst6|LessThan38~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(4),
	datab => \inst1|column\(4),
	datad => VCC,
	cin => \inst6|LessThan38~7_cout\,
	cout => \inst6|LessThan38~9_cout\);

-- Location: LCCOMB_X14_Y41_N16
\inst6|LessThan38~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~11_cout\ = CARRY((\inst1|column\(5) & (\inst6|n_x1\(5) & !\inst6|LessThan38~9_cout\)) # (!\inst1|column\(5) & ((\inst6|n_x1\(5)) # (!\inst6|LessThan38~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst6|n_x1\(5),
	datad => VCC,
	cin => \inst6|LessThan38~9_cout\,
	cout => \inst6|LessThan38~11_cout\);

-- Location: LCCOMB_X14_Y41_N18
\inst6|LessThan38~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~13_cout\ = CARRY((\inst6|n_x1\(6) & (\inst1|column\(6) & !\inst6|LessThan38~11_cout\)) # (!\inst6|n_x1\(6) & ((\inst1|column\(6)) # (!\inst6|LessThan38~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(6),
	datab => \inst1|column\(6),
	datad => VCC,
	cin => \inst6|LessThan38~11_cout\,
	cout => \inst6|LessThan38~13_cout\);

-- Location: LCCOMB_X14_Y41_N20
\inst6|LessThan38~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~15_cout\ = CARRY((\inst6|n_x1\(7) & ((!\inst6|LessThan38~13_cout\) # (!\inst1|column\(7)))) # (!\inst6|n_x1\(7) & (!\inst1|column\(7) & !\inst6|LessThan38~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(7),
	datab => \inst1|column\(7),
	datad => VCC,
	cin => \inst6|LessThan38~13_cout\,
	cout => \inst6|LessThan38~15_cout\);

-- Location: LCCOMB_X14_Y41_N22
\inst6|LessThan38~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~17_cout\ = CARRY((\inst1|column\(8) & ((!\inst6|LessThan38~15_cout\) # (!\inst6|n_x1\(8)))) # (!\inst1|column\(8) & (!\inst6|n_x1\(8) & !\inst6|LessThan38~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(8),
	datab => \inst6|n_x1\(8),
	datad => VCC,
	cin => \inst6|LessThan38~15_cout\,
	cout => \inst6|LessThan38~17_cout\);

-- Location: LCCOMB_X14_Y41_N24
\inst6|LessThan38~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~19_cout\ = CARRY((\inst1|column\(9) & (\inst6|n_x1\(9) & !\inst6|LessThan38~17_cout\)) # (!\inst1|column\(9) & ((\inst6|n_x1\(9)) # (!\inst6|LessThan38~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(9),
	datab => \inst6|n_x1\(9),
	datad => VCC,
	cin => \inst6|LessThan38~17_cout\,
	cout => \inst6|LessThan38~19_cout\);

-- Location: LCCOMB_X14_Y41_N26
\inst6|LessThan38~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~21_cout\ = CARRY((\inst1|column\(10) & ((!\inst6|LessThan38~19_cout\) # (!\inst6|n_x1\(10)))) # (!\inst1|column\(10) & (!\inst6|n_x1\(10) & !\inst6|LessThan38~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst6|n_x1\(10),
	datad => VCC,
	cin => \inst6|LessThan38~19_cout\,
	cout => \inst6|LessThan38~21_cout\);

-- Location: LCCOMB_X14_Y41_N28
\inst6|LessThan38~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~22_combout\ = (\inst6|n_x1\(11) & (\inst6|LessThan38~21_cout\ & \inst1|column\(11))) # (!\inst6|n_x1\(11) & ((\inst6|LessThan38~21_cout\) # (\inst1|column\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x1\(11),
	datad => \inst1|column\(11),
	cin => \inst6|LessThan38~21_cout\,
	combout => \inst6|LessThan38~22_combout\);

-- Location: LCCOMB_X14_Y42_N12
\inst6|LessThan38~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~24_combout\ = (\inst6|LessThan38~22_combout\ & (!\inst6|n_x1\(12) & (\inst1|column\(31) $ (\inst6|n_x1\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan38~22_combout\,
	datab => \inst1|column\(31),
	datac => \inst6|n_x1\(12),
	datad => \inst6|n_x1\(31),
	combout => \inst6|LessThan38~24_combout\);

-- Location: LCCOMB_X14_Y42_N18
\inst6|LessThan38~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan38~28_combout\ = (\inst6|LessThan38~25_combout\ & (\inst6|LessThan38~27_combout\ & (\inst6|LessThan38~26_combout\ & \inst6|LessThan38~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan38~25_combout\,
	datab => \inst6|LessThan38~27_combout\,
	datac => \inst6|LessThan38~26_combout\,
	datad => \inst6|LessThan38~24_combout\,
	combout => \inst6|LessThan38~28_combout\);

-- Location: LCCOMB_X14_Y42_N2
\inst6|process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~20_combout\ = (\inst6|process_0~19_combout\) # ((!\inst6|LessThan38~31_combout\ & ((!\inst6|LessThan38~28_combout\) # (!\inst6|LessThan38~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~19_combout\,
	datab => \inst6|LessThan38~31_combout\,
	datac => \inst6|LessThan38~30_combout\,
	datad => \inst6|LessThan38~28_combout\,
	combout => \inst6|process_0~20_combout\);

-- Location: LCCOMB_X14_Y42_N20
\inst6|process_0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~28_combout\ = (!\inst1|column\(11) & (\inst6|process_0~18_combout\ & \inst1|column\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(11),
	datab => \inst6|process_0~18_combout\,
	datac => \inst1|column\(31),
	combout => \inst6|process_0~28_combout\);

-- Location: LCCOMB_X14_Y43_N28
\inst6|process_0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~27_combout\ = (\inst1|row\(6)) # (((\inst1|column\(10)) # (\inst1|row\(8))) # (!\inst1|row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(6),
	datab => \inst1|row\(7),
	datac => \inst1|column\(10),
	datad => \inst1|row\(8),
	combout => \inst6|process_0~27_combout\);

-- Location: LCCOMB_X12_Y41_N24
\inst6|process_0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~29_combout\ = (\inst1|column\(9) & ((\inst1|column\(6)) # ((\inst1|column\(5)) # (\inst1|column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(6),
	datab => \inst1|column\(5),
	datac => \inst1|column\(7),
	datad => \inst1|column\(9),
	combout => \inst6|process_0~29_combout\);

-- Location: LCCOMB_X13_Y41_N22
\inst6|process_0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~30_combout\ = ((\inst6|process_0~27_combout\) # ((\inst1|column\(8) & \inst6|process_0~29_combout\))) # (!\inst6|process_0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~28_combout\,
	datab => \inst6|process_0~27_combout\,
	datac => \inst1|column\(8),
	datad => \inst6|process_0~29_combout\,
	combout => \inst6|process_0~30_combout\);

-- Location: LCCOMB_X14_Y40_N8
\inst6|LessThan37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan37~1_cout\ = CARRY((\inst1|column\(0) & !\inst6|n_x2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(0),
	datab => \inst6|n_x2\(0),
	datad => VCC,
	cout => \inst6|LessThan37~1_cout\);

-- Location: LCCOMB_X14_Y40_N10
\inst6|LessThan37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan37~3_cout\ = CARRY((\inst6|n_x2\(1) & (\inst1|column\(1) & !\inst6|LessThan37~1_cout\)) # (!\inst6|n_x2\(1) & ((\inst1|column\(1)) # (!\inst6|LessThan37~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(1),
	datab => \inst1|column\(1),
	datad => VCC,
	cin => \inst6|LessThan37~1_cout\,
	cout => \inst6|LessThan37~3_cout\);

-- Location: LCCOMB_X14_Y40_N12
\inst6|LessThan37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan37~5_cout\ = CARRY((\inst1|column\(2) & (\inst6|n_x2\(2) & !\inst6|LessThan37~3_cout\)) # (!\inst1|column\(2) & ((\inst6|n_x2\(2)) # (!\inst6|LessThan37~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(2),
	datab => \inst6|n_x2\(2),
	datad => VCC,
	cin => \inst6|LessThan37~3_cout\,
	cout => \inst6|LessThan37~5_cout\);

-- Location: LCCOMB_X14_Y40_N14
\inst6|LessThan37~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan37~7_cout\ = CARRY((\inst1|column\(3) & ((\inst6|n_x2\(3)) # (!\inst6|LessThan37~5_cout\))) # (!\inst1|column\(3) & (\inst6|n_x2\(3) & !\inst6|LessThan37~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(3),
	datab => \inst6|n_x2\(3),
	datad => VCC,
	cin => \inst6|LessThan37~5_cout\,
	cout => \inst6|LessThan37~7_cout\);

-- Location: LCCOMB_X14_Y40_N16
\inst6|LessThan37~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan37~9_cout\ = CARRY((\inst6|n_x2\(4) & (!\inst1|column\(4) & !\inst6|LessThan37~7_cout\)) # (!\inst6|n_x2\(4) & ((!\inst6|LessThan37~7_cout\) # (!\inst1|column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(4),
	datab => \inst1|column\(4),
	datad => VCC,
	cin => \inst6|LessThan37~7_cout\,
	cout => \inst6|LessThan37~9_cout\);

-- Location: LCCOMB_X14_Y40_N18
\inst6|LessThan37~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan37~11_cout\ = CARRY((\inst6|n_x2\(5) & (\inst1|column\(5) & !\inst6|LessThan37~9_cout\)) # (!\inst6|n_x2\(5) & ((\inst1|column\(5)) # (!\inst6|LessThan37~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(5),
	datab => \inst1|column\(5),
	datad => VCC,
	cin => \inst6|LessThan37~9_cout\,
	cout => \inst6|LessThan37~11_cout\);

-- Location: LCCOMB_X14_Y40_N20
\inst6|LessThan37~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan37~13_cout\ = CARRY((\inst1|column\(6) & (\inst6|n_x2\(6) & !\inst6|LessThan37~11_cout\)) # (!\inst1|column\(6) & ((\inst6|n_x2\(6)) # (!\inst6|LessThan37~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(6),
	datab => \inst6|n_x2\(6),
	datad => VCC,
	cin => \inst6|LessThan37~11_cout\,
	cout => \inst6|LessThan37~13_cout\);

-- Location: LCCOMB_X14_Y40_N22
\inst6|LessThan37~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan37~15_cout\ = CARRY((\inst1|column\(7) & ((!\inst6|LessThan37~13_cout\) # (!\inst6|n_x2\(7)))) # (!\inst1|column\(7) & (!\inst6|n_x2\(7) & !\inst6|LessThan37~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(7),
	datab => \inst6|n_x2\(7),
	datad => VCC,
	cin => \inst6|LessThan37~13_cout\,
	cout => \inst6|LessThan37~15_cout\);

-- Location: LCCOMB_X14_Y40_N24
\inst6|LessThan37~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan37~17_cout\ = CARRY((\inst6|n_x2\(8) & ((!\inst6|LessThan37~15_cout\) # (!\inst1|column\(8)))) # (!\inst6|n_x2\(8) & (!\inst1|column\(8) & !\inst6|LessThan37~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(8),
	datab => \inst1|column\(8),
	datad => VCC,
	cin => \inst6|LessThan37~15_cout\,
	cout => \inst6|LessThan37~17_cout\);

-- Location: LCCOMB_X14_Y40_N26
\inst6|LessThan37~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan37~19_cout\ = CARRY((\inst6|n_x2\(9) & (\inst1|column\(9) & !\inst6|LessThan37~17_cout\)) # (!\inst6|n_x2\(9) & ((\inst1|column\(9)) # (!\inst6|LessThan37~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(9),
	datab => \inst1|column\(9),
	datad => VCC,
	cin => \inst6|LessThan37~17_cout\,
	cout => \inst6|LessThan37~19_cout\);

-- Location: LCCOMB_X14_Y40_N28
\inst6|LessThan37~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan37~21_cout\ = CARRY((\inst1|column\(10) & (\inst6|n_x2\(10) & !\inst6|LessThan37~19_cout\)) # (!\inst1|column\(10) & ((\inst6|n_x2\(10)) # (!\inst6|LessThan37~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst6|n_x2\(10),
	datad => VCC,
	cin => \inst6|LessThan37~19_cout\,
	cout => \inst6|LessThan37~21_cout\);

-- Location: LCCOMB_X14_Y40_N30
\inst6|LessThan37~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan37~22_combout\ = (\inst6|n_x2\(11) & ((\inst6|LessThan37~21_cout\) # (!\inst1|column\(11)))) # (!\inst6|n_x2\(11) & (\inst6|LessThan37~21_cout\ & !\inst1|column\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|n_x2\(11),
	datad => \inst1|column\(11),
	cin => \inst6|LessThan37~21_cout\,
	combout => \inst6|LessThan37~22_combout\);

-- Location: LCCOMB_X14_Y38_N14
\inst6|process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~21_combout\ = (!\inst6|LessThan37~22_combout\ & \inst6|LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan37~22_combout\,
	datad => \inst6|LessThan10~5_combout\,
	combout => \inst6|process_0~21_combout\);

-- Location: LCCOMB_X18_Y43_N10
\inst6|LessThan35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan35~0_combout\ = (\inst1|row\(4) & ((\inst1|row\(3)) # ((\inst1|row\(1) & \inst1|row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(1),
	datab => \inst1|row\(3),
	datac => \inst1|row\(4),
	datad => \inst1|row\(2),
	combout => \inst6|LessThan35~0_combout\);

-- Location: LCCOMB_X18_Y43_N20
\inst6|LessThan35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan35~1_combout\ = ((!\inst1|row\(5) & (!\inst6|LessThan35~0_combout\ & !\inst1|row\(6)))) # (!\inst1|row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst1|row\(7),
	datac => \inst6|LessThan35~0_combout\,
	datad => \inst1|row\(6),
	combout => \inst6|LessThan35~1_combout\);

-- Location: LCCOMB_X14_Y41_N2
\inst6|process_0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~22_combout\ = ((\inst6|process_0~21_combout\ & ((\inst1|column\(31)) # (\inst6|n_x2\(31)))) # (!\inst6|process_0~21_combout\ & (\inst1|column\(31) & \inst6|n_x2\(31)))) # (!\inst6|LessThan35~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~21_combout\,
	datab => \inst6|LessThan35~1_combout\,
	datac => \inst1|column\(31),
	datad => \inst6|n_x2\(31),
	combout => \inst6|process_0~22_combout\);

-- Location: LCCOMB_X13_Y41_N16
\inst6|green~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green~1_combout\ = (\inst6|process_0~26_combout\ & ((\inst6|process_0~20_combout\) # ((\inst6|process_0~22_combout\)))) # (!\inst6|process_0~26_combout\ & (\inst6|process_0~30_combout\ & ((\inst6|process_0~20_combout\) # 
-- (\inst6|process_0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~26_combout\,
	datab => \inst6|process_0~20_combout\,
	datac => \inst6|process_0~30_combout\,
	datad => \inst6|process_0~22_combout\,
	combout => \inst6|green~1_combout\);

-- Location: LCCOMB_X11_Y40_N4
\inst6|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~4_combout\ = (\inst6|c_x2\(2) & (\inst6|Add6~3\ $ (GND))) # (!\inst6|c_x2\(2) & ((GND) # (!\inst6|Add6~3\)))
-- \inst6|Add6~5\ = CARRY((!\inst6|Add6~3\) # (!\inst6|c_x2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(2),
	datad => VCC,
	cin => \inst6|Add6~3\,
	combout => \inst6|Add6~4_combout\,
	cout => \inst6|Add6~5\);

-- Location: LCCOMB_X7_Y36_N16
\inst6|Add6~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~74_combout\ = (!\inst6|Add6~4_combout\ & (!\inst6|Add5~62_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~4_combout\,
	datab => \inst6|Add5~62_combout\,
	datac => \inst6|LessThan3~3_combout\,
	datad => \inst6|LessThan3~8_combout\,
	combout => \inst6|Add6~74_combout\);

-- Location: FF_X7_Y36_N17
\inst6|c_x2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~74_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(2));

-- Location: LCCOMB_X11_Y40_N6
\inst6|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~6_combout\ = (\inst6|c_x2\(3) & (!\inst6|Add6~5\)) # (!\inst6|c_x2\(3) & ((\inst6|Add6~5\) # (GND)))
-- \inst6|Add6~7\ = CARRY((!\inst6|Add6~5\) # (!\inst6|c_x2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(3),
	datad => VCC,
	cin => \inst6|Add6~5\,
	combout => \inst6|Add6~6_combout\,
	cout => \inst6|Add6~7\);

-- Location: LCCOMB_X12_Y40_N24
\inst6|Add6~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~73_combout\ = (\inst6|Add5~62_combout\) # ((\inst6|Add6~6_combout\) # ((\inst6|LessThan3~3_combout\ & \inst6|LessThan3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~3_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|Add6~6_combout\,
	combout => \inst6|Add6~73_combout\);

-- Location: FF_X12_Y40_N25
\inst6|c_x2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~73_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(3));

-- Location: LCCOMB_X11_Y40_N8
\inst6|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~8_combout\ = (\inst6|c_x2\(4) & (\inst6|Add6~7\ $ (GND))) # (!\inst6|c_x2\(4) & ((GND) # (!\inst6|Add6~7\)))
-- \inst6|Add6~9\ = CARRY((!\inst6|Add6~7\) # (!\inst6|c_x2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(4),
	datad => VCC,
	cin => \inst6|Add6~7\,
	combout => \inst6|Add6~8_combout\,
	cout => \inst6|Add6~9\);

-- Location: LCCOMB_X12_Y40_N22
\inst6|Add6~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~72_combout\ = ((\inst6|Add5~62_combout\) # ((\inst6|LessThan3~3_combout\ & \inst6|LessThan3~8_combout\))) # (!\inst6|Add6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~8_combout\,
	datab => \inst6|LessThan3~3_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|Add5~62_combout\,
	combout => \inst6|Add6~72_combout\);

-- Location: FF_X12_Y40_N23
\inst6|c_x2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~72_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(4));

-- Location: LCCOMB_X11_Y40_N10
\inst6|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~10_combout\ = (\inst6|c_x2\(5) & (\inst6|Add6~9\ & VCC)) # (!\inst6|c_x2\(5) & (!\inst6|Add6~9\))
-- \inst6|Add6~11\ = CARRY((!\inst6|c_x2\(5) & !\inst6|Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(5),
	datad => VCC,
	cin => \inst6|Add6~9\,
	combout => \inst6|Add6~10_combout\,
	cout => \inst6|Add6~11\);

-- Location: LCCOMB_X11_Y38_N16
\inst6|Add6~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~71_combout\ = (\inst6|Add5~62_combout\) # ((\inst6|Add6~10_combout\) # ((\inst6|LessThan3~3_combout\ & \inst6|LessThan3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~3_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|Add6~10_combout\,
	combout => \inst6|Add6~71_combout\);

-- Location: FF_X11_Y38_N17
\inst6|c_x2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~71_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(5));

-- Location: LCCOMB_X11_Y40_N12
\inst6|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~12_combout\ = (\inst6|c_x2\(6) & ((GND) # (!\inst6|Add6~11\))) # (!\inst6|c_x2\(6) & (\inst6|Add6~11\ $ (GND)))
-- \inst6|Add6~13\ = CARRY((\inst6|c_x2\(6)) # (!\inst6|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(6),
	datad => VCC,
	cin => \inst6|Add6~11\,
	combout => \inst6|Add6~12_combout\,
	cout => \inst6|Add6~13\);

-- Location: LCCOMB_X12_Y40_N4
\inst6|Add6~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~70_combout\ = (\inst6|Add5~62_combout\) # ((\inst6|Add6~12_combout\) # ((\inst6|LessThan3~3_combout\ & \inst6|LessThan3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~3_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|Add6~12_combout\,
	combout => \inst6|Add6~70_combout\);

-- Location: FF_X12_Y40_N5
\inst6|c_x2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~70_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(6));

-- Location: LCCOMB_X11_Y40_N14
\inst6|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~14_combout\ = (\inst6|c_x2\(7) & (\inst6|Add6~13\ & VCC)) # (!\inst6|c_x2\(7) & (!\inst6|Add6~13\))
-- \inst6|Add6~15\ = CARRY((!\inst6|c_x2\(7) & !\inst6|Add6~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(7),
	datad => VCC,
	cin => \inst6|Add6~13\,
	combout => \inst6|Add6~14_combout\,
	cout => \inst6|Add6~15\);

-- Location: LCCOMB_X12_Y40_N10
\inst6|Add6~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~69_combout\ = (\inst6|Add6~14_combout\ & (!\inst6|Add5~62_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add6~14_combout\,
	datab => \inst6|LessThan3~3_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|Add5~62_combout\,
	combout => \inst6|Add6~69_combout\);

-- Location: FF_X12_Y40_N11
\inst6|c_x2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~69_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(7));

-- Location: LCCOMB_X11_Y40_N16
\inst6|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~16_combout\ = (\inst6|c_x2\(8) & (\inst6|Add6~15\ $ (GND))) # (!\inst6|c_x2\(8) & ((GND) # (!\inst6|Add6~15\)))
-- \inst6|Add6~17\ = CARRY((!\inst6|Add6~15\) # (!\inst6|c_x2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(8),
	datad => VCC,
	cin => \inst6|Add6~15\,
	combout => \inst6|Add6~16_combout\,
	cout => \inst6|Add6~17\);

-- Location: LCCOMB_X12_Y40_N8
\inst6|Add6~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~68_combout\ = (!\inst6|Add5~62_combout\ & (!\inst6|Add6~16_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add6~16_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|Add6~68_combout\);

-- Location: FF_X12_Y40_N9
\inst6|c_x2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~68_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(8));

-- Location: LCCOMB_X11_Y40_N18
\inst6|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~18_combout\ = (\inst6|c_x2\(9) & (\inst6|Add6~17\ & VCC)) # (!\inst6|c_x2\(9) & (!\inst6|Add6~17\))
-- \inst6|Add6~19\ = CARRY((!\inst6|c_x2\(9) & !\inst6|Add6~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(9),
	datad => VCC,
	cin => \inst6|Add6~17\,
	combout => \inst6|Add6~18_combout\,
	cout => \inst6|Add6~19\);

-- Location: LCCOMB_X10_Y38_N2
\inst6|Add6~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~67_combout\ = (\inst6|Add5~62_combout\) # ((\inst6|Add6~18_combout\) # ((\inst6|LessThan3~8_combout\ & \inst6|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|LessThan3~3_combout\,
	datad => \inst6|Add6~18_combout\,
	combout => \inst6|Add6~67_combout\);

-- Location: FF_X10_Y38_N3
\inst6|c_x2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~67_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(9));

-- Location: LCCOMB_X11_Y40_N20
\inst6|Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~20_combout\ = (\inst6|c_x2\(10) & (\inst6|Add6~19\ $ (GND))) # (!\inst6|c_x2\(10) & ((GND) # (!\inst6|Add6~19\)))
-- \inst6|Add6~21\ = CARRY((!\inst6|Add6~19\) # (!\inst6|c_x2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(10),
	datad => VCC,
	cin => \inst6|Add6~19\,
	combout => \inst6|Add6~20_combout\,
	cout => \inst6|Add6~21\);

-- Location: LCCOMB_X12_Y40_N30
\inst6|Add6~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~66_combout\ = (!\inst6|Add5~62_combout\ & (!\inst6|Add6~20_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|Add6~20_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|Add6~66_combout\);

-- Location: FF_X12_Y40_N31
\inst6|c_x2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~66_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(10));

-- Location: LCCOMB_X11_Y40_N22
\inst6|Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~22_combout\ = (\inst6|c_x2\(11) & (\inst6|Add6~21\ & VCC)) # (!\inst6|c_x2\(11) & (!\inst6|Add6~21\))
-- \inst6|Add6~23\ = CARRY((!\inst6|c_x2\(11) & !\inst6|Add6~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(11),
	datad => VCC,
	cin => \inst6|Add6~21\,
	combout => \inst6|Add6~22_combout\,
	cout => \inst6|Add6~23\);

-- Location: LCCOMB_X10_Y38_N16
\inst6|Add6~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~65_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~22_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|LessThan3~3_combout\,
	datad => \inst6|Add6~22_combout\,
	combout => \inst6|Add6~65_combout\);

-- Location: FF_X10_Y38_N17
\inst6|c_x2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~65_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(11));

-- Location: LCCOMB_X11_Y40_N24
\inst6|Add6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~24_combout\ = (\inst6|c_x2\(12) & ((GND) # (!\inst6|Add6~23\))) # (!\inst6|c_x2\(12) & (\inst6|Add6~23\ $ (GND)))
-- \inst6|Add6~25\ = CARRY((\inst6|c_x2\(12)) # (!\inst6|Add6~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(12),
	datad => VCC,
	cin => \inst6|Add6~23\,
	combout => \inst6|Add6~24_combout\,
	cout => \inst6|Add6~25\);

-- Location: LCCOMB_X12_Y40_N20
\inst6|Add6~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~77_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~24_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|Add6~24_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|Add6~77_combout\);

-- Location: FF_X12_Y40_N21
\inst6|c_x2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~77_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(12));

-- Location: LCCOMB_X11_Y40_N26
\inst6|Add6~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~26_combout\ = (\inst6|c_x2\(13) & (\inst6|Add6~25\ & VCC)) # (!\inst6|c_x2\(13) & (!\inst6|Add6~25\))
-- \inst6|Add6~27\ = CARRY((!\inst6|c_x2\(13) & !\inst6|Add6~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(13),
	datad => VCC,
	cin => \inst6|Add6~25\,
	combout => \inst6|Add6~26_combout\,
	cout => \inst6|Add6~27\);

-- Location: LCCOMB_X12_Y40_N6
\inst6|Add6~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~78_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~26_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~3_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|Add6~26_combout\,
	combout => \inst6|Add6~78_combout\);

-- Location: FF_X12_Y40_N7
\inst6|c_x2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~78_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(13));

-- Location: LCCOMB_X11_Y40_N28
\inst6|Add6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~28_combout\ = (\inst6|c_x2\(14) & ((GND) # (!\inst6|Add6~27\))) # (!\inst6|c_x2\(14) & (\inst6|Add6~27\ $ (GND)))
-- \inst6|Add6~29\ = CARRY((\inst6|c_x2\(14)) # (!\inst6|Add6~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(14),
	datad => VCC,
	cin => \inst6|Add6~27\,
	combout => \inst6|Add6~28_combout\,
	cout => \inst6|Add6~29\);

-- Location: LCCOMB_X12_Y40_N0
\inst6|Add6~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~79_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~28_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|Add6~28_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|Add6~79_combout\);

-- Location: FF_X12_Y40_N1
\inst6|c_x2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~79_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(14));

-- Location: LCCOMB_X11_Y40_N30
\inst6|Add6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~30_combout\ = (\inst6|c_x2\(15) & (\inst6|Add6~29\ & VCC)) # (!\inst6|c_x2\(15) & (!\inst6|Add6~29\))
-- \inst6|Add6~31\ = CARRY((!\inst6|c_x2\(15) & !\inst6|Add6~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(15),
	datad => VCC,
	cin => \inst6|Add6~29\,
	combout => \inst6|Add6~30_combout\,
	cout => \inst6|Add6~31\);

-- Location: LCCOMB_X12_Y40_N2
\inst6|Add6~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~80_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~30_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|Add6~30_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|Add6~80_combout\);

-- Location: FF_X12_Y40_N3
\inst6|c_x2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~80_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(15));

-- Location: LCCOMB_X11_Y39_N0
\inst6|Add6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~32_combout\ = (\inst6|c_x2\(16) & ((GND) # (!\inst6|Add6~31\))) # (!\inst6|c_x2\(16) & (\inst6|Add6~31\ $ (GND)))
-- \inst6|Add6~33\ = CARRY((\inst6|c_x2\(16)) # (!\inst6|Add6~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(16),
	datad => VCC,
	cin => \inst6|Add6~31\,
	combout => \inst6|Add6~32_combout\,
	cout => \inst6|Add6~33\);

-- Location: LCCOMB_X12_Y39_N0
\inst6|Add6~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~81_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~32_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add6~32_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|Add6~81_combout\);

-- Location: FF_X12_Y39_N1
\inst6|c_x2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~81_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(16));

-- Location: LCCOMB_X11_Y39_N2
\inst6|Add6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~34_combout\ = (\inst6|c_x2\(17) & (\inst6|Add6~33\ & VCC)) # (!\inst6|c_x2\(17) & (!\inst6|Add6~33\))
-- \inst6|Add6~35\ = CARRY((!\inst6|c_x2\(17) & !\inst6|Add6~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(17),
	datad => VCC,
	cin => \inst6|Add6~33\,
	combout => \inst6|Add6~34_combout\,
	cout => \inst6|Add6~35\);

-- Location: LCCOMB_X12_Y39_N2
\inst6|Add6~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~82_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~34_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~3_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|Add6~34_combout\,
	combout => \inst6|Add6~82_combout\);

-- Location: FF_X12_Y39_N3
\inst6|c_x2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~82_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(17));

-- Location: LCCOMB_X11_Y39_N4
\inst6|Add6~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~36_combout\ = (\inst6|c_x2\(18) & ((GND) # (!\inst6|Add6~35\))) # (!\inst6|c_x2\(18) & (\inst6|Add6~35\ $ (GND)))
-- \inst6|Add6~37\ = CARRY((\inst6|c_x2\(18)) # (!\inst6|Add6~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(18),
	datad => VCC,
	cin => \inst6|Add6~35\,
	combout => \inst6|Add6~36_combout\,
	cout => \inst6|Add6~37\);

-- Location: LCCOMB_X12_Y39_N20
\inst6|Add6~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~83_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~36_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add6~36_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|Add6~83_combout\);

-- Location: FF_X12_Y39_N21
\inst6|c_x2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~83_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(18));

-- Location: LCCOMB_X11_Y39_N6
\inst6|Add6~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~38_combout\ = (\inst6|c_x2\(19) & (\inst6|Add6~37\ & VCC)) # (!\inst6|c_x2\(19) & (!\inst6|Add6~37\))
-- \inst6|Add6~39\ = CARRY((!\inst6|c_x2\(19) & !\inst6|Add6~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(19),
	datad => VCC,
	cin => \inst6|Add6~37\,
	combout => \inst6|Add6~38_combout\,
	cout => \inst6|Add6~39\);

-- Location: LCCOMB_X12_Y39_N6
\inst6|Add6~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~84_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~38_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add6~38_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|Add6~84_combout\);

-- Location: FF_X12_Y39_N7
\inst6|c_x2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~84_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(19));

-- Location: LCCOMB_X11_Y39_N8
\inst6|Add6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~40_combout\ = (\inst6|c_x2\(20) & ((GND) # (!\inst6|Add6~39\))) # (!\inst6|c_x2\(20) & (\inst6|Add6~39\ $ (GND)))
-- \inst6|Add6~41\ = CARRY((\inst6|c_x2\(20)) # (!\inst6|Add6~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(20),
	datad => VCC,
	cin => \inst6|Add6~39\,
	combout => \inst6|Add6~40_combout\,
	cout => \inst6|Add6~41\);

-- Location: LCCOMB_X12_Y39_N10
\inst6|Add6~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~85_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~40_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~3_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|Add6~40_combout\,
	combout => \inst6|Add6~85_combout\);

-- Location: FF_X12_Y39_N11
\inst6|c_x2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~85_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(20));

-- Location: LCCOMB_X11_Y39_N10
\inst6|Add6~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~42_combout\ = (\inst6|c_x2\(21) & (\inst6|Add6~41\ & VCC)) # (!\inst6|c_x2\(21) & (!\inst6|Add6~41\))
-- \inst6|Add6~43\ = CARRY((!\inst6|c_x2\(21) & !\inst6|Add6~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(21),
	datad => VCC,
	cin => \inst6|Add6~41\,
	combout => \inst6|Add6~42_combout\,
	cout => \inst6|Add6~43\);

-- Location: LCCOMB_X12_Y39_N4
\inst6|Add6~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~86_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~42_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|Add6~42_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|Add6~86_combout\);

-- Location: FF_X12_Y39_N5
\inst6|c_x2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~86_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(21));

-- Location: LCCOMB_X11_Y39_N12
\inst6|Add6~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~44_combout\ = (\inst6|c_x2\(22) & ((GND) # (!\inst6|Add6~43\))) # (!\inst6|c_x2\(22) & (\inst6|Add6~43\ $ (GND)))
-- \inst6|Add6~45\ = CARRY((\inst6|c_x2\(22)) # (!\inst6|Add6~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(22),
	datad => VCC,
	cin => \inst6|Add6~43\,
	combout => \inst6|Add6~44_combout\,
	cout => \inst6|Add6~45\);

-- Location: LCCOMB_X12_Y39_N30
\inst6|Add6~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~87_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~44_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~3_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|Add6~44_combout\,
	combout => \inst6|Add6~87_combout\);

-- Location: FF_X12_Y39_N31
\inst6|c_x2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~87_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(22));

-- Location: LCCOMB_X11_Y39_N14
\inst6|Add6~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~46_combout\ = (\inst6|c_x2\(23) & (\inst6|Add6~45\ & VCC)) # (!\inst6|c_x2\(23) & (!\inst6|Add6~45\))
-- \inst6|Add6~47\ = CARRY((!\inst6|c_x2\(23) & !\inst6|Add6~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(23),
	datad => VCC,
	cin => \inst6|Add6~45\,
	combout => \inst6|Add6~46_combout\,
	cout => \inst6|Add6~47\);

-- Location: LCCOMB_X12_Y39_N24
\inst6|Add6~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~88_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~46_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~3_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|Add6~46_combout\,
	combout => \inst6|Add6~88_combout\);

-- Location: FF_X12_Y39_N25
\inst6|c_x2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~88_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(23));

-- Location: LCCOMB_X11_Y39_N16
\inst6|Add6~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~48_combout\ = (\inst6|c_x2\(24) & ((GND) # (!\inst6|Add6~47\))) # (!\inst6|c_x2\(24) & (\inst6|Add6~47\ $ (GND)))
-- \inst6|Add6~49\ = CARRY((\inst6|c_x2\(24)) # (!\inst6|Add6~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(24),
	datad => VCC,
	cin => \inst6|Add6~47\,
	combout => \inst6|Add6~48_combout\,
	cout => \inst6|Add6~49\);

-- Location: LCCOMB_X12_Y39_N28
\inst6|Add6~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~89_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~48_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add6~48_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|Add6~89_combout\);

-- Location: FF_X12_Y39_N29
\inst6|c_x2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~89_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(24));

-- Location: LCCOMB_X11_Y39_N18
\inst6|Add6~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~50_combout\ = (\inst6|c_x2\(25) & (\inst6|Add6~49\ & VCC)) # (!\inst6|c_x2\(25) & (!\inst6|Add6~49\))
-- \inst6|Add6~51\ = CARRY((!\inst6|c_x2\(25) & !\inst6|Add6~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(25),
	datad => VCC,
	cin => \inst6|Add6~49\,
	combout => \inst6|Add6~50_combout\,
	cout => \inst6|Add6~51\);

-- Location: LCCOMB_X12_Y39_N14
\inst6|Add6~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~90_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~50_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|Add6~50_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|Add6~90_combout\);

-- Location: FF_X12_Y39_N15
\inst6|c_x2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~90_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(25));

-- Location: LCCOMB_X11_Y39_N20
\inst6|Add6~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~52_combout\ = (\inst6|c_x2\(26) & ((GND) # (!\inst6|Add6~51\))) # (!\inst6|c_x2\(26) & (\inst6|Add6~51\ $ (GND)))
-- \inst6|Add6~53\ = CARRY((\inst6|c_x2\(26)) # (!\inst6|Add6~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(26),
	datad => VCC,
	cin => \inst6|Add6~51\,
	combout => \inst6|Add6~52_combout\,
	cout => \inst6|Add6~53\);

-- Location: LCCOMB_X12_Y39_N16
\inst6|Add6~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~91_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~52_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|Add6~52_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|Add6~91_combout\);

-- Location: FF_X12_Y39_N17
\inst6|c_x2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~91_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(26));

-- Location: LCCOMB_X11_Y39_N22
\inst6|Add6~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~54_combout\ = (\inst6|c_x2\(27) & (\inst6|Add6~53\ & VCC)) # (!\inst6|c_x2\(27) & (!\inst6|Add6~53\))
-- \inst6|Add6~55\ = CARRY((!\inst6|c_x2\(27) & !\inst6|Add6~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(27),
	datad => VCC,
	cin => \inst6|Add6~53\,
	combout => \inst6|Add6~54_combout\,
	cout => \inst6|Add6~55\);

-- Location: LCCOMB_X12_Y39_N18
\inst6|Add6~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~92_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~54_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|Add6~54_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|Add6~92_combout\);

-- Location: FF_X12_Y39_N19
\inst6|c_x2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~92_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(27));

-- Location: LCCOMB_X11_Y39_N24
\inst6|Add6~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~56_combout\ = (\inst6|c_x2\(28) & ((GND) # (!\inst6|Add6~55\))) # (!\inst6|c_x2\(28) & (\inst6|Add6~55\ $ (GND)))
-- \inst6|Add6~57\ = CARRY((\inst6|c_x2\(28)) # (!\inst6|Add6~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(28),
	datad => VCC,
	cin => \inst6|Add6~55\,
	combout => \inst6|Add6~56_combout\,
	cout => \inst6|Add6~57\);

-- Location: LCCOMB_X12_Y40_N16
\inst6|Add6~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~58_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~56_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add6~56_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|Add6~58_combout\);

-- Location: FF_X12_Y40_N17
\inst6|c_x2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~58_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(28));

-- Location: LCCOMB_X11_Y39_N26
\inst6|Add6~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~59_combout\ = (\inst6|c_x2\(29) & (\inst6|Add6~57\ & VCC)) # (!\inst6|c_x2\(29) & (!\inst6|Add6~57\))
-- \inst6|Add6~60\ = CARRY((!\inst6|c_x2\(29) & !\inst6|Add6~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(29),
	datad => VCC,
	cin => \inst6|Add6~57\,
	combout => \inst6|Add6~59_combout\,
	cout => \inst6|Add6~60\);

-- Location: LCCOMB_X12_Y40_N18
\inst6|Add6~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~61_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~59_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~3_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|Add6~59_combout\,
	combout => \inst6|Add6~61_combout\);

-- Location: FF_X12_Y40_N19
\inst6|c_x2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~61_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(29));

-- Location: LCCOMB_X11_Y39_N28
\inst6|Add6~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~62_combout\ = (\inst6|c_x2\(30) & ((GND) # (!\inst6|Add6~60\))) # (!\inst6|c_x2\(30) & (\inst6|Add6~60\ $ (GND)))
-- \inst6|Add6~63\ = CARRY((\inst6|c_x2\(30)) # (!\inst6|Add6~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|c_x2\(30),
	datad => VCC,
	cin => \inst6|Add6~60\,
	combout => \inst6|Add6~62_combout\,
	cout => \inst6|Add6~63\);

-- Location: LCCOMB_X12_Y40_N28
\inst6|Add6~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~64_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~62_combout\ & ((!\inst6|LessThan3~3_combout\) # (!\inst6|LessThan3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~8_combout\,
	datac => \inst6|Add6~62_combout\,
	datad => \inst6|LessThan3~3_combout\,
	combout => \inst6|Add6~64_combout\);

-- Location: FF_X12_Y40_N29
\inst6|c_x2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~64_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(30));

-- Location: LCCOMB_X11_Y39_N30
\inst6|Add6~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~93_combout\ = \inst6|Add6~63\ $ (!\inst6|c_x2\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|c_x2\(31),
	cin => \inst6|Add6~63\,
	combout => \inst6|Add6~93_combout\);

-- Location: LCCOMB_X12_Y40_N14
\inst6|Add6~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Add6~95_combout\ = (!\inst6|Add5~62_combout\ & (\inst6|Add6~93_combout\ & ((!\inst6|LessThan3~8_combout\) # (!\inst6|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Add5~62_combout\,
	datab => \inst6|LessThan3~3_combout\,
	datac => \inst6|LessThan3~8_combout\,
	datad => \inst6|Add6~93_combout\,
	combout => \inst6|Add6~95_combout\);

-- Location: FF_X12_Y40_N15
\inst6|c_x2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Add6~95_combout\,
	ena => \inst6|n_x2[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|c_x2\(31));

-- Location: LCCOMB_X8_Y36_N8
\inst6|LessThan22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~1_cout\ = CARRY((!\inst1|column\(0) & !\inst6|c_x2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(0),
	datab => \inst6|c_x2\(0),
	datad => VCC,
	cout => \inst6|LessThan22~1_cout\);

-- Location: LCCOMB_X8_Y36_N10
\inst6|LessThan22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~3_cout\ = CARRY((\inst6|c_x2\(1) & ((!\inst6|LessThan22~1_cout\) # (!\inst1|column\(1)))) # (!\inst6|c_x2\(1) & (!\inst1|column\(1) & !\inst6|LessThan22~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(1),
	datab => \inst1|column\(1),
	datad => VCC,
	cin => \inst6|LessThan22~1_cout\,
	cout => \inst6|LessThan22~3_cout\);

-- Location: LCCOMB_X8_Y36_N12
\inst6|LessThan22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~5_cout\ = CARRY((\inst1|column\(2) & ((!\inst6|LessThan22~3_cout\) # (!\inst6|c_x1\(2)))) # (!\inst1|column\(2) & (!\inst6|c_x1\(2) & !\inst6|LessThan22~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(2),
	datab => \inst6|c_x1\(2),
	datad => VCC,
	cin => \inst6|LessThan22~3_cout\,
	cout => \inst6|LessThan22~5_cout\);

-- Location: LCCOMB_X8_Y36_N14
\inst6|LessThan22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~7_cout\ = CARRY((\inst6|c_x1\(3) & ((!\inst6|LessThan22~5_cout\) # (!\inst1|column\(3)))) # (!\inst6|c_x1\(3) & (!\inst1|column\(3) & !\inst6|LessThan22~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(3),
	datab => \inst1|column\(3),
	datad => VCC,
	cin => \inst6|LessThan22~5_cout\,
	cout => \inst6|LessThan22~7_cout\);

-- Location: LCCOMB_X8_Y36_N16
\inst6|LessThan22~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~9_cout\ = CARRY((\inst6|c_x1\(4) & ((\inst1|column\(4)) # (!\inst6|LessThan22~7_cout\))) # (!\inst6|c_x1\(4) & (\inst1|column\(4) & !\inst6|LessThan22~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(4),
	datab => \inst1|column\(4),
	datad => VCC,
	cin => \inst6|LessThan22~7_cout\,
	cout => \inst6|LessThan22~9_cout\);

-- Location: LCCOMB_X8_Y36_N18
\inst6|LessThan22~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~11_cout\ = CARRY((\inst1|column\(5) & (!\inst6|c_x1\(5) & !\inst6|LessThan22~9_cout\)) # (!\inst1|column\(5) & ((!\inst6|LessThan22~9_cout\) # (!\inst6|c_x1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst6|c_x1\(5),
	datad => VCC,
	cin => \inst6|LessThan22~9_cout\,
	cout => \inst6|LessThan22~11_cout\);

-- Location: LCCOMB_X8_Y36_N20
\inst6|LessThan22~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~13_cout\ = CARRY((\inst6|c_x1\(6) & (\inst1|column\(6) & !\inst6|LessThan22~11_cout\)) # (!\inst6|c_x1\(6) & ((\inst1|column\(6)) # (!\inst6|LessThan22~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(6),
	datab => \inst1|column\(6),
	datad => VCC,
	cin => \inst6|LessThan22~11_cout\,
	cout => \inst6|LessThan22~13_cout\);

-- Location: LCCOMB_X8_Y36_N22
\inst6|LessThan22~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~15_cout\ = CARRY((\inst1|column\(7) & (!\inst6|c_x1\(7) & !\inst6|LessThan22~13_cout\)) # (!\inst1|column\(7) & ((!\inst6|LessThan22~13_cout\) # (!\inst6|c_x1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(7),
	datab => \inst6|c_x1\(7),
	datad => VCC,
	cin => \inst6|LessThan22~13_cout\,
	cout => \inst6|LessThan22~15_cout\);

-- Location: LCCOMB_X8_Y36_N24
\inst6|LessThan22~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~17_cout\ = CARRY((\inst1|column\(8) & ((!\inst6|LessThan22~15_cout\) # (!\inst6|c_x1\(8)))) # (!\inst1|column\(8) & (!\inst6|c_x1\(8) & !\inst6|LessThan22~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(8),
	datab => \inst6|c_x1\(8),
	datad => VCC,
	cin => \inst6|LessThan22~15_cout\,
	cout => \inst6|LessThan22~17_cout\);

-- Location: LCCOMB_X8_Y36_N26
\inst6|LessThan22~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~19_cout\ = CARRY((\inst6|c_x1\(9) & ((!\inst6|LessThan22~17_cout\) # (!\inst1|column\(9)))) # (!\inst6|c_x1\(9) & (!\inst1|column\(9) & !\inst6|LessThan22~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(9),
	datab => \inst1|column\(9),
	datad => VCC,
	cin => \inst6|LessThan22~17_cout\,
	cout => \inst6|LessThan22~19_cout\);

-- Location: LCCOMB_X8_Y36_N28
\inst6|LessThan22~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~21_cout\ = CARRY((\inst1|column\(10) & ((\inst6|c_x1\(10)) # (!\inst6|LessThan22~19_cout\))) # (!\inst1|column\(10) & (\inst6|c_x1\(10) & !\inst6|LessThan22~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst6|c_x1\(10),
	datad => VCC,
	cin => \inst6|LessThan22~19_cout\,
	cout => \inst6|LessThan22~21_cout\);

-- Location: LCCOMB_X8_Y36_N30
\inst6|LessThan22~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan22~22_combout\ = (\inst6|c_x1\(11) & (\inst6|LessThan22~21_cout\ & \inst1|column\(11))) # (!\inst6|c_x1\(11) & ((\inst6|LessThan22~21_cout\) # (\inst1|column\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x1\(11),
	datad => \inst1|column\(11),
	cin => \inst6|LessThan22~21_cout\,
	combout => \inst6|LessThan22~22_combout\);

-- Location: LCCOMB_X18_Y43_N4
\inst6|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan12~0_combout\ = (!\inst1|row\(4) & !\inst1|row\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(4),
	datad => \inst1|row\(3),
	combout => \inst6|LessThan12~0_combout\);

-- Location: LCCOMB_X14_Y43_N0
\inst6|LessThan28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan28~0_combout\ = (\inst1|row\(2) & ((\inst1|row\(1)) # (!\inst1|row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|row\(2),
	datac => \inst1|row\(1),
	datad => \inst1|row\(0),
	combout => \inst6|LessThan28~0_combout\);

-- Location: LCCOMB_X19_Y44_N28
\inst6|LessThan20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan20~0_combout\ = (\inst1|row\(5)) # ((\inst1|row\(6)) # ((\inst6|LessThan28~0_combout\) # (!\inst6|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst1|row\(6),
	datac => \inst6|LessThan12~0_combout\,
	datad => \inst6|LessThan28~0_combout\,
	combout => \inst6|LessThan20~0_combout\);

-- Location: LCCOMB_X19_Y44_N14
\inst6|LessThan20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan20~1_combout\ = (\inst1|row\(7) & (\inst1|row\(9) & (\inst1|row\(8) & \inst6|LessThan20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(7),
	datab => \inst1|row\(9),
	datac => \inst1|row\(8),
	datad => \inst6|LessThan20~0_combout\,
	combout => \inst6|LessThan20~1_combout\);

-- Location: LCCOMB_X13_Y41_N26
\inst6|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~15_combout\ = (!\inst6|c_x2\(31) & (\inst6|LessThan22~22_combout\ & ((\inst1|row\(10)) # (\inst6|LessThan20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(31),
	datab => \inst1|row\(10),
	datac => \inst6|LessThan22~22_combout\,
	datad => \inst6|LessThan20~1_combout\,
	combout => \inst6|process_0~15_combout\);

-- Location: LCCOMB_X11_Y41_N4
\inst6|LessThan21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~1_cout\ = CARRY((\inst1|column\(0) & \inst6|c_x2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(0),
	datab => \inst6|c_x2\(0),
	datad => VCC,
	cout => \inst6|LessThan21~1_cout\);

-- Location: LCCOMB_X11_Y41_N6
\inst6|LessThan21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~3_cout\ = CARRY((\inst6|c_x2\(1) & (\inst1|column\(1) & !\inst6|LessThan21~1_cout\)) # (!\inst6|c_x2\(1) & ((\inst1|column\(1)) # (!\inst6|LessThan21~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(1),
	datab => \inst1|column\(1),
	datad => VCC,
	cin => \inst6|LessThan21~1_cout\,
	cout => \inst6|LessThan21~3_cout\);

-- Location: LCCOMB_X11_Y41_N8
\inst6|LessThan21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~5_cout\ = CARRY((\inst1|column\(2) & (!\inst6|c_x2\(2) & !\inst6|LessThan21~3_cout\)) # (!\inst1|column\(2) & ((!\inst6|LessThan21~3_cout\) # (!\inst6|c_x2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(2),
	datab => \inst6|c_x2\(2),
	datad => VCC,
	cin => \inst6|LessThan21~3_cout\,
	cout => \inst6|LessThan21~5_cout\);

-- Location: LCCOMB_X11_Y41_N10
\inst6|LessThan21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~7_cout\ = CARRY((\inst1|column\(3) & ((!\inst6|LessThan21~5_cout\) # (!\inst6|c_x2\(3)))) # (!\inst1|column\(3) & (!\inst6|c_x2\(3) & !\inst6|LessThan21~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(3),
	datab => \inst6|c_x2\(3),
	datad => VCC,
	cin => \inst6|LessThan21~5_cout\,
	cout => \inst6|LessThan21~7_cout\);

-- Location: LCCOMB_X11_Y41_N12
\inst6|LessThan21~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~9_cout\ = CARRY((\inst1|column\(4) & (!\inst6|c_x2\(4) & !\inst6|LessThan21~7_cout\)) # (!\inst1|column\(4) & ((!\inst6|LessThan21~7_cout\) # (!\inst6|c_x2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(4),
	datab => \inst6|c_x2\(4),
	datad => VCC,
	cin => \inst6|LessThan21~7_cout\,
	cout => \inst6|LessThan21~9_cout\);

-- Location: LCCOMB_X11_Y41_N14
\inst6|LessThan21~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~11_cout\ = CARRY((\inst6|c_x2\(5) & (\inst1|column\(5) & !\inst6|LessThan21~9_cout\)) # (!\inst6|c_x2\(5) & ((\inst1|column\(5)) # (!\inst6|LessThan21~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(5),
	datab => \inst1|column\(5),
	datad => VCC,
	cin => \inst6|LessThan21~9_cout\,
	cout => \inst6|LessThan21~11_cout\);

-- Location: LCCOMB_X11_Y41_N16
\inst6|LessThan21~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~13_cout\ = CARRY((\inst6|c_x2\(6) & ((!\inst6|LessThan21~11_cout\) # (!\inst1|column\(6)))) # (!\inst6|c_x2\(6) & (!\inst1|column\(6) & !\inst6|LessThan21~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(6),
	datab => \inst1|column\(6),
	datad => VCC,
	cin => \inst6|LessThan21~11_cout\,
	cout => \inst6|LessThan21~13_cout\);

-- Location: LCCOMB_X11_Y41_N18
\inst6|LessThan21~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~15_cout\ = CARRY((\inst6|c_x2\(7) & (\inst1|column\(7) & !\inst6|LessThan21~13_cout\)) # (!\inst6|c_x2\(7) & ((\inst1|column\(7)) # (!\inst6|LessThan21~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(7),
	datab => \inst1|column\(7),
	datad => VCC,
	cin => \inst6|LessThan21~13_cout\,
	cout => \inst6|LessThan21~15_cout\);

-- Location: LCCOMB_X11_Y41_N20
\inst6|LessThan21~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~17_cout\ = CARRY((\inst6|c_x2\(8) & (!\inst1|column\(8) & !\inst6|LessThan21~15_cout\)) # (!\inst6|c_x2\(8) & ((!\inst6|LessThan21~15_cout\) # (!\inst1|column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(8),
	datab => \inst1|column\(8),
	datad => VCC,
	cin => \inst6|LessThan21~15_cout\,
	cout => \inst6|LessThan21~17_cout\);

-- Location: LCCOMB_X11_Y41_N22
\inst6|LessThan21~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~19_cout\ = CARRY((\inst6|c_x2\(9) & (\inst1|column\(9) & !\inst6|LessThan21~17_cout\)) # (!\inst6|c_x2\(9) & ((\inst1|column\(9)) # (!\inst6|LessThan21~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(9),
	datab => \inst1|column\(9),
	datad => VCC,
	cin => \inst6|LessThan21~17_cout\,
	cout => \inst6|LessThan21~19_cout\);

-- Location: LCCOMB_X11_Y41_N24
\inst6|LessThan21~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~21_cout\ = CARRY((\inst1|column\(10) & (!\inst6|c_x2\(10) & !\inst6|LessThan21~19_cout\)) # (!\inst1|column\(10) & ((!\inst6|LessThan21~19_cout\) # (!\inst6|c_x2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst6|c_x2\(10),
	datad => VCC,
	cin => \inst6|LessThan21~19_cout\,
	cout => \inst6|LessThan21~21_cout\);

-- Location: LCCOMB_X11_Y41_N26
\inst6|LessThan21~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~22_combout\ = (\inst6|c_x2\(11) & ((\inst6|LessThan21~21_cout\) # (!\inst1|column\(11)))) # (!\inst6|c_x2\(11) & (\inst6|LessThan21~21_cout\ & !\inst1|column\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(11),
	datad => \inst1|column\(11),
	cin => \inst6|LessThan21~21_cout\,
	combout => \inst6|LessThan21~22_combout\);

-- Location: LCCOMB_X12_Y40_N26
\inst6|LessThan21~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~24_combout\ = (\inst6|c_x2\(30)) # ((\inst6|c_x2\(29)) # ((\inst6|LessThan21~22_combout\) # (\inst6|c_x2\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(30),
	datab => \inst6|c_x2\(29),
	datac => \inst6|LessThan21~22_combout\,
	datad => \inst6|c_x2\(28),
	combout => \inst6|LessThan21~24_combout\);

-- Location: LCCOMB_X12_Y39_N26
\inst6|LessThan21~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~27_combout\ = (\inst6|c_x2\(22)) # ((\inst6|c_x2\(23)) # ((\inst6|c_x2\(21)) # (\inst6|c_x2\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(22),
	datab => \inst6|c_x2\(23),
	datac => \inst6|c_x2\(21),
	datad => \inst6|c_x2\(20),
	combout => \inst6|LessThan21~27_combout\);

-- Location: LCCOMB_X12_Y40_N12
\inst6|LessThan21~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~25_combout\ = (\inst6|c_x2\(13)) # ((\inst6|c_x2\(15)) # ((\inst6|c_x2\(14)) # (\inst6|c_x2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(13),
	datab => \inst6|c_x2\(15),
	datac => \inst6|c_x2\(14),
	datad => \inst6|c_x2\(12),
	combout => \inst6|LessThan21~25_combout\);

-- Location: LCCOMB_X12_Y39_N8
\inst6|LessThan21~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~26_combout\ = (\inst6|c_x2\(19)) # ((\inst6|c_x2\(18)) # ((\inst6|c_x2\(17)) # (\inst6|c_x2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(19),
	datab => \inst6|c_x2\(18),
	datac => \inst6|c_x2\(17),
	datad => \inst6|c_x2\(16),
	combout => \inst6|LessThan21~26_combout\);

-- Location: LCCOMB_X12_Y39_N12
\inst6|LessThan21~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~28_combout\ = (\inst6|c_x2\(27)) # ((\inst6|c_x2\(26)) # ((\inst6|c_x2\(25)) # (\inst6|c_x2\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|c_x2\(27),
	datab => \inst6|c_x2\(26),
	datac => \inst6|c_x2\(25),
	datad => \inst6|c_x2\(24),
	combout => \inst6|LessThan21~28_combout\);

-- Location: LCCOMB_X12_Y39_N22
\inst6|LessThan21~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan21~29_combout\ = (\inst6|LessThan21~27_combout\) # ((\inst6|LessThan21~25_combout\) # ((\inst6|LessThan21~26_combout\) # (\inst6|LessThan21~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan21~27_combout\,
	datab => \inst6|LessThan21~25_combout\,
	datac => \inst6|LessThan21~26_combout\,
	datad => \inst6|LessThan21~28_combout\,
	combout => \inst6|LessThan21~29_combout\);

-- Location: LCCOMB_X13_Y41_N0
\inst6|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~13_combout\ = (\inst6|process_0~12_combout\ & ((\inst6|LessThan21~24_combout\) # (\inst6|LessThan21~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan21~24_combout\,
	datab => \inst6|process_0~12_combout\,
	datad => \inst6|LessThan21~29_combout\,
	combout => \inst6|process_0~13_combout\);

-- Location: LCCOMB_X13_Y41_N4
\inst6|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~16_combout\ = (\inst6|process_0~15_combout\ & (\inst6|LessThan23~2_combout\ & (\inst6|process_0~14_combout\ & \inst6|process_0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~15_combout\,
	datab => \inst6|LessThan23~2_combout\,
	datac => \inst6|process_0~14_combout\,
	datad => \inst6|process_0~13_combout\,
	combout => \inst6|process_0~16_combout\);

-- Location: LCCOMB_X19_Y44_N30
\inst6|LessThan27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan27~0_combout\ = ((!\inst1|row\(6) & (!\inst1|row\(5) & !\inst1|row\(7)))) # (!\inst1|row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(8),
	datab => \inst1|row\(6),
	datac => \inst1|row\(5),
	datad => \inst1|row\(7),
	combout => \inst6|LessThan27~0_combout\);

-- Location: LCCOMB_X18_Y43_N2
\inst6|LessThan27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan27~1_combout\ = (!\inst1|row\(7) & (!\inst1|row\(6) & ((!\inst1|row\(3)) # (!\inst1|row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(7),
	datab => \inst1|row\(2),
	datac => \inst1|row\(3),
	datad => \inst1|row\(6),
	combout => \inst6|LessThan27~1_combout\);

-- Location: LCCOMB_X13_Y44_N14
\inst6|process_0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~45_combout\ = (\inst1|column\(10) & ((\inst6|LessThan27~0_combout\) # ((!\inst1|row\(4) & \inst6|LessThan27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(4),
	datab => \inst6|LessThan27~0_combout\,
	datac => \inst1|column\(10),
	datad => \inst6|LessThan27~1_combout\,
	combout => \inst6|process_0~45_combout\);

-- Location: LCCOMB_X13_Y39_N24
\inst6|LessThan30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan30~1_combout\ = (\inst1|column\(8) & (\inst1|column\(6) & \inst1|column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(8),
	datac => \inst1|column\(6),
	datad => \inst1|column\(7),
	combout => \inst6|LessThan30~1_combout\);

-- Location: LCCOMB_X13_Y39_N30
\inst6|LessThan30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan30~2_combout\ = (\inst6|LessThan30~1_combout\ & (\inst6|LessThan30~0_combout\ & (\inst1|column\(3) & \inst1|column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan30~1_combout\,
	datab => \inst6|LessThan30~0_combout\,
	datac => \inst1|column\(3),
	datad => \inst1|column\(4),
	combout => \inst6|LessThan30~2_combout\);

-- Location: LCCOMB_X13_Y40_N2
\inst6|LessThan30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan30~3_combout\ = (\inst6|LessThan30~2_combout\) # ((\inst1|column\(9)) # ((\inst1|column\(5) & \inst6|LessThan30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(5),
	datab => \inst6|LessThan30~2_combout\,
	datac => \inst1|column\(9),
	datad => \inst6|LessThan30~1_combout\,
	combout => \inst6|LessThan30~3_combout\);

-- Location: LCCOMB_X19_Y44_N12
\inst6|LessThan28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan28~1_combout\ = (\inst1|row\(5) & (\inst1|row\(6) & ((\inst6|LessThan28~0_combout\) # (!\inst6|LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst6|LessThan12~0_combout\,
	datac => \inst1|row\(6),
	datad => \inst6|LessThan28~0_combout\,
	combout => \inst6|LessThan28~1_combout\);

-- Location: LCCOMB_X10_Y42_N12
\inst6|LessThan29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~2_combout\ = (!\inst1|column\(8) & (!\inst1|column\(6) & (!\inst1|column\(3) & !\inst1|column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(8),
	datab => \inst1|column\(6),
	datac => \inst1|column\(3),
	datad => \inst1|column\(4),
	combout => \inst6|LessThan29~2_combout\);

-- Location: LCCOMB_X10_Y42_N10
\inst6|LessThan29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~1_combout\ = (!\inst1|column\(8) & (((!\inst1|column\(5) & !\inst1|column\(6))) # (!\inst1|column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(8),
	datab => \inst1|column\(7),
	datac => \inst1|column\(5),
	datad => \inst1|column\(6),
	combout => \inst6|LessThan29~1_combout\);

-- Location: LCCOMB_X10_Y42_N6
\inst6|LessThan29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan29~3_combout\ = ((\inst6|LessThan29~1_combout\) # ((\inst6|LessThan29~2_combout\ & !\inst1|column\(2)))) # (!\inst1|column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan29~2_combout\,
	datab => \inst1|column\(9),
	datac => \inst1|column\(2),
	datad => \inst6|LessThan29~1_combout\,
	combout => \inst6|LessThan29~3_combout\);

-- Location: LCCOMB_X10_Y42_N24
\inst6|process_0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~44_combout\ = (\inst6|LessThan29~3_combout\ & ((\inst6|LessThan28~1_combout\) # ((\inst1|row\(8)) # (\inst1|row\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan28~1_combout\,
	datab => \inst1|row\(8),
	datac => \inst1|row\(7),
	datad => \inst6|LessThan29~3_combout\,
	combout => \inst6|process_0~44_combout\);

-- Location: LCCOMB_X13_Y41_N24
\inst6|process_0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~46_combout\ = (\inst6|process_0~45_combout\ & (\inst6|LessThan30~3_combout\ & (\inst6|process_0~44_combout\ & \inst6|process_0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~45_combout\,
	datab => \inst6|LessThan30~3_combout\,
	datac => \inst6|process_0~44_combout\,
	datad => \inst6|process_0~28_combout\,
	combout => \inst6|process_0~46_combout\);

-- Location: LCCOMB_X13_Y41_N2
\inst6|green~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green~2_combout\ = (\inst6|process_0~16_combout\) # ((!\inst6|process_0~43_combout\ & (\inst6|green~1_combout\ & !\inst6|process_0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~43_combout\,
	datab => \inst6|green~1_combout\,
	datac => \inst6|process_0~16_combout\,
	datad => \inst6|process_0~46_combout\,
	combout => \inst6|green~2_combout\);

-- Location: LCCOMB_X14_Y38_N10
\inst6|back2[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|back2\(10) = (!\inst6|comb~0_combout\ & ((\inst6|back2\(10)) # (!\inst6|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|comb~0_combout\,
	datac => \inst6|comb~1_combout\,
	datad => \inst6|back2\(10),
	combout => \inst6|back2\(10));

-- Location: LCCOMB_X14_Y38_N28
\inst6|back2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|back2\(1) = (!\inst6|comb~0_combout\ & ((\inst6|back2\(1)) # (!\inst6|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|comb~0_combout\,
	datac => \inst6|comb~1_combout\,
	datad => \inst6|back2\(1),
	combout => \inst6|back2\(1));

-- Location: LCCOMB_X18_Y43_N22
\inst6|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan12~1_combout\ = (\inst1|row\(0) & ((\inst6|back2\(1)) # (!\inst1|row\(1)))) # (!\inst1|row\(0) & (!\inst1|row\(1) & \inst6|back2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(0),
	datac => \inst1|row\(1),
	datad => \inst6|back2\(1),
	combout => \inst6|LessThan12~1_combout\);

-- Location: LCCOMB_X14_Y38_N12
\inst6|back2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|back2\(2) = (!\inst6|comb~0_combout\ & ((\inst6|back2\(2)) # (!\inst6|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|comb~0_combout\,
	datac => \inst6|comb~1_combout\,
	datad => \inst6|back2\(2),
	combout => \inst6|back2\(2));

-- Location: LCCOMB_X18_Y43_N28
\inst6|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan12~2_combout\ = (!\inst1|row\(3) & ((\inst6|LessThan12~1_combout\ & ((\inst6|back2\(2)) # (!\inst1|row\(2)))) # (!\inst6|LessThan12~1_combout\ & (\inst6|back2\(2) & !\inst1|row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan12~1_combout\,
	datab => \inst6|back2\(2),
	datac => \inst1|row\(2),
	datad => \inst1|row\(3),
	combout => \inst6|LessThan12~2_combout\);

-- Location: LCCOMB_X18_Y43_N14
\inst6|LessThan12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan12~3_combout\ = (\inst1|row\(5)) # (((\inst1|row\(4)) # (!\inst6|LessThan23~0_combout\)) # (!\inst6|LessThan12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|row\(5),
	datab => \inst6|LessThan12~2_combout\,
	datac => \inst1|row\(4),
	datad => \inst6|LessThan23~0_combout\,
	combout => \inst6|LessThan12~3_combout\);

-- Location: LCCOMB_X12_Y41_N0
\inst6|LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan13~0_combout\ = (((!\inst1|column\(9)) # (!\inst1|column\(8))) # (!\inst1|column\(7))) # (!\inst1|column\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(10),
	datab => \inst1|column\(7),
	datac => \inst1|column\(8),
	datad => \inst1|column\(9),
	combout => \inst6|LessThan13~0_combout\);

-- Location: LCCOMB_X14_Y42_N30
\inst6|process_0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~55_combout\ = (\inst1|row\(31) & (((!\inst1|column\(11) & \inst6|LessThan13~0_combout\)) # (!\inst1|column\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|column\(11),
	datab => \inst1|column\(31),
	datac => \inst1|row\(31),
	datad => \inst6|LessThan13~0_combout\,
	combout => \inst6|process_0~55_combout\);

-- Location: LCCOMB_X18_Y43_N12
\inst6|process_0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~56_combout\ = (\inst6|process_0~55_combout\ & (((!\inst6|LessThan11~0_combout\ & \inst6|LessThan23~0_combout\)) # (!\inst1|row\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan11~0_combout\,
	datab => \inst6|LessThan23~0_combout\,
	datac => \inst6|process_0~55_combout\,
	datad => \inst1|row\(10),
	combout => \inst6|process_0~56_combout\);

-- Location: LCCOMB_X18_Y43_N16
\inst6|process_0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_0~57_combout\ = (\inst6|process_0~56_combout\ & ((\inst6|back2\(10) & (\inst6|LessThan12~3_combout\ & \inst1|row\(10))) # (!\inst6|back2\(10) & ((\inst6|LessThan12~3_combout\) # (\inst1|row\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|back2\(10),
	datab => \inst6|LessThan12~3_combout\,
	datac => \inst1|row\(10),
	datad => \inst6|process_0~56_combout\,
	combout => \inst6|process_0~57_combout\);

-- Location: LCCOMB_X16_Y44_N18
\inst6|blue[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|blue[7]~0_combout\ = (\inst6|green[7]~0_combout\ & (!\inst6|process_0~57_combout\ & ((\inst6|green~2_combout\) # (!\inst6|process_0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~54_combout\,
	datab => \inst6|green[7]~0_combout\,
	datac => \inst6|green~2_combout\,
	datad => \inst6|process_0~57_combout\,
	combout => \inst6|blue[7]~0_combout\);

-- Location: LCCOMB_X16_Y44_N4
\inst6|green[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[7]~3_combout\ = (\inst1|disp_ena~q\ & \inst6|process_0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|disp_ena~q\,
	datad => \inst6|process_0~57_combout\,
	combout => \inst6|green[7]~3_combout\);

-- Location: LCCOMB_X16_Y44_N22
\inst6|green[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|green[7]~4_combout\ = (\inst6|green[7]~3_combout\) # ((\inst6|process_0~54_combout\ & (\inst6|green~2_combout\ & \inst6|green[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~54_combout\,
	datab => \inst6|green~2_combout\,
	datac => \inst6|green[7]~3_combout\,
	datad => \inst6|green[7]~0_combout\,
	combout => \inst6|green[7]~4_combout\);

-- Location: LCCOMB_X13_Y41_N28
\inst6|red[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~0_combout\ = (\inst6|process_0~26_combout\) # ((\inst6|process_0~30_combout\) # (\inst6|process_0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~26_combout\,
	datac => \inst6|process_0~30_combout\,
	datad => \inst6|process_0~46_combout\,
	combout => \inst6|red[7]~0_combout\);

-- Location: LCCOMB_X13_Y41_N6
\inst6|red[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~1_combout\ = (!\inst6|process_0~43_combout\ & (\inst6|process_0~54_combout\ & (!\inst6|process_0~16_combout\ & \inst6|red[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|process_0~43_combout\,
	datab => \inst6|process_0~54_combout\,
	datac => \inst6|process_0~16_combout\,
	datad => \inst6|red[7]~0_combout\,
	combout => \inst6|red[7]~1_combout\);

-- Location: LCCOMB_X16_Y44_N0
\inst6|red[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|red[7]~2_combout\ = (\inst1|disp_ena~q\ & (!\inst6|process_0~57_combout\ & ((\inst6|red[7]~1_combout\) # (!\inst6|process_0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|disp_ena~q\,
	datab => \inst6|red[7]~1_combout\,
	datac => \inst6|process_0~6_combout\,
	datad => \inst6|process_0~57_combout\,
	combout => \inst6|red[7]~2_combout\);
END structure;


