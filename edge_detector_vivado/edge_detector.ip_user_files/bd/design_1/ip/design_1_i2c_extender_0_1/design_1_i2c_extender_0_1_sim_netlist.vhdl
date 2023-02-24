-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Thu Sep 13 15:54:29 2018
-- Host        : Mei-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               F:/AX7021/2017/course_s3_hls/vivado/10_edge_detector/edge_detector.srcs/sources_1/bd/design_1/ip/design_1_i2c_extender_0_1/design_1_i2c_extender_0_1_sim_netlist.vhdl
-- Design      : design_1_i2c_extender_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_i2c_extender_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_i2c_extender_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_i2c_extender_0_1 : entity is "design_1_i2c_extender_0_1,i2c_extender,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_i2c_extender_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_i2c_extender_0_1 : entity is "i2c_extender,Vivado 2017.4";
end design_1_i2c_extender_0_1;

architecture STRUCTURE of design_1_i2c_extender_0_1 is
  signal \^upstream_scl_i\ : STD_LOGIC;
  signal \^upstream_scl_t\ : STD_LOGIC;
  signal \^upstream_sda_i\ : STD_LOGIC;
  signal \^upstream_sda_t\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of downstream0_scl_I : signal is "xilinx.com:interface:iic:1.0 i2c_down0 SCL_I";
  attribute X_INTERFACE_INFO of downstream0_scl_O : signal is "xilinx.com:interface:iic:1.0 i2c_down0 SCL_O";
  attribute X_INTERFACE_INFO of downstream0_scl_T : signal is "xilinx.com:interface:iic:1.0 i2c_down0 SCL_T";
  attribute X_INTERFACE_INFO of downstream0_sda_I : signal is "xilinx.com:interface:iic:1.0 i2c_down0 SDA_I";
  attribute X_INTERFACE_INFO of downstream0_sda_O : signal is "xilinx.com:interface:iic:1.0 i2c_down0 SDA_O";
  attribute X_INTERFACE_INFO of downstream0_sda_T : signal is "xilinx.com:interface:iic:1.0 i2c_down0 SDA_T";
  attribute X_INTERFACE_INFO of downstream1_scl_I : signal is "xilinx.com:interface:iic:1.0 i2c_down1 SCL_I";
  attribute X_INTERFACE_INFO of downstream1_scl_O : signal is "xilinx.com:interface:iic:1.0 i2c_down1 SCL_O";
  attribute X_INTERFACE_INFO of downstream1_scl_T : signal is "xilinx.com:interface:iic:1.0 i2c_down1 SCL_T";
  attribute X_INTERFACE_INFO of downstream1_sda_I : signal is "xilinx.com:interface:iic:1.0 i2c_down1 SDA_I";
  attribute X_INTERFACE_INFO of downstream1_sda_O : signal is "xilinx.com:interface:iic:1.0 i2c_down1 SDA_O";
  attribute X_INTERFACE_INFO of downstream1_sda_T : signal is "xilinx.com:interface:iic:1.0 i2c_down1 SDA_T";
  attribute X_INTERFACE_INFO of upstream_scl_I : signal is "xilinx.com:interface:iic:1.0 i2c_up SCL_O";
  attribute X_INTERFACE_INFO of upstream_scl_O : signal is "xilinx.com:interface:iic:1.0 i2c_up SCL_I";
  attribute X_INTERFACE_INFO of upstream_scl_T : signal is "xilinx.com:interface:iic:1.0 i2c_up SCL_T";
  attribute X_INTERFACE_INFO of upstream_sda_I : signal is "xilinx.com:interface:iic:1.0 i2c_up SDA_O";
  attribute X_INTERFACE_INFO of upstream_sda_O : signal is "xilinx.com:interface:iic:1.0 i2c_up SDA_I";
  attribute X_INTERFACE_INFO of upstream_sda_T : signal is "xilinx.com:interface:iic:1.0 i2c_up SDA_T";
begin
  \^upstream_scl_i\ <= upstream_scl_I;
  \^upstream_scl_t\ <= upstream_scl_T;
  \^upstream_sda_i\ <= upstream_sda_I;
  \^upstream_sda_t\ <= upstream_sda_T;
  downstream0_scl_O <= \^upstream_scl_i\;
  downstream0_scl_T <= \^upstream_scl_t\;
  downstream0_sda_O <= \^upstream_sda_i\;
  downstream0_sda_T <= \^upstream_sda_t\;
  downstream1_scl_O <= \^upstream_scl_i\;
  downstream1_scl_T <= \^upstream_scl_t\;
  downstream1_sda_O <= \^upstream_sda_i\;
  downstream1_sda_T <= \^upstream_sda_t\;
upstream_scl_O_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => downstream0_scl_I,
      I1 => downstream1_scl_I,
      O => upstream_scl_O
    );
upstream_sda_O_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => downstream0_sda_I,
      I1 => downstream1_sda_I,
      O => upstream_sda_O
    );
end STRUCTURE;
