-- megafunction wizard: %LPM_COMPARE%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_COMPARE 

-- ============================================================
-- File Name: Remain_Compare_Demo.vhd
-- Megafunction Name(s):
-- 			LPM_COMPARE
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

ENTITY Remain_Compare_Demo IS
	PORT
	(
		dataa		: IN STD_LOGIC_VECTOR (27 DOWNTO 0);
		aeb		: OUT STD_LOGIC 
	);
END Remain_Compare_Demo;


ARCHITECTURE SYN OF remain_compare_demo IS

	SIGNAL sub_wire0_bv	: BIT_VECTOR (27 DOWNTO 0);
	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (27 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;



	COMPONENT lpm_compare
	GENERIC (
		lpm_hint		: STRING;
		lpm_representation		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			dataa	: IN STD_LOGIC_VECTOR (27 DOWNTO 0);
			datab	: IN STD_LOGIC_VECTOR (27 DOWNTO 0);
			aeb	: OUT STD_LOGIC 
	);
	END COMPONENT;

BEGIN
	sub_wire0_bv(27 DOWNTO 0) <= "0000000000000000000000000000";
	sub_wire0    <= To_stdlogicvector(sub_wire0_bv);
	aeb    <= sub_wire1;

	LPM_COMPARE_component : LPM_COMPARE
	GENERIC MAP (
		lpm_hint => "ONE_INPUT_IS_CONSTANT=YES",
		lpm_representation => "UNSIGNED",
		lpm_type => "LPM_COMPARE",
		lpm_width => 28
	)
	PORT MAP (
		dataa => dataa,
		datab => sub_wire0,
		aeb => sub_wire1
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: AeqB NUMERIC "1"
-- Retrieval info: PRIVATE: AgeB NUMERIC "0"
-- Retrieval info: PRIVATE: AgtB NUMERIC "0"
-- Retrieval info: PRIVATE: AleB NUMERIC "0"
-- Retrieval info: PRIVATE: AltB NUMERIC "0"
-- Retrieval info: PRIVATE: AneB NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
-- Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
-- Retrieval info: PRIVATE: Latency NUMERIC "0"
-- Retrieval info: PRIVATE: PortBValue NUMERIC "0"
-- Retrieval info: PRIVATE: Radix NUMERIC "10"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: SignedCompare NUMERIC "0"
-- Retrieval info: PRIVATE: aclr NUMERIC "0"
-- Retrieval info: PRIVATE: clken NUMERIC "0"
-- Retrieval info: PRIVATE: isPortBConstant NUMERIC "1"
-- Retrieval info: PRIVATE: nBit NUMERIC "28"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_HINT STRING "ONE_INPUT_IS_CONSTANT=YES"
-- Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "UNSIGNED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COMPARE"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "28"
-- Retrieval info: USED_PORT: aeb 0 0 0 0 OUTPUT NODEFVAL "aeb"
-- Retrieval info: USED_PORT: dataa 0 0 28 0 INPUT NODEFVAL "dataa[27..0]"
-- Retrieval info: CONNECT: @dataa 0 0 28 0 dataa 0 0 28 0
-- Retrieval info: CONNECT: @datab 0 0 28 0 0 0 0 28 0
-- Retrieval info: CONNECT: aeb 0 0 0 0 @aeb 0 0 0 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL Remain_Compare_Demo.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Remain_Compare_Demo.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Remain_Compare_Demo.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Remain_Compare_Demo.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL Remain_Compare_Demo_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm
