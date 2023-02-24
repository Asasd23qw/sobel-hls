// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Sep 13 15:54:29 2018
// Host        : Mei-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               F:/AX7021/2017/course_s3_hls/vivado/10_edge_detector/edge_detector.srcs/sources_1/bd/design_1/ip/design_1_i2c_extender_0_1/design_1_i2c_extender_0_1_sim_netlist.v
// Design      : design_1_i2c_extender_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_i2c_extender_0_1,i2c_extender,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "i2c_extender,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_i2c_extender_0_1
   (upstream_scl_T,
    upstream_scl_I,
    upstream_scl_O,
    upstream_sda_T,
    upstream_sda_I,
    upstream_sda_O,
    downstream0_scl_T,
    downstream0_scl_I,
    downstream0_scl_O,
    downstream0_sda_T,
    downstream0_sda_I,
    downstream0_sda_O,
    downstream1_scl_T,
    downstream1_scl_I,
    downstream1_scl_O,
    downstream1_sda_T,
    downstream1_sda_I,
    downstream1_sda_O);
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_up SCL_T" *) input upstream_scl_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_up SCL_O" *) input upstream_scl_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_up SCL_I" *) output upstream_scl_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_up SDA_T" *) input upstream_sda_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_up SDA_O" *) input upstream_sda_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_up SDA_I" *) output upstream_sda_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_down0 SCL_T" *) output downstream0_scl_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_down0 SCL_I" *) input downstream0_scl_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_down0 SCL_O" *) output downstream0_scl_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_down0 SDA_T" *) output downstream0_sda_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_down0 SDA_I" *) input downstream0_sda_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_down0 SDA_O" *) output downstream0_sda_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_down1 SCL_T" *) output downstream1_scl_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_down1 SCL_I" *) input downstream1_scl_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_down1 SCL_O" *) output downstream1_scl_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_down1 SDA_T" *) output downstream1_sda_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_down1 SDA_I" *) input downstream1_sda_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 i2c_down1 SDA_O" *) output downstream1_sda_O;

  wire downstream0_scl_I;
  wire downstream0_sda_I;
  wire downstream1_scl_I;
  wire downstream1_sda_I;
  wire upstream_scl_I;
  wire upstream_scl_O;
  wire upstream_scl_T;
  wire upstream_sda_I;
  wire upstream_sda_O;
  wire upstream_sda_T;

  assign downstream0_scl_O = upstream_scl_I;
  assign downstream0_scl_T = upstream_scl_T;
  assign downstream0_sda_O = upstream_sda_I;
  assign downstream0_sda_T = upstream_sda_T;
  assign downstream1_scl_O = upstream_scl_I;
  assign downstream1_scl_T = upstream_scl_T;
  assign downstream1_sda_O = upstream_sda_I;
  assign downstream1_sda_T = upstream_sda_T;
  LUT2 #(
    .INIT(4'h8)) 
    upstream_scl_O_INST_0
       (.I0(downstream0_scl_I),
        .I1(downstream1_scl_I),
        .O(upstream_scl_O));
  LUT2 #(
    .INIT(4'h8)) 
    upstream_sda_O_INST_0
       (.I0(downstream0_sda_I),
        .I1(downstream1_sda_I),
        .O(upstream_sda_O));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
