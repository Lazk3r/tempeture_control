-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "12/11/2022 00:45:31"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tempeture_control IS
    PORT (
	ADC_SCLK : OUT std_logic;
	CLOCK_50 : IN std_logic;
	ADC_SDAT : IN std_logic;
	KEY0 : IN std_logic;
	ADC_CS_N : OUT std_logic;
	ADC_SADDR : OUT std_logic;
	motor : OUT std_logic;
	toggle_temp : IN std_logic;
	updown : IN std_logic;
	aclr : IN std_logic;
	set_value : IN std_logic;
	Q : OUT std_logic;
	bcd : OUT std_logic_vector(7 DOWNTO 0);
	user_value : OUT std_logic_vector(7 DOWNTO 0)
	);
END tempeture_control;

-- Design Ports Information
-- ADC_SCLK	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CS_N	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SADDR	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[6]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[3]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[2]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_value[7]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_value[6]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_value[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_value[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_value[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_value[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_value[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- user_value[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY0	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- set_value	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aclr	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- updown	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- toggle_temp	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SDAT	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tempeture_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ADC_SCLK : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_ADC_SDAT : std_logic;
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_ADC_CS_N : std_logic;
SIGNAL ww_ADC_SADDR : std_logic;
SIGNAL ww_motor : std_logic;
SIGNAL ww_toggle_temp : std_logic;
SIGNAL ww_updown : std_logic;
SIGNAL ww_aclr : std_logic;
SIGNAL ww_set_value : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_bcd : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_user_value : std_logic_vector(7 DOWNTO 0);
SIGNAL \set_value~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \aclr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADC_SCLK~output_o\ : std_logic;
SIGNAL \ADC_CS_N~output_o\ : std_logic;
SIGNAL \ADC_SADDR~output_o\ : std_logic;
SIGNAL \motor~output_o\ : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \bcd[7]~output_o\ : std_logic;
SIGNAL \bcd[6]~output_o\ : std_logic;
SIGNAL \bcd[5]~output_o\ : std_logic;
SIGNAL \bcd[4]~output_o\ : std_logic;
SIGNAL \bcd[3]~output_o\ : std_logic;
SIGNAL \bcd[2]~output_o\ : std_logic;
SIGNAL \bcd[1]~output_o\ : std_logic;
SIGNAL \bcd[0]~output_o\ : std_logic;
SIGNAL \user_value[7]~output_o\ : std_logic;
SIGNAL \user_value[6]~output_o\ : std_logic;
SIGNAL \user_value[5]~output_o\ : std_logic;
SIGNAL \user_value[4]~output_o\ : std_logic;
SIGNAL \user_value[3]~output_o\ : std_logic;
SIGNAL \user_value[2]~output_o\ : std_logic;
SIGNAL \user_value[1]~output_o\ : std_logic;
SIGNAL \user_value[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[0]~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Add2~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|address~3_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|address[0]~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Add2~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|address~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|address~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0[8]~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|go~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|go~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector2~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[1]~13\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[2]~14_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[2]~15\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[3]~16_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[3]~17\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[4]~18_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[4]~19\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[5]~20_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[5]~21\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[6]~22_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[6]~23\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[7]~24_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk_counter[3]~3_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk_counter~6_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk_counter~4_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|always5~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk_counter~7_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|always5~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|always5~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|always5~3_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.transState~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[3]~26_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[0]~11\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[1]~12_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~10_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~11_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~13_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~3_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~4_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\ : std_logic;
SIGNAL \ADC_SDAT~input_o\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|always7~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[6]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[8]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[11]~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~3_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[8]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~4_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[2][9]~1_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[2][8]~2_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[2][7]~3_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[2][6]~14_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[7]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~5_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[6]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~6_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[4]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~7_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~8_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[1][10]~4_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[1][9]~5_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[1][8]~6_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[1][7]~7_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[1][6]~8_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~12_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~9_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~11_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[2]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~10_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[0][10]~9_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[0][9]~combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[1][5]~10_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[0][8]~11_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[0][7]~12_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[0][6]~13_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[2][5]~15_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~11\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~13\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~15\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~17\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~19\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~20_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[2][10]~0_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~21\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~23\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~25_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[219]~170_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~22_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[219]~171_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[218]~172_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[218]~173_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~18_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[217]~175_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[217]~174_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[216]~176_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~16_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[216]~177_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~14_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[215]~179_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[215]~178_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[214]~181_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[214]~180_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[213]~183_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[213]~182_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[212]~185_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[212]~184_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[211]~186_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[211]~187_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[210]~188_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[210]~189_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[209]~190_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[209]~191_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[208]~193_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[208]~192_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~9\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~11\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~13\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~15\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~17\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~19\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~21\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~23\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~25_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[232]~282_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~22_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[232]~194_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~20_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[231]~195_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~18_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[230]~196_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~16_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[229]~197_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~14_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[228]~198_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~12_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[227]~199_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~10_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[226]~200_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[225]~201_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[224]~202_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[223]~203_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[222]~204_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[221]~205_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[221]~206_combout\ : std_logic;
SIGNAL \inst2|Mult0|mult_core|romout[0][5]~16_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~7\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~9\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~11\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~13\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~15\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~17\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~19\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~21\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~23\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~25_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ : std_logic;
SIGNAL \set_value~input_o\ : std_logic;
SIGNAL \set_value~inputclkctrl_outclk\ : std_logic;
SIGNAL \updown~input_o\ : std_logic;
SIGNAL \inst1|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst~q\ : std_logic;
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \aclr~input_o\ : std_logic;
SIGNAL \aclr~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COMPARE_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[245]~249_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~22_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[245]~207_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~20_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[244]~208_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~18_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[243]~209_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~16_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[242]~210_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~14_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[241]~211_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~12_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[240]~212_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~10_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[239]~213_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~8_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[238]~214_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~6_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[237]~215_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[236]~216_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[235]~217_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_9~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[234]~218_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~7\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~9\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~11\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~13\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~15\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~17\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~19\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~21\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~23\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~25_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~1_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[258]~260_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~22_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[258]~219_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~20_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[257]~220_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~18_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[256]~221_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~16_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[255]~222_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~14_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[254]~223_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~12_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[253]~224_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~10_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[252]~225_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~8_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[251]~226_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~6_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[250]~227_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[249]~228_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[248]~229_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_10~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[247]~231_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[247]~230_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~7\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~9\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~11\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~13\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~15\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~17\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~19\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~21\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~23\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~25_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[271]~271_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~22_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[271]~232_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~20_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[270]~233_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~18_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~16_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[268]~235_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[268]~274_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[267]~275_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~14_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[267]~236_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[266]~276_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~12_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[266]~237_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[265]~277_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~10_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[265]~238_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~8_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[264]~239_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[264]~278_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[263]~279_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~6_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[263]~240_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[262]~241_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[262]~280_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[261]~294_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[261]~242_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[260]~243_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_12~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[260]~244_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~1_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~3_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~5_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~7_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~9_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~11_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~13_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~15_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~17_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~19_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~21\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~23\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~25_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~26_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[284]~281_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~22_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[284]~245_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_14~1_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_14~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_13~20_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[283]~246_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[297]~247_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[297]~248_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_15~1_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|op_15~2_combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~3_combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~1_cout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~3_cout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~5_cout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~7_cout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~9_cout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~11_cout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~13_cout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~2_combout\ : std_logic;
SIGNAL \inst1|inst2|LPM_COMPARE_component|auto_generated|aleb~combout\ : std_logic;
SIGNAL \toggle_temp~input_o\ : std_logic;
SIGNAL \inst1|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst3~q\ : std_logic;
SIGNAL \inst1|inst6|LPM_MUX_component|auto_generated|result_node[7]~0_combout\ : std_logic;
SIGNAL \inst1|inst6|LPM_MUX_component|auto_generated|result_node[6]~1_combout\ : std_logic;
SIGNAL \inst1|inst6|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ : std_logic;
SIGNAL \inst1|inst6|LPM_MUX_component|auto_generated|result_node[4]~3_combout\ : std_logic;
SIGNAL \inst1|inst6|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \inst1|inst6|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ : std_logic;
SIGNAL \inst1|inst6|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ : std_logic;
SIGNAL \inst1|inst6|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|next_addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|adc_mega_0|CH0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|ALT_INV_cs_n~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|ALT_INV_sclk~q\ : std_logic;
SIGNAL \ALT_INV_aclr~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY0~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ADC_SCLK <= ww_ADC_SCLK;
ww_CLOCK_50 <= CLOCK_50;
ww_ADC_SDAT <= ADC_SDAT;
ww_KEY0 <= KEY0;
ADC_CS_N <= ww_ADC_CS_N;
ADC_SADDR <= ww_ADC_SADDR;
motor <= ww_motor;
ww_toggle_temp <= toggle_temp;
ww_updown <= updown;
ww_aclr <= aclr;
ww_set_value <= set_value;
Q <= ww_Q;
bcd <= ww_bcd;
user_value <= ww_user_value;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\set_value~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \set_value~input_o\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\aclr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \aclr~input_o\);
\inst|adc_mega_0|ADC_CTRL|ALT_INV_cs_n~2_combout\ <= NOT \inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\;
\inst|adc_mega_0|ADC_CTRL|ALT_INV_sclk~q\ <= NOT \inst|adc_mega_0|ADC_CTRL|sclk~q\;
\ALT_INV_aclr~inputclkctrl_outclk\ <= NOT \aclr~inputclkctrl_outclk\;
\ALT_INV_KEY0~input_o\ <= NOT \KEY0~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X45_Y34_N2
\ADC_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|adc_mega_0|ADC_CTRL|ALT_INV_sclk~q\,
	devoe => ww_devoe,
	o => \ADC_SCLK~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\ADC_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|adc_mega_0|ADC_CTRL|ALT_INV_cs_n~2_combout\,
	devoe => ww_devoe,
	o => \ADC_CS_N~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\ADC_SADDR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(5),
	devoe => ww_devoe,
	o => \ADC_SADDR~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\motor~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2|LPM_COMPARE_component|auto_generated|aleb~combout\,
	devoe => ww_devoe,
	o => \motor~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\Q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst~q\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\bcd[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[7]~0_combout\,
	devoe => ww_devoe,
	o => \bcd[7]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\bcd[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[6]~1_combout\,
	devoe => ww_devoe,
	o => \bcd[6]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\bcd[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[5]~2_combout\,
	devoe => ww_devoe,
	o => \bcd[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\bcd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[4]~3_combout\,
	devoe => ww_devoe,
	o => \bcd[4]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\bcd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	devoe => ww_devoe,
	o => \bcd[3]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\bcd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[2]~5_combout\,
	devoe => ww_devoe,
	o => \bcd[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\bcd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[1]~6_combout\,
	devoe => ww_devoe,
	o => \bcd[1]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\bcd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[0]~7_combout\,
	devoe => ww_devoe,
	o => \bcd[0]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\user_value[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \user_value[7]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\user_value[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \user_value[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\user_value[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \user_value[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\user_value[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \user_value[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\user_value[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \user_value[3]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\user_value[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \user_value[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\user_value[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \user_value[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\user_value[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \user_value[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G18
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X40_Y18_N8
\inst|adc_mega_0|ADC_CTRL|counter[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[0]~10_combout\ = !\inst|adc_mega_0|ADC_CTRL|counter\(0)
-- \inst|adc_mega_0|ADC_CTRL|counter[0]~11\ = CARRY(!\inst|adc_mega_0|ADC_CTRL|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(0),
	combout => \inst|adc_mega_0|ADC_CTRL|counter[0]~10_combout\,
	cout => \inst|adc_mega_0|ADC_CTRL|counter[0]~11\);

-- Location: LCCOMB_X39_Y18_N4
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X53_Y14_N1
\KEY0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: LCCOMB_X39_Y18_N22
\inst|adc_mega_0|ADC_CTRL|next_addr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\ = !\inst|adc_mega_0|ADC_CTRL|address\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|address\(0),
	combout => \inst|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\);

-- Location: FF_X39_Y18_N23
\inst|adc_mega_0|ADC_CTRL|next_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|next_addr\(0));

-- Location: LCCOMB_X39_Y18_N26
\inst|adc_mega_0|ADC_CTRL|currState.resetState~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\);

-- Location: FF_X39_Y18_N27
\inst|adc_mega_0|ADC_CTRL|currState.resetState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\);

-- Location: LCCOMB_X39_Y18_N28
\inst|adc_mega_0|ADC_CTRL|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Add2~1_combout\ = \inst|adc_mega_0|ADC_CTRL|address\(0) $ (\inst|adc_mega_0|ADC_CTRL|address\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|address\(0),
	datad => \inst|adc_mega_0|ADC_CTRL|address\(1),
	combout => \inst|adc_mega_0|ADC_CTRL|Add2~1_combout\);

-- Location: FF_X39_Y18_N29
\inst|adc_mega_0|ADC_CTRL|next_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|Add2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|next_addr\(1));

-- Location: LCCOMB_X39_Y18_N16
\inst|adc_mega_0|ADC_CTRL|address~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|address~3_combout\ = (\inst|adc_mega_0|ADC_CTRL|next_addr\(1) & (\inst|adc_mega_0|ADC_CTRL|currState.resetState~q\ & \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|next_addr\(1),
	datac => \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|address~3_combout\);

-- Location: LCCOMB_X39_Y18_N8
\inst|adc_mega_0|ADC_CTRL|address[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|address[0]~1_combout\ = \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\ $ (!\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|address[0]~1_combout\);

-- Location: FF_X39_Y18_N17
\inst|adc_mega_0|ADC_CTRL|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|address~3_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|address\(1));

-- Location: LCCOMB_X39_Y18_N18
\inst|adc_mega_0|ADC_CTRL|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Add2~0_combout\ = \inst|adc_mega_0|ADC_CTRL|address\(2) $ (((\inst|adc_mega_0|ADC_CTRL|address\(0) & \inst|adc_mega_0|ADC_CTRL|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|address\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|address\(2),
	datad => \inst|adc_mega_0|ADC_CTRL|address\(1),
	combout => \inst|adc_mega_0|ADC_CTRL|Add2~0_combout\);

-- Location: FF_X39_Y18_N19
\inst|adc_mega_0|ADC_CTRL|next_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|next_addr\(2));

-- Location: LCCOMB_X39_Y18_N14
\inst|adc_mega_0|ADC_CTRL|address~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|address~2_combout\ = (\inst|adc_mega_0|ADC_CTRL|next_addr\(2) & (\inst|adc_mega_0|ADC_CTRL|currState.resetState~q\ & \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|next_addr\(2),
	datac => \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|address~2_combout\);

-- Location: FF_X39_Y18_N15
\inst|adc_mega_0|ADC_CTRL|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|address~2_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|address\(2));

-- Location: LCCOMB_X39_Y18_N12
\inst|adc_mega_0|ADC_CTRL|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ = ((!\inst|adc_mega_0|ADC_CTRL|address\(1)) # (!\inst|adc_mega_0|ADC_CTRL|address\(2))) # (!\inst|adc_mega_0|ADC_CTRL|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|address\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|address\(2),
	datad => \inst|adc_mega_0|ADC_CTRL|address\(1),
	combout => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y18_N20
\inst|adc_mega_0|ADC_CTRL|address~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|address~0_combout\ = ((\inst|adc_mega_0|ADC_CTRL|next_addr\(0) & \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\)) # (!\inst|adc_mega_0|ADC_CTRL|currState.resetState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|next_addr\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|address~0_combout\);

-- Location: FF_X39_Y18_N21
\inst|adc_mega_0|ADC_CTRL|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|address~0_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|address[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|address\(0));

-- Location: LCCOMB_X39_Y18_N10
\inst|adc_mega_0|ADC_CTRL|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\ = (!\inst|adc_mega_0|ADC_CTRL|address\(0) & (!\inst|adc_mega_0|ADC_CTRL|address\(2) & !\inst|adc_mega_0|ADC_CTRL|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|address\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|address\(2),
	datad => \inst|adc_mega_0|ADC_CTRL|address\(1),
	combout => \inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\);

-- Location: LCCOMB_X43_Y18_N20
\inst|adc_mega_0|CH0[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0[8]~1_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\) # (\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0[8]~1_combout\);

-- Location: LCCOMB_X40_Y19_N2
\inst|adc_mega_0|go~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|go~0_combout\ = !\inst|adc_mega_0|CH0[8]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|CH0[8]~1_combout\,
	combout => \inst|adc_mega_0|go~0_combout\);

-- Location: FF_X40_Y19_N3
\inst|adc_mega_0|go\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|go~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|go~q\);

-- Location: LCCOMB_X43_Y18_N26
\inst|adc_mega_0|ADC_CTRL|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector2~1_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & ((\inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\) # ((\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & \inst|adc_mega_0|go~q\)))) # 
-- (!\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & (((\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & \inst|adc_mega_0|go~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datad => \inst|adc_mega_0|go~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|Selector2~1_combout\);

-- Location: FF_X43_Y18_N27
\inst|adc_mega_0|ADC_CTRL|currState.doneState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\);

-- Location: LCCOMB_X39_Y18_N0
\inst|adc_mega_0|ADC_CTRL|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\ = ((!\inst|adc_mega_0|go~q\ & ((\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\) # (\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\)))) # (!\inst|adc_mega_0|ADC_CTRL|currState.resetState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datab => \inst|adc_mega_0|go~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\);

-- Location: FF_X39_Y18_N1
\inst|adc_mega_0|ADC_CTRL|currState.waitState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\);

-- Location: LCCOMB_X43_Y18_N18
\inst|adc_mega_0|ADC_CTRL|sclk_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\ = (!\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & (!\inst|adc_mega_0|ADC_CTRL|sclk_counter\(0) & !\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	datad => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\);

-- Location: LCCOMB_X43_Y18_N30
\inst|adc_mega_0|ADC_CTRL|sclk_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\ = (!\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & !\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\);

-- Location: LCCOMB_X40_Y18_N10
\inst|adc_mega_0|ADC_CTRL|counter[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[1]~12_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(1) & (\inst|adc_mega_0|ADC_CTRL|counter[0]~11\ $ (GND))) # (!\inst|adc_mega_0|ADC_CTRL|counter\(1) & (!\inst|adc_mega_0|ADC_CTRL|counter[0]~11\ & VCC))
-- \inst|adc_mega_0|ADC_CTRL|counter[1]~13\ = CARRY((\inst|adc_mega_0|ADC_CTRL|counter\(1) & !\inst|adc_mega_0|ADC_CTRL|counter[0]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(1),
	datad => VCC,
	cin => \inst|adc_mega_0|ADC_CTRL|counter[0]~11\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[1]~12_combout\,
	cout => \inst|adc_mega_0|ADC_CTRL|counter[1]~13\);

-- Location: LCCOMB_X40_Y18_N12
\inst|adc_mega_0|ADC_CTRL|counter[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[2]~14_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(2) & (!\inst|adc_mega_0|ADC_CTRL|counter[1]~13\)) # (!\inst|adc_mega_0|ADC_CTRL|counter\(2) & ((\inst|adc_mega_0|ADC_CTRL|counter[1]~13\) # (GND)))
-- \inst|adc_mega_0|ADC_CTRL|counter[2]~15\ = CARRY((!\inst|adc_mega_0|ADC_CTRL|counter[1]~13\) # (!\inst|adc_mega_0|ADC_CTRL|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(2),
	datad => VCC,
	cin => \inst|adc_mega_0|ADC_CTRL|counter[1]~13\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[2]~14_combout\,
	cout => \inst|adc_mega_0|ADC_CTRL|counter[2]~15\);

-- Location: FF_X40_Y18_N13
\inst|adc_mega_0|ADC_CTRL|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|counter[2]~14_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => \inst|adc_mega_0|ADC_CTRL|counter[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(2));

-- Location: LCCOMB_X40_Y18_N14
\inst|adc_mega_0|ADC_CTRL|counter[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[3]~16_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(3) & (\inst|adc_mega_0|ADC_CTRL|counter[2]~15\ & VCC)) # (!\inst|adc_mega_0|ADC_CTRL|counter\(3) & (!\inst|adc_mega_0|ADC_CTRL|counter[2]~15\))
-- \inst|adc_mega_0|ADC_CTRL|counter[3]~17\ = CARRY((!\inst|adc_mega_0|ADC_CTRL|counter\(3) & !\inst|adc_mega_0|ADC_CTRL|counter[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(3),
	datad => VCC,
	cin => \inst|adc_mega_0|ADC_CTRL|counter[2]~15\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[3]~16_combout\,
	cout => \inst|adc_mega_0|ADC_CTRL|counter[3]~17\);

-- Location: FF_X40_Y18_N15
\inst|adc_mega_0|ADC_CTRL|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|counter[3]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => \inst|adc_mega_0|ADC_CTRL|counter[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(3));

-- Location: LCCOMB_X40_Y18_N16
\inst|adc_mega_0|ADC_CTRL|counter[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[4]~18_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(4) & ((GND) # (!\inst|adc_mega_0|ADC_CTRL|counter[3]~17\))) # (!\inst|adc_mega_0|ADC_CTRL|counter\(4) & (\inst|adc_mega_0|ADC_CTRL|counter[3]~17\ $ (GND)))
-- \inst|adc_mega_0|ADC_CTRL|counter[4]~19\ = CARRY((\inst|adc_mega_0|ADC_CTRL|counter\(4)) # (!\inst|adc_mega_0|ADC_CTRL|counter[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(4),
	datad => VCC,
	cin => \inst|adc_mega_0|ADC_CTRL|counter[3]~17\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[4]~18_combout\,
	cout => \inst|adc_mega_0|ADC_CTRL|counter[4]~19\);

-- Location: FF_X40_Y18_N17
\inst|adc_mega_0|ADC_CTRL|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|counter[4]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => \inst|adc_mega_0|ADC_CTRL|counter[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(4));

-- Location: LCCOMB_X40_Y18_N18
\inst|adc_mega_0|ADC_CTRL|counter[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[5]~20_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(5) & (\inst|adc_mega_0|ADC_CTRL|counter[4]~19\ & VCC)) # (!\inst|adc_mega_0|ADC_CTRL|counter\(5) & (!\inst|adc_mega_0|ADC_CTRL|counter[4]~19\))
-- \inst|adc_mega_0|ADC_CTRL|counter[5]~21\ = CARRY((!\inst|adc_mega_0|ADC_CTRL|counter\(5) & !\inst|adc_mega_0|ADC_CTRL|counter[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(5),
	datad => VCC,
	cin => \inst|adc_mega_0|ADC_CTRL|counter[4]~19\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[5]~20_combout\,
	cout => \inst|adc_mega_0|ADC_CTRL|counter[5]~21\);

-- Location: FF_X40_Y18_N19
\inst|adc_mega_0|ADC_CTRL|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|counter[5]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => \inst|adc_mega_0|ADC_CTRL|counter[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(5));

-- Location: LCCOMB_X40_Y18_N20
\inst|adc_mega_0|ADC_CTRL|counter[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[6]~22_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(6) & ((GND) # (!\inst|adc_mega_0|ADC_CTRL|counter[5]~21\))) # (!\inst|adc_mega_0|ADC_CTRL|counter\(6) & (\inst|adc_mega_0|ADC_CTRL|counter[5]~21\ $ (GND)))
-- \inst|adc_mega_0|ADC_CTRL|counter[6]~23\ = CARRY((\inst|adc_mega_0|ADC_CTRL|counter\(6)) # (!\inst|adc_mega_0|ADC_CTRL|counter[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(6),
	datad => VCC,
	cin => \inst|adc_mega_0|ADC_CTRL|counter[5]~21\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[6]~22_combout\,
	cout => \inst|adc_mega_0|ADC_CTRL|counter[6]~23\);

-- Location: FF_X40_Y18_N21
\inst|adc_mega_0|ADC_CTRL|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|counter[6]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => \inst|adc_mega_0|ADC_CTRL|counter[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(6));

-- Location: LCCOMB_X40_Y18_N22
\inst|adc_mega_0|ADC_CTRL|counter[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[7]~24_combout\ = \inst|adc_mega_0|ADC_CTRL|counter\(7) $ (!\inst|adc_mega_0|ADC_CTRL|counter[6]~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(7),
	cin => \inst|adc_mega_0|ADC_CTRL|counter[6]~23\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[7]~24_combout\);

-- Location: FF_X40_Y18_N23
\inst|adc_mega_0|ADC_CTRL|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|counter[7]~24_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => \inst|adc_mega_0|ADC_CTRL|counter[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(7));

-- Location: LCCOMB_X40_Y18_N0
\inst|adc_mega_0|ADC_CTRL|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(7)) # ((\inst|adc_mega_0|ADC_CTRL|counter\(5)) # ((\inst|adc_mega_0|ADC_CTRL|counter\(4)) # (\inst|adc_mega_0|ADC_CTRL|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(7),
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(5),
	datac => \inst|adc_mega_0|ADC_CTRL|counter\(4),
	datad => \inst|adc_mega_0|ADC_CTRL|counter\(6),
	combout => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\);

-- Location: LCCOMB_X43_Y18_N24
\inst|adc_mega_0|ADC_CTRL|sclk_counter[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk_counter[3]~3_combout\ = ((\inst|adc_mega_0|ADC_CTRL|sclk~q\ & (!\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ & !\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\))) # (!\inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|sclk_counter[3]~3_combout\);

-- Location: FF_X43_Y18_N19
\inst|adc_mega_0|ADC_CTRL|sclk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|sclk_counter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(0));

-- Location: LCCOMB_X43_Y18_N12
\inst|adc_mega_0|ADC_CTRL|sclk_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk_counter~6_combout\ = (!\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ & (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(0) $ (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(1),
	datad => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|sclk_counter~6_combout\);

-- Location: FF_X43_Y18_N13
\inst|adc_mega_0|ADC_CTRL|sclk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|sclk_counter~6_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|sclk_counter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(1));

-- Location: LCCOMB_X43_Y18_N4
\inst|adc_mega_0|ADC_CTRL|sclk_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk_counter~4_combout\ = (\inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\ & (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(2) $ (((\inst|adc_mega_0|ADC_CTRL|sclk_counter\(0) & \inst|adc_mega_0|ADC_CTRL|sclk_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(2),
	datad => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(1),
	combout => \inst|adc_mega_0|ADC_CTRL|sclk_counter~4_combout\);

-- Location: FF_X43_Y18_N5
\inst|adc_mega_0|ADC_CTRL|sclk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|sclk_counter~4_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|sclk_counter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(2));

-- Location: LCCOMB_X43_Y18_N22
\inst|adc_mega_0|ADC_CTRL|always5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|always5~0_combout\ = (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(0) & (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(2) & \inst|adc_mega_0|ADC_CTRL|sclk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(2),
	datad => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(1),
	combout => \inst|adc_mega_0|ADC_CTRL|always5~0_combout\);

-- Location: LCCOMB_X43_Y18_N14
\inst|adc_mega_0|ADC_CTRL|sclk_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk_counter~7_combout\ = (!\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ & (\inst|adc_mega_0|ADC_CTRL|always5~0_combout\ $ (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|always5~0_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datad => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|sclk_counter~7_combout\);

-- Location: FF_X43_Y18_N15
\inst|adc_mega_0|ADC_CTRL|sclk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|sclk_counter~7_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|sclk_counter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(3));

-- Location: LCCOMB_X40_Y18_N30
\inst|adc_mega_0|ADC_CTRL|always5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|always5~1_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(1) & (\inst|adc_mega_0|ADC_CTRL|counter\(0) & (!\inst|adc_mega_0|ADC_CTRL|counter\(3) & \inst|adc_mega_0|ADC_CTRL|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(1),
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|counter\(3),
	datad => \inst|adc_mega_0|ADC_CTRL|counter\(2),
	combout => \inst|adc_mega_0|ADC_CTRL|always5~1_combout\);

-- Location: LCCOMB_X40_Y18_N28
\inst|adc_mega_0|ADC_CTRL|always5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|always5~2_combout\ = (!\inst|adc_mega_0|ADC_CTRL|counter\(4) & (!\inst|adc_mega_0|ADC_CTRL|counter\(7) & \inst|adc_mega_0|ADC_CTRL|sclk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(4),
	datac => \inst|adc_mega_0|ADC_CTRL|counter\(7),
	datad => \inst|adc_mega_0|ADC_CTRL|sclk~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|always5~2_combout\);

-- Location: LCCOMB_X40_Y18_N2
\inst|adc_mega_0|ADC_CTRL|always5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|always5~3_combout\ = (!\inst|adc_mega_0|ADC_CTRL|counter\(6) & (!\inst|adc_mega_0|ADC_CTRL|counter\(5) & (\inst|adc_mega_0|ADC_CTRL|always5~1_combout\ & \inst|adc_mega_0|ADC_CTRL|always5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(6),
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(5),
	datac => \inst|adc_mega_0|ADC_CTRL|always5~1_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|always5~2_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|always5~3_combout\);

-- Location: LCCOMB_X43_Y18_N8
\inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.transState~q\ & (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(3) & (\inst|adc_mega_0|ADC_CTRL|always5~3_combout\ & \inst|adc_mega_0|ADC_CTRL|always5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.transState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datac => \inst|adc_mega_0|ADC_CTRL|always5~3_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|always5~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\);

-- Location: FF_X43_Y18_N9
\inst|adc_mega_0|ADC_CTRL|currState.pauseState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\);

-- Location: LCCOMB_X40_Y19_N8
\inst|adc_mega_0|ADC_CTRL|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\ = (\inst|adc_mega_0|go~q\ & \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|go~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\);

-- Location: LCCOMB_X43_Y18_N28
\inst|adc_mega_0|ADC_CTRL|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.transState~q\ & (((!\inst|adc_mega_0|ADC_CTRL|always5~0_combout\) # (!\inst|adc_mega_0|ADC_CTRL|always5~3_combout\)) # (!\inst|adc_mega_0|ADC_CTRL|sclk_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.transState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datac => \inst|adc_mega_0|ADC_CTRL|always5~3_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|always5~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\);

-- Location: LCCOMB_X43_Y18_N10
\inst|adc_mega_0|ADC_CTRL|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\ = (\inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\) # ((\inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\) # ((\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & 
-- !\inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\);

-- Location: FF_X43_Y18_N11
\inst|adc_mega_0|ADC_CTRL|currState.transState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|currState.transState~q\);

-- Location: LCCOMB_X39_Y18_N30
\inst|adc_mega_0|ADC_CTRL|counter[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[3]~26_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.transState~q\ & (((!\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & !\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\)))) # 
-- (!\inst|adc_mega_0|ADC_CTRL|currState.transState~q\ & (((!\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & !\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\)) # (!\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.transState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[3]~26_combout\);

-- Location: FF_X40_Y18_N9
\inst|adc_mega_0|ADC_CTRL|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|counter[0]~10_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => \inst|adc_mega_0|ADC_CTRL|counter[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(0));

-- Location: FF_X40_Y18_N11
\inst|adc_mega_0|ADC_CTRL|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|counter[1]~12_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	sload => \inst|adc_mega_0|ADC_CTRL|counter[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(1));

-- Location: LCCOMB_X40_Y18_N26
\inst|adc_mega_0|ADC_CTRL|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ = (((\inst|adc_mega_0|ADC_CTRL|counter\(3)) # (!\inst|adc_mega_0|ADC_CTRL|counter\(2))) # (!\inst|adc_mega_0|ADC_CTRL|counter\(0))) # (!\inst|adc_mega_0|ADC_CTRL|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(1),
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|counter\(3),
	datad => \inst|adc_mega_0|ADC_CTRL|counter\(2),
	combout => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\);

-- Location: LCCOMB_X43_Y18_N16
\inst|adc_mega_0|ADC_CTRL|cs_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\) # (\inst|adc_mega_0|ADC_CTRL|currState.transState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.transState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\);

-- Location: LCCOMB_X40_Y18_N24
\inst|adc_mega_0|ADC_CTRL|sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk~0_combout\ = (\inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\ & (\inst|adc_mega_0|ADC_CTRL|sclk~q\ $ (((!\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ & !\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|sclk~0_combout\);

-- Location: FF_X40_Y18_N25
\inst|adc_mega_0|ADC_CTRL|sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|sclk~0_combout\,
	clrn => \ALT_INV_KEY0~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|sclk~q\);

-- Location: LCCOMB_X39_Y18_N24
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~10_combout\ = (\inst|adc_mega_0|ADC_CTRL|next_addr\(0) & (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|next_addr\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~10_combout\);

-- Location: LCCOMB_X40_Y19_N12
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~11_combout\ = (!\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & ((\inst|adc_mega_0|ADC_CTRL|sclk~q\) # ((\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\) # (\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~11_combout\);

-- Location: LCCOMB_X40_Y19_N4
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\ = (\inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\) # ((\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~10_combout\) # ((\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0) & 
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~10_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0),
	datad => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~11_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\);

-- Location: FF_X40_Y19_N5
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0));

-- Location: LCCOMB_X40_Y19_N22
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & (((\inst|adc_mega_0|ADC_CTRL|next_addr\(1) & \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\)))) # 
-- (!\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|next_addr\(1),
	datad => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\);

-- Location: LCCOMB_X40_Y19_N24
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~13_combout\ = (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\ & ((!\inst|adc_mega_0|go~q\) # (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\,
	datad => \inst|adc_mega_0|go~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~13_combout\);

-- Location: LCCOMB_X40_Y19_N20
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~3_combout\ = (\inst|adc_mega_0|ADC_CTRL|sclk~q\) # (\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~3_combout\);

-- Location: LCCOMB_X40_Y19_N30
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~4_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\) # ((\inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\) # ((!\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & 
-- !\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~3_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~4_combout\);

-- Location: FF_X40_Y19_N25
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~13_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(1));

-- Location: LCCOMB_X40_Y19_N14
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & ((\inst|adc_mega_0|ADC_CTRL|next_addr\(2)))) # (!\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(1),
	datac => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|next_addr\(2),
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\);

-- Location: LCCOMB_X40_Y19_N26
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\ = (!\inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\ & (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\ & ((\inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\) # 
-- (!\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\);

-- Location: FF_X40_Y19_N27
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(2));

-- Location: LCCOMB_X40_Y19_N28
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\ = (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(2) & (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ $ (((!\inst|adc_mega_0|go~q\) # (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(2),
	datac => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datad => \inst|adc_mega_0|go~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\);

-- Location: FF_X40_Y19_N29
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(3));

-- Location: LCCOMB_X40_Y19_N18
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\ = (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(3) & (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ $ (((!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\) # (!\inst|adc_mega_0|go~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datab => \inst|adc_mega_0|go~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(3),
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\);

-- Location: FF_X40_Y19_N19
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(4));

-- Location: LCCOMB_X40_Y19_N16
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\ = (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(4) & (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ $ (((!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\) # (!\inst|adc_mega_0|go~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datab => \inst|adc_mega_0|go~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(4),
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\);

-- Location: FF_X40_Y19_N17
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(5));

-- Location: IOIBUF_X25_Y34_N1
\ADC_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SDAT,
	o => \ADC_SDAT~input_o\);

-- Location: LCCOMB_X41_Y18_N6
\inst|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder_combout\ = \ADC_SDAT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_SDAT~input_o\,
	combout => \inst|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder_combout\);

-- Location: LCCOMB_X41_Y18_N4
\inst|adc_mega_0|ADC_CTRL|always7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|always7~0_combout\ = (\inst|adc_mega_0|ADC_CTRL|always5~3_combout\ & ((!\inst|adc_mega_0|ADC_CTRL|sclk_counter\(3)) # (!\inst|adc_mega_0|ADC_CTRL|always5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|always5~0_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datad => \inst|adc_mega_0|ADC_CTRL|always5~3_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\);

-- Location: FF_X41_Y18_N7
\inst|adc_mega_0|ADC_CTRL|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(0));

-- Location: LCCOMB_X41_Y18_N10
\inst|adc_mega_0|ADC_CTRL|shift_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|shift_reg[1]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(0),
	combout => \inst|adc_mega_0|ADC_CTRL|shift_reg[1]~feeder_combout\);

-- Location: FF_X41_Y18_N11
\inst|adc_mega_0|ADC_CTRL|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|shift_reg[1]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(1));

-- Location: LCCOMB_X41_Y18_N8
\inst|adc_mega_0|ADC_CTRL|shift_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|shift_reg[2]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(1),
	combout => \inst|adc_mega_0|ADC_CTRL|shift_reg[2]~feeder_combout\);

-- Location: FF_X41_Y18_N9
\inst|adc_mega_0|ADC_CTRL|shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|shift_reg[2]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(2));

-- Location: FF_X41_Y18_N31
\inst|adc_mega_0|ADC_CTRL|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|adc_mega_0|ADC_CTRL|shift_reg\(2),
	sload => VCC,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(3));

-- Location: FF_X41_Y18_N27
\inst|adc_mega_0|ADC_CTRL|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|adc_mega_0|ADC_CTRL|shift_reg\(3),
	sload => VCC,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(4));

-- Location: FF_X41_Y18_N29
\inst|adc_mega_0|ADC_CTRL|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|adc_mega_0|ADC_CTRL|shift_reg\(4),
	sload => VCC,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(5));

-- Location: LCCOMB_X41_Y18_N18
\inst|adc_mega_0|ADC_CTRL|shift_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|shift_reg[6]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(5),
	combout => \inst|adc_mega_0|ADC_CTRL|shift_reg[6]~feeder_combout\);

-- Location: FF_X41_Y18_N19
\inst|adc_mega_0|ADC_CTRL|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|shift_reg[6]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(6));

-- Location: LCCOMB_X41_Y18_N16
\inst|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(6),
	combout => \inst|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder_combout\);

-- Location: FF_X41_Y18_N17
\inst|adc_mega_0|ADC_CTRL|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(7));

-- Location: LCCOMB_X41_Y18_N22
\inst|adc_mega_0|ADC_CTRL|reading0[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[8]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(7),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[8]~feeder_combout\);

-- Location: LCCOMB_X39_Y18_N6
\inst|adc_mega_0|ADC_CTRL|reading0[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[11]~0_combout\ = (\inst|adc_mega_0|ADC_CTRL|address\(0) & (!\inst|adc_mega_0|ADC_CTRL|address\(2) & !\inst|adc_mega_0|ADC_CTRL|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|address\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|address\(2),
	datad => \inst|adc_mega_0|ADC_CTRL|address\(1),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[11]~0_combout\);

-- Location: LCCOMB_X40_Y18_N6
\inst|adc_mega_0|ADC_CTRL|reading0[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\ = (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(3) & (\inst|adc_mega_0|ADC_CTRL|reading0[11]~0_combout\ & (\inst|adc_mega_0|ADC_CTRL|always5~0_combout\ & \inst|adc_mega_0|ADC_CTRL|always5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datab => \inst|adc_mega_0|ADC_CTRL|reading0[11]~0_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|always5~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|always5~3_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\);

-- Location: FF_X41_Y18_N23
\inst|adc_mega_0|ADC_CTRL|reading0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|reading0[8]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(8));

-- Location: LCCOMB_X38_Y18_N0
\inst|adc_mega_0|CH0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~3_combout\ = (!\KEY0~input_o\ & \inst|adc_mega_0|ADC_CTRL|reading0\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY0~input_o\,
	datad => \inst|adc_mega_0|ADC_CTRL|reading0\(8),
	combout => \inst|adc_mega_0|CH0~3_combout\);

-- Location: FF_X38_Y18_N1
\inst|adc_mega_0|CH0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~3_combout\,
	ena => \inst|adc_mega_0|CH0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(8));

-- Location: LCCOMB_X41_Y18_N20
\inst|adc_mega_0|ADC_CTRL|shift_reg[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|shift_reg[8]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(7),
	combout => \inst|adc_mega_0|ADC_CTRL|shift_reg[8]~feeder_combout\);

-- Location: FF_X41_Y18_N21
\inst|adc_mega_0|ADC_CTRL|shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|shift_reg[8]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(8));

-- Location: FF_X41_Y18_N5
\inst|adc_mega_0|ADC_CTRL|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|adc_mega_0|ADC_CTRL|shift_reg\(8),
	sload => VCC,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(9));

-- Location: FF_X41_Y18_N1
\inst|adc_mega_0|ADC_CTRL|reading0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|adc_mega_0|ADC_CTRL|shift_reg\(9),
	sload => VCC,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(10));

-- Location: LCCOMB_X44_Y18_N30
\inst|adc_mega_0|CH0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~2_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(10) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|reading0\(10),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~2_combout\);

-- Location: FF_X44_Y18_N31
\inst|adc_mega_0|CH0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~2_combout\,
	ena => \inst|adc_mega_0|CH0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(10));

-- Location: FF_X41_Y18_N15
\inst|adc_mega_0|ADC_CTRL|shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|adc_mega_0|ADC_CTRL|shift_reg\(9),
	sload => VCC,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(10));

-- Location: LCCOMB_X41_Y18_N24
\inst|adc_mega_0|ADC_CTRL|reading0[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(10),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\);

-- Location: FF_X41_Y18_N25
\inst|adc_mega_0|ADC_CTRL|reading0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(11));

-- Location: LCCOMB_X44_Y18_N8
\inst|adc_mega_0|CH0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~0_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(11) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|reading0\(11),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~0_combout\);

-- Location: FF_X44_Y18_N9
\inst|adc_mega_0|CH0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~0_combout\,
	ena => \inst|adc_mega_0|CH0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(11));

-- Location: LCCOMB_X38_Y18_N20
\inst|adc_mega_0|ADC_CTRL|reading0[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(8),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\);

-- Location: FF_X38_Y18_N21
\inst|adc_mega_0|ADC_CTRL|reading0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(9));

-- Location: LCCOMB_X38_Y18_N30
\inst|adc_mega_0|CH0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~4_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(9) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|reading0\(9),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~4_combout\);

-- Location: FF_X38_Y18_N31
\inst|adc_mega_0|CH0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~4_combout\,
	ena => \inst|adc_mega_0|CH0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(9));

-- Location: LCCOMB_X36_Y13_N6
\inst2|Mult0|mult_core|romout[2][9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[2][9]~1_combout\ = (\inst|adc_mega_0|CH0\(10) & (((!\inst|adc_mega_0|CH0\(11) & \inst|adc_mega_0|CH0\(9))))) # (!\inst|adc_mega_0|CH0\(10) & (\inst|adc_mega_0|CH0\(11) & ((!\inst|adc_mega_0|CH0\(9)) # 
-- (!\inst|adc_mega_0|CH0\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(8),
	datab => \inst|adc_mega_0|CH0\(10),
	datac => \inst|adc_mega_0|CH0\(11),
	datad => \inst|adc_mega_0|CH0\(9),
	combout => \inst2|Mult0|mult_core|romout[2][9]~1_combout\);

-- Location: LCCOMB_X36_Y13_N4
\inst2|Mult0|mult_core|romout[2][8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[2][8]~2_combout\ = (\inst|adc_mega_0|CH0\(10) & ((\inst|adc_mega_0|CH0\(11) & ((\inst|adc_mega_0|CH0\(8)) # (\inst|adc_mega_0|CH0\(9)))) # (!\inst|adc_mega_0|CH0\(11) & ((!\inst|adc_mega_0|CH0\(9)))))) # 
-- (!\inst|adc_mega_0|CH0\(10) & (\inst|adc_mega_0|CH0\(11) $ (((\inst|adc_mega_0|CH0\(8) & \inst|adc_mega_0|CH0\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(8),
	datab => \inst|adc_mega_0|CH0\(10),
	datac => \inst|adc_mega_0|CH0\(11),
	datad => \inst|adc_mega_0|CH0\(9),
	combout => \inst2|Mult0|mult_core|romout[2][8]~2_combout\);

-- Location: LCCOMB_X36_Y13_N10
\inst2|Mult0|mult_core|romout[2][7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[2][7]~3_combout\ = \inst|adc_mega_0|CH0\(10) $ (((\inst|adc_mega_0|CH0\(8) & (\inst|adc_mega_0|CH0\(11) & !\inst|adc_mega_0|CH0\(9))) # (!\inst|adc_mega_0|CH0\(8) & ((\inst|adc_mega_0|CH0\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(8),
	datab => \inst|adc_mega_0|CH0\(10),
	datac => \inst|adc_mega_0|CH0\(11),
	datad => \inst|adc_mega_0|CH0\(9),
	combout => \inst2|Mult0|mult_core|romout[2][7]~3_combout\);

-- Location: LCCOMB_X36_Y13_N12
\inst2|Mult0|mult_core|romout[2][6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[2][6]~14_combout\ = \inst|adc_mega_0|CH0\(9) $ (((\inst|adc_mega_0|CH0\(8) & !\inst|adc_mega_0|CH0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(8),
	datac => \inst|adc_mega_0|CH0\(11),
	datad => \inst|adc_mega_0|CH0\(9),
	combout => \inst2|Mult0|mult_core|romout[2][6]~14_combout\);

-- Location: LCCOMB_X40_Y18_N4
\inst|adc_mega_0|ADC_CTRL|reading0[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[7]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(6),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[7]~feeder_combout\);

-- Location: FF_X40_Y18_N5
\inst|adc_mega_0|ADC_CTRL|reading0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|reading0[7]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(7));

-- Location: LCCOMB_X38_Y18_N28
\inst|adc_mega_0|CH0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~5_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(7) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|reading0\(7),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~5_combout\);

-- Location: FF_X38_Y18_N29
\inst|adc_mega_0|CH0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~5_combout\,
	ena => \inst|adc_mega_0|CH0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(7));

-- Location: LCCOMB_X41_Y18_N2
\inst|adc_mega_0|ADC_CTRL|reading0[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[6]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(5),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[6]~feeder_combout\);

-- Location: FF_X41_Y18_N3
\inst|adc_mega_0|ADC_CTRL|reading0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|reading0[6]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(6));

-- Location: LCCOMB_X38_Y18_N6
\inst|adc_mega_0|CH0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~6_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(6) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|reading0\(6),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~6_combout\);

-- Location: FF_X38_Y18_N7
\inst|adc_mega_0|CH0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~6_combout\,
	ena => \inst|adc_mega_0|CH0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(6));

-- Location: LCCOMB_X38_Y18_N14
\inst|adc_mega_0|ADC_CTRL|reading0[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[4]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(3),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[4]~feeder_combout\);

-- Location: FF_X38_Y18_N15
\inst|adc_mega_0|ADC_CTRL|reading0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|reading0[4]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(4));

-- Location: LCCOMB_X38_Y18_N24
\inst|adc_mega_0|CH0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~7_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(4) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|reading0\(4),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~7_combout\);

-- Location: FF_X38_Y18_N25
\inst|adc_mega_0|CH0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~7_combout\,
	ena => \inst|adc_mega_0|CH0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(4));

-- Location: LCCOMB_X38_Y18_N12
\inst|adc_mega_0|ADC_CTRL|reading0[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(4),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\);

-- Location: FF_X38_Y18_N13
\inst|adc_mega_0|ADC_CTRL|reading0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(5));

-- Location: LCCOMB_X38_Y18_N2
\inst|adc_mega_0|CH0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~8_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(5) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|reading0\(5),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~8_combout\);

-- Location: FF_X38_Y18_N3
\inst|adc_mega_0|CH0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~8_combout\,
	ena => \inst|adc_mega_0|CH0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(5));

-- Location: LCCOMB_X37_Y13_N28
\inst2|Mult0|mult_core|romout[1][10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[1][10]~4_combout\ = (\inst|adc_mega_0|CH0\(7) & ((\inst|adc_mega_0|CH0\(6)) # ((\inst|adc_mega_0|CH0\(4) & \inst|adc_mega_0|CH0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(7),
	datab => \inst|adc_mega_0|CH0\(6),
	datac => \inst|adc_mega_0|CH0\(4),
	datad => \inst|adc_mega_0|CH0\(5),
	combout => \inst2|Mult0|mult_core|romout[1][10]~4_combout\);

-- Location: LCCOMB_X37_Y13_N26
\inst2|Mult0|mult_core|romout[1][9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[1][9]~5_combout\ = (\inst|adc_mega_0|CH0\(7) & (!\inst|adc_mega_0|CH0\(6) & ((!\inst|adc_mega_0|CH0\(5)) # (!\inst|adc_mega_0|CH0\(4))))) # (!\inst|adc_mega_0|CH0\(7) & (\inst|adc_mega_0|CH0\(6) & 
-- ((\inst|adc_mega_0|CH0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(7),
	datab => \inst|adc_mega_0|CH0\(6),
	datac => \inst|adc_mega_0|CH0\(4),
	datad => \inst|adc_mega_0|CH0\(5),
	combout => \inst2|Mult0|mult_core|romout[1][9]~5_combout\);

-- Location: LCCOMB_X37_Y13_N4
\inst2|Mult0|mult_core|romout[1][8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[1][8]~6_combout\ = (\inst|adc_mega_0|CH0\(6) & ((\inst|adc_mega_0|CH0\(7) & ((\inst|adc_mega_0|CH0\(4)) # (\inst|adc_mega_0|CH0\(5)))) # (!\inst|adc_mega_0|CH0\(7) & ((!\inst|adc_mega_0|CH0\(5)))))) # 
-- (!\inst|adc_mega_0|CH0\(6) & (\inst|adc_mega_0|CH0\(7) $ (((\inst|adc_mega_0|CH0\(4) & \inst|adc_mega_0|CH0\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(7),
	datab => \inst|adc_mega_0|CH0\(6),
	datac => \inst|adc_mega_0|CH0\(4),
	datad => \inst|adc_mega_0|CH0\(5),
	combout => \inst2|Mult0|mult_core|romout[1][8]~6_combout\);

-- Location: LCCOMB_X37_Y13_N24
\inst2|Mult0|mult_core|romout[1][7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[1][7]~7_combout\ = \inst|adc_mega_0|CH0\(6) $ (((\inst|adc_mega_0|CH0\(4) & (\inst|adc_mega_0|CH0\(7) & !\inst|adc_mega_0|CH0\(5))) # (!\inst|adc_mega_0|CH0\(4) & ((\inst|adc_mega_0|CH0\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(7),
	datab => \inst|adc_mega_0|CH0\(6),
	datac => \inst|adc_mega_0|CH0\(4),
	datad => \inst|adc_mega_0|CH0\(5),
	combout => \inst2|Mult0|mult_core|romout[1][7]~7_combout\);

-- Location: LCCOMB_X37_Y13_N30
\inst2|Mult0|mult_core|romout[1][6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[1][6]~8_combout\ = \inst|adc_mega_0|CH0\(5) $ (((!\inst|adc_mega_0|CH0\(7) & \inst|adc_mega_0|CH0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(7),
	datab => \inst|adc_mega_0|CH0\(5),
	datac => \inst|adc_mega_0|CH0\(4),
	combout => \inst2|Mult0|mult_core|romout[1][6]~8_combout\);

-- Location: LCCOMB_X41_Y18_N12
\inst|adc_mega_0|ADC_CTRL|reading0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(0),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\);

-- Location: FF_X41_Y18_N13
\inst|adc_mega_0|ADC_CTRL|reading0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(1));

-- Location: LCCOMB_X38_Y18_N18
\inst|adc_mega_0|CH0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~12_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(1) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|reading0\(1),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~12_combout\);

-- Location: FF_X38_Y18_N19
\inst|adc_mega_0|CH0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~12_combout\,
	ena => \inst|adc_mega_0|CH0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(1));

-- Location: LCCOMB_X38_Y18_N22
\inst|adc_mega_0|ADC_CTRL|reading0[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(2),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\);

-- Location: FF_X38_Y18_N23
\inst|adc_mega_0|ADC_CTRL|reading0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(3));

-- Location: LCCOMB_X38_Y18_N8
\inst|adc_mega_0|CH0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~9_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(3) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|reading0\(3),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~9_combout\);

-- Location: FF_X38_Y18_N9
\inst|adc_mega_0|CH0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~9_combout\,
	ena => \inst|adc_mega_0|CH0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(3));

-- Location: FF_X38_Y18_N27
\inst|adc_mega_0|ADC_CTRL|reading0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ADC_SDAT~input_o\,
	sload => VCC,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(0));

-- Location: LCCOMB_X38_Y18_N16
\inst|adc_mega_0|CH0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~11_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(0) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|reading0\(0),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~11_combout\);

-- Location: FF_X38_Y18_N17
\inst|adc_mega_0|CH0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~11_combout\,
	ena => \inst|adc_mega_0|CH0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(0));

-- Location: LCCOMB_X38_Y18_N4
\inst|adc_mega_0|ADC_CTRL|reading0[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[2]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(1),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[2]~feeder_combout\);

-- Location: FF_X38_Y18_N5
\inst|adc_mega_0|ADC_CTRL|reading0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|reading0[2]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(2));

-- Location: LCCOMB_X38_Y18_N10
\inst|adc_mega_0|CH0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~10_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(2) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|reading0\(2),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~10_combout\);

-- Location: FF_X38_Y18_N11
\inst|adc_mega_0|CH0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~10_combout\,
	ena => \inst|adc_mega_0|CH0[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(2));

-- Location: LCCOMB_X38_Y13_N24
\inst2|Mult0|mult_core|romout[0][10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[0][10]~9_combout\ = (\inst|adc_mega_0|CH0\(3) & ((\inst|adc_mega_0|CH0\(2)) # ((\inst|adc_mega_0|CH0\(1) & \inst|adc_mega_0|CH0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(1),
	datab => \inst|adc_mega_0|CH0\(3),
	datac => \inst|adc_mega_0|CH0\(0),
	datad => \inst|adc_mega_0|CH0\(2),
	combout => \inst2|Mult0|mult_core|romout[0][10]~9_combout\);

-- Location: LCCOMB_X38_Y13_N30
\inst2|Mult0|mult_core|romout[0][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[0][9]~combout\ = (\inst|adc_mega_0|CH0\(3) & (!\inst|adc_mega_0|CH0\(2) & ((!\inst|adc_mega_0|CH0\(0)) # (!\inst|adc_mega_0|CH0\(1))))) # (!\inst|adc_mega_0|CH0\(3) & (\inst|adc_mega_0|CH0\(1) & ((\inst|adc_mega_0|CH0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(1),
	datab => \inst|adc_mega_0|CH0\(3),
	datac => \inst|adc_mega_0|CH0\(0),
	datad => \inst|adc_mega_0|CH0\(2),
	combout => \inst2|Mult0|mult_core|romout[0][9]~combout\);

-- Location: LCCOMB_X37_Y13_N0
\inst2|Mult0|mult_core|romout[1][5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[1][5]~10_combout\ = \inst|adc_mega_0|CH0\(7) $ (\inst|adc_mega_0|CH0\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(7),
	datac => \inst|adc_mega_0|CH0\(4),
	combout => \inst2|Mult0|mult_core|romout[1][5]~10_combout\);

-- Location: LCCOMB_X38_Y13_N4
\inst2|Mult0|mult_core|romout[0][8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[0][8]~11_combout\ = (\inst|adc_mega_0|CH0\(1) & (\inst|adc_mega_0|CH0\(3) $ (((\inst|adc_mega_0|CH0\(0) & !\inst|adc_mega_0|CH0\(2)))))) # (!\inst|adc_mega_0|CH0\(1) & ((\inst|adc_mega_0|CH0\(3) & ((\inst|adc_mega_0|CH0\(0)) 
-- # (!\inst|adc_mega_0|CH0\(2)))) # (!\inst|adc_mega_0|CH0\(3) & ((\inst|adc_mega_0|CH0\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(1),
	datab => \inst|adc_mega_0|CH0\(3),
	datac => \inst|adc_mega_0|CH0\(0),
	datad => \inst|adc_mega_0|CH0\(2),
	combout => \inst2|Mult0|mult_core|romout[0][8]~11_combout\);

-- Location: LCCOMB_X38_Y13_N6
\inst2|Mult0|mult_core|romout[0][7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[0][7]~12_combout\ = \inst|adc_mega_0|CH0\(2) $ (((\inst|adc_mega_0|CH0\(1) & ((!\inst|adc_mega_0|CH0\(0)))) # (!\inst|adc_mega_0|CH0\(1) & (\inst|adc_mega_0|CH0\(3) & \inst|adc_mega_0|CH0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(1),
	datab => \inst|adc_mega_0|CH0\(3),
	datac => \inst|adc_mega_0|CH0\(0),
	datad => \inst|adc_mega_0|CH0\(2),
	combout => \inst2|Mult0|mult_core|romout[0][7]~12_combout\);

-- Location: LCCOMB_X38_Y13_N20
\inst2|Mult0|mult_core|romout[0][6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[0][6]~13_combout\ = \inst|adc_mega_0|CH0\(1) $ (((\inst|adc_mega_0|CH0\(0) & !\inst|adc_mega_0|CH0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|CH0\(1),
	datac => \inst|adc_mega_0|CH0\(0),
	datad => \inst|adc_mega_0|CH0\(3),
	combout => \inst2|Mult0|mult_core|romout[0][6]~13_combout\);

-- Location: LCCOMB_X37_Y13_N6
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\inst2|Mult0|mult_core|romout[0][6]~13_combout\ & (\inst|adc_mega_0|CH0\(4) $ (VCC))) # (!\inst2|Mult0|mult_core|romout[0][6]~13_combout\ & (\inst|adc_mega_0|CH0\(4) & VCC))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\inst2|Mult0|mult_core|romout[0][6]~13_combout\ & \inst|adc_mega_0|CH0\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|romout[0][6]~13_combout\,
	datab => \inst|adc_mega_0|CH0\(4),
	datad => VCC,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X37_Y13_N8
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\inst2|Mult0|mult_core|romout[0][7]~12_combout\ & ((\inst|adc_mega_0|CH0\(5) & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\inst|adc_mega_0|CH0\(5) & 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\inst2|Mult0|mult_core|romout[0][7]~12_combout\ & ((\inst|adc_mega_0|CH0\(5) & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\inst|adc_mega_0|CH0\(5) & 
-- ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\inst2|Mult0|mult_core|romout[0][7]~12_combout\ & (!\inst|adc_mega_0|CH0\(5) & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\inst2|Mult0|mult_core|romout[0][7]~12_combout\ & ((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\inst|adc_mega_0|CH0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|romout[0][7]~12_combout\,
	datab => \inst|adc_mega_0|CH0\(5),
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X37_Y13_N10
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\inst2|Mult0|mult_core|romout[0][8]~11_combout\ $ (\inst|adc_mega_0|CH0\(6) $ (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\inst2|Mult0|mult_core|romout[0][8]~11_combout\ & ((\inst|adc_mega_0|CH0\(6)) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\inst2|Mult0|mult_core|romout[0][8]~11_combout\ & (\inst|adc_mega_0|CH0\(6) & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|romout[0][8]~11_combout\,
	datab => \inst|adc_mega_0|CH0\(6),
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X37_Y13_N12
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\inst2|Mult0|mult_core|romout[0][9]~combout\ & ((\inst2|Mult0|mult_core|romout[1][5]~10_combout\ & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\inst2|Mult0|mult_core|romout[1][5]~10_combout\ & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\inst2|Mult0|mult_core|romout[0][9]~combout\ & ((\inst2|Mult0|mult_core|romout[1][5]~10_combout\ & 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\inst2|Mult0|mult_core|romout[1][5]~10_combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\inst2|Mult0|mult_core|romout[0][9]~combout\ & (!\inst2|Mult0|mult_core|romout[1][5]~10_combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\inst2|Mult0|mult_core|romout[0][9]~combout\ & ((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\inst2|Mult0|mult_core|romout[1][5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|romout[0][9]~combout\,
	datab => \inst2|Mult0|mult_core|romout[1][5]~10_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X37_Y13_N14
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\inst2|Mult0|mult_core|romout[1][6]~8_combout\ $ (\inst2|Mult0|mult_core|romout[0][10]~9_combout\ $ (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\inst2|Mult0|mult_core|romout[1][6]~8_combout\ & ((\inst2|Mult0|mult_core|romout[0][10]~9_combout\) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\inst2|Mult0|mult_core|romout[1][6]~8_combout\ & (\inst2|Mult0|mult_core|romout[0][10]~9_combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|romout[1][6]~8_combout\,
	datab => \inst2|Mult0|mult_core|romout[0][10]~9_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X37_Y13_N16
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\inst2|Mult0|mult_core|romout[1][7]~7_combout\ & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\inst2|Mult0|mult_core|romout[1][7]~7_combout\ & 
-- ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\inst2|Mult0|mult_core|romout[1][7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|romout[1][7]~7_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X37_Y13_N18
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = (\inst2|Mult0|mult_core|romout[1][8]~6_combout\ & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ $ (GND))) # (!\inst2|Mult0|mult_core|romout[1][8]~6_combout\ & 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & VCC))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\inst2|Mult0|mult_core|romout[1][8]~6_combout\ & !\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|romout[1][8]~6_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X37_Y13_N20
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\inst2|Mult0|mult_core|romout[1][9]~5_combout\ & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\inst2|Mult0|mult_core|romout[1][9]~5_combout\ & 
-- ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\inst2|Mult0|mult_core|romout[1][9]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|romout[1][9]~5_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X37_Y13_N22
\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ $ (!\inst2|Mult0|mult_core|romout[1][10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Mult0|mult_core|romout[1][10]~4_combout\,
	cin => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\);

-- Location: LCCOMB_X36_Y13_N2
\inst2|Mult0|mult_core|romout[2][5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[2][5]~15_combout\ = \inst|adc_mega_0|CH0\(8) $ (\inst|adc_mega_0|CH0\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(8),
	datac => \inst|adc_mega_0|CH0\(11),
	combout => \inst2|Mult0|mult_core|romout[2][5]~15_combout\);

-- Location: LCCOMB_X36_Y13_N14
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\inst|adc_mega_0|CH0\(8) & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ $ (VCC))) # (!\inst|adc_mega_0|CH0\(8) & 
-- (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & VCC))
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\inst|adc_mega_0|CH0\(8) & \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(8),
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X36_Y13_N16
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\inst|adc_mega_0|CH0\(9) & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\inst|adc_mega_0|CH0\(9) & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\inst|adc_mega_0|CH0\(9) & (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & 
-- !\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\inst|adc_mega_0|CH0\(9) & ((!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(9),
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X36_Y13_N18
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ (\inst|adc_mega_0|CH0\(10) $ 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\inst|adc_mega_0|CH0\(10)) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (\inst|adc_mega_0|CH0\(10) & 
-- !\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datab => \inst|adc_mega_0|CH0\(10),
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X36_Y13_N20
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\inst2|Mult0|mult_core|romout[2][5]~15_combout\ & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\inst2|Mult0|mult_core|romout[2][5]~15_combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\inst2|Mult0|mult_core|romout[2][5]~15_combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # 
-- (!\inst2|Mult0|mult_core|romout[2][5]~15_combout\ & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\inst2|Mult0|mult_core|romout[2][5]~15_combout\ & 
-- !\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # 
-- (!\inst2|Mult0|mult_core|romout[2][5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datab => \inst2|Mult0|mult_core|romout[2][5]~15_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X36_Y13_N22
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = ((\inst2|Mult0|mult_core|romout[2][6]~14_combout\ $ (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ $ 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\inst2|Mult0|mult_core|romout[2][6]~14_combout\ & ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\))) # (!\inst2|Mult0|mult_core|romout[2][6]~14_combout\ & (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|romout[2][6]~14_combout\,
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X36_Y13_N24
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\inst2|Mult0|mult_core|romout[2][7]~3_combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # 
-- (!\inst2|Mult0|mult_core|romout[2][7]~3_combout\ & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (!\inst2|Mult0|mult_core|romout[2][7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|romout[2][7]~3_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X36_Y13_N26
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = (\inst2|Mult0|mult_core|romout[2][8]~2_combout\ & (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ $ (GND))) # 
-- (!\inst2|Mult0|mult_core|romout[2][8]~2_combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ & VCC))
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\inst2|Mult0|mult_core|romout[2][8]~2_combout\ & !\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|romout[2][8]~2_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X36_Y13_N28
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = (\inst2|Mult0|mult_core|romout[2][9]~1_combout\ & (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # 
-- (!\inst2|Mult0|mult_core|romout[2][9]~1_combout\ & ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (GND)))
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ = CARRY((!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (!\inst2|Mult0|mult_core|romout[2][9]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|romout[2][9]~1_combout\,
	datad => VCC,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	cout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X35_Y10_N4
\inst2|Div0|auto_generated|divider|divider|op_7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~0_combout\ = \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ (VCC)
-- \inst2|Div0|auto_generated|divider|divider|op_7~1\ = CARRY(\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|op_7~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X35_Y10_N6
\inst2|Div0|auto_generated|divider|divider|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~2_combout\ = (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_7~1\)) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~1\) # (GND)))
-- \inst2|Div0|auto_generated|divider|divider|op_7~3\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_7~1\) # (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X35_Y10_N8
\inst2|Div0|auto_generated|divider|divider|op_7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~4_combout\ = (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\inst2|Div0|auto_generated|divider|divider|op_7~3\ $ (GND))) # 
-- (!\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_7~3\ & VCC))
-- \inst2|Div0|auto_generated|divider|divider|op_7~5\ = CARRY((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X35_Y10_N10
\inst2|Div0|auto_generated|divider|divider|op_7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~6_combout\ = (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_7~5\)) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~5\) # (GND)))
-- \inst2|Div0|auto_generated|divider|divider|op_7~7\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_7~5\) # (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~5\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_7~6_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X35_Y10_N12
\inst2|Div0|auto_generated|divider|divider|op_7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~8_combout\ = (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (\inst2|Div0|auto_generated|divider|divider|op_7~7\ $ (GND))) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_7~7\ & VCC))
-- \inst2|Div0|auto_generated|divider|divider|op_7~9\ = CARRY((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~7\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_7~8_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X35_Y10_N14
\inst2|Div0|auto_generated|divider|divider|op_7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~10_combout\ = (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_7~9\)) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~9\) # (GND)))
-- \inst2|Div0|auto_generated|divider|divider|op_7~11\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_7~9\) # (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~9\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_7~10_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~11\);

-- Location: LCCOMB_X35_Y10_N16
\inst2|Div0|auto_generated|divider|divider|op_7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~12_combout\ = (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (\inst2|Div0|auto_generated|divider|divider|op_7~11\ $ (GND))) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_7~11\ & VCC))
-- \inst2|Div0|auto_generated|divider|divider|op_7~13\ = CARRY((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~11\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_7~12_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~13\);

-- Location: LCCOMB_X35_Y10_N18
\inst2|Div0|auto_generated|divider|divider|op_7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~14_combout\ = (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_7~13\)) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~13\) # (GND)))
-- \inst2|Div0|auto_generated|divider|divider|op_7~15\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_7~13\) # (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~13\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_7~14_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~15\);

-- Location: LCCOMB_X35_Y10_N20
\inst2|Div0|auto_generated|divider|divider|op_7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~16_combout\ = (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (\inst2|Div0|auto_generated|divider|divider|op_7~15\ $ (GND))) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_7~15\ & VCC))
-- \inst2|Div0|auto_generated|divider|divider|op_7~17\ = CARRY((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~15\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_7~16_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~17\);

-- Location: LCCOMB_X35_Y10_N22
\inst2|Div0|auto_generated|divider|divider|op_7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~18_combout\ = (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_7~17\)) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~17\) # (GND)))
-- \inst2|Div0|auto_generated|divider|divider|op_7~19\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_7~17\) # (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~17\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_7~18_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~19\);

-- Location: LCCOMB_X35_Y10_N24
\inst2|Div0|auto_generated|divider|divider|op_7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~20_combout\ = (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (\inst2|Div0|auto_generated|divider|divider|op_7~19\ $ (GND))) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_7~19\ & VCC))
-- \inst2|Div0|auto_generated|divider|divider|op_7~21\ = CARRY((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~19\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_7~20_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~21\);

-- Location: LCCOMB_X36_Y13_N8
\inst2|Mult0|mult_core|romout[2][10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[2][10]~0_combout\ = (\inst|adc_mega_0|CH0\(11) & ((\inst|adc_mega_0|CH0\(10)) # ((\inst|adc_mega_0|CH0\(8) & \inst|adc_mega_0|CH0\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(8),
	datab => \inst|adc_mega_0|CH0\(10),
	datac => \inst|adc_mega_0|CH0\(11),
	datad => \inst|adc_mega_0|CH0\(9),
	combout => \inst2|Mult0|mult_core|romout[2][10]~0_combout\);

-- Location: LCCOMB_X36_Y13_N30
\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ = \inst2|Mult0|mult_core|romout[2][10]~0_combout\ $ (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|romout[2][10]~0_combout\,
	cin => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\,
	combout => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\);

-- Location: LCCOMB_X35_Y10_N26
\inst2|Div0|auto_generated|divider|divider|op_7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~22_combout\ = (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_7~21\)) # 
-- (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~21\) # (GND)))
-- \inst2|Div0|auto_generated|divider|divider|op_7~23\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_7~21\) # (!\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~21\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_7~22_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~23\);

-- Location: LCCOMB_X35_Y10_N28
\inst2|Div0|auto_generated|divider|divider|op_7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~25_cout\ = CARRY(!\inst2|Div0|auto_generated|divider|divider|op_7~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~23\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_7~25_cout\);

-- Location: LCCOMB_X35_Y10_N30
\inst2|Div0|auto_generated|divider|divider|op_7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ = !\inst2|Div0|auto_generated|divider|divider|op_7~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|op_7~25_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\);

-- Location: LCCOMB_X35_Y10_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[219]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[219]~170_combout\ = (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[219]~170_combout\);

-- Location: LCCOMB_X35_Y8_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[219]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[219]~171_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_7~22_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_7~22_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[219]~171_combout\);

-- Location: LCCOMB_X36_Y8_N20
\inst2|Div0|auto_generated|divider|divider|StageOut[218]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[218]~172_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[218]~172_combout\);

-- Location: LCCOMB_X36_Y8_N10
\inst2|Div0|auto_generated|divider|divider|StageOut[218]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[218]~173_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_7~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[218]~173_combout\);

-- Location: LCCOMB_X35_Y9_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[217]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[217]~175_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_7~18_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~18_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[217]~175_combout\);

-- Location: LCCOMB_X35_Y10_N2
\inst2|Div0|auto_generated|divider|divider|StageOut[217]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[217]~174_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[217]~174_combout\);

-- Location: LCCOMB_X37_Y9_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[216]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[216]~176_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[216]~176_combout\);

-- Location: LCCOMB_X34_Y9_N8
\inst2|Div0|auto_generated|divider|divider|StageOut[216]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[216]~177_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_7~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_7~16_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[216]~177_combout\);

-- Location: LCCOMB_X36_Y8_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[215]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[215]~179_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_7~14_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[215]~179_combout\);

-- Location: LCCOMB_X36_Y8_N8
\inst2|Div0|auto_generated|divider|divider|StageOut[215]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[215]~178_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[215]~178_combout\);

-- Location: LCCOMB_X35_Y9_N4
\inst2|Div0|auto_generated|divider|divider|StageOut[214]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[214]~181_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_7~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_7~12_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[214]~181_combout\);

-- Location: LCCOMB_X35_Y9_N18
\inst2|Div0|auto_generated|divider|divider|StageOut[214]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[214]~180_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[214]~180_combout\);

-- Location: LCCOMB_X36_Y8_N4
\inst2|Div0|auto_generated|divider|divider|StageOut[213]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[213]~183_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~10_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[213]~183_combout\);

-- Location: LCCOMB_X37_Y9_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[213]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[213]~182_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[213]~182_combout\);

-- Location: LCCOMB_X34_Y9_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[212]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[212]~185_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_7~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[212]~185_combout\);

-- Location: LCCOMB_X34_Y9_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[212]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[212]~184_combout\ = (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[212]~184_combout\);

-- Location: LCCOMB_X35_Y9_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[211]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[211]~186_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datac => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[211]~186_combout\);

-- Location: LCCOMB_X35_Y9_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[211]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[211]~187_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[211]~187_combout\);

-- Location: LCCOMB_X36_Y8_N6
\inst2|Div0|auto_generated|divider|divider|StageOut[210]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[210]~188_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[210]~188_combout\);

-- Location: LCCOMB_X36_Y8_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[210]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[210]~189_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_7~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~4_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[210]~189_combout\);

-- Location: LCCOMB_X36_Y8_N2
\inst2|Div0|auto_generated|divider|divider|StageOut[209]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[209]~190_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datac => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[209]~190_combout\);

-- Location: LCCOMB_X36_Y8_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[209]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[209]~191_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_7~2_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_7~2_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[209]~191_combout\);

-- Location: LCCOMB_X34_Y8_N16
\inst2|Div0|auto_generated|divider|divider|StageOut[208]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[208]~193_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_7~0_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[208]~193_combout\);

-- Location: LCCOMB_X34_Y9_N18
\inst2|Div0|auto_generated|divider|divider|StageOut[208]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[208]~192_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[208]~192_combout\);

-- Location: LCCOMB_X35_Y8_N0
\inst2|Div0|auto_generated|divider|divider|op_8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~0_combout\ = \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (VCC)
-- \inst2|Div0|auto_generated|divider|divider|op_8~1\ = CARRY(\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|op_8~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~1\);

-- Location: LCCOMB_X35_Y8_N2
\inst2|Div0|auto_generated|divider|divider|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~2_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[208]~193_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_8~1\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[208]~193_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[208]~192_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_8~1\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[208]~192_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_8~1\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_8~3\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[208]~193_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[208]~192_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[208]~193_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[208]~192_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X35_Y8_N4
\inst2|Div0|auto_generated|divider|divider|op_8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~4_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~3\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[209]~190_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[209]~191_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_8~3\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[209]~190_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[209]~191_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_8~5\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_8~3\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[209]~190_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[209]~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[209]~190_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[209]~191_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X35_Y8_N6
\inst2|Div0|auto_generated|divider|divider|op_8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~6_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[210]~188_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_8~5\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[210]~188_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[210]~189_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_8~5\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[210]~189_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_8~5\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_8~7\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[210]~188_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[210]~189_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[210]~188_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[210]~189_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~5\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_8~6_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X35_Y8_N8
\inst2|Div0|auto_generated|divider|divider|op_8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~8_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~7\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[211]~186_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[211]~187_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_8~7\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[211]~186_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[211]~187_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_8~9\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_8~7\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[211]~186_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[211]~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[211]~186_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[211]~187_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~7\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_8~8_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~9\);

-- Location: LCCOMB_X35_Y8_N10
\inst2|Div0|auto_generated|divider|divider|op_8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~10_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[212]~185_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_8~9\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[212]~185_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[212]~184_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_8~9\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[212]~184_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_8~9\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_8~11\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[212]~185_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[212]~184_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[212]~185_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[212]~184_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~9\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_8~10_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~11\);

-- Location: LCCOMB_X35_Y8_N12
\inst2|Div0|auto_generated|divider|divider|op_8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~12_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~11\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[213]~183_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[213]~182_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_8~11\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[213]~183_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[213]~182_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_8~13\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_8~11\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[213]~183_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[213]~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[213]~183_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[213]~182_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~11\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_8~12_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~13\);

-- Location: LCCOMB_X35_Y8_N14
\inst2|Div0|auto_generated|divider|divider|op_8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~14_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[214]~181_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_8~13\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[214]~181_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[214]~180_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_8~13\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[214]~180_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_8~13\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_8~15\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[214]~181_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[214]~180_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[214]~181_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[214]~180_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~13\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_8~14_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~15\);

-- Location: LCCOMB_X35_Y8_N16
\inst2|Div0|auto_generated|divider|divider|op_8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~16_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~15\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[215]~179_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[215]~178_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_8~15\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[215]~179_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[215]~178_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_8~17\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_8~15\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[215]~179_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[215]~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[215]~179_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[215]~178_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~15\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_8~16_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~17\);

-- Location: LCCOMB_X35_Y8_N18
\inst2|Div0|auto_generated|divider|divider|op_8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~18_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[216]~176_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_8~17\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[216]~176_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[216]~177_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_8~17\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[216]~177_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_8~17\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_8~19\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[216]~176_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[216]~177_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_8~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[216]~176_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[216]~177_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~17\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_8~18_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~19\);

-- Location: LCCOMB_X35_Y8_N20
\inst2|Div0|auto_generated|divider|divider|op_8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~20_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~19\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[217]~175_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[217]~174_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_8~19\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[217]~175_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[217]~174_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_8~21\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_8~19\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[217]~175_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[217]~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[217]~175_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[217]~174_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~19\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_8~20_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~21\);

-- Location: LCCOMB_X35_Y8_N22
\inst2|Div0|auto_generated|divider|divider|op_8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~22_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[218]~172_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_8~21\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[218]~172_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[218]~173_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_8~21\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[218]~173_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_8~21\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_8~23\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[218]~172_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[218]~173_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_8~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[218]~172_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[218]~173_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~21\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_8~22_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~23\);

-- Location: LCCOMB_X35_Y8_N24
\inst2|Div0|auto_generated|divider|divider|op_8~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~25_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[219]~170_combout\) # ((\inst2|Div0|auto_generated|divider|divider|StageOut[219]~171_combout\) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_8~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[219]~170_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[219]~171_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~23\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_8~25_cout\);

-- Location: LCCOMB_X35_Y8_N26
\inst2|Div0|auto_generated|divider|divider|op_8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ = !\inst2|Div0|auto_generated|divider|divider|op_8~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|op_8~25_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\);

-- Location: LCCOMB_X36_Y8_N16
\inst2|Div0|auto_generated|divider|divider|StageOut[232]~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[232]~282_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\))) # (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & (\inst2|Div0|auto_generated|divider|divider|op_7~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~20_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[232]~282_combout\);

-- Location: LCCOMB_X35_Y8_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[232]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[232]~194_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~22_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~22_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[232]~194_combout\);

-- Location: LCCOMB_X35_Y9_N14
\inst2|Div0|auto_generated|divider|divider|StageOut[231]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[231]~195_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~20_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~20_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[231]~195_combout\);

-- Location: LCCOMB_X35_Y9_N24
\inst2|Div0|auto_generated|divider|divider|StageOut[231]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\))) # (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & (\inst2|Div0|auto_generated|divider|divider|op_7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~18_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\);

-- Location: LCCOMB_X37_Y9_N24
\inst2|Div0|auto_generated|divider|divider|StageOut[230]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[230]~196_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~18_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~18_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[230]~196_combout\);

-- Location: LCCOMB_X37_Y9_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[230]~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\)) # (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datab => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~16_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\);

-- Location: LCCOMB_X36_Y8_N18
\inst2|Div0|auto_generated|divider|divider|StageOut[229]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[229]~197_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~16_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~16_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[229]~197_combout\);

-- Location: LCCOMB_X36_Y8_N26
\inst2|Div0|auto_generated|divider|divider|StageOut[229]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\)) # (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datab => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_7~14_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\);

-- Location: LCCOMB_X35_Y9_N10
\inst2|Div0|auto_generated|divider|divider|StageOut[228]~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- ((\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\))) # (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & (\inst2|Div0|auto_generated|divider|divider|op_7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\);

-- Location: LCCOMB_X35_Y9_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[228]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[228]~198_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~14_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~14_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[228]~198_combout\);

-- Location: LCCOMB_X37_Y9_N2
\inst2|Div0|auto_generated|divider|divider|StageOut[227]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\)) # (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\);

-- Location: LCCOMB_X37_Y9_N10
\inst2|Div0|auto_generated|divider|divider|StageOut[227]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[227]~199_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~12_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[227]~199_combout\);

-- Location: LCCOMB_X34_Y9_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[226]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[226]~200_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~10_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~10_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[226]~200_combout\);

-- Location: LCCOMB_X34_Y9_N22
\inst2|Div0|auto_generated|divider|divider|StageOut[226]~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\)) # (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_7~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\);

-- Location: LCCOMB_X35_Y9_N8
\inst2|Div0|auto_generated|divider|divider|StageOut[225]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- (\inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\)) # (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst2|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\);

-- Location: LCCOMB_X35_Y9_N6
\inst2|Div0|auto_generated|divider|divider|StageOut[225]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[225]~201_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~8_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~8_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[225]~201_combout\);

-- Location: LCCOMB_X36_Y8_N24
\inst2|Div0|auto_generated|divider|divider|StageOut[224]~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))) # (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & (\inst2|Div0|auto_generated|divider|divider|op_7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~4_combout\,
	datad => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\);

-- Location: LCCOMB_X36_Y9_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[224]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[224]~202_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~6_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~6_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[224]~202_combout\);

-- Location: LCCOMB_X37_Y8_N4
\inst2|Div0|auto_generated|divider|divider|StageOut[223]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[223]~203_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_8~4_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[223]~203_combout\);

-- Location: LCCOMB_X36_Y8_N14
\inst2|Div0|auto_generated|divider|divider|StageOut[223]~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))) # (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & (\inst2|Div0|auto_generated|divider|divider|op_7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_7~2_combout\,
	datac => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\);

-- Location: LCCOMB_X34_Y9_N4
\inst2|Div0|auto_generated|divider|divider|StageOut[222]~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))) # (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & (\inst2|Div0|auto_generated|divider|divider|op_7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~0_combout\,
	datad => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\);

-- Location: LCCOMB_X34_Y9_N6
\inst2|Div0|auto_generated|divider|divider|StageOut[222]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[222]~204_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_8~2_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[222]~204_combout\);

-- Location: LCCOMB_X35_Y9_N16
\inst2|Div0|auto_generated|divider|divider|StageOut[221]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[221]~205_combout\ = (\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[221]~205_combout\);

-- Location: LCCOMB_X36_Y9_N2
\inst2|Div0|auto_generated|divider|divider|StageOut[221]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[221]~206_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~0_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_8~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[221]~206_combout\);

-- Location: LCCOMB_X38_Y13_N14
\inst2|Mult0|mult_core|romout[0][5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mult0|mult_core|romout[0][5]~16_combout\ = \inst|adc_mega_0|CH0\(0) $ (\inst|adc_mega_0|CH0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|CH0\(0),
	datad => \inst|adc_mega_0|CH0\(3),
	combout => \inst2|Mult0|mult_core|romout[0][5]~16_combout\);

-- Location: LCCOMB_X36_Y9_N4
\inst2|Div0|auto_generated|divider|divider|op_9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_9~0_combout\ = \inst2|Mult0|mult_core|romout[0][5]~16_combout\ $ (VCC)
-- \inst2|Div0|auto_generated|divider|divider|op_9~1\ = CARRY(\inst2|Mult0|mult_core|romout[0][5]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mult0|mult_core|romout[0][5]~16_combout\,
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|op_9~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_9~1\);

-- Location: LCCOMB_X36_Y9_N6
\inst2|Div0|auto_generated|divider|divider|op_9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_9~2_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[221]~205_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_9~1\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[221]~205_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[221]~206_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_9~1\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[221]~206_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_9~1\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_9~3\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[221]~205_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[221]~206_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[221]~205_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[221]~206_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_9~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_9~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_9~3\);

-- Location: LCCOMB_X36_Y9_N8
\inst2|Div0|auto_generated|divider|divider|op_9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_9~4_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~3\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[222]~204_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_9~3\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[222]~204_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_9~5\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_9~3\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[222]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[222]~204_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_9~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_9~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_9~5\);

-- Location: LCCOMB_X36_Y9_N10
\inst2|Div0|auto_generated|divider|divider|op_9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_9~6_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[223]~203_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_9~5\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[223]~203_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_9~5\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_9~5\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_9~7\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[223]~203_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[223]~203_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_9~5\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_9~6_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_9~7\);

-- Location: LCCOMB_X36_Y9_N12
\inst2|Div0|auto_generated|divider|divider|op_9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_9~8_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~7\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[224]~202_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_9~7\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[224]~202_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_9~9\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_9~7\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[224]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[224]~202_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_9~7\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_9~8_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_9~9\);

-- Location: LCCOMB_X36_Y9_N14
\inst2|Div0|auto_generated|divider|divider|op_9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_9~10_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_9~9\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[225]~201_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_9~9\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[225]~201_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_9~9\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_9~11\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[225]~201_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[225]~201_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_9~9\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_9~10_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_9~11\);

-- Location: LCCOMB_X36_Y9_N16
\inst2|Div0|auto_generated|divider|divider|op_9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_9~12_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~11\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[226]~200_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_9~11\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[226]~200_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_9~13\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_9~11\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[226]~200_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[226]~200_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_9~11\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_9~12_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_9~13\);

-- Location: LCCOMB_X36_Y9_N18
\inst2|Div0|auto_generated|divider|divider|op_9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_9~14_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_9~13\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[227]~199_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_9~13\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[227]~199_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_9~13\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_9~15\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[227]~199_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_9~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[227]~199_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_9~13\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_9~14_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_9~15\);

-- Location: LCCOMB_X36_Y9_N20
\inst2|Div0|auto_generated|divider|divider|op_9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_9~16_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~15\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[228]~198_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_9~15\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[228]~198_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_9~17\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_9~15\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[228]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[228]~198_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_9~15\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_9~16_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_9~17\);

-- Location: LCCOMB_X36_Y9_N22
\inst2|Div0|auto_generated|divider|divider|op_9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_9~18_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[229]~197_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_9~17\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[229]~197_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_9~17\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_9~17\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_9~19\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[229]~197_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_9~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[229]~197_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_9~17\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_9~18_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_9~19\);

-- Location: LCCOMB_X36_Y9_N24
\inst2|Div0|auto_generated|divider|divider|op_9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_9~20_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~19\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[230]~196_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_9~19\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[230]~196_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_9~21\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_9~19\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[230]~196_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[230]~196_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_9~19\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_9~20_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_9~21\);

-- Location: LCCOMB_X36_Y9_N26
\inst2|Div0|auto_generated|divider|divider|op_9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_9~22_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[231]~195_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_9~21\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[231]~195_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_9~21\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_9~21\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_9~23\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[231]~195_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_9~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[231]~195_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_9~21\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_9~22_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_9~23\);

-- Location: LCCOMB_X36_Y9_N28
\inst2|Div0|auto_generated|divider|divider|op_9~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_9~25_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[232]~282_combout\) # ((\inst2|Div0|auto_generated|divider|divider|StageOut[232]~194_combout\) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_9~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[232]~282_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[232]~194_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_9~23\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_9~25_cout\);

-- Location: LCCOMB_X36_Y9_N30
\inst2|Div0|auto_generated|divider|divider|op_9~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ = !\inst2|Div0|auto_generated|divider|divider|op_9~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|op_9~25_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\);

-- Location: IOIBUF_X27_Y0_N15
\set_value~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set_value,
	o => \set_value~input_o\);

-- Location: CLKCTRL_G19
\set_value~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \set_value~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \set_value~inputclkctrl_outclk\);

-- Location: IOIBUF_X38_Y0_N1
\updown~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_updown,
	o => \updown~input_o\);

-- Location: LCCOMB_X37_Y1_N8
\inst1|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst~0_combout\ = !\inst1|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst~q\,
	combout => \inst1|inst~0_combout\);

-- Location: FF_X37_Y1_N9
\inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \updown~input_o\,
	d => \inst1|inst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst~q\);

-- Location: LCCOMB_X37_Y1_N10
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (((VCC) # (!\inst1|inst~q\)))
-- \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst1|inst~q\ $ (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: IOIBUF_X53_Y17_N15
\aclr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aclr,
	o => \aclr~input_o\);

-- Location: CLKCTRL_G9
\aclr~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \aclr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \aclr~inputclkctrl_outclk\);

-- Location: FF_X37_Y1_N1
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \set_value~inputclkctrl_outclk\,
	asdata => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	clrn => \ALT_INV_aclr~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X37_Y1_N12
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ & (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) $ (((\inst1|inst~q\) # 
-- (VCC))))) # (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ & (((\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (GND))))
-- \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((\inst1|inst~q\ $ (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # 
-- (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X37_Y1_N13
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \set_value~inputclkctrl_outclk\,
	d => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	clrn => \ALT_INV_aclr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X37_Y1_N14
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & (((\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & VCC)))) # 
-- (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ (((VCC) # (!\inst1|inst~q\)))))
-- \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & (\inst1|inst~q\ $ 
-- (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X37_Y1_N15
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \set_value~inputclkctrl_outclk\,
	d => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	clrn => \ALT_INV_aclr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X37_Y1_N16
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ & (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) $ (((\inst1|inst~q\) # 
-- (VCC))))) # (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ & (((\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # (GND))))
-- \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((\inst1|inst~q\ $ (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))) # 
-- (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X37_Y1_N17
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \set_value~inputclkctrl_outclk\,
	d => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	clrn => \ALT_INV_aclr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X37_Y1_N18
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & (((\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & VCC)))) # 
-- (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) $ (((VCC) # (!\inst1|inst~q\)))))
-- \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & (\inst1|inst~q\ $ 
-- (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X37_Y1_N19
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \set_value~inputclkctrl_outclk\,
	d => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	clrn => \ALT_INV_aclr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X37_Y1_N20
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ & (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) $ (((\inst1|inst~q\) # 
-- (VCC))))) # (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ & (((\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) # (GND))))
-- \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((\inst1|inst~q\ $ (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5))) # 
-- (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X37_Y1_N21
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \set_value~inputclkctrl_outclk\,
	d => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	clrn => \ALT_INV_aclr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X37_Y1_N2
\inst1|inst2|LPM_COMPARE_component|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COMPARE_component|auto_generated|_~0_combout\ = \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ $ (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	combout => \inst1|inst2|LPM_COMPARE_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X37_Y1_N22
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & (((\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & VCC)))) # 
-- (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) $ (((VCC) # (!\inst1|inst~q\)))))
-- \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & (\inst1|inst~q\ $ 
-- (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X37_Y1_N23
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \set_value~inputclkctrl_outclk\,
	d => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	clrn => \ALT_INV_aclr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X37_Y1_N24
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ $ (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	cin => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\);

-- Location: FF_X37_Y1_N25
\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \set_value~inputclkctrl_outclk\,
	d => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	clrn => \ALT_INV_aclr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X36_Y1_N0
\inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~0_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) $ (\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) $ (\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	combout => \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~0_combout\);

-- Location: LCCOMB_X35_Y9_N2
\inst2|Div0|auto_generated|divider|divider|StageOut[245]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[245]~249_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\) # 
-- ((\inst2|Div0|auto_generated|divider|divider|op_8~20_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~20_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[245]~249_combout\);

-- Location: LCCOMB_X38_Y9_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[245]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[245]~207_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_9~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_9~22_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[245]~207_combout\);

-- Location: LCCOMB_X37_Y9_N26
\inst2|Div0|auto_generated|divider|divider|StageOut[244]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\) # 
-- ((\inst2|Div0|auto_generated|divider|divider|op_8~18_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~18_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\);

-- Location: LCCOMB_X37_Y9_N20
\inst2|Div0|auto_generated|divider|divider|StageOut[244]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[244]~208_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~20_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_9~20_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[244]~208_combout\);

-- Location: LCCOMB_X37_Y9_N16
\inst2|Div0|auto_generated|divider|divider|StageOut[243]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_8~16_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\);

-- Location: LCCOMB_X39_Y9_N16
\inst2|Div0|auto_generated|divider|divider|StageOut[243]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[243]~209_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~18_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_9~18_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[243]~209_combout\);

-- Location: LCCOMB_X35_Y9_N20
\inst2|Div0|auto_generated|divider|divider|StageOut[242]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\) # 
-- ((\inst2|Div0|auto_generated|divider|divider|op_8~14_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~14_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\);

-- Location: LCCOMB_X39_Y9_N26
\inst2|Div0|auto_generated|divider|divider|StageOut[242]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[242]~210_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_9~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_9~16_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[242]~210_combout\);

-- Location: LCCOMB_X37_Y9_N14
\inst2|Div0|auto_generated|divider|divider|StageOut[241]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[241]~211_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_9~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_9~14_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[241]~211_combout\);

-- Location: LCCOMB_X37_Y9_N6
\inst2|Div0|auto_generated|divider|divider|StageOut[241]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~12_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\);

-- Location: LCCOMB_X38_Y9_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[240]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[240]~212_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_9~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_9~12_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[240]~212_combout\);

-- Location: LCCOMB_X34_Y9_N10
\inst2|Div0|auto_generated|divider|divider|StageOut[240]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\) # 
-- ((\inst2|Div0|auto_generated|divider|divider|op_8~10_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~10_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\);

-- Location: LCCOMB_X37_Y8_N14
\inst2|Div0|auto_generated|divider|divider|StageOut[239]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[239]~213_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_9~10_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[239]~213_combout\);

-- Location: LCCOMB_X35_Y9_N26
\inst2|Div0|auto_generated|divider|divider|StageOut[239]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\);

-- Location: LCCOMB_X37_Y9_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[238]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\) # 
-- ((\inst2|Div0|auto_generated|divider|divider|op_8~6_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~6_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\);

-- Location: LCCOMB_X37_Y9_N4
\inst2|Div0|auto_generated|divider|divider|StageOut[238]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[238]~214_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_9~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[238]~214_combout\);

-- Location: LCCOMB_X37_Y8_N22
\inst2|Div0|auto_generated|divider|divider|StageOut[237]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~4_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\);

-- Location: LCCOMB_X37_Y8_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[237]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[237]~215_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[237]~215_combout\);

-- Location: LCCOMB_X34_Y9_N24
\inst2|Div0|auto_generated|divider|divider|StageOut[236]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~2_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\);

-- Location: LCCOMB_X34_Y9_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[236]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[236]~216_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~4_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~4_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[236]~216_combout\);

-- Location: LCCOMB_X39_Y9_N4
\inst2|Div0|auto_generated|divider|divider|StageOut[235]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[235]~217_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~2_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[235]~217_combout\);

-- Location: LCCOMB_X35_Y9_N22
\inst2|Div0|auto_generated|divider|divider|StageOut[235]~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- ((\inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))) # (!\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & (\inst2|Div0|auto_generated|divider|divider|op_8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~0_combout\,
	datac => \inst2|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\);

-- Location: LCCOMB_X38_Y13_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[234]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[234]~218_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~0_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[234]~218_combout\);

-- Location: LCCOMB_X38_Y13_N2
\inst2|Div0|auto_generated|divider|divider|StageOut[234]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & (\inst|adc_mega_0|CH0\(0) $ (\inst|adc_mega_0|CH0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datac => \inst|adc_mega_0|CH0\(0),
	datad => \inst|adc_mega_0|CH0\(3),
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\);

-- Location: LCCOMB_X38_Y9_N2
\inst2|Div0|auto_generated|divider|divider|op_10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_10~0_combout\ = \inst|adc_mega_0|CH0\(2) $ (VCC)
-- \inst2|Div0|auto_generated|divider|divider|op_10~1\ = CARRY(\inst|adc_mega_0|CH0\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|CH0\(2),
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|op_10~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_10~1\);

-- Location: LCCOMB_X38_Y9_N4
\inst2|Div0|auto_generated|divider|divider|op_10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_10~2_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[234]~218_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_10~1\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[234]~218_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_10~1\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_10~1\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_10~3\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[234]~218_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[234]~218_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_10~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_10~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X38_Y9_N6
\inst2|Div0|auto_generated|divider|divider|op_10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_10~4_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~3\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[235]~217_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_10~3\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[235]~217_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_10~5\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_10~3\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[235]~217_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[235]~217_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_10~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_10~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_10~5\);

-- Location: LCCOMB_X38_Y9_N8
\inst2|Div0|auto_generated|divider|divider|op_10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_10~6_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_10~5\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[236]~216_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_10~5\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[236]~216_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_10~5\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_10~7\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[236]~216_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[236]~216_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_10~5\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_10~6_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_10~7\);

-- Location: LCCOMB_X38_Y9_N10
\inst2|Div0|auto_generated|divider|divider|op_10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_10~8_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~7\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[237]~215_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_10~7\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[237]~215_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_10~9\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_10~7\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[237]~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[237]~215_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_10~7\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_10~8_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_10~9\);

-- Location: LCCOMB_X38_Y9_N12
\inst2|Div0|auto_generated|divider|divider|op_10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_10~10_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_10~9\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[238]~214_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_10~9\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[238]~214_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_10~9\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_10~11\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[238]~214_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[238]~214_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_10~9\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_10~10_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_10~11\);

-- Location: LCCOMB_X38_Y9_N14
\inst2|Div0|auto_generated|divider|divider|op_10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_10~12_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~11\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[239]~213_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_10~11\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[239]~213_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_10~13\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_10~11\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[239]~213_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[239]~213_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_10~11\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_10~12_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_10~13\);

-- Location: LCCOMB_X38_Y9_N16
\inst2|Div0|auto_generated|divider|divider|op_10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_10~14_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[240]~212_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_10~13\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[240]~212_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_10~13\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_10~13\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_10~15\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[240]~212_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_10~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[240]~212_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_10~13\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_10~14_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_10~15\);

-- Location: LCCOMB_X38_Y9_N18
\inst2|Div0|auto_generated|divider|divider|op_10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_10~16_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~15\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[241]~211_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_10~15\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[241]~211_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_10~17\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_10~15\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[241]~211_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[241]~211_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_10~15\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_10~16_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_10~17\);

-- Location: LCCOMB_X38_Y9_N20
\inst2|Div0|auto_generated|divider|divider|op_10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_10~18_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_10~17\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[242]~210_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_10~17\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[242]~210_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_10~17\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_10~19\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[242]~210_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_10~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[242]~210_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_10~17\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_10~18_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_10~19\);

-- Location: LCCOMB_X38_Y9_N22
\inst2|Div0|auto_generated|divider|divider|op_10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_10~20_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~19\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[243]~209_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_10~19\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[243]~209_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_10~21\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_10~19\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[243]~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[243]~209_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_10~19\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_10~20_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_10~21\);

-- Location: LCCOMB_X38_Y9_N24
\inst2|Div0|auto_generated|divider|divider|op_10~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_10~22_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_10~21\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[244]~208_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_10~21\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[244]~208_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_10~21\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_10~23\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[244]~208_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_10~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[244]~208_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_10~21\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_10~22_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_10~23\);

-- Location: LCCOMB_X38_Y9_N26
\inst2|Div0|auto_generated|divider|divider|op_10~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_10~25_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[245]~249_combout\) # ((\inst2|Div0|auto_generated|divider|divider|StageOut[245]~207_combout\) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_10~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[245]~249_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[245]~207_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_10~23\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_10~25_cout\);

-- Location: LCCOMB_X38_Y9_N28
\inst2|Div0|auto_generated|divider|divider|op_10~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ = !\inst2|Div0|auto_generated|divider|divider|op_10~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|op_10~25_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\);

-- Location: LCCOMB_X36_Y1_N26
\inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~1_combout\ = (\inst1|inst2|LPM_COMPARE_component|auto_generated|_~0_combout\ & (\inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~0_combout\ & 
-- (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) $ (\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|LPM_COMPARE_component|auto_generated|_~0_combout\,
	datab => \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~0_combout\,
	datac => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~1_combout\);

-- Location: LCCOMB_X37_Y9_N22
\inst2|Div0|auto_generated|divider|divider|StageOut[258]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[258]~260_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_9~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_9~20_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[258]~260_combout\);

-- Location: LCCOMB_X39_Y9_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[258]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[258]~219_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~22_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_10~22_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[258]~219_combout\);

-- Location: LCCOMB_X39_Y9_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[257]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\) # 
-- ((\inst2|Div0|auto_generated|divider|divider|op_9~18_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_9~18_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\);

-- Location: LCCOMB_X39_Y9_N24
\inst2|Div0|auto_generated|divider|divider|StageOut[257]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[257]~220_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~20_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[257]~220_combout\);

-- Location: LCCOMB_X39_Y9_N10
\inst2|Div0|auto_generated|divider|divider|StageOut[256]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[256]~221_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~18_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_10~18_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[256]~221_combout\);

-- Location: LCCOMB_X39_Y9_N6
\inst2|Div0|auto_generated|divider|divider|StageOut[256]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_9~16_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\);

-- Location: LCCOMB_X37_Y9_N8
\inst2|Div0|auto_generated|divider|divider|StageOut[255]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\) # 
-- ((\inst2|Div0|auto_generated|divider|divider|op_9~14_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_9~14_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\);

-- Location: LCCOMB_X39_Y9_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[255]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[255]~222_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~16_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_10~16_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[255]~222_combout\);

-- Location: LCCOMB_X37_Y10_N16
\inst2|Div0|auto_generated|divider|divider|StageOut[254]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[254]~223_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~14_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_10~14_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[254]~223_combout\);

-- Location: LCCOMB_X34_Y9_N26
\inst2|Div0|auto_generated|divider|divider|StageOut[254]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_9~12_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\);

-- Location: LCCOMB_X37_Y8_N16
\inst2|Div0|auto_generated|divider|divider|StageOut[253]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_9~10_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\);

-- Location: LCCOMB_X37_Y8_N26
\inst2|Div0|auto_generated|divider|divider|StageOut[253]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[253]~224_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~12_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_10~12_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[253]~224_combout\);

-- Location: LCCOMB_X37_Y10_N14
\inst2|Div0|auto_generated|divider|divider|StageOut[252]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[252]~225_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~10_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_10~10_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[252]~225_combout\);

-- Location: LCCOMB_X37_Y9_N18
\inst2|Div0|auto_generated|divider|divider|StageOut[252]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\) # 
-- ((\inst2|Div0|auto_generated|divider|divider|op_9~8_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_9~8_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\);

-- Location: LCCOMB_X37_Y8_N2
\inst2|Div0|auto_generated|divider|divider|StageOut[251]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~6_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\);

-- Location: LCCOMB_X37_Y8_N20
\inst2|Div0|auto_generated|divider|divider|StageOut[251]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[251]~226_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~8_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[251]~226_combout\);

-- Location: LCCOMB_X34_Y9_N16
\inst2|Div0|auto_generated|divider|divider|StageOut[250]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\) # 
-- ((\inst2|Div0|auto_generated|divider|divider|op_9~4_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~4_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\);

-- Location: LCCOMB_X37_Y10_N24
\inst2|Div0|auto_generated|divider|divider|StageOut[250]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[250]~227_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~6_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_10~6_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[250]~227_combout\);

-- Location: LCCOMB_X39_Y9_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[249]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_9~2_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\);

-- Location: LCCOMB_X39_Y9_N22
\inst2|Div0|auto_generated|divider|divider|StageOut[249]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[249]~228_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~4_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_10~4_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[249]~228_combout\);

-- Location: LCCOMB_X38_Y13_N18
\inst2|Div0|auto_generated|divider|divider|StageOut[248]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[248]~229_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~2_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[248]~229_combout\);

-- Location: LCCOMB_X38_Y13_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[248]~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_9~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\);

-- Location: LCCOMB_X38_Y13_N10
\inst2|Div0|auto_generated|divider|divider|StageOut[247]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[247]~231_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~0_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_10~0_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[247]~231_combout\);

-- Location: LCCOMB_X38_Y13_N16
\inst2|Div0|auto_generated|divider|divider|StageOut[247]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[247]~230_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & \inst|adc_mega_0|CH0\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \inst|adc_mega_0|CH0\(2),
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[247]~230_combout\);

-- Location: LCCOMB_X38_Y10_N2
\inst2|Div0|auto_generated|divider|divider|op_12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_12~0_combout\ = \inst|adc_mega_0|CH0\(1) $ (VCC)
-- \inst2|Div0|auto_generated|divider|divider|op_12~1\ = CARRY(\inst|adc_mega_0|CH0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(1),
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|op_12~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_12~1\);

-- Location: LCCOMB_X38_Y10_N4
\inst2|Div0|auto_generated|divider|divider|op_12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_12~2_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[247]~231_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_12~1\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[247]~231_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[247]~230_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_12~1\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[247]~230_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_12~1\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_12~3\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[247]~231_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[247]~230_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[247]~231_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[247]~230_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_12~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_12~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_12~3\);

-- Location: LCCOMB_X38_Y10_N6
\inst2|Div0|auto_generated|divider|divider|op_12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_12~4_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~3\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[248]~229_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_12~3\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[248]~229_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_12~5\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_12~3\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[248]~229_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[248]~229_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_12~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_12~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_12~5\);

-- Location: LCCOMB_X38_Y10_N8
\inst2|Div0|auto_generated|divider|divider|op_12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_12~6_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_12~5\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[249]~228_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_12~5\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[249]~228_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_12~5\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_12~7\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[249]~228_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[249]~228_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_12~5\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_12~6_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_12~7\);

-- Location: LCCOMB_X38_Y10_N10
\inst2|Div0|auto_generated|divider|divider|op_12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_12~8_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~7\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[250]~227_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_12~7\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[250]~227_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_12~9\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_12~7\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[250]~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[250]~227_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_12~7\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_12~8_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_12~9\);

-- Location: LCCOMB_X38_Y10_N12
\inst2|Div0|auto_generated|divider|divider|op_12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_12~10_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_12~9\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[251]~226_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_12~9\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[251]~226_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_12~9\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_12~11\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[251]~226_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[251]~226_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_12~9\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_12~10_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_12~11\);

-- Location: LCCOMB_X38_Y10_N14
\inst2|Div0|auto_generated|divider|divider|op_12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_12~12_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~11\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[252]~225_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_12~11\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[252]~225_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_12~13\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_12~11\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[252]~225_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[252]~225_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_12~11\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_12~12_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_12~13\);

-- Location: LCCOMB_X38_Y10_N16
\inst2|Div0|auto_generated|divider|divider|op_12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_12~14_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_12~13\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[253]~224_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_12~13\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[253]~224_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_12~13\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_12~15\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[253]~224_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_12~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[253]~224_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_12~13\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_12~15\);

-- Location: LCCOMB_X38_Y10_N18
\inst2|Div0|auto_generated|divider|divider|op_12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_12~16_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~15\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[254]~223_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_12~15\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[254]~223_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_12~17\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_12~15\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[254]~223_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[254]~223_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_12~15\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_12~16_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_12~17\);

-- Location: LCCOMB_X38_Y10_N20
\inst2|Div0|auto_generated|divider|divider|op_12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_12~18_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_12~17\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[255]~222_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_12~17\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[255]~222_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_12~17\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_12~19\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[255]~222_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_12~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[255]~222_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_12~17\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_12~18_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_12~19\);

-- Location: LCCOMB_X38_Y10_N22
\inst2|Div0|auto_generated|divider|divider|op_12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_12~20_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~19\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[256]~221_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_12~19\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[256]~221_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_12~21\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_12~19\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[256]~221_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[256]~221_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_12~19\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_12~20_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_12~21\);

-- Location: LCCOMB_X38_Y10_N24
\inst2|Div0|auto_generated|divider|divider|op_12~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_12~22_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_12~21\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[257]~220_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_12~21\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[257]~220_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_12~21\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_12~23\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[257]~220_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_12~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[257]~220_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_12~21\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_12~22_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_12~23\);

-- Location: LCCOMB_X38_Y10_N26
\inst2|Div0|auto_generated|divider|divider|op_12~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_12~25_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[258]~260_combout\) # ((\inst2|Div0|auto_generated|divider|divider|StageOut[258]~219_combout\) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_12~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[258]~260_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[258]~219_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_12~23\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_12~25_cout\);

-- Location: LCCOMB_X38_Y10_N28
\inst2|Div0|auto_generated|divider|divider|op_12~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ = !\inst2|Div0|auto_generated|divider|divider|op_12~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|op_12~25_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\);

-- Location: LCCOMB_X39_Y9_N14
\inst2|Div0|auto_generated|divider|divider|StageOut[271]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[271]~271_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_10~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~20_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[271]~271_combout\);

-- Location: LCCOMB_X38_Y10_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[271]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[271]~232_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~22_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_12~22_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[271]~232_combout\);

-- Location: LCCOMB_X37_Y10_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[270]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[270]~233_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~20_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_12~20_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[270]~233_combout\);

-- Location: LCCOMB_X39_Y9_N8
\inst2|Div0|auto_generated|divider|divider|StageOut[270]~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\) # 
-- ((\inst2|Div0|auto_generated|divider|divider|op_10~18_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_10~18_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\);

-- Location: LCCOMB_X37_Y10_N20
\inst2|Div0|auto_generated|divider|divider|StageOut[269]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_12~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~18_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\);

-- Location: LCCOMB_X39_Y9_N2
\inst2|Div0|auto_generated|divider|divider|StageOut[269]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\) # 
-- ((\inst2|Div0|auto_generated|divider|divider|op_10~16_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_10~16_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\);

-- Location: LCCOMB_X37_Y10_N6
\inst2|Div0|auto_generated|divider|divider|StageOut[268]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[268]~235_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~16_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[268]~235_combout\);

-- Location: LCCOMB_X37_Y10_N26
\inst2|Div0|auto_generated|divider|divider|StageOut[268]~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[268]~274_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_10~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_10~14_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[268]~274_combout\);

-- Location: LCCOMB_X37_Y8_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[267]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[267]~275_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_10~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_10~12_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[267]~275_combout\);

-- Location: LCCOMB_X37_Y10_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[267]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[267]~236_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~14_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[267]~236_combout\);

-- Location: LCCOMB_X37_Y10_N4
\inst2|Div0|auto_generated|divider|divider|StageOut[266]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[266]~276_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\) # 
-- ((\inst2|Div0|auto_generated|divider|divider|op_10~10_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_10~10_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[266]~276_combout\);

-- Location: LCCOMB_X37_Y10_N22
\inst2|Div0|auto_generated|divider|divider|StageOut[266]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[266]~237_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_12~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~12_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[266]~237_combout\);

-- Location: LCCOMB_X37_Y8_N6
\inst2|Div0|auto_generated|divider|divider|StageOut[265]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[265]~277_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[265]~277_combout\);

-- Location: LCCOMB_X37_Y10_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[265]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[265]~238_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_12~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~10_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[265]~238_combout\);

-- Location: LCCOMB_X37_Y10_N2
\inst2|Div0|auto_generated|divider|divider|StageOut[264]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[264]~239_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_12~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[264]~239_combout\);

-- Location: LCCOMB_X37_Y10_N18
\inst2|Div0|auto_generated|divider|divider|StageOut[264]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[264]~278_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\) # 
-- ((\inst2|Div0|auto_generated|divider|divider|op_10~6_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_10~6_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[264]~278_combout\);

-- Location: LCCOMB_X39_Y9_N20
\inst2|Div0|auto_generated|divider|divider|StageOut[263]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[263]~279_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\) # 
-- ((\inst2|Div0|auto_generated|divider|divider|op_10~4_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_10~4_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[263]~279_combout\);

-- Location: LCCOMB_X37_Y10_N8
\inst2|Div0|auto_generated|divider|divider|StageOut[263]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[263]~240_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_12~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[263]~240_combout\);

-- Location: LCCOMB_X37_Y10_N10
\inst2|Div0|auto_generated|divider|divider|StageOut[262]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[262]~241_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~4_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_12~4_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[262]~241_combout\);

-- Location: LCCOMB_X38_Y13_N26
\inst2|Div0|auto_generated|divider|divider|StageOut[262]~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[262]~280_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~2_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[262]~280_combout\);

-- Location: LCCOMB_X38_Y13_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[261]~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[261]~294_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst|adc_mega_0|CH0\(2)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & (\inst2|Div0|auto_generated|divider|divider|op_10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_10~0_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst|adc_mega_0|CH0\(2),
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[261]~294_combout\);

-- Location: LCCOMB_X37_Y10_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[261]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[261]~242_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~2_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_12~2_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[261]~242_combout\);

-- Location: LCCOMB_X38_Y13_N8
\inst2|Div0|auto_generated|divider|divider|StageOut[260]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[260]~243_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & \inst|adc_mega_0|CH0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst|adc_mega_0|CH0\(1),
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[260]~243_combout\);

-- Location: LCCOMB_X38_Y10_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[260]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[260]~244_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~0_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_12~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[260]~244_combout\);

-- Location: LCCOMB_X36_Y10_N0
\inst2|Div0|auto_generated|divider|divider|op_13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_13~1_cout\ = CARRY(\inst|adc_mega_0|CH0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(0),
	datad => VCC,
	cout => \inst2|Div0|auto_generated|divider|divider|op_13~1_cout\);

-- Location: LCCOMB_X36_Y10_N2
\inst2|Div0|auto_generated|divider|divider|op_13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_13~3_cout\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[260]~243_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[260]~244_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_13~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[260]~243_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[260]~244_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_13~1_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_13~3_cout\);

-- Location: LCCOMB_X36_Y10_N4
\inst2|Div0|auto_generated|divider|divider|op_13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_13~5_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_13~3_cout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[261]~294_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[261]~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[261]~294_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[261]~242_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_13~3_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_13~5_cout\);

-- Location: LCCOMB_X36_Y10_N6
\inst2|Div0|auto_generated|divider|divider|op_13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_13~7_cout\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[262]~241_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[262]~280_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_13~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[262]~241_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[262]~280_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_13~5_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_13~7_cout\);

-- Location: LCCOMB_X36_Y10_N8
\inst2|Div0|auto_generated|divider|divider|op_13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_13~9_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_13~7_cout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[263]~279_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[263]~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[263]~279_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[263]~240_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_13~7_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_13~9_cout\);

-- Location: LCCOMB_X36_Y10_N10
\inst2|Div0|auto_generated|divider|divider|op_13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_13~11_cout\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[264]~239_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[264]~278_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_13~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[264]~239_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[264]~278_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_13~9_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_13~11_cout\);

-- Location: LCCOMB_X36_Y10_N12
\inst2|Div0|auto_generated|divider|divider|op_13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_13~13_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_13~11_cout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[265]~277_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[265]~238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[265]~277_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[265]~238_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_13~11_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_13~13_cout\);

-- Location: LCCOMB_X36_Y10_N14
\inst2|Div0|auto_generated|divider|divider|op_13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_13~15_cout\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[266]~276_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[266]~237_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_13~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[266]~276_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[266]~237_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_13~13_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_13~15_cout\);

-- Location: LCCOMB_X36_Y10_N16
\inst2|Div0|auto_generated|divider|divider|op_13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_13~17_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_13~15_cout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[267]~275_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[267]~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[267]~275_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[267]~236_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_13~15_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_13~17_cout\);

-- Location: LCCOMB_X36_Y10_N18
\inst2|Div0|auto_generated|divider|divider|op_13~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_13~19_cout\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[268]~235_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[268]~274_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_13~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[268]~235_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[268]~274_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_13~17_cout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_13~19_cout\);

-- Location: LCCOMB_X36_Y10_N20
\inst2|Div0|auto_generated|divider|divider|op_13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_13~20_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_13~19_cout\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_13~19_cout\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|op_13~21\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_13~19_cout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_13~19_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_13~20_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_13~21\);

-- Location: LCCOMB_X36_Y10_N22
\inst2|Div0|auto_generated|divider|divider|op_13~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_13~22_combout\ = (\inst2|Div0|auto_generated|divider|divider|StageOut[270]~233_combout\ & (((!\inst2|Div0|auto_generated|divider|divider|op_13~21\)))) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[270]~233_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\ & (!\inst2|Div0|auto_generated|divider|divider|op_13~21\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\ & ((\inst2|Div0|auto_generated|divider|divider|op_13~21\) # (GND)))))
-- \inst2|Div0|auto_generated|divider|divider|op_13~23\ = CARRY(((!\inst2|Div0|auto_generated|divider|divider|StageOut[270]~233_combout\ & !\inst2|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\)) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_13~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[270]~233_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_13~21\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_13~22_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_13~23\);

-- Location: LCCOMB_X36_Y10_N24
\inst2|Div0|auto_generated|divider|divider|op_13~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_13~25_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[271]~271_combout\) # ((\inst2|Div0|auto_generated|divider|divider|StageOut[271]~232_combout\) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_13~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[271]~271_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[271]~232_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|op_13~23\,
	cout => \inst2|Div0|auto_generated|divider|divider|op_13~25_cout\);

-- Location: LCCOMB_X36_Y10_N26
\inst2|Div0|auto_generated|divider|divider|op_13~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_13~26_combout\ = !\inst2|Div0|auto_generated|divider|divider|op_13~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|op_13~25_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_13~26_combout\);

-- Location: LCCOMB_X37_Y6_N4
\inst2|Div0|auto_generated|divider|divider|StageOut[284]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[284]~281_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_13~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\) # 
-- ((!\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & \inst2|Div0|auto_generated|divider|divider|op_12~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_13~26_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~20_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[284]~281_combout\);

-- Location: LCCOMB_X36_Y10_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[284]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[284]~245_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_13~22_combout\ & !\inst2|Div0|auto_generated|divider|divider|op_13~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_13~22_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_13~26_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[284]~245_combout\);

-- Location: LCCOMB_X36_Y6_N0
\inst2|Div0|auto_generated|divider|divider|op_14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_14~1_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[284]~281_combout\) # (\inst2|Div0|auto_generated|divider|divider|StageOut[284]~245_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[284]~281_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[284]~245_combout\,
	datad => VCC,
	cout => \inst2|Div0|auto_generated|divider|divider|op_14~1_cout\);

-- Location: LCCOMB_X36_Y6_N2
\inst2|Div0|auto_generated|divider|divider|op_14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_14~2_combout\ = !\inst2|Div0|auto_generated|divider|divider|op_14~1_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|op_14~1_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_14~2_combout\);

-- Location: LCCOMB_X36_Y10_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[283]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[283]~246_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_13~26_combout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\) # 
-- ((\inst2|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_13~26_combout\ & (((\inst2|Div0|auto_generated|divider|divider|op_13~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_13~20_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_13~26_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[283]~246_combout\);

-- Location: LCCOMB_X36_Y6_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[297]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[297]~247_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_14~2_combout\ & \inst2|Div0|auto_generated|divider|divider|StageOut[283]~246_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_14~2_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|StageOut[283]~246_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[297]~247_combout\);

-- Location: LCCOMB_X36_Y6_N18
\inst2|Div0|auto_generated|divider|divider|StageOut[297]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[297]~248_combout\ = (!\inst2|Div0|auto_generated|divider|divider|op_14~2_combout\ & \inst2|Div0|auto_generated|divider|divider|StageOut[283]~246_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_14~2_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|StageOut[283]~246_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[297]~248_combout\);

-- Location: LCCOMB_X36_Y6_N20
\inst2|Div0|auto_generated|divider|divider|op_15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_15~1_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[297]~247_combout\) # (\inst2|Div0|auto_generated|divider|divider|StageOut[297]~248_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[297]~247_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[297]~248_combout\,
	datad => VCC,
	cout => \inst2|Div0|auto_generated|divider|divider|op_15~1_cout\);

-- Location: LCCOMB_X36_Y6_N22
\inst2|Div0|auto_generated|divider|divider|op_15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|op_15~2_combout\ = !\inst2|Div0|auto_generated|divider|divider|op_15~1_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|op_15~1_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|op_15~2_combout\);

-- Location: LCCOMB_X36_Y1_N24
\inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~3_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_15~2_combout\ & (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) $ (\inst2|Div0|auto_generated|divider|divider|op_14~2_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|op_15~2_combout\ & 
-- (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) $ (\inst2|Div0|auto_generated|divider|divider|op_14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_15~2_combout\,
	datab => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst2|Div0|auto_generated|divider|divider|op_14~2_combout\,
	combout => \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~3_combout\);

-- Location: LCCOMB_X36_Y1_N4
\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~1_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|op_15~2_combout\ & !\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_15~2_combout\,
	datab => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	cout => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~1_cout\);

-- Location: LCCOMB_X36_Y1_N6
\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~3_cout\ = CARRY((\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst2|Div0|auto_generated|divider|divider|op_14~2_combout\) # 
-- (!\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~1_cout\))) # (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst2|Div0|auto_generated|divider|divider|op_14~2_combout\ & 
-- !\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst2|Div0|auto_generated|divider|divider|op_14~2_combout\,
	datad => VCC,
	cin => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~1_cout\,
	cout => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~3_cout\);

-- Location: LCCOMB_X36_Y1_N8
\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~5_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|op_13~26_combout\ & (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- !\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~3_cout\)) # (!\inst2|Div0|auto_generated|divider|divider|op_13~26_combout\ & ((!\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~3_cout\) # 
-- (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_13~26_combout\,
	datab => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~3_cout\,
	cout => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~5_cout\);

-- Location: LCCOMB_X36_Y1_N10
\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~7_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # 
-- (!\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~5_cout\))) # (!\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- !\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datab => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~5_cout\,
	cout => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~7_cout\);

-- Location: LCCOMB_X36_Y1_N12
\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~9_cout\ = CARRY((\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\ & 
-- !\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~7_cout\)) # (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ((!\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~7_cout\) # 
-- (!\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datab => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => VCC,
	cin => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~7_cout\,
	cout => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~9_cout\);

-- Location: LCCOMB_X36_Y1_N14
\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~11_cout\ = CARRY((\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\) # 
-- (!\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~9_cout\))) # (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\ & 
-- !\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datab => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => VCC,
	cin => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~9_cout\,
	cout => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~11_cout\);

-- Location: LCCOMB_X36_Y1_N16
\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~13_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- !\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~11_cout\)) # (!\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((!\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~11_cout\) # 
-- (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~11_cout\,
	cout => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~13_cout\);

-- Location: LCCOMB_X36_Y1_N18
\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~14_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & (\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~13_cout\ & 
-- !\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))) # (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\ & ((\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~13_cout\) # 
-- (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	cin => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~13_cout\,
	combout => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~14_combout\);

-- Location: LCCOMB_X37_Y1_N28
\inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~2_combout\ = (\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & (!\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- (\inst2|Div0|auto_generated|divider|divider|op_13~26_combout\ $ (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))) # (!\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\ & 
-- (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\inst2|Div0|auto_generated|divider|divider|op_13~26_combout\ $ (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datab => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \inst2|Div0|auto_generated|divider|divider|op_13~26_combout\,
	datad => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~2_combout\);

-- Location: LCCOMB_X37_Y1_N6
\inst1|inst2|LPM_COMPARE_component|auto_generated|aleb\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|LPM_COMPARE_component|auto_generated|aleb~combout\ = (\inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~14_combout\) # ((\inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~1_combout\ & 
-- (\inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~3_combout\ & \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~1_combout\,
	datab => \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~3_combout\,
	datac => \inst1|inst2|LPM_COMPARE_component|auto_generated|op_1~14_combout\,
	datad => \inst1|inst2|LPM_COMPARE_component|auto_generated|aeb_int~2_combout\,
	combout => \inst1|inst2|LPM_COMPARE_component|auto_generated|aleb~combout\);

-- Location: IOIBUF_X36_Y0_N8
\toggle_temp~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_toggle_temp,
	o => \toggle_temp~input_o\);

-- Location: LCCOMB_X36_Y1_N2
\inst1|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst3~0_combout\ = !\inst1|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst3~q\,
	combout => \inst1|inst3~0_combout\);

-- Location: FF_X36_Y1_N3
\inst1|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \toggle_temp~input_o\,
	d => \inst1|inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst3~q\);

-- Location: LCCOMB_X36_Y1_N20
\inst1|inst6|LPM_MUX_component|auto_generated|result_node[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6|LPM_MUX_component|auto_generated|result_node[7]~0_combout\ = (\inst1|inst3~q\ & ((\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))) # (!\inst1|inst3~q\ & (!\inst2|Div0|auto_generated|divider|divider|op_7~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3~q\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[7]~0_combout\);

-- Location: LCCOMB_X37_Y1_N0
\inst1|inst6|LPM_MUX_component|auto_generated|result_node[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6|LPM_MUX_component|auto_generated|result_node[6]~1_combout\ = (\inst1|inst3~q\ & (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))) # (!\inst1|inst3~q\ & ((!\inst2|Div0|auto_generated|divider|divider|op_8~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \inst2|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst1|inst3~q\,
	combout => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[6]~1_combout\);

-- Location: LCCOMB_X37_Y1_N30
\inst1|inst6|LPM_MUX_component|auto_generated|result_node[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6|LPM_MUX_component|auto_generated|result_node[5]~2_combout\ = (\inst1|inst3~q\ & ((\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))) # (!\inst1|inst3~q\ & (!\inst2|Div0|auto_generated|divider|divider|op_9~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3~q\,
	datab => \inst2|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	combout => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[5]~2_combout\);

-- Location: LCCOMB_X36_Y1_N30
\inst1|inst6|LPM_MUX_component|auto_generated|result_node[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6|LPM_MUX_component|auto_generated|result_node[4]~3_combout\ = (\inst1|inst3~q\ & (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4))) # (!\inst1|inst3~q\ & ((!\inst2|Div0|auto_generated|divider|divider|op_10~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3~q\,
	datac => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst2|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[4]~3_combout\);

-- Location: LCCOMB_X37_Y1_N4
\inst1|inst6|LPM_MUX_component|auto_generated|result_node[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ = (\inst1|inst3~q\ & ((\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))) # (!\inst1|inst3~q\ & (!\inst2|Div0|auto_generated|divider|divider|op_12~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3~q\,
	datac => \inst2|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[3]~4_combout\);

-- Location: LCCOMB_X36_Y1_N28
\inst1|inst6|LPM_MUX_component|auto_generated|result_node[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ = (\inst1|inst3~q\ & ((\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))) # (!\inst1|inst3~q\ & (!\inst2|Div0|auto_generated|divider|divider|op_13~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|op_13~26_combout\,
	datab => \inst1|inst3~q\,
	datac => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[2]~5_combout\);

-- Location: LCCOMB_X37_Y1_N26
\inst1|inst6|LPM_MUX_component|auto_generated|result_node[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ = (\inst1|inst3~q\ & (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (!\inst1|inst3~q\ & ((!\inst2|Div0|auto_generated|divider|divider|op_14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3~q\,
	datac => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst2|Div0|auto_generated|divider|divider|op_14~2_combout\,
	combout => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[1]~6_combout\);

-- Location: LCCOMB_X36_Y1_N22
\inst1|inst6|LPM_MUX_component|auto_generated|result_node[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ = (\inst1|inst3~q\ & (\inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst1|inst3~q\ & ((!\inst2|Div0|auto_generated|divider|divider|op_15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst3~q\,
	datac => \inst1|inst89|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst2|Div0|auto_generated|divider|divider|op_15~2_combout\,
	combout => \inst1|inst6|LPM_MUX_component|auto_generated|result_node[0]~7_combout\);

ww_ADC_SCLK <= \ADC_SCLK~output_o\;

ww_ADC_CS_N <= \ADC_CS_N~output_o\;

ww_ADC_SADDR <= \ADC_SADDR~output_o\;

ww_motor <= \motor~output_o\;

ww_Q <= \Q~output_o\;

ww_bcd(7) <= \bcd[7]~output_o\;

ww_bcd(6) <= \bcd[6]~output_o\;

ww_bcd(5) <= \bcd[5]~output_o\;

ww_bcd(4) <= \bcd[4]~output_o\;

ww_bcd(3) <= \bcd[3]~output_o\;

ww_bcd(2) <= \bcd[2]~output_o\;

ww_bcd(1) <= \bcd[1]~output_o\;

ww_bcd(0) <= \bcd[0]~output_o\;

ww_user_value(7) <= \user_value[7]~output_o\;

ww_user_value(6) <= \user_value[6]~output_o\;

ww_user_value(5) <= \user_value[5]~output_o\;

ww_user_value(4) <= \user_value[4]~output_o\;

ww_user_value(3) <= \user_value[3]~output_o\;

ww_user_value(2) <= \user_value[2]~output_o\;

ww_user_value(1) <= \user_value[1]~output_o\;

ww_user_value(0) <= \user_value[0]~output_o\;
END structure;


