// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Sep 21 16:34:22 2018
// Host        : Mei-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               F:/ax7020/2017/course_s3_hls/vivado/10_edge_detector/edge_detector.srcs/sources_1/bd/design_1/ip/design_1_mem2stream_0_0/design_1_mem2stream_0_0_stub.v
// Design      : design_1_mem2stream_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mem2stream,Vivado 2017.4" *)
module design_1_mem2stream_0_0(s_axi_AXILiteS_AWADDR, 
  s_axi_AXILiteS_AWVALID, s_axi_AXILiteS_AWREADY, s_axi_AXILiteS_WDATA, 
  s_axi_AXILiteS_WSTRB, s_axi_AXILiteS_WVALID, s_axi_AXILiteS_WREADY, 
  s_axi_AXILiteS_BRESP, s_axi_AXILiteS_BVALID, s_axi_AXILiteS_BREADY, 
  s_axi_AXILiteS_ARADDR, s_axi_AXILiteS_ARVALID, s_axi_AXILiteS_ARREADY, 
  s_axi_AXILiteS_RDATA, s_axi_AXILiteS_RRESP, s_axi_AXILiteS_RVALID, 
  s_axi_AXILiteS_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_pMemPort_AWADDR, 
  m_axi_pMemPort_AWLEN, m_axi_pMemPort_AWSIZE, m_axi_pMemPort_AWBURST, 
  m_axi_pMemPort_AWLOCK, m_axi_pMemPort_AWREGION, m_axi_pMemPort_AWCACHE, 
  m_axi_pMemPort_AWPROT, m_axi_pMemPort_AWQOS, m_axi_pMemPort_AWVALID, 
  m_axi_pMemPort_AWREADY, m_axi_pMemPort_WDATA, m_axi_pMemPort_WSTRB, 
  m_axi_pMemPort_WLAST, m_axi_pMemPort_WVALID, m_axi_pMemPort_WREADY, 
  m_axi_pMemPort_BRESP, m_axi_pMemPort_BVALID, m_axi_pMemPort_BREADY, 
  m_axi_pMemPort_ARADDR, m_axi_pMemPort_ARLEN, m_axi_pMemPort_ARSIZE, 
  m_axi_pMemPort_ARBURST, m_axi_pMemPort_ARLOCK, m_axi_pMemPort_ARREGION, 
  m_axi_pMemPort_ARCACHE, m_axi_pMemPort_ARPROT, m_axi_pMemPort_ARQOS, 
  m_axi_pMemPort_ARVALID, m_axi_pMemPort_ARREADY, m_axi_pMemPort_RDATA, 
  m_axi_pMemPort_RRESP, m_axi_pMemPort_RLAST, m_axi_pMemPort_RVALID, 
  m_axi_pMemPort_RREADY, vstream_TVALID, vstream_TREADY, vstream_TDATA, vstream_TKEEP, 
  vstream_TSTRB, vstream_TUSER, vstream_TLAST, vstream_TID, vstream_TDEST, indexw, indexr)
/* synthesis syn_black_box black_box_pad_pin="s_axi_AXILiteS_AWADDR[5:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[5:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_pMemPort_AWADDR[31:0],m_axi_pMemPort_AWLEN[7:0],m_axi_pMemPort_AWSIZE[2:0],m_axi_pMemPort_AWBURST[1:0],m_axi_pMemPort_AWLOCK[1:0],m_axi_pMemPort_AWREGION[3:0],m_axi_pMemPort_AWCACHE[3:0],m_axi_pMemPort_AWPROT[2:0],m_axi_pMemPort_AWQOS[3:0],m_axi_pMemPort_AWVALID,m_axi_pMemPort_AWREADY,m_axi_pMemPort_WDATA[31:0],m_axi_pMemPort_WSTRB[3:0],m_axi_pMemPort_WLAST,m_axi_pMemPort_WVALID,m_axi_pMemPort_WREADY,m_axi_pMemPort_BRESP[1:0],m_axi_pMemPort_BVALID,m_axi_pMemPort_BREADY,m_axi_pMemPort_ARADDR[31:0],m_axi_pMemPort_ARLEN[7:0],m_axi_pMemPort_ARSIZE[2:0],m_axi_pMemPort_ARBURST[1:0],m_axi_pMemPort_ARLOCK[1:0],m_axi_pMemPort_ARREGION[3:0],m_axi_pMemPort_ARCACHE[3:0],m_axi_pMemPort_ARPROT[2:0],m_axi_pMemPort_ARQOS[3:0],m_axi_pMemPort_ARVALID,m_axi_pMemPort_ARREADY,m_axi_pMemPort_RDATA[31:0],m_axi_pMemPort_RRESP[1:0],m_axi_pMemPort_RLAST,m_axi_pMemPort_RVALID,m_axi_pMemPort_RREADY,vstream_TVALID,vstream_TREADY,vstream_TDATA[23:0],vstream_TKEEP[2:0],vstream_TSTRB[2:0],vstream_TUSER[0:0],vstream_TLAST[0:0],vstream_TID[0:0],vstream_TDEST[0:0],indexw[31:0],indexr[31:0]" */;
  input [5:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  output [1:0]s_axi_AXILiteS_BRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  input [5:0]s_axi_AXILiteS_ARADDR;
  input s_axi_AXILiteS_ARVALID;
  output s_axi_AXILiteS_ARREADY;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [1:0]s_axi_AXILiteS_RRESP;
  output s_axi_AXILiteS_RVALID;
  input s_axi_AXILiteS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_pMemPort_AWADDR;
  output [7:0]m_axi_pMemPort_AWLEN;
  output [2:0]m_axi_pMemPort_AWSIZE;
  output [1:0]m_axi_pMemPort_AWBURST;
  output [1:0]m_axi_pMemPort_AWLOCK;
  output [3:0]m_axi_pMemPort_AWREGION;
  output [3:0]m_axi_pMemPort_AWCACHE;
  output [2:0]m_axi_pMemPort_AWPROT;
  output [3:0]m_axi_pMemPort_AWQOS;
  output m_axi_pMemPort_AWVALID;
  input m_axi_pMemPort_AWREADY;
  output [31:0]m_axi_pMemPort_WDATA;
  output [3:0]m_axi_pMemPort_WSTRB;
  output m_axi_pMemPort_WLAST;
  output m_axi_pMemPort_WVALID;
  input m_axi_pMemPort_WREADY;
  input [1:0]m_axi_pMemPort_BRESP;
  input m_axi_pMemPort_BVALID;
  output m_axi_pMemPort_BREADY;
  output [31:0]m_axi_pMemPort_ARADDR;
  output [7:0]m_axi_pMemPort_ARLEN;
  output [2:0]m_axi_pMemPort_ARSIZE;
  output [1:0]m_axi_pMemPort_ARBURST;
  output [1:0]m_axi_pMemPort_ARLOCK;
  output [3:0]m_axi_pMemPort_ARREGION;
  output [3:0]m_axi_pMemPort_ARCACHE;
  output [2:0]m_axi_pMemPort_ARPROT;
  output [3:0]m_axi_pMemPort_ARQOS;
  output m_axi_pMemPort_ARVALID;
  input m_axi_pMemPort_ARREADY;
  input [31:0]m_axi_pMemPort_RDATA;
  input [1:0]m_axi_pMemPort_RRESP;
  input m_axi_pMemPort_RLAST;
  input m_axi_pMemPort_RVALID;
  output m_axi_pMemPort_RREADY;
  output vstream_TVALID;
  input vstream_TREADY;
  output [23:0]vstream_TDATA;
  output [2:0]vstream_TKEEP;
  output [2:0]vstream_TSTRB;
  output [0:0]vstream_TUSER;
  output [0:0]vstream_TLAST;
  output [0:0]vstream_TID;
  output [0:0]vstream_TDEST;
  input [31:0]indexw;
  output [31:0]indexr;
endmodule
