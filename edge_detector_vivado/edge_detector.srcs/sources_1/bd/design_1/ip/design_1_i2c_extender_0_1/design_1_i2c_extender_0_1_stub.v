// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Sep 21 16:37:58 2018
// Host        : Mei-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               F:/ax7020/2017/course_s3_hls/vivado/10_edge_detector/edge_detector.srcs/sources_1/bd/design_1/ip/design_1_i2c_extender_0_1/design_1_i2c_extender_0_1_stub.v
// Design      : design_1_i2c_extender_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "i2c_extender,Vivado 2017.4" *)
module design_1_i2c_extender_0_1(upstream_scl_T, upstream_scl_I, 
  upstream_scl_O, upstream_sda_T, upstream_sda_I, upstream_sda_O, downstream0_scl_T, 
  downstream0_scl_I, downstream0_scl_O, downstream0_sda_T, downstream0_sda_I, 
  downstream0_sda_O, downstream1_scl_T, downstream1_scl_I, downstream1_scl_O, 
  downstream1_sda_T, downstream1_sda_I, downstream1_sda_O)
/* synthesis syn_black_box black_box_pad_pin="upstream_scl_T,upstream_scl_I,upstream_scl_O,upstream_sda_T,upstream_sda_I,upstream_sda_O,downstream0_scl_T,downstream0_scl_I,downstream0_scl_O,downstream0_sda_T,downstream0_sda_I,downstream0_sda_O,downstream1_scl_T,downstream1_scl_I,downstream1_scl_O,downstream1_sda_T,downstream1_sda_I,downstream1_sda_O" */;
  input upstream_scl_T;
  input upstream_scl_I;
  output upstream_scl_O;
  input upstream_sda_T;
  input upstream_sda_I;
  output upstream_sda_O;
  output downstream0_scl_T;
  input downstream0_scl_I;
  output downstream0_scl_O;
  output downstream0_sda_T;
  input downstream0_sda_I;
  output downstream0_sda_O;
  output downstream1_scl_T;
  input downstream1_scl_I;
  output downstream1_scl_O;
  output downstream1_sda_T;
  input downstream1_sda_I;
  output downstream1_sda_O;
endmodule
