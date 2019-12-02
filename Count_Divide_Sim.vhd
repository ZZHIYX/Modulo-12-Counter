-- megafunction wizard: %LPM_DIVIDE%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_DIVIDE 

-- ============================================================
-- File Name: Count_Divide_Sim.vhd
-- Megafunction Name(s):
-- 			LPM_DIVIDE
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 18.0.0 Build 614 04/24/2018 SJ Lite Edition
-- ************************************************************


--Copyright (C) 2018  Intel Corporation. All rights reserved.
--Your use of Intel Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Intel Program License 
--Subscription Agreement, the Intel Quartus Prime License Agreement,
--the Intel FPGA IP License Agreement, or other applicable license
--agreement, including, without limitation, that your use is for
--the sole purpose of programming logic devices manufactured by
--Intel and sold by Intel or its authorized distributors.  Please
--refer to the applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY Count_Divide_Sim IS
	PORT
	(
		denom		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		numer		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		quotient		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		remain		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
END Count_Divide_Sim;


ARCHITECTURE SYN OF count_divide_sim IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (7 DOWNTO 0);



	COMPONENT lpm_divide
	GENERIC (
		lpm_drepresentation		: STRING;
		lpm_hint		: STRING;
		lpm_nrepresentation		: STRING;
		lpm_type		: STRING;
		lpm_widthd		: NATURAL;
		lpm_widthn		: NATURAL
	);
	PORT (
			denom	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			numer	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			quotient	: OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
			remain	: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	quotient    <= sub_wire0(7 DOWNTO 0);
	remain    <= sub_wire1(7 DOWNTO 0);

	LPM_DIVIDE_component : LPM_DIVIDE
	GENERIC MAP (
		lpm_drepresentation => "UNSIGNED",
		lpm_hint => "LPM_REMAINDERPOSITIVE=TRUE",
		lpm_nrepresentation => "UNSIGNED",
		lpm_type => "LPM_DIVIDE",
		lpm_widthd => 8,
		lpm_widthn => 8
	)
	PORT MAP (
		denom => denom,
		numer => numer,
		quotient => sub_wire0,
		remain => sub_wire1
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: PRIVATE: PRIVATE_LPM_REMAINDERPOSITIVE STRING "TRUE"
-- Retrieval info: PRIVATE: PRIVATE_MAXIMIZE_SPEED NUMERIC "-1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: USING_PIPELINE NUMERIC "0"
-- Retrieval info: PRIVATE: VERSION_NUMBER NUMERIC "2"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_DREPRESENTATION STRING "UNSIGNED"
-- Retrieval info: CONSTANT: LPM_HINT STRING "LPM_REMAINDERPOSITIVE=TRUE"
-- Retrieval info: CONSTANT: LPM_NREPRESENTATION STRING "UNSIGNED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_DIVIDE"
-- Retrieval info: CONSTANT: LPM_WIDTHD NUMERIC "8"
-- Retrieval info: CONSTANT: LPM_WIDTHN NUMERIC "8"
-- Retrieval info: USED_PORT: denom 0 0 8 0 INPUT NODEFVAL "denom[7..0]"
-- Retrieval info: USED_PORT: numer 0 0 8 0 INPUT NODEFVAL "numer[7..0]"
-- Retrieval info: USED_PORT: quotient 0 0 8 0 OUTPUT NODEFVAL "quotient[7..0]"
-- Retrieval info: USED_PORT: remain 0 0 8 0 OUTPUT NODEFVAL "remain[7..0]"
-- Retrieval info: CONNECT: @denom 0 0 8 0 denom 0 0 8 0
-- Retrieval info: CONNECT: @numer 0 0 8 0 numer 0 0 8 0
-- Retrieval info: CONNECT: quotient 0 0 8 0 @quotient 0 0 8 0
-- Retrieval info: CONNECT: remain 0 0 8 0 @remain 0 0 8 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL Count_Divide_Sim.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Count_Divide_Sim.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Count_Divide_Sim.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Count_Divide_Sim.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Count_Divide_Sim_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
