-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/11/2024 18:03:43"

-- 
-- Device: Altera EPM240T100C3 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	CSA IS
    PORT (
	\out\ : OUT std_logic_vector(7 DOWNTO 0);
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	cin : IN std_logic
	);
END CSA;

-- Design Ports Information
-- out[7]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- out[6]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- out[5]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- out[4]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- out[3]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- out[2]	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- out[1]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- out[0]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- a[7]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cin	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF CSA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL \cin~combout\ : std_logic;
SIGNAL \inst28~combout\ : std_logic;
SIGNAL \inst27~combout\ : std_logic;
SIGNAL \inst7|inst2~0_combout\ : std_logic;
SIGNAL \inst25|inst2~0_combout\ : std_logic;
SIGNAL \inst11|inst3~combout\ : std_logic;
SIGNAL \inst11|inst4~combout\ : std_logic;
SIGNAL \inst21~combout\ : std_logic;
SIGNAL \inst12|inst2~0_combout\ : std_logic;
SIGNAL \inst2|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst2~0_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ : std_logic;
SIGNAL \inst4|inst1~0_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ : std_logic;
SIGNAL \inst25|inst1~0_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ : std_logic;
SIGNAL \inst|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ : std_logic;
SIGNAL \inst3|inst1~0_combout\ : std_logic;
SIGNAL \inst2|inst1~0_combout\ : std_logic;
SIGNAL \inst12|inst1~combout\ : std_logic;
SIGNAL \inst11|inst1~0_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|LPM_MUX_component|auto_generated|ALT_INV_result_node[0]~7_combout\ : std_logic;

BEGIN

\out\ <= \ww_out\;
ww_a <= a;
ww_b <= b;
ww_cin <= cin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|LPM_MUX_component|auto_generated|ALT_INV_result_node[0]~7_combout\ <= NOT \inst|LPM_MUX_component|auto_generated|result_node[0]~7_combout\;

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cin,
	combout => \cin~combout\);

-- Location: LC_X3_Y2_N3
inst28 : maxii_lcell
-- Equation(s):
-- \inst28~combout\ = \b~combout\(5) $ ((((\cin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(5),
	datac => \cin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst28~combout\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LC_X3_Y2_N6
inst27 : maxii_lcell
-- Equation(s):
-- \inst27~combout\ = \cin~combout\ $ ((((\b~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cin~combout\,
	datac => \b~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst27~combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LC_X3_Y2_N1
\inst7|inst2~0\ : maxii_lcell
-- Equation(s):
-- \inst7|inst2~0_combout\ = (\inst28~combout\ & ((\a~combout\(5)) # ((\a~combout\(4) & \inst27~combout\)))) # (!\inst28~combout\ & (\a~combout\(4) & (\inst27~combout\ & \a~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst28~combout\,
	datab => \a~combout\(4),
	datac => \inst27~combout\,
	datad => \a~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst7|inst2~0_combout\);

-- Location: LC_X3_Y2_N5
\inst25|inst2~0\ : maxii_lcell
-- Equation(s):
-- \inst25|inst2~0_combout\ = (\inst28~combout\ & ((\a~combout\(4)) # ((\inst27~combout\) # (\a~combout\(5))))) # (!\inst28~combout\ & (\a~combout\(5) & ((\a~combout\(4)) # (\inst27~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fea8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst28~combout\,
	datab => \a~combout\(4),
	datac => \inst27~combout\,
	datad => \a~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst25|inst2~0_combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LC_X5_Y3_N6
\inst11|inst3\ : maxii_lcell
-- Equation(s):
-- \inst11|inst3~combout\ = ((\cin~combout\ & (\b~combout\(0) $ (!\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cin~combout\,
	datac => \b~combout\(0),
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst3~combout\);

-- Location: LC_X5_Y3_N0
\inst11|inst4\ : maxii_lcell
-- Equation(s):
-- \inst11|inst4~combout\ = ((\a~combout\(0) & (\cin~combout\ $ (\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cin~combout\,
	datac => \b~combout\(0),
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst4~combout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LC_X5_Y3_N4
inst21 : maxii_lcell
-- Equation(s):
-- \inst21~combout\ = (\cin~combout\ $ (((\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cin~combout\,
	datad => \b~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst21~combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LC_X5_Y3_N7
\inst12|inst2~0\ : maxii_lcell
-- Equation(s):
-- \inst12|inst2~0_combout\ = (\inst21~combout\ & ((\inst11|inst3~combout\) # ((\inst11|inst4~combout\) # (\a~combout\(1))))) # (!\inst21~combout\ & (\a~combout\(1) & ((\inst11|inst3~combout\) # (\inst11|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst3~combout\,
	datab => \inst11|inst4~combout\,
	datac => \inst21~combout\,
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst2~0_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LC_X5_Y3_N8
\inst2|inst2~0\ : maxii_lcell
-- Equation(s):
-- \inst2|inst2~0_combout\ = (\inst12|inst2~0_combout\ & ((\a~combout\(2)) # (\b~combout\(2) $ (\cin~combout\)))) # (!\inst12|inst2~0_combout\ & (\a~combout\(2) & (\b~combout\(2) $ (\cin~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \cin~combout\,
	datac => \inst12|inst2~0_combout\,
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst2~0_combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LC_X5_Y3_N9
\inst3|inst2~0\ : maxii_lcell
-- Equation(s):
-- \inst3|inst2~0_combout\ = (\inst2|inst2~0_combout\ & ((\a~combout\(3)) # (\cin~combout\ $ (\b~combout\(3))))) # (!\inst2|inst2~0_combout\ & (\a~combout\(3) & (\cin~combout\ $ (\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2~0_combout\,
	datab => \cin~combout\,
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|inst2~0_combout\);

-- Location: LC_X3_Y2_N0
\inst|LPM_MUX_component|auto_generated|result_node[3]~2\ : maxii_lcell
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ = ((\inst3|inst2~0_combout\ & (\inst7|inst2~0_combout\)) # (!\inst3|inst2~0_combout\ & ((\inst25|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2~0_combout\,
	datac => \inst25|inst2~0_combout\,
	datad => \inst3|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[3]~2_combout\);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LC_X4_Y2_N2
\inst|LPM_MUX_component|auto_generated|result_node[3]~3\ : maxii_lcell
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ = (\inst|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ & ((\a~combout\(6) & ((!\cin~combout\))) # (!\a~combout\(6) & (\b~combout\(6))))) # 
-- (!\inst|LPM_MUX_component|auto_generated|result_node[3]~2_combout\ & ((\a~combout\(6) & (\b~combout\(6))) # (!\a~combout\(6) & ((\cin~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4de8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_MUX_component|auto_generated|result_node[3]~2_combout\,
	datab => \b~combout\(6),
	datac => \a~combout\(6),
	datad => \cin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[3]~3_combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LC_X4_Y2_N4
\inst|LPM_MUX_component|auto_generated|result_node[3]~4\ : maxii_lcell
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[3]~4_combout\ = (\inst|LPM_MUX_component|auto_generated|result_node[3]~3_combout\ $ (\a~combout\(7) $ (\b~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_MUX_component|auto_generated|result_node[3]~3_combout\,
	datac => \a~combout\(7),
	datad => \b~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[3]~4_combout\);

-- Location: LC_X3_Y2_N9
\inst4|inst1~0\ : maxii_lcell
-- Equation(s):
-- \inst4|inst1~0_combout\ = \cin~combout\ $ (((\b~combout\(6) $ (\a~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cin~combout\,
	datac => \b~combout\(6),
	datad => \a~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst4|inst1~0_combout\);

-- Location: LC_X3_Y2_N2
\inst|LPM_MUX_component|auto_generated|result_node[2]~5\ : maxii_lcell
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[2]~5_combout\ = \inst4|inst1~0_combout\ $ (((\inst3|inst2~0_combout\ & ((\inst7|inst2~0_combout\))) # (!\inst3|inst2~0_combout\ & (\inst25|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst2~0_combout\,
	datab => \inst7|inst2~0_combout\,
	datac => \inst4|inst1~0_combout\,
	datad => \inst3|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[2]~5_combout\);

-- Location: LC_X3_Y2_N8
\inst25|inst1~0\ : maxii_lcell
-- Equation(s):
-- \inst25|inst1~0_combout\ = \b~combout\(5) $ (((\cin~combout\ $ (\a~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(5),
	datac => \cin~combout\,
	datad => \a~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst25|inst1~0_combout\);

-- Location: LC_X3_Y2_N7
\inst|LPM_MUX_component|auto_generated|result_node[1]~6\ : maxii_lcell
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[1]~6_combout\ = \inst25|inst1~0_combout\ $ (((\a~combout\(4) & ((\inst27~combout\) # (!\inst3|inst2~0_combout\))) # (!\a~combout\(4) & (\inst27~combout\ & !\inst3|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a56",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst1~0_combout\,
	datab => \a~combout\(4),
	datac => \inst27~combout\,
	datad => \inst3|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[1]~6_combout\);

-- Location: LC_X3_Y2_N4
\inst|LPM_MUX_component|auto_generated|result_node[0]~7\ : maxii_lcell
-- Equation(s):
-- \inst|LPM_MUX_component|auto_generated|result_node[0]~7_combout\ = \cin~combout\ $ (\a~combout\(4) $ (\b~combout\(4) $ (\inst3|inst2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cin~combout\,
	datab => \a~combout\(4),
	datac => \b~combout\(4),
	datad => \inst3|inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|LPM_MUX_component|auto_generated|result_node[0]~7_combout\);

-- Location: LC_X5_Y3_N2
\inst3|inst1~0\ : maxii_lcell
-- Equation(s):
-- \inst3|inst1~0_combout\ = \inst2|inst2~0_combout\ $ (\cin~combout\ $ (\a~combout\(3) $ (\b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2~0_combout\,
	datab => \cin~combout\,
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|inst1~0_combout\);

-- Location: LC_X5_Y3_N3
\inst2|inst1~0\ : maxii_lcell
-- Equation(s):
-- \inst2|inst1~0_combout\ = \b~combout\(2) $ (\cin~combout\ $ (\inst12|inst2~0_combout\ $ (\a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \cin~combout\,
	datac => \inst12|inst2~0_combout\,
	datad => \a~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|inst1~0_combout\);

-- Location: LC_X5_Y3_N1
\inst12|inst1\ : maxii_lcell
-- Equation(s):
-- \inst12|inst1~combout\ = \inst21~combout\ $ (\a~combout\(1) $ (((\inst11|inst3~combout\) # (\inst11|inst4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e11e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst3~combout\,
	datab => \inst11|inst4~combout\,
	datac => \inst21~combout\,
	datad => \a~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst1~combout\);

-- Location: LC_X5_Y3_N5
\inst11|inst1~0\ : maxii_lcell
-- Equation(s):
-- \inst11|inst1~0_combout\ = ((\b~combout\(0) $ (\a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(0),
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst1~0_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|LPM_MUX_component|auto_generated|result_node[3]~4_combout\,
	oe => VCC,
	padio => \ww_out\(7));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|LPM_MUX_component|auto_generated|result_node[2]~5_combout\,
	oe => VCC,
	padio => \ww_out\(6));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|LPM_MUX_component|auto_generated|result_node[1]~6_combout\,
	oe => VCC,
	padio => \ww_out\(5));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|LPM_MUX_component|auto_generated|ALT_INV_result_node[0]~7_combout\,
	oe => VCC,
	padio => \ww_out\(4));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst3|inst1~0_combout\,
	oe => VCC,
	padio => \ww_out\(3));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|inst1~0_combout\,
	oe => VCC,
	padio => \ww_out\(2));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst12|inst1~combout\,
	oe => VCC,
	padio => \ww_out\(1));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst11|inst1~0_combout\,
	oe => VCC,
	padio => \ww_out\(0));
END structure;


