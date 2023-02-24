-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Fri Sep 21 16:37:58 2018
-- Host        : Mei-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/ax7020/2017/course_s3_hls/vivado/10_edge_detector/edge_detector.srcs/sources_1/bd/design_1/ip/design_1_i2c_extender_0_1/design_1_i2c_extender_0_1_stub.vhdl
-- Design      : design_1_i2c_extender_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_i2c_extender_0_1 is
  Port ( 
    upstream_scl_T : in STD_LOGIC;
    upstream_scl_I : in STD_LOGIC;
    upstream_scl_O : out STD_LOGIC;
    upstream_sda_T : in STD_LOGIC;
    upstream_sda_I : in STD_LOGIC;
    upstream_sda_O : out STD_LOGIC;
    downstream0_scl_T : out STD_LOGIC;
    downstream0_scl_I : in STD_LOGIC;
    downstream0_scl_O : out STD_LOGIC;
    downstream0_sda_T : out STD_LOGIC;
    downstream0_sda_I : in STD_LOGIC;
    downstream0_sda_O : out STD_LOGIC;
    downstream1_scl_T : out STD_LOGIC;
    downstream1_scl_I : in STD_LOGIC;
    downstream1_scl_O : out STD_LOGIC;
    downstream1_sda_T : out STD_LOGIC;
    downstream1_sda_I : in STD_LOGIC;
    downstream1_sda_O : out STD_LOGIC
  );

end design_1_i2c_extender_0_1;

architecture stub of design_1_i2c_extender_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "upstream_scl_T,upstream_scl_I,upstream_scl_O,upstream_sda_T,upstream_sda_I,upstream_sda_O,downstream0_scl_T,downstream0_scl_I,downstream0_scl_O,downstream0_sda_T,downstream0_sda_I,downstream0_sda_O,downstream1_scl_T,downstream1_scl_I,downstream1_scl_O,downstream1_sda_T,downstream1_sda_I,downstream1_sda_O";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "i2c_extender,Vivado 2017.4";
begin
end;
