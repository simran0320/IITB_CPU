-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/27/2022 11:02:34"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(0 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END DUT;

-- Design Ports Information
-- output_vector[0]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[1]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[2]	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[3]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[4]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[5]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[6]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \stateSet_instance|state[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_vector[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \output_vector[0]~output_o\ : std_logic;
SIGNAL \output_vector[1]~output_o\ : std_logic;
SIGNAL \output_vector[2]~output_o\ : std_logic;
SIGNAL \output_vector[3]~output_o\ : std_logic;
SIGNAL \output_vector[4]~output_o\ : std_logic;
SIGNAL \output_vector[5]~output_o\ : std_logic;
SIGNAL \output_vector[6]~output_o\ : std_logic;
SIGNAL \input_vector[0]~input_o\ : std_logic;
SIGNAL \input_vector[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \alu_instance|Add0~0_combout\ : std_logic;
SIGNAL \stateSet_instance|state[0]~clkctrl_outclk\ : std_logic;
SIGNAL \alu_instance|Add0~1\ : std_logic;
SIGNAL \alu_instance|Add0~2_combout\ : std_logic;
SIGNAL \alu_instance|Add0~3\ : std_logic;
SIGNAL \alu_instance|Add0~4_combout\ : std_logic;
SIGNAL \alu_instance|Add0~5\ : std_logic;
SIGNAL \alu_instance|Add0~6_combout\ : std_logic;
SIGNAL \mem_instance|mem_ins~2_combout\ : std_logic;
SIGNAL \alu_instance|Add0~7\ : std_logic;
SIGNAL \alu_instance|Add0~8_combout\ : std_logic;
SIGNAL \mem_instance|mem_ins~3_combout\ : std_logic;
SIGNAL \mem_instance|mem_ins~0_combout\ : std_logic;
SIGNAL \mem_instance|mem_ins~1_combout\ : std_logic;
SIGNAL \stateTrans_instance|Mux72~0_combout\ : std_logic;
SIGNAL \stateSet_instance|state\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \alu_instance|pc_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \t1_instance|t1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pc_instance|pc\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pc_instance|m_add\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_input_vector[0]~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\stateSet_instance|state[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \stateSet_instance|state\(0));

\input_vector[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \input_vector[0]~input_o\);
\ALT_INV_input_vector[0]~inputclkctrl_outclk\ <= NOT \input_vector[0]~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y31_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X28_Y36_N2
\output_vector[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stateSet_instance|state\(0),
	devoe => ww_devoe,
	o => \output_vector[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\output_vector[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\output_vector[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[2]~output_o\);

-- Location: IOOBUF_X60_Y2_N16
\output_vector[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[3]~output_o\);

-- Location: IOOBUF_X25_Y29_N16
\output_vector[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[4]~output_o\);

-- Location: IOOBUF_X58_Y36_N9
\output_vector[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[5]~output_o\);

-- Location: IOOBUF_X53_Y0_N2
\output_vector[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[6]~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\input_vector[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(0),
	o => \input_vector[0]~input_o\);

-- Location: CLKCTRL_G3
\input_vector[0]~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \input_vector[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \input_vector[0]~inputclkctrl_outclk\);

-- Location: LCCOMB_X28_Y29_N10
\alu_instance|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Add0~0_combout\ = \pc_instance|m_add\(0) $ (VCC)
-- \alu_instance|Add0~1\ = CARRY(\pc_instance|m_add\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|m_add\(0),
	datad => VCC,
	combout => \alu_instance|Add0~0_combout\,
	cout => \alu_instance|Add0~1\);

-- Location: CLKCTRL_G10
\stateSet_instance|state[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \stateSet_instance|state[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \stateSet_instance|state[0]~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y29_N20
\alu_instance|pc_out[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|pc_out\(0) = (GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & (\alu_instance|Add0~0_combout\)) # (!GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & ((\alu_instance|pc_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|Add0~0_combout\,
	datab => \alu_instance|pc_out\(0),
	datad => \stateSet_instance|state[0]~clkctrl_outclk\,
	combout => \alu_instance|pc_out\(0));

-- Location: FF_X28_Y29_N29
\pc_instance|pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputclkctrl_outclk\,
	asdata => \alu_instance|pc_out\(0),
	sload => VCC,
	ena => \stateSet_instance|state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc\(0));

-- Location: LCCOMB_X28_Y29_N28
\pc_instance|m_add[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|m_add\(0) = (GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & ((\pc_instance|pc\(0)))) # (!GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & (\pc_instance|m_add\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|m_add\(0),
	datac => \pc_instance|pc\(0),
	datad => \stateSet_instance|state[0]~clkctrl_outclk\,
	combout => \pc_instance|m_add\(0));

-- Location: LCCOMB_X28_Y29_N12
\alu_instance|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Add0~2_combout\ = (\pc_instance|m_add\(1) & (!\alu_instance|Add0~1\)) # (!\pc_instance|m_add\(1) & ((\alu_instance|Add0~1\) # (GND)))
-- \alu_instance|Add0~3\ = CARRY((!\alu_instance|Add0~1\) # (!\pc_instance|m_add\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|m_add\(1),
	datad => VCC,
	cin => \alu_instance|Add0~1\,
	combout => \alu_instance|Add0~2_combout\,
	cout => \alu_instance|Add0~3\);

-- Location: LCCOMB_X27_Y29_N6
\alu_instance|pc_out[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|pc_out\(1) = (GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & ((\alu_instance|Add0~2_combout\))) # (!GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & (\alu_instance|pc_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|pc_out\(1),
	datac => \alu_instance|Add0~2_combout\,
	datad => \stateSet_instance|state[0]~clkctrl_outclk\,
	combout => \alu_instance|pc_out\(1));

-- Location: FF_X28_Y29_N21
\pc_instance|pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputclkctrl_outclk\,
	asdata => \alu_instance|pc_out\(1),
	sload => VCC,
	ena => \stateSet_instance|state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc\(1));

-- Location: LCCOMB_X28_Y29_N20
\pc_instance|m_add[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|m_add\(1) = (GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & ((\pc_instance|pc\(1)))) # (!GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & (\pc_instance|m_add\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|m_add\(1),
	datac => \pc_instance|pc\(1),
	datad => \stateSet_instance|state[0]~clkctrl_outclk\,
	combout => \pc_instance|m_add\(1));

-- Location: LCCOMB_X28_Y29_N14
\alu_instance|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Add0~4_combout\ = (\pc_instance|m_add\(2) & (\alu_instance|Add0~3\ $ (GND))) # (!\pc_instance|m_add\(2) & (!\alu_instance|Add0~3\ & VCC))
-- \alu_instance|Add0~5\ = CARRY((\pc_instance|m_add\(2) & !\alu_instance|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|m_add\(2),
	datad => VCC,
	cin => \alu_instance|Add0~3\,
	combout => \alu_instance|Add0~4_combout\,
	cout => \alu_instance|Add0~5\);

-- Location: LCCOMB_X29_Y29_N10
\alu_instance|pc_out[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|pc_out\(2) = (GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & ((\alu_instance|Add0~4_combout\))) # (!GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & (\alu_instance|pc_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|pc_out\(2),
	datac => \stateSet_instance|state[0]~clkctrl_outclk\,
	datad => \alu_instance|Add0~4_combout\,
	combout => \alu_instance|pc_out\(2));

-- Location: FF_X28_Y29_N3
\pc_instance|pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputclkctrl_outclk\,
	asdata => \alu_instance|pc_out\(2),
	sload => VCC,
	ena => \stateSet_instance|state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc\(2));

-- Location: LCCOMB_X28_Y29_N2
\pc_instance|m_add[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|m_add\(2) = (GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & ((\pc_instance|pc\(2)))) # (!GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & (\pc_instance|m_add\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|m_add\(2),
	datac => \pc_instance|pc\(2),
	datad => \stateSet_instance|state[0]~clkctrl_outclk\,
	combout => \pc_instance|m_add\(2));

-- Location: LCCOMB_X28_Y29_N16
\alu_instance|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Add0~6_combout\ = (\pc_instance|m_add\(3) & (!\alu_instance|Add0~5\)) # (!\pc_instance|m_add\(3) & ((\alu_instance|Add0~5\) # (GND)))
-- \alu_instance|Add0~7\ = CARRY((!\alu_instance|Add0~5\) # (!\pc_instance|m_add\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|m_add\(3),
	datad => VCC,
	cin => \alu_instance|Add0~5\,
	combout => \alu_instance|Add0~6_combout\,
	cout => \alu_instance|Add0~7\);

-- Location: LCCOMB_X28_Y29_N0
\alu_instance|pc_out[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|pc_out\(3) = (GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & ((\alu_instance|Add0~6_combout\))) # (!GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & (\alu_instance|pc_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_instance|pc_out\(3),
	datac => \stateSet_instance|state[0]~clkctrl_outclk\,
	datad => \alu_instance|Add0~6_combout\,
	combout => \alu_instance|pc_out\(3));

-- Location: FF_X28_Y29_N5
\pc_instance|pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputclkctrl_outclk\,
	asdata => \alu_instance|pc_out\(3),
	sload => VCC,
	ena => \stateSet_instance|state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc\(3));

-- Location: LCCOMB_X28_Y29_N4
\pc_instance|m_add[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|m_add\(3) = (GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & ((\pc_instance|pc\(3)))) # (!GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & (\pc_instance|m_add\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|m_add\(3),
	datac => \pc_instance|pc\(3),
	datad => \stateSet_instance|state[0]~clkctrl_outclk\,
	combout => \pc_instance|m_add\(3));

-- Location: LCCOMB_X28_Y29_N22
\mem_instance|mem_ins~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_instance|mem_ins~2_combout\ = (\pc_instance|m_add\(3)) # ((\pc_instance|m_add\(1) & (\pc_instance|m_add\(2) & \pc_instance|m_add\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|m_add\(1),
	datab => \pc_instance|m_add\(3),
	datac => \pc_instance|m_add\(2),
	datad => \pc_instance|m_add\(0),
	combout => \mem_instance|mem_ins~2_combout\);

-- Location: LCCOMB_X28_Y29_N18
\alu_instance|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|Add0~8_combout\ = \pc_instance|m_add\(4) $ (!\alu_instance|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|m_add\(4),
	cin => \alu_instance|Add0~7\,
	combout => \alu_instance|Add0~8_combout\);

-- Location: LCCOMB_X28_Y29_N6
\alu_instance|pc_out[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \alu_instance|pc_out\(4) = (GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & ((\alu_instance|Add0~8_combout\))) # (!GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & (\alu_instance|pc_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_instance|pc_out\(4),
	datac => \stateSet_instance|state[0]~clkctrl_outclk\,
	datad => \alu_instance|Add0~8_combout\,
	combout => \alu_instance|pc_out\(4));

-- Location: FF_X28_Y29_N27
\pc_instance|pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputclkctrl_outclk\,
	asdata => \alu_instance|pc_out\(4),
	sload => VCC,
	ena => \stateSet_instance|state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc_instance|pc\(4));

-- Location: LCCOMB_X28_Y29_N26
\pc_instance|m_add[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pc_instance|m_add\(4) = (GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & ((\pc_instance|pc\(4)))) # (!GLOBAL(\stateSet_instance|state[0]~clkctrl_outclk\) & (\pc_instance|m_add\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|m_add\(4),
	datac => \pc_instance|pc\(4),
	datad => \stateSet_instance|state[0]~clkctrl_outclk\,
	combout => \pc_instance|m_add\(4));

-- Location: LCCOMB_X28_Y29_N30
\mem_instance|mem_ins~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_instance|mem_ins~3_combout\ = (!\mem_instance|mem_ins~2_combout\ & !\pc_instance|m_add\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_instance|mem_ins~2_combout\,
	datac => \pc_instance|m_add\(4),
	combout => \mem_instance|mem_ins~3_combout\);

-- Location: FF_X28_Y29_N31
\t1_instance|t1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	d => \mem_instance|mem_ins~3_combout\,
	ena => \stateSet_instance|state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1_instance|t1\(15));

-- Location: LCCOMB_X28_Y29_N8
\mem_instance|mem_ins~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_instance|mem_ins~0_combout\ = (!\pc_instance|m_add\(3) & ((\pc_instance|m_add\(0) & ((!\pc_instance|m_add\(2)) # (!\pc_instance|m_add\(1)))) # (!\pc_instance|m_add\(0) & ((\pc_instance|m_add\(1)) # (\pc_instance|m_add\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc_instance|m_add\(3),
	datab => \pc_instance|m_add\(0),
	datac => \pc_instance|m_add\(1),
	datad => \pc_instance|m_add\(2),
	combout => \mem_instance|mem_ins~0_combout\);

-- Location: LCCOMB_X28_Y29_N24
\mem_instance|mem_ins~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mem_instance|mem_ins~1_combout\ = (!\pc_instance|m_add\(4) & \mem_instance|mem_ins~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc_instance|m_add\(4),
	datac => \mem_instance|mem_ins~0_combout\,
	combout => \mem_instance|mem_ins~1_combout\);

-- Location: FF_X28_Y29_N25
\t1_instance|t1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	d => \mem_instance|mem_ins~1_combout\,
	ena => \stateSet_instance|state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t1_instance|t1\(12));

-- Location: LCCOMB_X27_Y29_N28
\stateTrans_instance|Mux72~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stateTrans_instance|Mux72~0_combout\ = ((\t1_instance|t1\(15) & \t1_instance|t1\(12))) # (!\stateSet_instance|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateSet_instance|state\(0),
	datac => \t1_instance|t1\(15),
	datad => \t1_instance|t1\(12),
	combout => \stateTrans_instance|Mux72~0_combout\);

-- Location: FF_X27_Y29_N27
\stateSet_instance|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \input_vector[0]~inputclkctrl_outclk\,
	asdata => \stateTrans_instance|Mux72~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateSet_instance|state\(0));

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_output_vector(0) <= \output_vector[0]~output_o\;

ww_output_vector(1) <= \output_vector[1]~output_o\;

ww_output_vector(2) <= \output_vector[2]~output_o\;

ww_output_vector(3) <= \output_vector[3]~output_o\;

ww_output_vector(4) <= \output_vector[4]~output_o\;

ww_output_vector(5) <= \output_vector[5]~output_o\;

ww_output_vector(6) <= \output_vector[6]~output_o\;
END structure;


