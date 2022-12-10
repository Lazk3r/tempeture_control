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

-- DATE "12/09/2022 21:15:34"

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
	CH0 : OUT std_logic_vector(11 DOWNTO 0)
	);
END tempeture_control;

-- Design Ports Information
-- ADC_SCLK	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CS_N	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SADDR	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[11]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[9]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[8]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CH0[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_CH0 : std_logic_vector(11 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADC_SCLK~output_o\ : std_logic;
SIGNAL \ADC_CS_N~output_o\ : std_logic;
SIGNAL \ADC_SADDR~output_o\ : std_logic;
SIGNAL \CH0[11]~output_o\ : std_logic;
SIGNAL \CH0[10]~output_o\ : std_logic;
SIGNAL \CH0[9]~output_o\ : std_logic;
SIGNAL \CH0[8]~output_o\ : std_logic;
SIGNAL \CH0[7]~output_o\ : std_logic;
SIGNAL \CH0[6]~output_o\ : std_logic;
SIGNAL \CH0[5]~output_o\ : std_logic;
SIGNAL \CH0[4]~output_o\ : std_logic;
SIGNAL \CH0[3]~output_o\ : std_logic;
SIGNAL \CH0[2]~output_o\ : std_logic;
SIGNAL \CH0[1]~output_o\ : std_logic;
SIGNAL \CH0[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[0]~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.resetState~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Add2~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|address~3_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|address[0]~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Add2~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|address~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|next_addr[0]~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|address~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector2~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0[0]~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|go~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|go~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\ : std_logic;
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
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|always5~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|currState.transState~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[0]~11\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[1]~12_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[1]~13\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[2]~14_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[2]~15\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter[3]~16_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk~q\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~10_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\ : std_logic;
SIGNAL \ADC_SDAT~input_o\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|always7~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[4]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[6]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg[10]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[11]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[11]~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~0_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[10]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~3_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[8]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~4_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[7]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~5_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[6]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~6_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~7_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[4]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~8_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~9_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~10_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[1]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~11_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0[0]~feeder_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|CH0~12_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|shift_reg\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|next_addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|reading0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|address\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|adc_mega_0|ADC_CTRL|sclk_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|adc_mega_0|CH0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_KEY0~input_o\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|ALT_INV_cs_n~2_combout\ : std_logic;
SIGNAL \inst|adc_mega_0|ADC_CTRL|ALT_INV_sclk~q\ : std_logic;

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
CH0 <= ww_CH0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_KEY0~input_o\ <= NOT \KEY0~input_o\;
\inst|adc_mega_0|ADC_CTRL|ALT_INV_cs_n~2_combout\ <= NOT \inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\;
\inst|adc_mega_0|ADC_CTRL|ALT_INV_sclk~q\ <= NOT \inst|adc_mega_0|ADC_CTRL|sclk~q\;
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

-- Location: IOOBUF_X43_Y34_N16
\CH0[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|adc_mega_0|CH0\(11),
	devoe => ww_devoe,
	o => \CH0[11]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\CH0[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|adc_mega_0|CH0\(10),
	devoe => ww_devoe,
	o => \CH0[10]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\CH0[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|adc_mega_0|CH0\(9),
	devoe => ww_devoe,
	o => \CH0[9]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\CH0[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|adc_mega_0|CH0\(8),
	devoe => ww_devoe,
	o => \CH0[8]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\CH0[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|adc_mega_0|CH0\(7),
	devoe => ww_devoe,
	o => \CH0[7]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\CH0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|adc_mega_0|CH0\(6),
	devoe => ww_devoe,
	o => \CH0[6]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\CH0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|adc_mega_0|CH0\(5),
	devoe => ww_devoe,
	o => \CH0[5]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\CH0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|adc_mega_0|CH0\(4),
	devoe => ww_devoe,
	o => \CH0[4]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\CH0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|adc_mega_0|CH0\(3),
	devoe => ww_devoe,
	o => \CH0[3]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\CH0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|adc_mega_0|CH0\(2),
	devoe => ww_devoe,
	o => \CH0[2]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\CH0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|adc_mega_0|CH0\(1),
	devoe => ww_devoe,
	o => \CH0[1]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\CH0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|adc_mega_0|CH0\(0),
	devoe => ww_devoe,
	o => \CH0[0]~output_o\);

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

-- Location: LCCOMB_X39_Y30_N0
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

-- Location: LCCOMB_X40_Y30_N30
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

-- Location: LCCOMB_X38_Y30_N20
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

-- Location: FF_X38_Y30_N21
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

-- Location: LCCOMB_X38_Y30_N18
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

-- Location: FF_X38_Y30_N19
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

-- Location: LCCOMB_X38_Y30_N8
\inst|adc_mega_0|ADC_CTRL|address~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|address~3_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.resetState~q\ & (\inst|adc_mega_0|ADC_CTRL|next_addr\(1) & \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|next_addr\(1),
	datad => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|address~3_combout\);

-- Location: LCCOMB_X38_Y30_N22
\inst|adc_mega_0|ADC_CTRL|address[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|address[0]~1_combout\ = \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\ $ (!\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|address[0]~1_combout\);

-- Location: FF_X38_Y30_N9
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

-- Location: LCCOMB_X38_Y30_N12
\inst|adc_mega_0|ADC_CTRL|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Add2~0_combout\ = \inst|adc_mega_0|ADC_CTRL|address\(2) $ (((\inst|adc_mega_0|ADC_CTRL|address\(0) & \inst|adc_mega_0|ADC_CTRL|address\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|address\(2),
	datab => \inst|adc_mega_0|ADC_CTRL|address\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|address\(1),
	combout => \inst|adc_mega_0|ADC_CTRL|Add2~0_combout\);

-- Location: FF_X38_Y30_N13
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

-- Location: LCCOMB_X38_Y30_N10
\inst|adc_mega_0|ADC_CTRL|address~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|address~2_combout\ = (\inst|adc_mega_0|ADC_CTRL|next_addr\(2) & (\inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ & \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|next_addr\(2),
	datab => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|address~2_combout\);

-- Location: FF_X38_Y30_N11
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

-- Location: LCCOMB_X38_Y30_N28
\inst|adc_mega_0|ADC_CTRL|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ = ((!\inst|adc_mega_0|ADC_CTRL|address\(2)) # (!\inst|adc_mega_0|ADC_CTRL|address\(1))) # (!\inst|adc_mega_0|ADC_CTRL|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|address\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|address\(1),
	datad => \inst|adc_mega_0|ADC_CTRL|address\(2),
	combout => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y30_N26
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

-- Location: FF_X38_Y30_N27
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

-- Location: LCCOMB_X38_Y30_N4
\inst|adc_mega_0|ADC_CTRL|address~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|address~0_combout\ = ((\inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ & \inst|adc_mega_0|ADC_CTRL|next_addr\(0))) # (!\inst|adc_mega_0|ADC_CTRL|currState.resetState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|next_addr\(0),
	combout => \inst|adc_mega_0|ADC_CTRL|address~0_combout\);

-- Location: FF_X38_Y30_N5
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

-- Location: LCCOMB_X38_Y30_N30
\inst|adc_mega_0|ADC_CTRL|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\ = (!\inst|adc_mega_0|ADC_CTRL|address\(0) & (!\inst|adc_mega_0|ADC_CTRL|address\(1) & !\inst|adc_mega_0|ADC_CTRL|address\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|address\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|address\(1),
	datad => \inst|adc_mega_0|ADC_CTRL|address\(2),
	combout => \inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\);

-- Location: LCCOMB_X41_Y30_N24
\inst|adc_mega_0|ADC_CTRL|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector2~1_combout\ = (\inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\ & ((\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\) # ((\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & \inst|adc_mega_0|go~q\)))) # 
-- (!\inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\ & (((\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & \inst|adc_mega_0|go~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datad => \inst|adc_mega_0|go~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|Selector2~1_combout\);

-- Location: FF_X41_Y30_N25
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

-- Location: LCCOMB_X43_Y30_N12
\inst|adc_mega_0|CH0[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0[0]~1_combout\ = (\KEY0~input_o\) # (\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY0~input_o\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	combout => \inst|adc_mega_0|CH0[0]~1_combout\);

-- Location: LCCOMB_X40_Y30_N14
\inst|adc_mega_0|go~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|go~0_combout\ = !\inst|adc_mega_0|CH0[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|CH0[0]~1_combout\,
	combout => \inst|adc_mega_0|go~0_combout\);

-- Location: FF_X40_Y30_N15
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

-- Location: LCCOMB_X41_Y30_N14
\inst|adc_mega_0|ADC_CTRL|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\ = ((!\inst|adc_mega_0|go~q\ & ((\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\) # (\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)))) # (!\inst|adc_mega_0|ADC_CTRL|currState.resetState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|go~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|currState.resetState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\);

-- Location: FF_X40_Y30_N19
\inst|adc_mega_0|ADC_CTRL|currState.waitState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|adc_mega_0|ADC_CTRL|Selector0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\);

-- Location: LCCOMB_X41_Y30_N8
\inst|adc_mega_0|ADC_CTRL|sclk_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\ = (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ & (!\inst|adc_mega_0|ADC_CTRL|sclk_counter\(0) & !\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	datad => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|sclk_counter~5_combout\);

-- Location: LCCOMB_X41_Y30_N22
\inst|adc_mega_0|ADC_CTRL|sclk_counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\ = (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ & !\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|sclk_counter~2_combout\);

-- Location: LCCOMB_X39_Y30_N6
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

-- Location: LCCOMB_X39_Y30_N8
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

-- Location: FF_X39_Y30_N9
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
	sload => \inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(4));

-- Location: LCCOMB_X39_Y30_N10
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

-- Location: FF_X39_Y30_N11
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
	sload => \inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(5));

-- Location: LCCOMB_X39_Y30_N12
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

-- Location: FF_X39_Y30_N13
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
	sload => \inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(6));

-- Location: LCCOMB_X39_Y30_N14
\inst|adc_mega_0|ADC_CTRL|counter[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[7]~24_combout\ = \inst|adc_mega_0|ADC_CTRL|counter[6]~23\ $ (!\inst|adc_mega_0|ADC_CTRL|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|counter\(7),
	cin => \inst|adc_mega_0|ADC_CTRL|counter[6]~23\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[7]~24_combout\);

-- Location: FF_X39_Y30_N15
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
	sload => \inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(7));

-- Location: LCCOMB_X39_Y30_N26
\inst|adc_mega_0|ADC_CTRL|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(5)) # ((\inst|adc_mega_0|ADC_CTRL|counter\(4)) # ((\inst|adc_mega_0|ADC_CTRL|counter\(7)) # (\inst|adc_mega_0|ADC_CTRL|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(5),
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(4),
	datac => \inst|adc_mega_0|ADC_CTRL|counter\(7),
	datad => \inst|adc_mega_0|ADC_CTRL|counter\(6),
	combout => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\);

-- Location: LCCOMB_X41_Y30_N4
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

-- Location: FF_X41_Y30_N9
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

-- Location: LCCOMB_X41_Y30_N18
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

-- Location: FF_X41_Y30_N19
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

-- Location: LCCOMB_X41_Y30_N26
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

-- Location: FF_X41_Y30_N27
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

-- Location: LCCOMB_X41_Y30_N0
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

-- Location: LCCOMB_X41_Y30_N28
\inst|adc_mega_0|ADC_CTRL|sclk_counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk_counter~7_combout\ = (!\inst|adc_mega_0|ADC_CTRL|currState.doneState~q\ & (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ & (\inst|adc_mega_0|ADC_CTRL|always5~0_combout\ $ (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|always5~0_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|currState.doneState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datad => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|sclk_counter~7_combout\);

-- Location: FF_X41_Y30_N29
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

-- Location: LCCOMB_X39_Y30_N28
\inst|adc_mega_0|ADC_CTRL|always5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|always5~1_combout\ = (\inst|adc_mega_0|ADC_CTRL|sclk~q\ & (!\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & !\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|always5~1_combout\);

-- Location: LCCOMB_X40_Y30_N22
\inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\ = (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(3) & (\inst|adc_mega_0|ADC_CTRL|currState.transState~q\ & (\inst|adc_mega_0|ADC_CTRL|always5~0_combout\ & \inst|adc_mega_0|ADC_CTRL|always5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datab => \inst|adc_mega_0|ADC_CTRL|currState.transState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|always5~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|always5~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|nextState.pauseState~0_combout\);

-- Location: FF_X40_Y30_N23
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

-- Location: LCCOMB_X40_Y30_N12
\inst|adc_mega_0|ADC_CTRL|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & (((\inst|adc_mega_0|go~q\ & \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)) # (!\inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\))) # 
-- (!\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & (\inst|adc_mega_0|go~q\ & ((\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datab => \inst|adc_mega_0|go~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|Selector2~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\);

-- Location: LCCOMB_X41_Y30_N10
\inst|adc_mega_0|ADC_CTRL|always5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|always5~2_combout\ = (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(2) & (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(3) & (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(0) & \inst|adc_mega_0|ADC_CTRL|sclk_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(2),
	datab => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datac => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(0),
	datad => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(1),
	combout => \inst|adc_mega_0|ADC_CTRL|always5~2_combout\);

-- Location: LCCOMB_X40_Y30_N4
\inst|adc_mega_0|ADC_CTRL|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\ = (\inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\) # ((\inst|adc_mega_0|ADC_CTRL|currState.transState~q\ & ((!\inst|adc_mega_0|ADC_CTRL|always5~1_combout\) # (!\inst|adc_mega_0|ADC_CTRL|always5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|Selector1~0_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|always5~2_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|currState.transState~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|always5~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\);

-- Location: FF_X40_Y30_N5
\inst|adc_mega_0|ADC_CTRL|currState.transState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|currState.transState~q\);

-- Location: LCCOMB_X39_Y30_N18
\inst|adc_mega_0|ADC_CTRL|counter[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.transState~q\ & (((!\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\ & !\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\)))) # 
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
	combout => \inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\);

-- Location: FF_X39_Y30_N1
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
	sload => \inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(0));

-- Location: LCCOMB_X39_Y30_N2
\inst|adc_mega_0|ADC_CTRL|counter[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|counter[1]~12_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(1) & (\inst|adc_mega_0|ADC_CTRL|counter[0]~11\ $ (GND))) # (!\inst|adc_mega_0|ADC_CTRL|counter\(1) & (!\inst|adc_mega_0|ADC_CTRL|counter[0]~11\ & VCC))
-- \inst|adc_mega_0|ADC_CTRL|counter[1]~13\ = CARRY((\inst|adc_mega_0|ADC_CTRL|counter\(1) & !\inst|adc_mega_0|ADC_CTRL|counter[0]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(1),
	datad => VCC,
	cin => \inst|adc_mega_0|ADC_CTRL|counter[0]~11\,
	combout => \inst|adc_mega_0|ADC_CTRL|counter[1]~12_combout\,
	cout => \inst|adc_mega_0|ADC_CTRL|counter[1]~13\);

-- Location: FF_X39_Y30_N3
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
	sload => \inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(1));

-- Location: LCCOMB_X39_Y30_N4
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

-- Location: FF_X39_Y30_N5
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
	sload => \inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(2));

-- Location: FF_X39_Y30_N7
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
	sload => \inst|adc_mega_0|ADC_CTRL|counter[7]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|counter\(3));

-- Location: LCCOMB_X39_Y30_N16
\inst|adc_mega_0|ADC_CTRL|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ = (\inst|adc_mega_0|ADC_CTRL|counter\(3)) # (((!\inst|adc_mega_0|ADC_CTRL|counter\(1)) # (!\inst|adc_mega_0|ADC_CTRL|counter\(2))) # (!\inst|adc_mega_0|ADC_CTRL|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|counter\(3),
	datab => \inst|adc_mega_0|ADC_CTRL|counter\(0),
	datac => \inst|adc_mega_0|ADC_CTRL|counter\(2),
	datad => \inst|adc_mega_0|ADC_CTRL|counter\(1),
	combout => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\);

-- Location: LCCOMB_X40_Y30_N18
\inst|adc_mega_0|ADC_CTRL|cs_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\) # (\inst|adc_mega_0|ADC_CTRL|currState.transState~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|currState.transState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\);

-- Location: LCCOMB_X40_Y30_N20
\inst|adc_mega_0|ADC_CTRL|sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|sclk~0_combout\ = (\inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\ & (\inst|adc_mega_0|ADC_CTRL|sclk~q\ $ (((!\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ & !\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|cs_n~2_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|sclk~0_combout\);

-- Location: FF_X40_Y30_N21
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

-- Location: LCCOMB_X40_Y30_N16
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\ = (!\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & ((!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\) # (!\inst|adc_mega_0|go~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|adc_mega_0|go~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\);

-- Location: LCCOMB_X41_Y30_N6
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~10_combout\ = (\inst|adc_mega_0|ADC_CTRL|sclk~q\) # ((\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\) # (\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~10_combout\);

-- Location: LCCOMB_X41_Y30_N12
\inst|adc_mega_0|ADC_CTRL|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\ & \inst|adc_mega_0|go~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datad => \inst|adc_mega_0|go~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\);

-- Location: LCCOMB_X41_Y30_N20
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\ = (\inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\) # ((\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & (\inst|adc_mega_0|ADC_CTRL|next_addr\(0) & \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|Selector1~2_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|next_addr\(0),
	datad => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\);

-- Location: LCCOMB_X41_Y30_N30
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11_combout\ = (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\) # ((\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~10_combout\ & (!\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & 
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~10_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0),
	datad => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~9_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11_combout\);

-- Location: FF_X41_Y30_N31
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0));

-- Location: LCCOMB_X40_Y30_N0
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\ = (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ & (\inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\ & ((!\inst|adc_mega_0|go~q\) # (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|adc_mega_0|go~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|LessThan0~0_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\);

-- Location: LCCOMB_X40_Y30_N6
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\ = (\inst|adc_mega_0|ADC_CTRL|next_addr\(1) & ((\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\) # ((\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\ & 
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0))))) # (!\inst|adc_mega_0|ADC_CTRL|next_addr\(1) & (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\ & (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|next_addr\(1),
	datab => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(0),
	datad => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\);

-- Location: LCCOMB_X40_Y30_N26
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\ = ((!\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ & (!\inst|adc_mega_0|ADC_CTRL|sclk~q\ & !\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\))) # (!\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\);

-- Location: FF_X40_Y30_N7
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~8_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(1));

-- Location: LCCOMB_X40_Y30_N2
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\ = (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(1) & ((\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\) # ((\inst|adc_mega_0|ADC_CTRL|next_addr\(2) & 
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\)))) # (!\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(1) & (((\inst|adc_mega_0|ADC_CTRL|next_addr\(2) & \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(1),
	datab => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~3_combout\,
	datac => \inst|adc_mega_0|ADC_CTRL|next_addr\(2),
	datad => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~12_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\);

-- Location: FF_X40_Y30_N3
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~7_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(2));

-- Location: LCCOMB_X40_Y30_N28
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\ = (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(2) & (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ $ (((!\inst|adc_mega_0|go~q\) # (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|adc_mega_0|go~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(2),
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\);

-- Location: FF_X40_Y30_N29
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~6_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(3));

-- Location: LCCOMB_X40_Y30_N10
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\ = (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(3) & (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ $ (((!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\) # (!\inst|adc_mega_0|go~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(3),
	datac => \inst|adc_mega_0|go~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\);

-- Location: FF_X40_Y30_N11
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~5_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(4));

-- Location: LCCOMB_X40_Y30_N8
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\ = (\inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(4) & (\inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\ $ (((!\inst|adc_mega_0|go~q\) # (!\inst|adc_mega_0|ADC_CTRL|currState.waitState~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|currState.pauseState~q\,
	datab => \inst|adc_mega_0|ADC_CTRL|currState.waitState~q\,
	datac => \inst|adc_mega_0|go~q\,
	datad => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg\(4),
	combout => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\);

-- Location: FF_X40_Y30_N9
\inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg~2_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|addr_shift_reg[5]~4_combout\,
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

-- Location: LCCOMB_X44_Y30_N26
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

-- Location: LCCOMB_X40_Y30_N24
\inst|adc_mega_0|ADC_CTRL|always7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|always7~0_combout\ = (!\inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\ & (\inst|adc_mega_0|ADC_CTRL|sclk~q\ & (!\inst|adc_mega_0|ADC_CTRL|always5~2_combout\ & !\inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|Equal1~0_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|sclk~q\,
	datac => \inst|adc_mega_0|ADC_CTRL|always5~2_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|Equal1~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\);

-- Location: FF_X44_Y30_N27
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

-- Location: FF_X44_Y30_N1
\inst|adc_mega_0|ADC_CTRL|shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|adc_mega_0|ADC_CTRL|shift_reg\(0),
	sload => VCC,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(1));

-- Location: LCCOMB_X44_Y30_N30
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

-- Location: FF_X44_Y30_N31
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

-- Location: FF_X44_Y30_N17
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

-- Location: LCCOMB_X44_Y30_N2
\inst|adc_mega_0|ADC_CTRL|shift_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|shift_reg[4]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|adc_mega_0|ADC_CTRL|shift_reg\(3),
	combout => \inst|adc_mega_0|ADC_CTRL|shift_reg[4]~feeder_combout\);

-- Location: FF_X44_Y30_N3
\inst|adc_mega_0|ADC_CTRL|shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|shift_reg[4]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(4));

-- Location: LCCOMB_X44_Y30_N24
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

-- Location: FF_X44_Y30_N25
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

-- Location: LCCOMB_X44_Y30_N14
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

-- Location: FF_X44_Y30_N15
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

-- Location: FF_X44_Y30_N9
\inst|adc_mega_0|ADC_CTRL|shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|adc_mega_0|ADC_CTRL|shift_reg\(6),
	sload => VCC,
	ena => \inst|adc_mega_0|ADC_CTRL|always7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|shift_reg\(7));

-- Location: FF_X44_Y30_N23
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

-- Location: FF_X44_Y30_N29
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

-- Location: LCCOMB_X44_Y30_N18
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

-- Location: FF_X44_Y30_N19
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

-- Location: LCCOMB_X44_Y30_N12
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

-- Location: LCCOMB_X38_Y30_N16
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

-- Location: LCCOMB_X39_Y30_N24
\inst|adc_mega_0|ADC_CTRL|reading0[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0[11]~0_combout\ & (\inst|adc_mega_0|ADC_CTRL|sclk_counter\(3) & (\inst|adc_mega_0|ADC_CTRL|always5~0_combout\ & \inst|adc_mega_0|ADC_CTRL|always5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|reading0[11]~0_combout\,
	datab => \inst|adc_mega_0|ADC_CTRL|sclk_counter\(3),
	datac => \inst|adc_mega_0|ADC_CTRL|always5~0_combout\,
	datad => \inst|adc_mega_0|ADC_CTRL|always5~1_combout\,
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\);

-- Location: FF_X44_Y30_N13
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

-- Location: LCCOMB_X43_Y30_N4
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

-- Location: FF_X43_Y30_N5
\inst|adc_mega_0|CH0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~0_combout\,
	ena => \inst|adc_mega_0|CH0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(11));

-- Location: LCCOMB_X44_Y30_N6
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

-- Location: FF_X44_Y30_N7
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

-- Location: LCCOMB_X43_Y30_N18
\inst|adc_mega_0|CH0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~2_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(10) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|reading0\(10),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~2_combout\);

-- Location: FF_X43_Y30_N19
\inst|adc_mega_0|CH0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~2_combout\,
	ena => \inst|adc_mega_0|CH0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(10));

-- Location: FF_X44_Y30_N5
\inst|adc_mega_0|ADC_CTRL|reading0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|adc_mega_0|ADC_CTRL|shift_reg\(8),
	sload => VCC,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(9));

-- Location: LCCOMB_X43_Y30_N24
\inst|adc_mega_0|CH0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~3_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(9) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|adc_mega_0|ADC_CTRL|reading0\(9),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~3_combout\);

-- Location: FF_X43_Y30_N25
\inst|adc_mega_0|CH0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~3_combout\,
	ena => \inst|adc_mega_0|CH0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(9));

-- Location: LCCOMB_X39_Y30_N22
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

-- Location: FF_X39_Y30_N23
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

-- Location: LCCOMB_X43_Y30_N2
\inst|adc_mega_0|CH0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~4_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(8) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|reading0\(8),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~4_combout\);

-- Location: FF_X43_Y30_N3
\inst|adc_mega_0|CH0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~4_combout\,
	ena => \inst|adc_mega_0|CH0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(8));

-- Location: LCCOMB_X43_Y30_N22
\inst|adc_mega_0|ADC_CTRL|reading0[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[7]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|shift_reg\(6),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[7]~feeder_combout\);

-- Location: FF_X43_Y30_N23
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

-- Location: LCCOMB_X43_Y30_N0
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

-- Location: FF_X43_Y30_N1
\inst|adc_mega_0|CH0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~5_combout\,
	ena => \inst|adc_mega_0|CH0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(7));

-- Location: LCCOMB_X39_Y30_N20
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

-- Location: FF_X39_Y30_N21
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

-- Location: LCCOMB_X43_Y30_N10
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

-- Location: FF_X43_Y30_N11
\inst|adc_mega_0|CH0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~6_combout\,
	ena => \inst|adc_mega_0|CH0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(6));

-- Location: LCCOMB_X39_Y30_N30
\inst|adc_mega_0|ADC_CTRL|reading0[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|shift_reg\(4),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[5]~feeder_combout\);

-- Location: FF_X39_Y30_N31
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

-- Location: LCCOMB_X43_Y30_N16
\inst|adc_mega_0|CH0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~7_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(5) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|reading0\(5),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~7_combout\);

-- Location: FF_X43_Y30_N17
\inst|adc_mega_0|CH0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~7_combout\,
	ena => \inst|adc_mega_0|CH0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(5));

-- Location: LCCOMB_X44_Y30_N10
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

-- Location: FF_X44_Y30_N11
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

-- Location: LCCOMB_X43_Y30_N14
\inst|adc_mega_0|CH0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~8_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(4) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|reading0\(4),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~8_combout\);

-- Location: FF_X43_Y30_N15
\inst|adc_mega_0|CH0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~8_combout\,
	ena => \inst|adc_mega_0|CH0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(4));

-- Location: LCCOMB_X43_Y30_N8
\inst|adc_mega_0|ADC_CTRL|reading0[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\ = \inst|adc_mega_0|ADC_CTRL|shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|shift_reg\(2),
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[3]~feeder_combout\);

-- Location: FF_X43_Y30_N9
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

-- Location: LCCOMB_X43_Y30_N28
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

-- Location: FF_X43_Y30_N29
\inst|adc_mega_0|CH0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~9_combout\,
	ena => \inst|adc_mega_0|CH0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(3));

-- Location: FF_X43_Y30_N13
\inst|adc_mega_0|ADC_CTRL|reading0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|adc_mega_0|ADC_CTRL|shift_reg\(1),
	sload => VCC,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(2));

-- Location: LCCOMB_X43_Y30_N26
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

-- Location: FF_X43_Y30_N27
\inst|adc_mega_0|CH0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~10_combout\,
	ena => \inst|adc_mega_0|CH0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(2));

-- Location: LCCOMB_X43_Y30_N30
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

-- Location: FF_X43_Y30_N31
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

-- Location: LCCOMB_X43_Y30_N20
\inst|adc_mega_0|CH0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~11_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(1) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|reading0\(1),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~11_combout\);

-- Location: FF_X43_Y30_N21
\inst|adc_mega_0|CH0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~11_combout\,
	ena => \inst|adc_mega_0|CH0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(1));

-- Location: LCCOMB_X44_Y30_N20
\inst|adc_mega_0|ADC_CTRL|reading0[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|ADC_CTRL|reading0[0]~feeder_combout\ = \ADC_SDAT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_SDAT~input_o\,
	combout => \inst|adc_mega_0|ADC_CTRL|reading0[0]~feeder_combout\);

-- Location: FF_X44_Y30_N21
\inst|adc_mega_0|ADC_CTRL|reading0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|ADC_CTRL|reading0[0]~feeder_combout\,
	ena => \inst|adc_mega_0|ADC_CTRL|reading0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|ADC_CTRL|reading0\(0));

-- Location: LCCOMB_X43_Y30_N6
\inst|adc_mega_0|CH0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|adc_mega_0|CH0~12_combout\ = (\inst|adc_mega_0|ADC_CTRL|reading0\(0) & !\KEY0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|adc_mega_0|ADC_CTRL|reading0\(0),
	datad => \KEY0~input_o\,
	combout => \inst|adc_mega_0|CH0~12_combout\);

-- Location: FF_X43_Y30_N7
\inst|adc_mega_0|CH0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|adc_mega_0|CH0~12_combout\,
	ena => \inst|adc_mega_0|CH0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|adc_mega_0|CH0\(0));

ww_ADC_SCLK <= \ADC_SCLK~output_o\;

ww_ADC_CS_N <= \ADC_CS_N~output_o\;

ww_ADC_SADDR <= \ADC_SADDR~output_o\;

ww_CH0(11) <= \CH0[11]~output_o\;

ww_CH0(10) <= \CH0[10]~output_o\;

ww_CH0(9) <= \CH0[9]~output_o\;

ww_CH0(8) <= \CH0[8]~output_o\;

ww_CH0(7) <= \CH0[7]~output_o\;

ww_CH0(6) <= \CH0[6]~output_o\;

ww_CH0(5) <= \CH0[5]~output_o\;

ww_CH0(4) <= \CH0[4]~output_o\;

ww_CH0(3) <= \CH0[3]~output_o\;

ww_CH0(2) <= \CH0[2]~output_o\;

ww_CH0(1) <= \CH0[1]~output_o\;

ww_CH0(0) <= \CH0[0]~output_o\;
END structure;


