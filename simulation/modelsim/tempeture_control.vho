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

-- DATE "12/09/2022 23:14:17"

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
	celcius : OUT std_logic_vector(23 DOWNTO 0)
	);
END tempeture_control;

-- Design Ports Information
-- ADC_SCLK	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CS_N	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SADDR	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[23]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[22]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[21]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[20]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[19]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[18]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[17]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[16]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[15]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[14]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[13]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[12]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[11]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[10]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[9]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[8]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- celcius[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY0	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_celcius : std_logic_vector(23 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADC_SCLK~output_o\ : std_logic;
SIGNAL \ADC_CS_N~output_o\ : std_logic;
SIGNAL \ADC_SADDR~output_o\ : std_logic;
SIGNAL \celcius[23]~output_o\ : std_logic;
SIGNAL \celcius[22]~output_o\ : std_logic;
SIGNAL \celcius[21]~output_o\ : std_logic;
SIGNAL \celcius[20]~output_o\ : std_logic;
SIGNAL \celcius[19]~output_o\ : std_logic;
SIGNAL \celcius[18]~output_o\ : std_logic;
SIGNAL \celcius[17]~output_o\ : std_logic;
SIGNAL \celcius[16]~output_o\ : std_logic;
SIGNAL \celcius[15]~output_o\ : std_logic;
SIGNAL \celcius[14]~output_o\ : std_logic;
SIGNAL \celcius[13]~output_o\ : std_logic;
SIGNAL \celcius[12]~output_o\ : std_logic;
SIGNAL \celcius[11]~output_o\ : std_logic;
SIGNAL \celcius[10]~output_o\ : std_logic;
SIGNAL \celcius[9]~output_o\ : std_logic;
SIGNAL \celcius[8]~output_o\ : std_logic;
SIGNAL \celcius[7]~output_o\ : std_logic;
SIGNAL \celcius[6]~output_o\ : std_logic;
SIGNAL \celcius[5]~output_o\ : std_logic;
SIGNAL \celcius[4]~output_o\ : std_logic;
SIGNAL \celcius[3]~output_o\ : std_logic;
SIGNAL \celcius[2]~output_o\ : std_logic;
SIGNAL \celcius[1]~output_o\ : std_logic;
SIGNAL \celcius[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[0]~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|address~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0[8]~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|go~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|go~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector2~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.waitState~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\ : std_logic;
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
SIGNAL \inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|address[0]~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Add2~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|address~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Add2~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|address~3_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.transState~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[3]~26_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[0]~11\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[1]~12_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[1]~13\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[2]~14_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~7_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~13_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~16_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~14_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~10_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~15_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\ : std_logic;
SIGNAL \ADC_SDAT~input_o\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|always7~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[7]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[9]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[11]~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[8]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~3_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[9]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~4_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[2][10]~0_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[2][9]~1_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[2][8]~2_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[2][7]~3_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[2][6]~14_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~5_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~8_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[6]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~6_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[4]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~7_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[1][10]~4_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[1][9]~5_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[1][8]~6_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[1][7]~7_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[1][6]~8_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~9_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~12_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~11_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[2]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~10_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[0][10]~9_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[0][9]~combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[1][5]~10_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[0][8]~11_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[0][7]~12_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[0][6]~13_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[2][5]~15_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~13\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~15\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~17\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~19\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~21\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~23\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~25_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~22_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[219]~171_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[219]~170_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[218]~172_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~20_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[218]~173_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~18_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[217]~175_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[217]~174_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[216]~176_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~16_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[216]~177_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[215]~179_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[215]~178_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[214]~181_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[214]~180_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[213]~182_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[213]~183_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[212]~185_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[212]~184_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[211]~187_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[211]~186_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[210]~189_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[210]~188_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[209]~190_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[209]~191_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[208]~192_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_7~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[208]~193_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~13\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~15\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~17\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~19\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~21\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~23\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~25_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[232]~282_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~22_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[232]~194_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~20_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[231]~195_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~18_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[230]~196_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~16_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[229]~197_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[228]~198_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~12_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[227]~199_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[226]~200_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[225]~201_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[224]~202_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[223]~203_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[222]~204_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[221]~205_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[221]~206_combout\ : std_logic;
SIGNAL \inst3|Mult0|mult_core|romout[0][5]~16_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~13\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~15\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~17\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~19\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~21\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~23\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~25_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~22_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[245]~207_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[245]~249_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~20_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[244]~208_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~18_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[243]~209_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~16_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[242]~210_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[241]~211_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~12_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[240]~212_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[239]~213_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[238]~214_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[237]~215_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[236]~216_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[235]~217_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_9~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[234]~218_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~13\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~15\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~17\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~19\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~21\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~23\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~25_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[258]~260_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~22_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[258]~219_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~20_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[257]~220_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~18_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[256]~221_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~16_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[255]~222_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[254]~223_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~12_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[253]~224_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[252]~225_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[251]~226_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[250]~227_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[249]~228_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[248]~229_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[247]~230_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_10~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[247]~231_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~13\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~15\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~17\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~19\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~21\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~23\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~25_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[271]~271_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~22_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[271]~232_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~20_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[270]~233_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~18_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[268]~274_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~16_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[268]~235_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[267]~236_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[267]~275_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[266]~276_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~12_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[266]~237_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[265]~277_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[265]~238_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[264]~239_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[264]~278_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[263]~279_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[263]~240_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[262]~241_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[262]~280_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[261]~294_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[261]~242_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[260]~243_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_12~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[260]~244_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~1_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~3_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~5_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~7_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~9_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~11_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~13_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~15_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~17_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~19_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~21\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~23\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~25_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~26_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~22_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[284]~245_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[284]~281_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_14~1_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_14~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_13~20_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[283]~246_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[297]~248_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[297]~247_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_15~1_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|op_15~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|next_addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|adc_mega_0|CH0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_10~26_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_9~26_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_8~26_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_7~26_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|ALT_INV_cs_n~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|ALT_INV_sclk~q\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_15~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_14~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_13~26_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_12~26_combout\ : std_logic;
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
celcius <= ww_celcius;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst3|Div0|auto_generated|divider|divider|ALT_INV_op_10~26_combout\ <= NOT \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\;
\inst3|Div0|auto_generated|divider|divider|ALT_INV_op_9~26_combout\ <= NOT \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\;
\inst3|Div0|auto_generated|divider|divider|ALT_INV_op_8~26_combout\ <= NOT \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\;
\inst3|Div0|auto_generated|divider|divider|ALT_INV_op_7~26_combout\ <= NOT \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\;
\inst|adc_mega_0|ADC_CTRL|ALT_INV_cs_n~2_combout\ <= NOT \inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\;
\inst|adc_mega_0|ADC_CTRL|ALT_INV_sclk~q\ <= NOT \inst|adc_mega_0|ADC_CTRL|sclk~q\;
\inst3|Div0|auto_generated|divider|divider|ALT_INV_op_15~2_combout\ <= NOT \inst3|Div0|auto_generated|divider|divider|op_15~2_combout\;
\inst3|Div0|auto_generated|divider|divider|ALT_INV_op_14~2_combout\ <= NOT \inst3|Div0|auto_generated|divider|divider|op_14~2_combout\;
\inst3|Div0|auto_generated|divider|divider|ALT_INV_op_13~26_combout\ <= NOT \inst3|Div0|auto_generated|divider|divider|op_13~26_combout\;
\inst3|Div0|auto_generated|divider|divider|ALT_INV_op_12~26_combout\ <= NOT \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\;
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

-- Location: IOOBUF_X16_Y0_N23
\celcius[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[23]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\celcius[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[22]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\celcius[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[21]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\celcius[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[20]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\celcius[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[19]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\celcius[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[18]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\celcius[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[17]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\celcius[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[16]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\celcius[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[15]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\celcius[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[14]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\celcius[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[13]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\celcius[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[12]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\celcius[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[11]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\celcius[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[10]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\celcius[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[9]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\celcius[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \celcius[8]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\celcius[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_7~26_combout\,
	devoe => ww_devoe,
	o => \celcius[7]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\celcius[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_8~26_combout\,
	devoe => ww_devoe,
	o => \celcius[6]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\celcius[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_9~26_combout\,
	devoe => ww_devoe,
	o => \celcius[5]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\celcius[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_10~26_combout\,
	devoe => ww_devoe,
	o => \celcius[4]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\celcius[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_12~26_combout\,
	devoe => ww_devoe,
	o => \celcius[3]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\celcius[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_13~26_combout\,
	devoe => ww_devoe,
	o => \celcius[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\celcius[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_14~2_combout\,
	devoe => ww_devoe,
	o => \celcius[1]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\celcius[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Div0|auto_generated|divider|divider|ALT_INV_op_15~2_combout\,
	devoe => ww_devoe,
	o => \celcius[0]~output_o\);

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

-- Location: LCCOMB_X36_Y25_N2
\inst|adc_mega_0|ADC_CTRL|counter[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[0]~10_combout\ = !\inst|adc_mega_0|ADC_CTRL|counter\(0)
-- \inst|adc_mega_0|ADC_CTRL|counter[0]~11\ = CARRY(!\inst|adc_mega_0|ADC_CTRL|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(0),
	combout => \inst|adc_mega_0|ADC_CTRL|counter[0]~10_combout\,
	cout => \inst|adc_mega_0|ADC_CTRL|counter[0]~11\);

-- Location: LCCOMB_X35_Y25_N16
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

-- Location: LCCOMB_X34_Y25_N20
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

-- Location: FF_X34_Y25_N21
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

-- Location: LCCOMB_X34_Y25_N12
\inst|adc_mega_0|ADC_CTRL|next_addr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\ = !\inst|adc_mega_0|ADC_CTRL|address\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|address\(0),
	combout => \inst|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\);

-- Location: FF_X34_Y25_N13
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

-- Location: LCCOMB_X34_Y25_N4
\inst|adc_mega_0|ADC_CTRL|address~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|address~0_combout\ = ((\inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ & \inst|adc_mega_0|ADC_CTRL|next_addr\(0))) # (!\inst|adc_mega_0|ADC_CTRL|currState.resetState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|next_addr\(0),
	combout => \inst|adc_mega_0|ADC_CTRL|address~0_combout\);

-- Location: LCCOMB_X39_Y25_N0
\inst|adc_mega_0|CH0[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0[8]~1_combout\ = (\KEY0~input_o\) # (\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0~input_o\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	combout => \inst|adc_mega_0|CH0[8]~1_combout\);

-- Location: LCCOMB_X40_Y25_N14
\inst|adc_mega_0|go~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|go~0_combout\ = !\inst|adc_mega_0|CH0[8]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|CH0[8]~1_combout\,
	combout => \inst|adc_mega_0|go~0_combout\);

-- Location: FF_X40_Y25_N15
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

-- Location: LCCOMB_X37_Y25_N24
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

-- Location: FF_X37_Y25_N25
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

-- Location: LCCOMB_X35_Y25_N14
\inst|adc_mega_0|ADC_CTRL|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\ = ((!\inst|adc_mega_0|go~q\ & ((\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\) # (\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\)))) # (!\inst|adc_mega_0|ADC_CTRL|currState.resetState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|adc_mega_0|go~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\);

-- Location: LCCOMB_X36_Y25_N18
\inst|adc_mega_0|ADC_CTRL|currState.waitState~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|currState.waitState~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|currState.waitState~feeder_combout\);

-- Location: FF_X36_Y25_N19
\inst|adc_mega_0|ADC_CTRL|currState.waitState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|currState.waitState~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\);

-- Location: LCCOMB_X37_Y25_N22
\inst|adc_mega_0|ADC_CTRL|sclk_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\ = (!\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ & !\inst|adc_mega_0|ADC_CTRL|sclk_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	combout => \inst|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\);

-- Location: LCCOMB_X37_Y25_N30
\inst|adc_mega_0|ADC_CTRL|sclk_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\ = (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ & !\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\);

-- Location: LCCOMB_X36_Y25_N6
\inst|adc_mega_0|ADC_CTRL|counter[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[2]~14_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(2) & (!\inst|adc_mega_0|ADC_CTRL|counter[1]~13\)) # (!\inst|adc_mega_0|ADC_CTRL|counter\(2) & ((\inst|adc_mega_0|ADC_CTRL|counter[1]~13\) # (GND)))
-- \inst|adc_mega_0|ADC_CTRL|counter[2]~15\ = CARRY((!\inst|adc_mega_0|ADC_CTRL|counter[1]~13\) # (!\inst|adc_mega_0|ADC_CTRL|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(2),
	datad => VCC,
	cin => \inst|adc_mega_0|ADC_CTRL|counter[1]~13\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[2]~14_combout\,
	cout => \inst|adc_mega_0|ADC_CTRL|counter[2]~15\);

-- Location: LCCOMB_X36_Y25_N8
\inst|adc_mega_0|ADC_CTRL|counter[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[3]~16_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(3) & (\inst|adc_mega_0|ADC_CTRL|counter[2]~15\ & VCC)) # (!\inst|adc_mega_0|ADC_CTRL|counter\(3) & (!\inst|adc_mega_0|ADC_CTRL|counter[2]~15\))
-- \inst|adc_mega_0|ADC_CTRL|counter[3]~17\ = CARRY((!\inst|adc_mega_0|ADC_CTRL|counter\(3) & !\inst|adc_mega_0|ADC_CTRL|counter[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(3),
	datad => VCC,
	cin => \inst|adc_mega_0|ADC_CTRL|counter[2]~15\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[3]~16_combout\,
	cout => \inst|adc_mega_0|ADC_CTRL|counter[3]~17\);

-- Location: FF_X36_Y25_N9
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

-- Location: LCCOMB_X36_Y25_N10
\inst|adc_mega_0|ADC_CTRL|counter[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[4]~18_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(4) & ((GND) # (!\inst|adc_mega_0|ADC_CTRL|counter[3]~17\))) # (!\inst|adc_mega_0|ADC_CTRL|counter\(4) & (\inst|adc_mega_0|ADC_CTRL|counter[3]~17\ $ (GND)))
-- \inst|adc_mega_0|ADC_CTRL|counter[4]~19\ = CARRY((\inst|adc_mega_0|ADC_CTRL|counter\(4)) # (!\inst|adc_mega_0|ADC_CTRL|counter[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(4),
	datad => VCC,
	cin => \inst|adc_mega_0|ADC_CTRL|counter[3]~17\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[4]~18_combout\,
	cout => \inst|adc_mega_0|ADC_CTRL|counter[4]~19\);

-- Location: FF_X36_Y25_N11
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

-- Location: LCCOMB_X36_Y25_N12
\inst|adc_mega_0|ADC_CTRL|counter[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[5]~20_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(5) & (\inst|adc_mega_0|ADC_CTRL|counter[4]~19\ & VCC)) # (!\inst|adc_mega_0|ADC_CTRL|counter\(5) & (!\inst|adc_mega_0|ADC_CTRL|counter[4]~19\))
-- \inst|adc_mega_0|ADC_CTRL|counter[5]~21\ = CARRY((!\inst|adc_mega_0|ADC_CTRL|counter\(5) & !\inst|adc_mega_0|ADC_CTRL|counter[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(5),
	datad => VCC,
	cin => \inst|adc_mega_0|ADC_CTRL|counter[4]~19\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[5]~20_combout\,
	cout => \inst|adc_mega_0|ADC_CTRL|counter[5]~21\);

-- Location: FF_X36_Y25_N13
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

-- Location: LCCOMB_X36_Y25_N14
\inst|adc_mega_0|ADC_CTRL|counter[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[6]~22_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(6) & ((GND) # (!\inst|adc_mega_0|ADC_CTRL|counter[5]~21\))) # (!\inst|adc_mega_0|ADC_CTRL|counter\(6) & (\inst|adc_mega_0|ADC_CTRL|counter[5]~21\ $ (GND)))
-- \inst|adc_mega_0|ADC_CTRL|counter[6]~23\ = CARRY((\inst|adc_mega_0|ADC_CTRL|counter\(6)) # (!\inst|adc_mega_0|ADC_CTRL|counter[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(6),
	datad => VCC,
	cin => \inst|adc_mega_0|ADC_CTRL|counter[5]~21\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[6]~22_combout\,
	cout => \inst|adc_mega_0|ADC_CTRL|counter[6]~23\);

-- Location: FF_X36_Y25_N15
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

-- Location: LCCOMB_X36_Y25_N16
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

-- Location: FF_X36_Y25_N17
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

-- Location: LCCOMB_X36_Y25_N24
\inst|adc_mega_0|ADC_CTRL|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(4)) # ((\inst|adc_mega_0|ADC_CTRL|counter\(7)) # ((\inst|adc_mega_0|ADC_CTRL|counter\(6)) # (\inst|adc_mega_0|ADC_CTRL|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(4),
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(7),
	datac => \inst|adc_mega_0|ADC_CTRL|counter\(6),
	datad => \inst|adc_mega_0|ADC_CTRL|counter\(5),
	combout => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\);

-- Location: LCCOMB_X37_Y25_N16
\inst|adc_mega_0|ADC_CTRL|sclk_counter[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk_counter[3]~3_combout\ = ((!\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & (\inst|adc_mega_0|ADC_CTRL|sclk~q\ & !\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\))) # (!\inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|sclk_counter[3]~3_combout\);

-- Location: FF_X37_Y25_N23
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

-- Location: LCCOMB_X37_Y25_N8
\inst|adc_mega_0|ADC_CTRL|sclk_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk_counter~6_combout\ = (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ & (!\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(0) $ (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	datab => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(1),
	datad => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|sclk_counter~6_combout\);

-- Location: FF_X37_Y25_N9
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

-- Location: LCCOMB_X37_Y25_N0
\inst|adc_mega_0|ADC_CTRL|sclk_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk_counter~4_combout\ = (\inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\ & (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(2) $ (((\inst|adc_mega_0|ADC_CTRL|sclk_counter\(1) & \inst|adc_mega_0|ADC_CTRL|sclk_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(1),
	datac => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(2),
	datad => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	combout => \inst|adc_mega_0|ADC_CTRL|sclk_counter~4_combout\);

-- Location: FF_X37_Y25_N1
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

-- Location: LCCOMB_X37_Y25_N14
\inst|adc_mega_0|ADC_CTRL|always5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|always5~0_combout\ = (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(0) & (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(2) & \inst|adc_mega_0|ADC_CTRL|sclk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	datab => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(2),
	datac => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(1),
	combout => \inst|adc_mega_0|ADC_CTRL|always5~0_combout\);

-- Location: LCCOMB_X37_Y25_N6
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

-- Location: FF_X37_Y25_N7
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

-- Location: LCCOMB_X37_Y25_N28
\inst|adc_mega_0|ADC_CTRL|always5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|always5~1_combout\ = (\inst|adc_mega_0|ADC_CTRL|sclk~q\ & (!\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ & !\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|always5~1_combout\);

-- Location: LCCOMB_X37_Y25_N26
\inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\ = (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(3) & (\inst|adc_mega_0|ADC_CTRL|always5~0_combout\ & (\inst|adc_mega_0|ADC_CTRL|currState.transState~q\ & \inst|adc_mega_0|ADC_CTRL|always5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datab => \inst|adc_mega_0|ADC_CTRL|always5~0_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|currState.transState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|always5~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\);

-- Location: FF_X37_Y25_N27
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

-- Location: LCCOMB_X34_Y25_N30
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

-- Location: FF_X34_Y25_N5
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

-- Location: LCCOMB_X34_Y25_N24
\inst|adc_mega_0|ADC_CTRL|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Add2~0_combout\ = \inst|adc_mega_0|ADC_CTRL|address\(2) $ (((\inst|adc_mega_0|ADC_CTRL|address\(1) & \inst|adc_mega_0|ADC_CTRL|address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|address\(1),
	datac => \inst|adc_mega_0|ADC_CTRL|address\(0),
	datad => \inst|adc_mega_0|ADC_CTRL|address\(2),
	combout => \inst|adc_mega_0|ADC_CTRL|Add2~0_combout\);

-- Location: FF_X34_Y25_N25
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

-- Location: LCCOMB_X34_Y25_N18
\inst|adc_mega_0|ADC_CTRL|address~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|address~2_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.resetState~q\ & (\inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ & \inst|adc_mega_0|ADC_CTRL|next_addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|next_addr\(2),
	combout => \inst|adc_mega_0|ADC_CTRL|address~2_combout\);

-- Location: FF_X34_Y25_N19
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

-- Location: LCCOMB_X34_Y25_N22
\inst|adc_mega_0|ADC_CTRL|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ = ((!\inst|adc_mega_0|ADC_CTRL|address\(2)) # (!\inst|adc_mega_0|ADC_CTRL|address\(0))) # (!\inst|adc_mega_0|ADC_CTRL|address\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|address\(1),
	datac => \inst|adc_mega_0|ADC_CTRL|address\(0),
	datad => \inst|adc_mega_0|ADC_CTRL|address\(2),
	combout => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\);

-- Location: LCCOMB_X34_Y25_N26
\inst|adc_mega_0|ADC_CTRL|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Add2~1_combout\ = \inst|adc_mega_0|ADC_CTRL|address\(1) $ (\inst|adc_mega_0|ADC_CTRL|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|address\(1),
	datac => \inst|adc_mega_0|ADC_CTRL|address\(0),
	combout => \inst|adc_mega_0|ADC_CTRL|Add2~1_combout\);

-- Location: FF_X34_Y25_N27
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

-- Location: LCCOMB_X34_Y25_N8
\inst|adc_mega_0|ADC_CTRL|address~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|address~3_combout\ = (\inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ & (\inst|adc_mega_0|ADC_CTRL|next_addr\(1) & \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|next_addr\(1),
	datad => \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|address~3_combout\);

-- Location: FF_X34_Y25_N9
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

-- Location: LCCOMB_X34_Y25_N14
\inst|adc_mega_0|ADC_CTRL|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\ = (!\inst|adc_mega_0|ADC_CTRL|address\(1) & (!\inst|adc_mega_0|ADC_CTRL|address\(0) & !\inst|adc_mega_0|ADC_CTRL|address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|address\(1),
	datac => \inst|adc_mega_0|ADC_CTRL|address\(0),
	datad => \inst|adc_mega_0|ADC_CTRL|address\(2),
	combout => \inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\);

-- Location: LCCOMB_X35_Y25_N6
\inst|adc_mega_0|ADC_CTRL|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\ = (\inst|adc_mega_0|go~q\ & \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|go~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\);

-- Location: LCCOMB_X37_Y25_N18
\inst|adc_mega_0|ADC_CTRL|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.transState~q\ & (((!\inst|adc_mega_0|ADC_CTRL|always5~1_combout\) # (!\inst|adc_mega_0|ADC_CTRL|always5~0_combout\)) # (!\inst|adc_mega_0|ADC_CTRL|sclk_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datab => \inst|adc_mega_0|ADC_CTRL|always5~0_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|currState.transState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|always5~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\);

-- Location: LCCOMB_X36_Y25_N0
\inst|adc_mega_0|ADC_CTRL|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\ = (\inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\) # ((\inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\) # ((!\inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\ & 
-- \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\);

-- Location: FF_X36_Y25_N1
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

-- Location: LCCOMB_X36_Y25_N30
\inst|adc_mega_0|ADC_CTRL|counter[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[3]~26_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.transState~q\ & (((!\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ & !\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\)))) # 
-- (!\inst|adc_mega_0|ADC_CTRL|currState.transState~q\ & (((!\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ & !\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\)) # (!\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.transState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[3]~26_combout\);

-- Location: FF_X36_Y25_N3
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

-- Location: LCCOMB_X36_Y25_N4
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

-- Location: FF_X36_Y25_N5
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

-- Location: FF_X36_Y25_N7
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

-- Location: LCCOMB_X36_Y25_N26
\inst|adc_mega_0|ADC_CTRL|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ = ((\inst|adc_mega_0|ADC_CTRL|counter\(3)) # ((!\inst|adc_mega_0|ADC_CTRL|counter\(0)) # (!\inst|adc_mega_0|ADC_CTRL|counter\(1)))) # (!\inst|adc_mega_0|ADC_CTRL|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(2),
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(3),
	datac => \inst|adc_mega_0|ADC_CTRL|counter\(1),
	datad => \inst|adc_mega_0|ADC_CTRL|counter\(0),
	combout => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\);

-- Location: LCCOMB_X37_Y25_N12
\inst|adc_mega_0|ADC_CTRL|cs_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\) # (\inst|adc_mega_0|ADC_CTRL|currState.transState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|currState.transState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\);

-- Location: LCCOMB_X37_Y25_N4
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

-- Location: FF_X37_Y25_N5
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

-- Location: LCCOMB_X36_Y25_N28
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~7_combout\ = (!\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & ((\inst|adc_mega_0|ADC_CTRL|sclk~q\) # ((\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\) # (\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~7_combout\);

-- Location: LCCOMB_X35_Y25_N12
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\ = (\inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\) # ((\inst|adc_mega_0|ADC_CTRL|next_addr\(0) & (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|next_addr\(0),
	datab => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\);

-- Location: LCCOMB_X35_Y25_N24
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~13_combout\ = (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\) # ((\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~7_combout\ & \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~7_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0),
	datad => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~13_combout\);

-- Location: FF_X35_Y25_N25
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0));

-- Location: LCCOMB_X35_Y25_N10
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & (\inst|adc_mega_0|ADC_CTRL|next_addr\(1) & ((\inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\)))) # 
-- (!\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & (((\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|next_addr\(1),
	datab => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11_combout\);

-- Location: LCCOMB_X35_Y25_N4
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~16_combout\ = (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11_combout\ & ((!\inst|adc_mega_0|go~q\) # (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|adc_mega_0|go~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~16_combout\);

-- Location: LCCOMB_X35_Y25_N26
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~14_combout\ = ((\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ & \inst|adc_mega_0|go~q\)) # (!\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|adc_mega_0|go~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~7_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~14_combout\);

-- Location: FF_X35_Y25_N5
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~16_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(1));

-- Location: LCCOMB_X35_Y25_N30
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~10_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & (\inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ & (\inst|adc_mega_0|ADC_CTRL|next_addr\(2)))) # (!\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ 
-- & (((\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|next_addr\(2),
	datac => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(1),
	datad => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~10_combout\);

-- Location: LCCOMB_X35_Y25_N22
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~15_combout\ = (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~10_combout\ & ((!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\) # (!\inst|adc_mega_0|go~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|go~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~10_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~15_combout\);

-- Location: FF_X35_Y25_N23
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~15_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(2));

-- Location: LCCOMB_X35_Y25_N8
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\ = (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(2) & (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ $ (((!\inst|adc_mega_0|go~q\) # (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(2),
	datab => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|adc_mega_0|go~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\);

-- Location: FF_X35_Y25_N9
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(3));

-- Location: LCCOMB_X35_Y25_N28
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\ = (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(3) & (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ $ (((!\inst|adc_mega_0|go~q\) # (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(3),
	datab => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|adc_mega_0|go~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\);

-- Location: FF_X35_Y25_N29
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(4));

-- Location: LCCOMB_X35_Y25_N0
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\ = (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(4) & (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ $ (((!\inst|adc_mega_0|go~q\) # (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(4),
	datab => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|adc_mega_0|go~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\);

-- Location: FF_X35_Y25_N1
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]~14_combout\,
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

-- Location: LCCOMB_X37_Y25_N20
\inst|adc_mega_0|ADC_CTRL|always7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|always7~0_combout\ = (\inst|adc_mega_0|ADC_CTRL|always5~1_combout\ & ((!\inst|adc_mega_0|ADC_CTRL|always5~0_combout\) # (!\inst|adc_mega_0|ADC_CTRL|sclk_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datac => \inst|adc_mega_0|ADC_CTRL|always5~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|always5~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\);

-- Location: FF_X38_Y25_N11
\inst|adc_mega_0|ADC_CTRL|shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ADC_SDAT~input_o\,
	sload => VCC,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(0));

-- Location: LCCOMB_X38_Y25_N16
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

-- Location: FF_X38_Y25_N17
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

-- Location: LCCOMB_X38_Y25_N18
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

-- Location: FF_X38_Y25_N19
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

-- Location: LCCOMB_X38_Y25_N30
\inst|adc_mega_0|ADC_CTRL|shift_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|shift_reg[3]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(2),
	combout => \inst|adc_mega_0|ADC_CTRL|shift_reg[3]~feeder_combout\);

-- Location: FF_X38_Y25_N31
\inst|adc_mega_0|ADC_CTRL|shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|shift_reg[3]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(3));

-- Location: FF_X38_Y25_N1
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

-- Location: LCCOMB_X38_Y25_N8
\inst|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(4),
	combout => \inst|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder_combout\);

-- Location: FF_X38_Y25_N9
\inst|adc_mega_0|ADC_CTRL|shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(5));

-- Location: FF_X38_Y25_N7
\inst|adc_mega_0|ADC_CTRL|shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|adc_mega_0|ADC_CTRL|shift_reg\(5),
	sload => VCC,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(6));

-- Location: LCCOMB_X38_Y25_N14
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

-- Location: FF_X38_Y25_N15
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

-- Location: FF_X38_Y25_N21
\inst|adc_mega_0|ADC_CTRL|shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|adc_mega_0|ADC_CTRL|shift_reg\(7),
	sload => VCC,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(8));

-- Location: LCCOMB_X38_Y25_N12
\inst|adc_mega_0|ADC_CTRL|shift_reg[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|shift_reg[9]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(8),
	combout => \inst|adc_mega_0|ADC_CTRL|shift_reg[9]~feeder_combout\);

-- Location: FF_X38_Y25_N13
\inst|adc_mega_0|ADC_CTRL|shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|shift_reg[9]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(9));

-- Location: LCCOMB_X38_Y25_N2
\inst|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(9),
	combout => \inst|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder_combout\);

-- Location: FF_X38_Y25_N3
\inst|adc_mega_0|ADC_CTRL|shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(10));

-- Location: LCCOMB_X38_Y25_N4
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

-- Location: LCCOMB_X34_Y25_N28
\inst|adc_mega_0|ADC_CTRL|reading0[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[11]~0_combout\ = (!\inst|adc_mega_0|ADC_CTRL|address\(1) & (\inst|adc_mega_0|ADC_CTRL|address\(0) & !\inst|adc_mega_0|ADC_CTRL|address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|address\(1),
	datac => \inst|adc_mega_0|ADC_CTRL|address\(0),
	datad => \inst|adc_mega_0|ADC_CTRL|address\(2),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[11]~0_combout\);

-- Location: LCCOMB_X37_Y25_N10
\inst|adc_mega_0|ADC_CTRL|reading0[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\ = (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(3) & (\inst|adc_mega_0|ADC_CTRL|always5~0_combout\ & (\inst|adc_mega_0|ADC_CTRL|reading0[11]~0_combout\ & \inst|adc_mega_0|ADC_CTRL|always5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datab => \inst|adc_mega_0|ADC_CTRL|always5~0_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|reading0[11]~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|always5~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\);

-- Location: FF_X38_Y25_N5
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

-- Location: LCCOMB_X39_Y25_N24
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

-- Location: FF_X39_Y25_N25
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

-- Location: LCCOMB_X39_Y25_N10
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

-- Location: FF_X39_Y25_N11
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

-- Location: LCCOMB_X39_Y25_N2
\inst|adc_mega_0|CH0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~3_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(8) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|reading0\(8),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~3_combout\);

-- Location: FF_X39_Y25_N3
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

-- Location: LCCOMB_X36_Y25_N22
\inst|adc_mega_0|ADC_CTRL|reading0[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(9),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\);

-- Location: FF_X36_Y25_N23
\inst|adc_mega_0|ADC_CTRL|reading0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(10));

-- Location: LCCOMB_X40_Y25_N0
\inst|adc_mega_0|CH0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~2_combout\ = (!\KEY0~input_o\ & \inst|adc_mega_0|ADC_CTRL|reading0\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY0~input_o\,
	datad => \inst|adc_mega_0|ADC_CTRL|reading0\(10),
	combout => \inst|adc_mega_0|CH0~2_combout\);

-- Location: FF_X40_Y25_N1
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

-- Location: LCCOMB_X38_Y25_N26
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

-- Location: FF_X38_Y25_N27
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

-- Location: LCCOMB_X39_Y25_N20
\inst|adc_mega_0|CH0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~4_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(9) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|reading0\(9),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~4_combout\);

-- Location: FF_X39_Y25_N21
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

-- Location: LCCOMB_X39_Y22_N28
\inst3|Mult0|mult_core|romout[2][10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[2][10]~0_combout\ = (\inst|adc_mega_0|CH0\(11) & ((\inst|adc_mega_0|CH0\(10)) # ((\inst|adc_mega_0|CH0\(8) & \inst|adc_mega_0|CH0\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(11),
	datab => \inst|adc_mega_0|CH0\(8),
	datac => \inst|adc_mega_0|CH0\(10),
	datad => \inst|adc_mega_0|CH0\(9),
	combout => \inst3|Mult0|mult_core|romout[2][10]~0_combout\);

-- Location: LCCOMB_X39_Y22_N2
\inst3|Mult0|mult_core|romout[2][9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[2][9]~1_combout\ = (\inst|adc_mega_0|CH0\(11) & (!\inst|adc_mega_0|CH0\(10) & ((!\inst|adc_mega_0|CH0\(9)) # (!\inst|adc_mega_0|CH0\(8))))) # (!\inst|adc_mega_0|CH0\(11) & (((\inst|adc_mega_0|CH0\(10) & 
-- \inst|adc_mega_0|CH0\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(11),
	datab => \inst|adc_mega_0|CH0\(8),
	datac => \inst|adc_mega_0|CH0\(10),
	datad => \inst|adc_mega_0|CH0\(9),
	combout => \inst3|Mult0|mult_core|romout[2][9]~1_combout\);

-- Location: LCCOMB_X39_Y22_N26
\inst3|Mult0|mult_core|romout[2][8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[2][8]~2_combout\ = (\inst|adc_mega_0|CH0\(10) & ((\inst|adc_mega_0|CH0\(11) & ((\inst|adc_mega_0|CH0\(8)) # (\inst|adc_mega_0|CH0\(9)))) # (!\inst|adc_mega_0|CH0\(11) & ((!\inst|adc_mega_0|CH0\(9)))))) # 
-- (!\inst|adc_mega_0|CH0\(10) & (\inst|adc_mega_0|CH0\(11) $ (((\inst|adc_mega_0|CH0\(8) & \inst|adc_mega_0|CH0\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(11),
	datab => \inst|adc_mega_0|CH0\(8),
	datac => \inst|adc_mega_0|CH0\(10),
	datad => \inst|adc_mega_0|CH0\(9),
	combout => \inst3|Mult0|mult_core|romout[2][8]~2_combout\);

-- Location: LCCOMB_X39_Y22_N0
\inst3|Mult0|mult_core|romout[2][7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[2][7]~3_combout\ = \inst|adc_mega_0|CH0\(10) $ (((\inst|adc_mega_0|CH0\(8) & (\inst|adc_mega_0|CH0\(11) & !\inst|adc_mega_0|CH0\(9))) # (!\inst|adc_mega_0|CH0\(8) & ((\inst|adc_mega_0|CH0\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(11),
	datab => \inst|adc_mega_0|CH0\(8),
	datac => \inst|adc_mega_0|CH0\(10),
	datad => \inst|adc_mega_0|CH0\(9),
	combout => \inst3|Mult0|mult_core|romout[2][7]~3_combout\);

-- Location: LCCOMB_X39_Y22_N30
\inst3|Mult0|mult_core|romout[2][6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[2][6]~14_combout\ = \inst|adc_mega_0|CH0\(9) $ (((\inst|adc_mega_0|CH0\(8) & !\inst|adc_mega_0|CH0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|CH0\(8),
	datac => \inst|adc_mega_0|CH0\(11),
	datad => \inst|adc_mega_0|CH0\(9),
	combout => \inst3|Mult0|mult_core|romout[2][6]~14_combout\);

-- Location: FF_X39_Y25_N1
\inst|adc_mega_0|ADC_CTRL|reading0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|adc_mega_0|ADC_CTRL|shift_reg\(6),
	sload => VCC,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(7));

-- Location: LCCOMB_X39_Y25_N6
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

-- Location: FF_X39_Y25_N7
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

-- Location: LCCOMB_X38_Y25_N24
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

-- Location: FF_X38_Y25_N25
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

-- Location: LCCOMB_X39_Y25_N8
\inst|adc_mega_0|CH0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~8_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(5) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|reading0\(5),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~8_combout\);

-- Location: FF_X39_Y25_N9
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

-- Location: LCCOMB_X39_Y25_N4
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

-- Location: FF_X39_Y25_N5
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

-- Location: LCCOMB_X39_Y25_N12
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

-- Location: FF_X39_Y25_N13
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

-- Location: LCCOMB_X36_Y25_N20
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

-- Location: FF_X36_Y25_N21
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

-- Location: LCCOMB_X39_Y25_N18
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

-- Location: FF_X39_Y25_N19
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

-- Location: LCCOMB_X38_Y22_N18
\inst3|Mult0|mult_core|romout[1][10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[1][10]~4_combout\ = (\inst|adc_mega_0|CH0\(7) & ((\inst|adc_mega_0|CH0\(6)) # ((\inst|adc_mega_0|CH0\(5) & \inst|adc_mega_0|CH0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(7),
	datab => \inst|adc_mega_0|CH0\(5),
	datac => \inst|adc_mega_0|CH0\(6),
	datad => \inst|adc_mega_0|CH0\(4),
	combout => \inst3|Mult0|mult_core|romout[1][10]~4_combout\);

-- Location: LCCOMB_X38_Y22_N20
\inst3|Mult0|mult_core|romout[1][9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[1][9]~5_combout\ = (\inst|adc_mega_0|CH0\(7) & (!\inst|adc_mega_0|CH0\(6) & ((!\inst|adc_mega_0|CH0\(4)) # (!\inst|adc_mega_0|CH0\(5))))) # (!\inst|adc_mega_0|CH0\(7) & (\inst|adc_mega_0|CH0\(5) & (\inst|adc_mega_0|CH0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(7),
	datab => \inst|adc_mega_0|CH0\(5),
	datac => \inst|adc_mega_0|CH0\(6),
	datad => \inst|adc_mega_0|CH0\(4),
	combout => \inst3|Mult0|mult_core|romout[1][9]~5_combout\);

-- Location: LCCOMB_X38_Y22_N26
\inst3|Mult0|mult_core|romout[1][8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[1][8]~6_combout\ = (\inst|adc_mega_0|CH0\(5) & (\inst|adc_mega_0|CH0\(7) $ (((!\inst|adc_mega_0|CH0\(6) & \inst|adc_mega_0|CH0\(4)))))) # (!\inst|adc_mega_0|CH0\(5) & ((\inst|adc_mega_0|CH0\(7) & ((\inst|adc_mega_0|CH0\(4)) # 
-- (!\inst|adc_mega_0|CH0\(6)))) # (!\inst|adc_mega_0|CH0\(7) & (\inst|adc_mega_0|CH0\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(7),
	datab => \inst|adc_mega_0|CH0\(5),
	datac => \inst|adc_mega_0|CH0\(6),
	datad => \inst|adc_mega_0|CH0\(4),
	combout => \inst3|Mult0|mult_core|romout[1][8]~6_combout\);

-- Location: LCCOMB_X38_Y22_N24
\inst3|Mult0|mult_core|romout[1][7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[1][7]~7_combout\ = \inst|adc_mega_0|CH0\(6) $ (((\inst|adc_mega_0|CH0\(5) & ((!\inst|adc_mega_0|CH0\(4)))) # (!\inst|adc_mega_0|CH0\(5) & (\inst|adc_mega_0|CH0\(7) & \inst|adc_mega_0|CH0\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(7),
	datab => \inst|adc_mega_0|CH0\(5),
	datac => \inst|adc_mega_0|CH0\(6),
	datad => \inst|adc_mega_0|CH0\(4),
	combout => \inst3|Mult0|mult_core|romout[1][7]~7_combout\);

-- Location: LCCOMB_X38_Y22_N22
\inst3|Mult0|mult_core|romout[1][6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[1][6]~8_combout\ = \inst|adc_mega_0|CH0\(5) $ (((!\inst|adc_mega_0|CH0\(7) & \inst|adc_mega_0|CH0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(7),
	datac => \inst|adc_mega_0|CH0\(5),
	datad => \inst|adc_mega_0|CH0\(4),
	combout => \inst3|Mult0|mult_core|romout[1][6]~8_combout\);

-- Location: LCCOMB_X38_Y25_N22
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

-- Location: FF_X38_Y25_N23
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

-- Location: LCCOMB_X39_Y25_N14
\inst|adc_mega_0|CH0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~9_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(3) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|reading0\(3),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~9_combout\);

-- Location: FF_X39_Y25_N15
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

-- Location: LCCOMB_X39_Y25_N30
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

-- Location: FF_X39_Y25_N31
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

-- Location: LCCOMB_X39_Y25_N16
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

-- Location: FF_X39_Y25_N17
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

-- Location: FF_X39_Y25_N23
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

-- Location: LCCOMB_X39_Y25_N26
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

-- Location: FF_X39_Y25_N27
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

-- Location: LCCOMB_X38_Y25_N28
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

-- Location: FF_X38_Y25_N29
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

-- Location: LCCOMB_X39_Y25_N28
\inst|adc_mega_0|CH0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~10_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(2) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|reading0\(2),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~10_combout\);

-- Location: FF_X39_Y25_N29
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

-- Location: LCCOMB_X37_Y22_N20
\inst3|Mult0|mult_core|romout[0][10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[0][10]~9_combout\ = (\inst|adc_mega_0|CH0\(3) & ((\inst|adc_mega_0|CH0\(2)) # ((\inst|adc_mega_0|CH0\(1) & \inst|adc_mega_0|CH0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(3),
	datab => \inst|adc_mega_0|CH0\(1),
	datac => \inst|adc_mega_0|CH0\(0),
	datad => \inst|adc_mega_0|CH0\(2),
	combout => \inst3|Mult0|mult_core|romout[0][10]~9_combout\);

-- Location: LCCOMB_X37_Y22_N10
\inst3|Mult0|mult_core|romout[0][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[0][9]~combout\ = (\inst|adc_mega_0|CH0\(3) & (!\inst|adc_mega_0|CH0\(2) & ((!\inst|adc_mega_0|CH0\(0)) # (!\inst|adc_mega_0|CH0\(1))))) # (!\inst|adc_mega_0|CH0\(3) & (\inst|adc_mega_0|CH0\(1) & ((\inst|adc_mega_0|CH0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(3),
	datab => \inst|adc_mega_0|CH0\(1),
	datac => \inst|adc_mega_0|CH0\(0),
	datad => \inst|adc_mega_0|CH0\(2),
	combout => \inst3|Mult0|mult_core|romout[0][9]~combout\);

-- Location: LCCOMB_X38_Y22_N28
\inst3|Mult0|mult_core|romout[1][5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[1][5]~10_combout\ = \inst|adc_mega_0|CH0\(7) $ (\inst|adc_mega_0|CH0\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(7),
	datad => \inst|adc_mega_0|CH0\(4),
	combout => \inst3|Mult0|mult_core|romout[1][5]~10_combout\);

-- Location: LCCOMB_X37_Y22_N12
\inst3|Mult0|mult_core|romout[0][8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[0][8]~11_combout\ = (\inst|adc_mega_0|CH0\(1) & (\inst|adc_mega_0|CH0\(3) $ (((\inst|adc_mega_0|CH0\(0) & !\inst|adc_mega_0|CH0\(2)))))) # (!\inst|adc_mega_0|CH0\(1) & ((\inst|adc_mega_0|CH0\(3) & ((\inst|adc_mega_0|CH0\(0)) 
-- # (!\inst|adc_mega_0|CH0\(2)))) # (!\inst|adc_mega_0|CH0\(3) & ((\inst|adc_mega_0|CH0\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(3),
	datab => \inst|adc_mega_0|CH0\(1),
	datac => \inst|adc_mega_0|CH0\(0),
	datad => \inst|adc_mega_0|CH0\(2),
	combout => \inst3|Mult0|mult_core|romout[0][8]~11_combout\);

-- Location: LCCOMB_X37_Y22_N26
\inst3|Mult0|mult_core|romout[0][7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[0][7]~12_combout\ = \inst|adc_mega_0|CH0\(2) $ (((\inst|adc_mega_0|CH0\(1) & ((!\inst|adc_mega_0|CH0\(0)))) # (!\inst|adc_mega_0|CH0\(1) & (\inst|adc_mega_0|CH0\(3) & \inst|adc_mega_0|CH0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(3),
	datab => \inst|adc_mega_0|CH0\(1),
	datac => \inst|adc_mega_0|CH0\(0),
	datad => \inst|adc_mega_0|CH0\(2),
	combout => \inst3|Mult0|mult_core|romout[0][7]~12_combout\);

-- Location: LCCOMB_X37_Y22_N4
\inst3|Mult0|mult_core|romout[0][6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[0][6]~13_combout\ = \inst|adc_mega_0|CH0\(1) $ (((\inst|adc_mega_0|CH0\(0) & !\inst|adc_mega_0|CH0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|CH0\(1),
	datac => \inst|adc_mega_0|CH0\(0),
	datad => \inst|adc_mega_0|CH0\(3),
	combout => \inst3|Mult0|mult_core|romout[0][6]~13_combout\);

-- Location: LCCOMB_X38_Y22_N0
\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\inst3|Mult0|mult_core|romout[0][6]~13_combout\ & (\inst|adc_mega_0|CH0\(4) $ (VCC))) # (!\inst3|Mult0|mult_core|romout[0][6]~13_combout\ & (\inst|adc_mega_0|CH0\(4) & VCC))
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\inst3|Mult0|mult_core|romout[0][6]~13_combout\ & \inst|adc_mega_0|CH0\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|romout[0][6]~13_combout\,
	datab => \inst|adc_mega_0|CH0\(4),
	datad => VCC,
	combout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X38_Y22_N2
\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\inst3|Mult0|mult_core|romout[0][7]~12_combout\ & ((\inst|adc_mega_0|CH0\(5) & (\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\inst|adc_mega_0|CH0\(5) & 
-- (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\inst3|Mult0|mult_core|romout[0][7]~12_combout\ & ((\inst|adc_mega_0|CH0\(5) & (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\inst|adc_mega_0|CH0\(5) & 
-- ((\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\inst3|Mult0|mult_core|romout[0][7]~12_combout\ & (!\inst|adc_mega_0|CH0\(5) & !\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\inst3|Mult0|mult_core|romout[0][7]~12_combout\ & ((!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\inst|adc_mega_0|CH0\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|romout[0][7]~12_combout\,
	datab => \inst|adc_mega_0|CH0\(5),
	datad => VCC,
	cin => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X38_Y22_N4
\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\inst3|Mult0|mult_core|romout[0][8]~11_combout\ $ (\inst|adc_mega_0|CH0\(6) $ (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\inst3|Mult0|mult_core|romout[0][8]~11_combout\ & ((\inst|adc_mega_0|CH0\(6)) # (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\inst3|Mult0|mult_core|romout[0][8]~11_combout\ & (\inst|adc_mega_0|CH0\(6) & !\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|romout[0][8]~11_combout\,
	datab => \inst|adc_mega_0|CH0\(6),
	datad => VCC,
	cin => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X38_Y22_N6
\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\inst3|Mult0|mult_core|romout[0][9]~combout\ & ((\inst3|Mult0|mult_core|romout[1][5]~10_combout\ & (\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\inst3|Mult0|mult_core|romout[1][5]~10_combout\ & (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\inst3|Mult0|mult_core|romout[0][9]~combout\ & ((\inst3|Mult0|mult_core|romout[1][5]~10_combout\ & 
-- (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\inst3|Mult0|mult_core|romout[1][5]~10_combout\ & ((\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\inst3|Mult0|mult_core|romout[0][9]~combout\ & (!\inst3|Mult0|mult_core|romout[1][5]~10_combout\ & !\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\inst3|Mult0|mult_core|romout[0][9]~combout\ & ((!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\inst3|Mult0|mult_core|romout[1][5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|romout[0][9]~combout\,
	datab => \inst3|Mult0|mult_core|romout[1][5]~10_combout\,
	datad => VCC,
	cin => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X38_Y22_N8
\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\inst3|Mult0|mult_core|romout[1][6]~8_combout\ $ (\inst3|Mult0|mult_core|romout[0][10]~9_combout\ $ (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\inst3|Mult0|mult_core|romout[1][6]~8_combout\ & ((\inst3|Mult0|mult_core|romout[0][10]~9_combout\) # (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\inst3|Mult0|mult_core|romout[1][6]~8_combout\ & (\inst3|Mult0|mult_core|romout[0][10]~9_combout\ & !\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|romout[1][6]~8_combout\,
	datab => \inst3|Mult0|mult_core|romout[0][10]~9_combout\,
	datad => VCC,
	cin => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X38_Y22_N10
\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\inst3|Mult0|mult_core|romout[1][7]~7_combout\ & (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\inst3|Mult0|mult_core|romout[1][7]~7_combout\ & 
-- ((\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\inst3|Mult0|mult_core|romout[1][7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|romout[1][7]~7_combout\,
	datad => VCC,
	cin => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X38_Y22_N12
\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = (\inst3|Mult0|mult_core|romout[1][8]~6_combout\ & (\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ $ (GND))) # (!\inst3|Mult0|mult_core|romout[1][8]~6_combout\ & 
-- (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & VCC))
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\inst3|Mult0|mult_core|romout[1][8]~6_combout\ & !\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|romout[1][8]~6_combout\,
	datad => VCC,
	cin => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X38_Y22_N14
\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\inst3|Mult0|mult_core|romout[1][9]~5_combout\ & (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\inst3|Mult0|mult_core|romout[1][9]~5_combout\ & 
-- ((\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\inst3|Mult0|mult_core|romout[1][9]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|romout[1][9]~5_combout\,
	datad => VCC,
	cin => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X38_Y22_N16
\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ $ (!\inst3|Mult0|mult_core|romout[1][10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Mult0|mult_core|romout[1][10]~4_combout\,
	cin => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\);

-- Location: LCCOMB_X39_Y22_N24
\inst3|Mult0|mult_core|romout[2][5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[2][5]~15_combout\ = \inst|adc_mega_0|CH0\(8) $ (\inst|adc_mega_0|CH0\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|CH0\(8),
	datac => \inst|adc_mega_0|CH0\(11),
	combout => \inst3|Mult0|mult_core|romout[2][5]~15_combout\);

-- Location: LCCOMB_X39_Y22_N4
\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\inst|adc_mega_0|CH0\(8) $ (VCC))) # 
-- (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (\inst|adc_mega_0|CH0\(8) & VCC))
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & \inst|adc_mega_0|CH0\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \inst|adc_mega_0|CH0\(8),
	datad => VCC,
	combout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X39_Y22_N6
\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\inst|adc_mega_0|CH0\(9) & 
-- (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\inst|adc_mega_0|CH0\(9) & (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\inst|adc_mega_0|CH0\(9) & (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\inst|adc_mega_0|CH0\(9) & 
-- ((\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\inst|adc_mega_0|CH0\(9) & 
-- !\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\inst|adc_mega_0|CH0\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \inst|adc_mega_0|CH0\(9),
	datad => VCC,
	cin => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X39_Y22_N8
\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ $ (\inst|adc_mega_0|CH0\(10) $ 
-- (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\inst|adc_mega_0|CH0\(10)) # 
-- (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (\inst|adc_mega_0|CH0\(10) & 
-- !\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datab => \inst|adc_mega_0|CH0\(10),
	datad => VCC,
	cin => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X39_Y22_N10
\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = (\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\inst3|Mult0|mult_core|romout[2][5]~15_combout\ & 
-- (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\inst3|Mult0|mult_core|romout[2][5]~15_combout\ & (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)))) # 
-- (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\inst3|Mult0|mult_core|romout[2][5]~15_combout\ & (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # 
-- (!\inst3|Mult0|mult_core|romout[2][5]~15_combout\ & ((\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\ = CARRY((\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\inst3|Mult0|mult_core|romout[2][5]~15_combout\ & 
-- !\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\)) # (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\) # 
-- (!\inst3|Mult0|mult_core|romout[2][5]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datab => \inst3|Mult0|mult_core|romout[2][5]~15_combout\,
	datad => VCC,
	cin => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	cout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X39_Y22_N12
\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ = ((\inst3|Mult0|mult_core|romout[2][6]~14_combout\ $ (\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ $ 
-- (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\ = CARRY((\inst3|Mult0|mult_core|romout[2][6]~14_combout\ & ((\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\) # 
-- (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\))) # (!\inst3|Mult0|mult_core|romout[2][6]~14_combout\ & (\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & 
-- !\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|romout[2][6]~14_combout\,
	datab => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~7\,
	combout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	cout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X39_Y22_N14
\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ = (\inst3|Mult0|mult_core|romout[2][7]~3_combout\ & (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\)) # 
-- (!\inst3|Mult0|mult_core|romout[2][7]~3_combout\ & ((\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (GND)))
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ = CARRY((!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\) # (!\inst3|Mult0|mult_core|romout[2][7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|romout[2][7]~3_combout\,
	datad => VCC,
	cin => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~9\,
	combout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	cout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X39_Y22_N16
\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ = (\inst3|Mult0|mult_core|romout[2][8]~2_combout\ & (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ $ (GND))) # 
-- (!\inst3|Mult0|mult_core|romout[2][8]~2_combout\ & (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\ & VCC))
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\ = CARRY((\inst3|Mult0|mult_core|romout[2][8]~2_combout\ & !\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|romout[2][8]~2_combout\,
	datad => VCC,
	cin => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~11\,
	combout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	cout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X39_Y22_N18
\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ = (\inst3|Mult0|mult_core|romout[2][9]~1_combout\ & (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\)) # 
-- (!\inst3|Mult0|mult_core|romout[2][9]~1_combout\ & ((\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (GND)))
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ = CARRY((!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\) # (!\inst3|Mult0|mult_core|romout[2][9]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|romout[2][9]~1_combout\,
	datad => VCC,
	cin => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~13\,
	combout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	cout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X39_Y22_N20
\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ = \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\ $ (!\inst3|Mult0|mult_core|romout[2][10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Mult0|mult_core|romout[2][10]~0_combout\,
	cin => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~15\,
	combout => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\);

-- Location: LCCOMB_X40_Y22_N2
\inst3|Div0|auto_generated|divider|divider|op_7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_7~0_combout\ = \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ (VCC)
-- \inst3|Div0|auto_generated|divider|divider|op_7~1\ = CARRY(\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|op_7~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_7~1\);

-- Location: LCCOMB_X40_Y22_N4
\inst3|Div0|auto_generated|divider|divider|op_7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_7~2_combout\ = (\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_7~1\)) # 
-- (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~1\) # (GND)))
-- \inst3|Div0|auto_generated|divider|divider|op_7~3\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_7~1\) # (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_7~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X40_Y22_N6
\inst3|Div0|auto_generated|divider|divider|op_7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_7~4_combout\ = (\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\inst3|Div0|auto_generated|divider|divider|op_7~3\ $ (GND))) # 
-- (!\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_7~3\ & VCC))
-- \inst3|Div0|auto_generated|divider|divider|op_7~5\ = CARRY((\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_7~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X40_Y22_N8
\inst3|Div0|auto_generated|divider|divider|op_7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_7~6_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_7~5\)) # 
-- (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~5\) # (GND)))
-- \inst3|Div0|auto_generated|divider|divider|op_7~7\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_7~5\) # (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_7~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_7~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X40_Y22_N10
\inst3|Div0|auto_generated|divider|divider|op_7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_7~8_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (\inst3|Div0|auto_generated|divider|divider|op_7~7\ $ (GND))) # 
-- (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_7~7\ & VCC))
-- \inst3|Div0|auto_generated|divider|divider|op_7~9\ = CARRY((\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_7~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_7~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X40_Y22_N12
\inst3|Div0|auto_generated|divider|divider|op_7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_7~10_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_7~9\)) # 
-- (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~9\) # (GND)))
-- \inst3|Div0|auto_generated|divider|divider|op_7~11\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_7~9\) # (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_7~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_7~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_7~11\);

-- Location: LCCOMB_X40_Y22_N14
\inst3|Div0|auto_generated|divider|divider|op_7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_7~12_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (\inst3|Div0|auto_generated|divider|divider|op_7~11\ $ (GND))) # 
-- (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_7~11\ & VCC))
-- \inst3|Div0|auto_generated|divider|divider|op_7~13\ = CARRY((\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_7~11\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_7~12_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_7~13\);

-- Location: LCCOMB_X40_Y22_N16
\inst3|Div0|auto_generated|divider|divider|op_7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_7~14_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_7~13\)) # 
-- (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~13\) # (GND)))
-- \inst3|Div0|auto_generated|divider|divider|op_7~15\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_7~13\) # (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_7~13\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_7~14_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_7~15\);

-- Location: LCCOMB_X40_Y22_N18
\inst3|Div0|auto_generated|divider|divider|op_7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_7~16_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (\inst3|Div0|auto_generated|divider|divider|op_7~15\ $ (GND))) # 
-- (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_7~15\ & VCC))
-- \inst3|Div0|auto_generated|divider|divider|op_7~17\ = CARRY((\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_7~15\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_7~16_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_7~17\);

-- Location: LCCOMB_X40_Y22_N20
\inst3|Div0|auto_generated|divider|divider|op_7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_7~18_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_7~17\)) # 
-- (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~17\) # (GND)))
-- \inst3|Div0|auto_generated|divider|divider|op_7~19\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_7~17\) # (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_7~17\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_7~18_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_7~19\);

-- Location: LCCOMB_X40_Y22_N22
\inst3|Div0|auto_generated|divider|divider|op_7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_7~20_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (\inst3|Div0|auto_generated|divider|divider|op_7~19\ $ (GND))) # 
-- (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_7~19\ & VCC))
-- \inst3|Div0|auto_generated|divider|divider|op_7~21\ = CARRY((\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_7~19\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_7~20_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_7~21\);

-- Location: LCCOMB_X40_Y22_N24
\inst3|Div0|auto_generated|divider|divider|op_7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_7~22_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_7~21\)) # 
-- (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~21\) # (GND)))
-- \inst3|Div0|auto_generated|divider|divider|op_7~23\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_7~21\) # (!\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_7~21\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_7~22_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_7~23\);

-- Location: LCCOMB_X40_Y22_N26
\inst3|Div0|auto_generated|divider|divider|op_7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_7~25_cout\ = CARRY(!\inst3|Div0|auto_generated|divider|divider|op_7~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_7~23\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_7~25_cout\);

-- Location: LCCOMB_X40_Y22_N28
\inst3|Div0|auto_generated|divider|divider|op_7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ = !\inst3|Div0|auto_generated|divider|divider|op_7~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|op_7~25_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\);

-- Location: LCCOMB_X41_Y23_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[219]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[219]~171_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_7~22_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~22_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[219]~171_combout\);

-- Location: LCCOMB_X40_Y23_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[219]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[219]~170_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\ & \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~16_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[219]~170_combout\);

-- Location: LCCOMB_X41_Y23_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[218]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[218]~172_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\ & \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[218]~172_combout\);

-- Location: LCCOMB_X41_Y23_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[218]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[218]~173_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_7~20_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_7~20_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[218]~173_combout\);

-- Location: LCCOMB_X39_Y23_N14
\inst3|Div0|auto_generated|divider|divider|StageOut[217]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[217]~175_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_7~18_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_7~18_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[217]~175_combout\);

-- Location: LCCOMB_X39_Y23_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[217]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[217]~174_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\ & \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[217]~174_combout\);

-- Location: LCCOMB_X39_Y26_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[216]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[216]~176_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\ & \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[216]~176_combout\);

-- Location: LCCOMB_X40_Y22_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[216]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[216]~177_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_7~16_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_7~16_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[216]~177_combout\);

-- Location: LCCOMB_X39_Y23_N18
\inst3|Div0|auto_generated|divider|divider|StageOut[215]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[215]~179_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_7~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[215]~179_combout\);

-- Location: LCCOMB_X39_Y23_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[215]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[215]~178_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[215]~178_combout\);

-- Location: LCCOMB_X40_Y22_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[214]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[214]~181_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_7~12_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~12_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[214]~181_combout\);

-- Location: LCCOMB_X40_Y24_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[214]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[214]~180_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[214]~180_combout\);

-- Location: LCCOMB_X39_Y26_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[213]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[213]~182_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[213]~182_combout\);

-- Location: LCCOMB_X39_Y26_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[213]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[213]~183_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_7~10_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[213]~183_combout\);

-- Location: LCCOMB_X39_Y26_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[212]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[212]~185_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_7~8_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[212]~185_combout\);

-- Location: LCCOMB_X39_Y22_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[212]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[212]~184_combout\ = (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[212]~184_combout\);

-- Location: LCCOMB_X41_Y23_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[211]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[211]~187_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_7~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[211]~187_combout\);

-- Location: LCCOMB_X40_Y23_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[211]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[211]~186_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datac => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[211]~186_combout\);

-- Location: LCCOMB_X39_Y23_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[210]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[210]~189_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_7~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~4_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[210]~189_combout\);

-- Location: LCCOMB_X39_Y23_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[210]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[210]~188_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[210]~188_combout\);

-- Location: LCCOMB_X41_Y23_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[209]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[209]~190_combout\ = (\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[209]~190_combout\);

-- Location: LCCOMB_X41_Y23_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[209]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[209]~191_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_7~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_7~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[209]~191_combout\);

-- Location: LCCOMB_X39_Y23_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[208]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[208]~192_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[208]~192_combout\);

-- Location: LCCOMB_X39_Y23_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[208]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[208]~193_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_7~0_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_7~0_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[208]~193_combout\);

-- Location: LCCOMB_X40_Y23_N4
\inst3|Div0|auto_generated|divider|divider|op_8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_8~0_combout\ = \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (VCC)
-- \inst3|Div0|auto_generated|divider|divider|op_8~1\ = CARRY(\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|op_8~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_8~1\);

-- Location: LCCOMB_X40_Y23_N6
\inst3|Div0|auto_generated|divider|divider|op_8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_8~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[208]~192_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_8~1\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[208]~192_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[208]~193_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_8~1\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[208]~193_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_8~1\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_8~3\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[208]~192_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[208]~193_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[208]~192_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[208]~193_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_8~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X40_Y23_N8
\inst3|Div0|auto_generated|divider|divider|op_8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_8~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[209]~190_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[209]~191_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_8~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[209]~190_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[209]~191_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_8~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_8~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[209]~190_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[209]~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[209]~190_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[209]~191_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_8~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X40_Y23_N10
\inst3|Div0|auto_generated|divider|divider|op_8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_8~6_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[210]~189_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_8~5\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[210]~189_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[210]~188_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_8~5\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[210]~188_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_8~5\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_8~7\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[210]~189_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[210]~188_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[210]~189_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[210]~188_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_8~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_8~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X40_Y23_N12
\inst3|Div0|auto_generated|divider|divider|op_8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_8~8_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~7\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[211]~187_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[211]~186_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_8~7\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[211]~187_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[211]~186_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_8~9\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_8~7\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[211]~187_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[211]~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[211]~187_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[211]~186_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_8~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_8~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_8~9\);

-- Location: LCCOMB_X40_Y23_N14
\inst3|Div0|auto_generated|divider|divider|op_8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_8~10_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[212]~185_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_8~9\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[212]~185_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[212]~184_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_8~9\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[212]~184_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_8~9\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_8~11\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[212]~185_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[212]~184_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[212]~185_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[212]~184_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_8~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_8~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_8~11\);

-- Location: LCCOMB_X40_Y23_N16
\inst3|Div0|auto_generated|divider|divider|op_8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_8~12_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~11\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[213]~182_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[213]~183_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_8~11\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[213]~182_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[213]~183_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_8~13\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_8~11\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[213]~182_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[213]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[213]~182_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[213]~183_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_8~11\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_8~12_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_8~13\);

-- Location: LCCOMB_X40_Y23_N18
\inst3|Div0|auto_generated|divider|divider|op_8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_8~14_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[214]~181_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_8~13\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[214]~181_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[214]~180_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_8~13\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[214]~180_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_8~13\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_8~15\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[214]~181_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[214]~180_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_8~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[214]~181_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[214]~180_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_8~13\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_8~14_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_8~15\);

-- Location: LCCOMB_X40_Y23_N20
\inst3|Div0|auto_generated|divider|divider|op_8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_8~16_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~15\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[215]~179_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[215]~178_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_8~15\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[215]~179_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[215]~178_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_8~17\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_8~15\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[215]~179_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[215]~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[215]~179_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[215]~178_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_8~15\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_8~16_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_8~17\);

-- Location: LCCOMB_X40_Y23_N22
\inst3|Div0|auto_generated|divider|divider|op_8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_8~18_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[216]~176_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_8~17\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[216]~176_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[216]~177_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_8~17\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[216]~177_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_8~17\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_8~19\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[216]~176_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[216]~177_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_8~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[216]~176_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[216]~177_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_8~17\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_8~18_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_8~19\);

-- Location: LCCOMB_X40_Y23_N24
\inst3|Div0|auto_generated|divider|divider|op_8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_8~20_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~19\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[217]~175_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[217]~174_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_8~19\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[217]~175_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[217]~174_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_8~21\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_8~19\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[217]~175_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[217]~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[217]~175_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[217]~174_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_8~19\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_8~20_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_8~21\);

-- Location: LCCOMB_X40_Y23_N26
\inst3|Div0|auto_generated|divider|divider|op_8~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_8~22_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[218]~172_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_8~21\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[218]~172_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[218]~173_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_8~21\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[218]~173_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_8~21\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_8~23\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[218]~172_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[218]~173_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_8~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[218]~172_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[218]~173_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_8~21\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_8~22_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_8~23\);

-- Location: LCCOMB_X40_Y23_N28
\inst3|Div0|auto_generated|divider|divider|op_8~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_8~25_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[219]~171_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[219]~170_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_8~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[219]~171_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[219]~170_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_8~23\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_8~25_cout\);

-- Location: LCCOMB_X40_Y23_N30
\inst3|Div0|auto_generated|divider|divider|op_8~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ = !\inst3|Div0|auto_generated|divider|divider|op_8~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|op_8~25_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\);

-- Location: LCCOMB_X41_Y23_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[232]~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[232]~282_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- ((\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\))) # (!\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & (\inst3|Div0|auto_generated|divider|divider|op_7~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_7~20_combout\,
	datac => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[232]~282_combout\);

-- Location: LCCOMB_X38_Y23_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[232]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[232]~194_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~22_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[232]~194_combout\);

-- Location: LCCOMB_X39_Y23_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[231]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[231]~195_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~20_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[231]~195_combout\);

-- Location: LCCOMB_X39_Y23_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[231]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~12_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_7~18_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\);

-- Location: LCCOMB_X39_Y26_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[230]~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~10_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~16_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\);

-- Location: LCCOMB_X39_Y26_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[230]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[230]~196_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~18_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[230]~196_combout\);

-- Location: LCCOMB_X39_Y23_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[229]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~8_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_7~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\);

-- Location: LCCOMB_X35_Y24_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[229]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[229]~197_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_8~16_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[229]~197_combout\);

-- Location: LCCOMB_X40_Y24_N18
\inst3|Div0|auto_generated|divider|divider|StageOut[228]~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- ((\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\))) # (!\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & (\inst3|Div0|auto_generated|divider|divider|op_7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_7~12_combout\,
	datab => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\);

-- Location: LCCOMB_X40_Y24_N14
\inst3|Div0|auto_generated|divider|divider|StageOut[228]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[228]~198_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[228]~198_combout\);

-- Location: LCCOMB_X39_Y26_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[227]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- ((\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\))) # (!\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & (\inst3|Div0|auto_generated|divider|divider|op_7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_7~10_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datac => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\);

-- Location: LCCOMB_X39_Y25_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[227]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[227]~199_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~12_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_8~12_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[227]~199_combout\);

-- Location: LCCOMB_X39_Y26_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[226]~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- ((\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\))) # (!\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & (\inst3|Div0|auto_generated|divider|divider|op_7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_7~8_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datac => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\);

-- Location: LCCOMB_X39_Y26_N14
\inst3|Div0|auto_generated|divider|divider|StageOut[226]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[226]~200_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~10_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_8~10_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[226]~200_combout\);

-- Location: LCCOMB_X40_Y24_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[225]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- (\inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_7~6_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\);

-- Location: LCCOMB_X40_Y24_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[225]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[225]~201_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[225]~201_combout\);

-- Location: LCCOMB_X38_Y26_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[224]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[224]~202_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~6_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[224]~202_combout\);

-- Location: LCCOMB_X39_Y23_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[224]~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- ((\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))) # (!\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & (\inst3|Div0|auto_generated|divider|divider|op_7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_7~4_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\);

-- Location: LCCOMB_X41_Y23_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[223]~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- ((\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))) # (!\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & (\inst3|Div0|auto_generated|divider|divider|op_7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_7~2_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\);

-- Location: LCCOMB_X38_Y24_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[223]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[223]~203_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~4_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[223]~203_combout\);

-- Location: LCCOMB_X39_Y23_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[222]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[222]~204_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[222]~204_combout\);

-- Location: LCCOMB_X39_Y23_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[222]~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & 
-- (\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|op_7~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_7~0_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_7~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\);

-- Location: LCCOMB_X36_Y24_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[221]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[221]~205_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[221]~205_combout\);

-- Location: LCCOMB_X36_Y24_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[221]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[221]~206_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~0_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[221]~206_combout\);

-- Location: LCCOMB_X37_Y22_N30
\inst3|Mult0|mult_core|romout[0][5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mult0|mult_core|romout[0][5]~16_combout\ = \inst|adc_mega_0|CH0\(0) $ (\inst|adc_mega_0|CH0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|CH0\(0),
	datad => \inst|adc_mega_0|CH0\(3),
	combout => \inst3|Mult0|mult_core|romout[0][5]~16_combout\);

-- Location: LCCOMB_X38_Y26_N4
\inst3|Div0|auto_generated|divider|divider|op_9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_9~0_combout\ = \inst3|Mult0|mult_core|romout[0][5]~16_combout\ $ (VCC)
-- \inst3|Div0|auto_generated|divider|divider|op_9~1\ = CARRY(\inst3|Mult0|mult_core|romout[0][5]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mult0|mult_core|romout[0][5]~16_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|op_9~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_9~1\);

-- Location: LCCOMB_X38_Y26_N6
\inst3|Div0|auto_generated|divider|divider|op_9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_9~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[221]~205_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_9~1\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[221]~205_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[221]~206_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_9~1\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[221]~206_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_9~1\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_9~3\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[221]~205_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[221]~206_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[221]~205_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[221]~206_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_9~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_9~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_9~3\);

-- Location: LCCOMB_X38_Y26_N8
\inst3|Div0|auto_generated|divider|divider|op_9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_9~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[222]~204_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_9~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[222]~204_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_9~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_9~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[222]~204_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[222]~204_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_9~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_9~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_9~5\);

-- Location: LCCOMB_X38_Y26_N10
\inst3|Div0|auto_generated|divider|divider|op_9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_9~6_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_9~5\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[223]~203_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_9~5\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[223]~203_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_9~5\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_9~7\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[223]~203_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[223]~203_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_9~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_9~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_9~7\);

-- Location: LCCOMB_X38_Y26_N12
\inst3|Div0|auto_generated|divider|divider|op_9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_9~8_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~7\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[224]~202_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_9~7\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[224]~202_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_9~9\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_9~7\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[224]~202_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[224]~202_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_9~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_9~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_9~9\);

-- Location: LCCOMB_X38_Y26_N14
\inst3|Div0|auto_generated|divider|divider|op_9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_9~10_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_9~9\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[225]~201_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_9~9\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[225]~201_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_9~9\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_9~11\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[225]~201_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_9~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[225]~201_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_9~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_9~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_9~11\);

-- Location: LCCOMB_X38_Y26_N16
\inst3|Div0|auto_generated|divider|divider|op_9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_9~12_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~11\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[226]~200_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_9~11\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[226]~200_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_9~13\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_9~11\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[226]~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[226]~200_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_9~11\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_9~12_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_9~13\);

-- Location: LCCOMB_X38_Y26_N18
\inst3|Div0|auto_generated|divider|divider|op_9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_9~14_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_9~13\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[227]~199_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_9~13\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[227]~199_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_9~13\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_9~15\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[227]~199_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_9~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[227]~199_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_9~13\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_9~14_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_9~15\);

-- Location: LCCOMB_X38_Y26_N20
\inst3|Div0|auto_generated|divider|divider|op_9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_9~16_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~15\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[228]~198_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_9~15\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[228]~198_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_9~17\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_9~15\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[228]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[228]~198_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_9~15\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_9~16_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_9~17\);

-- Location: LCCOMB_X38_Y26_N22
\inst3|Div0|auto_generated|divider|divider|op_9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_9~18_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_9~17\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[229]~197_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_9~17\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[229]~197_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_9~17\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_9~19\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[229]~197_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_9~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[229]~197_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_9~17\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_9~18_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_9~19\);

-- Location: LCCOMB_X38_Y26_N24
\inst3|Div0|auto_generated|divider|divider|op_9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_9~20_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~19\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[230]~196_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_9~19\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[230]~196_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_9~21\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_9~19\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[230]~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[230]~196_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_9~19\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_9~20_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_9~21\);

-- Location: LCCOMB_X38_Y26_N26
\inst3|Div0|auto_generated|divider|divider|op_9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_9~22_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[231]~195_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_9~21\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[231]~195_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_9~21\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_9~21\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_9~23\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[231]~195_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_9~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[231]~195_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_9~21\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_9~22_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_9~23\);

-- Location: LCCOMB_X38_Y26_N28
\inst3|Div0|auto_generated|divider|divider|op_9~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_9~25_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[232]~282_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[232]~194_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_9~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[232]~282_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[232]~194_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_9~23\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_9~25_cout\);

-- Location: LCCOMB_X38_Y26_N30
\inst3|Div0|auto_generated|divider|divider|op_9~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ = !\inst3|Div0|auto_generated|divider|divider|op_9~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|op_9~25_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\);

-- Location: LCCOMB_X38_Y26_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[245]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[245]~207_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~22_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~22_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[245]~207_combout\);

-- Location: LCCOMB_X39_Y23_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[245]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[245]~249_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[231]~283_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~20_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[245]~249_combout\);

-- Location: LCCOMB_X39_Y26_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[244]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[244]~208_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_9~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_9~20_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[244]~208_combout\);

-- Location: LCCOMB_X39_Y26_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[244]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[230]~284_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~18_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\);

-- Location: LCCOMB_X35_Y24_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[243]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|op_8~16_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[229]~285_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_8~16_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\);

-- Location: LCCOMB_X35_Y24_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[243]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[243]~209_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~18_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~18_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[243]~209_combout\);

-- Location: LCCOMB_X40_Y24_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[242]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_8~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[228]~286_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\);

-- Location: LCCOMB_X40_Y24_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[242]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[242]~210_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_9~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_9~16_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[242]~210_combout\);

-- Location: LCCOMB_X35_Y24_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[241]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[241]~211_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~14_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[241]~211_combout\);

-- Location: LCCOMB_X39_Y26_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[241]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[227]~287_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\);

-- Location: LCCOMB_X36_Y24_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[240]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[240]~212_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_9~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_9~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[240]~212_combout\);

-- Location: LCCOMB_X39_Y26_N18
\inst3|Div0|auto_generated|divider|divider|StageOut[240]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|op_8~10_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[226]~288_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_8~10_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\);

-- Location: LCCOMB_X40_Y24_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[239]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[225]~289_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\);

-- Location: LCCOMB_X40_Y24_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[239]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[239]~213_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~10_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~10_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[239]~213_combout\);

-- Location: LCCOMB_X39_Y24_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[238]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[224]~290_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~6_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\);

-- Location: LCCOMB_X38_Y24_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[238]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[238]~214_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_9~8_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[238]~214_combout\);

-- Location: LCCOMB_X38_Y24_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[237]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[223]~291_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~4_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\);

-- Location: LCCOMB_X38_Y24_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[237]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[237]~215_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[237]~215_combout\);

-- Location: LCCOMB_X38_Y24_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[236]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[236]~216_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_9~4_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[236]~216_combout\);

-- Location: LCCOMB_X39_Y23_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[236]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[222]~292_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\);

-- Location: LCCOMB_X36_Y24_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[235]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[235]~217_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_9~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[235]~217_combout\);

-- Location: LCCOMB_X36_Y24_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[235]~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & 
-- (\inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|op_8~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datab => \inst3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_8~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_8~0_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\);

-- Location: LCCOMB_X37_Y22_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[234]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & (\inst|adc_mega_0|CH0\(0) $ (\inst|adc_mega_0|CH0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(0),
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst|adc_mega_0|CH0\(3),
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\);

-- Location: LCCOMB_X38_Y24_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[234]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[234]~218_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_9~0_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~0_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[234]~218_combout\);

-- Location: LCCOMB_X39_Y24_N0
\inst3|Div0|auto_generated|divider|divider|op_10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_10~0_combout\ = \inst|adc_mega_0|CH0\(2) $ (VCC)
-- \inst3|Div0|auto_generated|divider|divider|op_10~1\ = CARRY(\inst|adc_mega_0|CH0\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|CH0\(2),
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|op_10~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_10~1\);

-- Location: LCCOMB_X39_Y24_N2
\inst3|Div0|auto_generated|divider|divider|op_10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_10~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_10~1\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[234]~218_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_10~1\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[234]~218_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_10~1\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_10~3\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[234]~218_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[234]~218_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_10~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_10~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X39_Y24_N4
\inst3|Div0|auto_generated|divider|divider|op_10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_10~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[235]~217_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_10~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[235]~217_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_10~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_10~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[235]~217_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[235]~217_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_10~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_10~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_10~5\);

-- Location: LCCOMB_X39_Y24_N6
\inst3|Div0|auto_generated|divider|divider|op_10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_10~6_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[236]~216_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_10~5\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[236]~216_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_10~5\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_10~5\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_10~7\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[236]~216_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[236]~216_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_10~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_10~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_10~7\);

-- Location: LCCOMB_X39_Y24_N8
\inst3|Div0|auto_generated|divider|divider|op_10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_10~8_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~7\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[237]~215_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_10~7\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[237]~215_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_10~9\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_10~7\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[237]~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[237]~215_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_10~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_10~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_10~9\);

-- Location: LCCOMB_X39_Y24_N10
\inst3|Div0|auto_generated|divider|divider|op_10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_10~10_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_10~9\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[238]~214_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_10~9\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[238]~214_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_10~9\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_10~11\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[238]~214_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[238]~214_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_10~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_10~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_10~11\);

-- Location: LCCOMB_X39_Y24_N12
\inst3|Div0|auto_generated|divider|divider|op_10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_10~12_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~11\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[239]~213_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_10~11\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[239]~213_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_10~13\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_10~11\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[239]~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[239]~213_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_10~11\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_10~12_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_10~13\);

-- Location: LCCOMB_X39_Y24_N14
\inst3|Div0|auto_generated|divider|divider|op_10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_10~14_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[240]~212_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_10~13\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[240]~212_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_10~13\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_10~13\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_10~15\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[240]~212_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_10~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[240]~212_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_10~13\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_10~14_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_10~15\);

-- Location: LCCOMB_X39_Y24_N16
\inst3|Div0|auto_generated|divider|divider|op_10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_10~16_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~15\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[241]~211_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_10~15\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[241]~211_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_10~17\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_10~15\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[241]~211_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[241]~211_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_10~15\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_10~16_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_10~17\);

-- Location: LCCOMB_X39_Y24_N18
\inst3|Div0|auto_generated|divider|divider|op_10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_10~18_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_10~17\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[242]~210_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_10~17\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[242]~210_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_10~17\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_10~19\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[242]~210_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_10~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[242]~210_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_10~17\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_10~18_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_10~19\);

-- Location: LCCOMB_X39_Y24_N20
\inst3|Div0|auto_generated|divider|divider|op_10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_10~20_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~19\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[243]~209_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_10~19\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[243]~209_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_10~21\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_10~19\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[243]~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[243]~209_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_10~19\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_10~20_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_10~21\);

-- Location: LCCOMB_X39_Y24_N22
\inst3|Div0|auto_generated|divider|divider|op_10~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_10~22_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[244]~208_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_10~21\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[244]~208_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_10~21\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_10~21\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_10~23\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[244]~208_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_10~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[244]~208_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_10~21\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_10~22_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_10~23\);

-- Location: LCCOMB_X39_Y24_N24
\inst3|Div0|auto_generated|divider|divider|op_10~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_10~25_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[245]~207_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[245]~249_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_10~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[245]~207_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[245]~249_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_10~23\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_10~25_cout\);

-- Location: LCCOMB_X39_Y24_N26
\inst3|Div0|auto_generated|divider|divider|op_10~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ = !\inst3|Div0|auto_generated|divider|divider|op_10~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|op_10~25_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\);

-- Location: LCCOMB_X39_Y26_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[258]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[258]~260_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_9~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[244]~250_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_9~20_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[258]~260_combout\);

-- Location: LCCOMB_X39_Y24_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[258]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[258]~219_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~22_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_10~22_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[258]~219_combout\);

-- Location: LCCOMB_X38_Y24_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[257]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[257]~220_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~20_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~20_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[257]~220_combout\);

-- Location: LCCOMB_X35_Y24_N14
\inst3|Div0|auto_generated|divider|divider|StageOut[257]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|op_9~18_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~18_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[243]~251_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\);

-- Location: LCCOMB_X40_Y24_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[256]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[256]~221_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_10~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~18_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[256]~221_combout\);

-- Location: LCCOMB_X40_Y24_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[256]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|op_9~16_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~16_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[242]~252_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\);

-- Location: LCCOMB_X35_Y24_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[255]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|op_9~14_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~14_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[241]~253_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\);

-- Location: LCCOMB_X36_Y24_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[255]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[255]~222_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~16_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_10~16_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[255]~222_combout\);

-- Location: LCCOMB_X36_Y24_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[254]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|op_9~12_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[240]~254_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_9~12_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\);

-- Location: LCCOMB_X35_Y24_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[254]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[254]~223_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~14_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[254]~223_combout\);

-- Location: LCCOMB_X40_Y24_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[253]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[253]~224_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_10~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[253]~224_combout\);

-- Location: LCCOMB_X40_Y24_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[253]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[239]~255_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_9~10_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\);

-- Location: LCCOMB_X38_Y24_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[252]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[252]~225_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~10_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~10_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[252]~225_combout\);

-- Location: LCCOMB_X38_Y24_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[252]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_9~8_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[238]~256_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\);

-- Location: LCCOMB_X38_Y24_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[251]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[251]~226_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~8_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[251]~226_combout\);

-- Location: LCCOMB_X38_Y24_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[251]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|op_9~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[237]~257_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\);

-- Location: LCCOMB_X38_Y24_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[250]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[250]~227_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_10~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[250]~227_combout\);

-- Location: LCCOMB_X38_Y24_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[250]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_9~4_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[236]~258_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\);

-- Location: LCCOMB_X36_Y24_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[249]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|op_9~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~2_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[235]~293_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\);

-- Location: LCCOMB_X37_Y24_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[249]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[249]~228_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[249]~228_combout\);

-- Location: LCCOMB_X37_Y22_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[248]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[248]~229_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[248]~229_combout\);

-- Location: LCCOMB_X37_Y22_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[248]~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_9~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_9~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[234]~259_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_9~0_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\);

-- Location: LCCOMB_X37_Y22_N14
\inst3|Div0|auto_generated|divider|divider|StageOut[247]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[247]~230_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & \inst|adc_mega_0|CH0\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \inst|adc_mega_0|CH0\(2),
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[247]~230_combout\);

-- Location: LCCOMB_X37_Y22_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[247]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[247]~231_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~0_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[247]~231_combout\);

-- Location: LCCOMB_X37_Y24_N4
\inst3|Div0|auto_generated|divider|divider|op_12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_12~0_combout\ = \inst|adc_mega_0|CH0\(1) $ (VCC)
-- \inst3|Div0|auto_generated|divider|divider|op_12~1\ = CARRY(\inst|adc_mega_0|CH0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|CH0\(1),
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|op_12~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_12~1\);

-- Location: LCCOMB_X37_Y24_N6
\inst3|Div0|auto_generated|divider|divider|op_12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_12~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[247]~230_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_12~1\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[247]~230_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[247]~231_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_12~1\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[247]~231_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_12~1\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_12~3\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[247]~230_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[247]~231_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_12~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[247]~230_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[247]~231_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_12~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_12~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_12~3\);

-- Location: LCCOMB_X37_Y24_N8
\inst3|Div0|auto_generated|divider|divider|op_12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_12~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[248]~229_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_12~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[248]~229_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_12~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_12~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[248]~229_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[248]~229_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_12~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_12~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_12~5\);

-- Location: LCCOMB_X37_Y24_N10
\inst3|Div0|auto_generated|divider|divider|op_12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_12~6_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_12~5\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[249]~228_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_12~5\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[249]~228_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_12~5\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_12~7\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[249]~228_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[249]~228_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_12~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_12~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_12~7\);

-- Location: LCCOMB_X37_Y24_N12
\inst3|Div0|auto_generated|divider|divider|op_12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_12~8_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~7\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[250]~227_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_12~7\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[250]~227_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_12~9\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_12~7\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[250]~227_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[250]~227_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_12~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_12~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_12~9\);

-- Location: LCCOMB_X37_Y24_N14
\inst3|Div0|auto_generated|divider|divider|op_12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_12~10_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[251]~226_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_12~9\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[251]~226_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_12~9\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_12~9\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_12~11\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[251]~226_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_12~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[251]~226_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_12~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_12~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_12~11\);

-- Location: LCCOMB_X37_Y24_N16
\inst3|Div0|auto_generated|divider|divider|op_12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_12~12_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~11\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[252]~225_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_12~11\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[252]~225_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_12~13\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_12~11\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[252]~225_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[252]~225_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_12~11\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_12~12_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_12~13\);

-- Location: LCCOMB_X37_Y24_N18
\inst3|Div0|auto_generated|divider|divider|op_12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_12~14_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[253]~224_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_12~13\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[253]~224_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_12~13\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_12~13\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_12~15\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[253]~224_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_12~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[253]~224_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_12~13\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_12~14_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_12~15\);

-- Location: LCCOMB_X37_Y24_N20
\inst3|Div0|auto_generated|divider|divider|op_12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_12~16_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~15\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[254]~223_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_12~15\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[254]~223_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_12~17\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_12~15\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[254]~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[254]~223_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_12~15\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_12~16_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_12~17\);

-- Location: LCCOMB_X37_Y24_N22
\inst3|Div0|auto_generated|divider|divider|op_12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_12~18_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_12~17\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[255]~222_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_12~17\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[255]~222_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_12~17\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_12~19\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[255]~222_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_12~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[255]~222_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_12~17\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_12~18_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_12~19\);

-- Location: LCCOMB_X37_Y24_N24
\inst3|Div0|auto_generated|divider|divider|op_12~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_12~20_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~19\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[256]~221_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_12~19\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[256]~221_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_12~21\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_12~19\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[256]~221_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[256]~221_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_12~19\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_12~20_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_12~21\);

-- Location: LCCOMB_X37_Y24_N26
\inst3|Div0|auto_generated|divider|divider|op_12~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_12~22_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[257]~220_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_12~21\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[257]~220_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_12~21\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_12~21\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_12~23\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[257]~220_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_12~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[257]~220_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_12~21\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_12~22_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_12~23\);

-- Location: LCCOMB_X37_Y24_N28
\inst3|Div0|auto_generated|divider|divider|op_12~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_12~25_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[258]~260_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[258]~219_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_12~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[258]~260_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[258]~219_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_12~23\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_12~25_cout\);

-- Location: LCCOMB_X37_Y24_N30
\inst3|Div0|auto_generated|divider|divider|op_12~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ = !\inst3|Div0|auto_generated|divider|divider|op_12~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|op_12~25_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\);

-- Location: LCCOMB_X35_Y24_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[271]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[271]~271_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|op_10~20_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_10~20_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[257]~261_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[271]~271_combout\);

-- Location: LCCOMB_X37_Y26_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[271]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[271]~232_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~22_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_12~22_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[271]~232_combout\);

-- Location: LCCOMB_X40_Y24_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[270]~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|op_10~18_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_10~18_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[256]~262_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\);

-- Location: LCCOMB_X37_Y26_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[270]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[270]~233_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~20_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_12~20_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[270]~233_combout\);

-- Location: LCCOMB_X37_Y24_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[269]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_10~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[255]~263_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~16_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\);

-- Location: LCCOMB_X36_Y24_N18
\inst3|Div0|auto_generated|divider|divider|StageOut[269]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_12~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_12~18_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\);

-- Location: LCCOMB_X35_Y24_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[268]~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[268]~274_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|op_10~14_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_10~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[254]~264_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[268]~274_combout\);

-- Location: LCCOMB_X37_Y26_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[268]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[268]~235_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[268]~235_combout\);

-- Location: LCCOMB_X37_Y26_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[267]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[267]~236_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~14_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[267]~236_combout\);

-- Location: LCCOMB_X40_Y24_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[267]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[267]~275_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_10~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[253]~265_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[267]~275_combout\);

-- Location: LCCOMB_X38_Y24_N18
\inst3|Div0|auto_generated|divider|divider|StageOut[266]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[266]~276_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|op_10~10_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[252]~266_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~10_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[266]~276_combout\);

-- Location: LCCOMB_X37_Y26_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[266]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[266]~237_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~12_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_12~12_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[266]~237_combout\);

-- Location: LCCOMB_X38_Y24_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[265]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[265]~277_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|op_10~8_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[251]~267_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[265]~277_combout\);

-- Location: LCCOMB_X37_Y26_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[265]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[265]~238_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~10_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_12~10_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[265]~238_combout\);

-- Location: LCCOMB_X36_Y24_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[264]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[264]~239_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~8_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_12~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[264]~239_combout\);

-- Location: LCCOMB_X38_Y24_N14
\inst3|Div0|auto_generated|divider|divider|StageOut[264]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[264]~278_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|op_10~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_10~6_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[250]~268_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[264]~278_combout\);

-- Location: LCCOMB_X36_Y24_N14
\inst3|Div0|auto_generated|divider|divider|StageOut[263]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[263]~279_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|op_10~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_10~4_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[249]~269_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[263]~279_combout\);

-- Location: LCCOMB_X36_Y24_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[263]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[263]~240_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_12~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[263]~240_combout\);

-- Location: LCCOMB_X36_Y24_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[262]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[262]~241_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|op_12~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[262]~241_combout\);

-- Location: LCCOMB_X37_Y22_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[262]~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[262]~280_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[248]~270_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[262]~280_combout\);

-- Location: LCCOMB_X37_Y22_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[261]~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[261]~294_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & ((\inst|adc_mega_0|CH0\(2)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_10~26_combout\ & (\inst3|Div0|auto_generated|divider|divider|op_10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_10~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_10~0_combout\,
	datad => \inst|adc_mega_0|CH0\(2),
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[261]~294_combout\);

-- Location: LCCOMB_X36_Y24_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[261]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[261]~242_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_12~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[261]~242_combout\);

-- Location: LCCOMB_X37_Y22_N18
\inst3|Div0|auto_generated|divider|divider|StageOut[260]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[260]~243_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & \inst|adc_mega_0|CH0\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datac => \inst|adc_mega_0|CH0\(1),
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[260]~243_combout\);

-- Location: LCCOMB_X36_Y24_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[260]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[260]~244_combout\ = (!\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_12~0_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[260]~244_combout\);

-- Location: LCCOMB_X36_Y26_N2
\inst3|Div0|auto_generated|divider|divider|op_13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_13~1_cout\ = CARRY(\inst|adc_mega_0|CH0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|CH0\(0),
	datad => VCC,
	cout => \inst3|Div0|auto_generated|divider|divider|op_13~1_cout\);

-- Location: LCCOMB_X36_Y26_N4
\inst3|Div0|auto_generated|divider|divider|op_13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_13~3_cout\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[260]~243_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[260]~244_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_13~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[260]~243_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[260]~244_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_13~1_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_13~3_cout\);

-- Location: LCCOMB_X36_Y26_N6
\inst3|Div0|auto_generated|divider|divider|op_13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_13~5_cout\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_13~3_cout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[261]~294_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[261]~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[261]~294_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[261]~242_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_13~3_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_13~5_cout\);

-- Location: LCCOMB_X36_Y26_N8
\inst3|Div0|auto_generated|divider|divider|op_13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_13~7_cout\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[262]~241_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[262]~280_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_13~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[262]~241_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[262]~280_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_13~5_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_13~7_cout\);

-- Location: LCCOMB_X36_Y26_N10
\inst3|Div0|auto_generated|divider|divider|op_13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_13~9_cout\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_13~7_cout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[263]~279_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[263]~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[263]~279_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[263]~240_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_13~7_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_13~9_cout\);

-- Location: LCCOMB_X36_Y26_N12
\inst3|Div0|auto_generated|divider|divider|op_13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_13~11_cout\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[264]~239_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[264]~278_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_13~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[264]~239_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[264]~278_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_13~9_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_13~11_cout\);

-- Location: LCCOMB_X36_Y26_N14
\inst3|Div0|auto_generated|divider|divider|op_13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_13~13_cout\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_13~11_cout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[265]~277_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[265]~238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[265]~277_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[265]~238_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_13~11_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_13~13_cout\);

-- Location: LCCOMB_X36_Y26_N16
\inst3|Div0|auto_generated|divider|divider|op_13~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_13~15_cout\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[266]~276_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[266]~237_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_13~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[266]~276_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[266]~237_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_13~13_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_13~15_cout\);

-- Location: LCCOMB_X36_Y26_N18
\inst3|Div0|auto_generated|divider|divider|op_13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_13~17_cout\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_13~15_cout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[267]~236_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[267]~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[267]~236_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[267]~275_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_13~15_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_13~17_cout\);

-- Location: LCCOMB_X36_Y26_N20
\inst3|Div0|auto_generated|divider|divider|op_13~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_13~19_cout\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[268]~274_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[268]~235_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_13~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[268]~274_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[268]~235_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_13~17_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_13~19_cout\);

-- Location: LCCOMB_X36_Y26_N22
\inst3|Div0|auto_generated|divider|divider|op_13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_13~20_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_13~19_cout\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_13~19_cout\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|op_13~21\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|op_13~19_cout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_13~19_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_13~20_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_13~21\);

-- Location: LCCOMB_X36_Y26_N24
\inst3|Div0|auto_generated|divider|divider|op_13~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_13~22_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|op_13~21\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[270]~233_combout\ & (!\inst3|Div0|auto_generated|divider|divider|op_13~21\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[270]~233_combout\ & ((\inst3|Div0|auto_generated|divider|divider|op_13~21\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|op_13~23\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[270]~233_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_13~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[270]~233_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_13~21\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_13~22_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_13~23\);

-- Location: LCCOMB_X36_Y26_N26
\inst3|Div0|auto_generated|divider|divider|op_13~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_13~25_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[271]~271_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[271]~232_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|op_13~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[271]~271_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[271]~232_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|op_13~23\,
	cout => \inst3|Div0|auto_generated|divider|divider|op_13~25_cout\);

-- Location: LCCOMB_X36_Y26_N28
\inst3|Div0|auto_generated|divider|divider|op_13~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_13~26_combout\ = !\inst3|Div0|auto_generated|divider|divider|op_13~25_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|op_13~25_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_13~26_combout\);

-- Location: LCCOMB_X36_Y26_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[284]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[284]~245_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_13~22_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_13~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|op_13~22_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_13~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[284]~245_combout\);

-- Location: LCCOMB_X37_Y26_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[284]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[284]~281_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_13~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|op_12~26_combout\ & \inst3|Div0|auto_generated|divider|divider|op_12~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|op_12~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|op_12~20_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[270]~272_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_13~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[284]~281_combout\);

-- Location: LCCOMB_X37_Y26_N18
\inst3|Div0|auto_generated|divider|divider|op_14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_14~1_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[284]~245_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[284]~281_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[284]~245_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[284]~281_combout\,
	datad => VCC,
	cout => \inst3|Div0|auto_generated|divider|divider|op_14~1_cout\);

-- Location: LCCOMB_X37_Y26_N20
\inst3|Div0|auto_generated|divider|divider|op_14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_14~2_combout\ = !\inst3|Div0|auto_generated|divider|divider|op_14~1_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|op_14~1_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_14~2_combout\);

-- Location: LCCOMB_X36_Y26_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[283]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[283]~246_combout\ = (\inst3|Div0|auto_generated|divider|divider|op_13~26_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|op_13~26_combout\ & (((\inst3|Div0|auto_generated|divider|divider|op_13~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[269]~273_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[269]~234_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|op_13~20_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_13~26_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[283]~246_combout\);

-- Location: LCCOMB_X37_Y26_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[297]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[297]~248_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[283]~246_combout\ & !\inst3|Div0|auto_generated|divider|divider|op_14~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[283]~246_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_14~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[297]~248_combout\);

-- Location: LCCOMB_X37_Y26_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[297]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[297]~247_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[283]~246_combout\ & \inst3|Div0|auto_generated|divider|divider|op_14~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[283]~246_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|op_14~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[297]~247_combout\);

-- Location: LCCOMB_X37_Y26_N28
\inst3|Div0|auto_generated|divider|divider|op_15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_15~1_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[297]~248_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[297]~247_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[297]~248_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[297]~247_combout\,
	datad => VCC,
	cout => \inst3|Div0|auto_generated|divider|divider|op_15~1_cout\);

-- Location: LCCOMB_X37_Y26_N30
\inst3|Div0|auto_generated|divider|divider|op_15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|op_15~2_combout\ = !\inst3|Div0|auto_generated|divider|divider|op_15~1_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|op_15~1_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|op_15~2_combout\);

ww_ADC_SCLK <= \ADC_SCLK~output_o\;

ww_ADC_CS_N <= \ADC_CS_N~output_o\;

ww_ADC_SADDR <= \ADC_SADDR~output_o\;

ww_celcius(23) <= \celcius[23]~output_o\;

ww_celcius(22) <= \celcius[22]~output_o\;

ww_celcius(21) <= \celcius[21]~output_o\;

ww_celcius(20) <= \celcius[20]~output_o\;

ww_celcius(19) <= \celcius[19]~output_o\;

ww_celcius(18) <= \celcius[18]~output_o\;

ww_celcius(17) <= \celcius[17]~output_o\;

ww_celcius(16) <= \celcius[16]~output_o\;

ww_celcius(15) <= \celcius[15]~output_o\;

ww_celcius(14) <= \celcius[14]~output_o\;

ww_celcius(13) <= \celcius[13]~output_o\;

ww_celcius(12) <= \celcius[12]~output_o\;

ww_celcius(11) <= \celcius[11]~output_o\;

ww_celcius(10) <= \celcius[10]~output_o\;

ww_celcius(9) <= \celcius[9]~output_o\;

ww_celcius(8) <= \celcius[8]~output_o\;

ww_celcius(7) <= \celcius[7]~output_o\;

ww_celcius(6) <= \celcius[6]~output_o\;

ww_celcius(5) <= \celcius[5]~output_o\;

ww_celcius(4) <= \celcius[4]~output_o\;

ww_celcius(3) <= \celcius[3]~output_o\;

ww_celcius(2) <= \celcius[2]~output_o\;

ww_celcius(1) <= \celcius[1]~output_o\;

ww_celcius(0) <= \celcius[0]~output_o\;
END structure;


