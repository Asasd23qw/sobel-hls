// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:stream2mem:1.0
// IP Revision: 1807061444

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_stream2mem_0_0 (
  s_axi_AXILiteS_AWADDR,
  s_axi_AXILiteS_AWVALID,
  s_axi_AXILiteS_AWREADY,
  s_axi_AXILiteS_WDATA,
  s_axi_AXILiteS_WSTRB,
  s_axi_AXILiteS_WVALID,
  s_axi_AXILiteS_WREADY,
  s_axi_AXILiteS_BRESP,
  s_axi_AXILiteS_BVALID,
  s_axi_AXILiteS_BREADY,
  s_axi_AXILiteS_ARADDR,
  s_axi_AXILiteS_ARVALID,
  s_axi_AXILiteS_ARREADY,
  s_axi_AXILiteS_RDATA,
  s_axi_AXILiteS_RRESP,
  s_axi_AXILiteS_RVALID,
  s_axi_AXILiteS_RREADY,
  ap_clk,
  ap_rst_n,
  m_axi_pMemPort_AWADDR,
  m_axi_pMemPort_AWLEN,
  m_axi_pMemPort_AWSIZE,
  m_axi_pMemPort_AWBURST,
  m_axi_pMemPort_AWLOCK,
  m_axi_pMemPort_AWREGION,
  m_axi_pMemPort_AWCACHE,
  m_axi_pMemPort_AWPROT,
  m_axi_pMemPort_AWQOS,
  m_axi_pMemPort_AWVALID,
  m_axi_pMemPort_AWREADY,
  m_axi_pMemPort_WDATA,
  m_axi_pMemPort_WSTRB,
  m_axi_pMemPort_WLAST,
  m_axi_pMemPort_WVALID,
  m_axi_pMemPort_WREADY,
  m_axi_pMemPort_BRESP,
  m_axi_pMemPort_BVALID,
  m_axi_pMemPort_BREADY,
  m_axi_pMemPort_ARADDR,
  m_axi_pMemPort_ARLEN,
  m_axi_pMemPort_ARSIZE,
  m_axi_pMemPort_ARBURST,
  m_axi_pMemPort_ARLOCK,
  m_axi_pMemPort_ARREGION,
  m_axi_pMemPort_ARCACHE,
  m_axi_pMemPort_ARPROT,
  m_axi_pMemPort_ARQOS,
  m_axi_pMemPort_ARVALID,
  m_axi_pMemPort_ARREADY,
  m_axi_pMemPort_RDATA,
  m_axi_pMemPort_RRESP,
  m_axi_pMemPort_RLAST,
  m_axi_pMemPort_RVALID,
  m_axi_pMemPort_RREADY,
  vstream_TVALID,
  vstream_TREADY,
  vstream_TDATA,
  vstream_TKEEP,
  vstream_TSTRB,
  vstream_TUSER,
  vstream_TLAST,
  vstream_TID,
  vstream_TDEST,
  indexw,
  indexr
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR" *)
input wire [5 : 0] s_axi_AXILiteS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID" *)
input wire s_axi_AXILiteS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY" *)
output wire s_axi_AXILiteS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA" *)
input wire [31 : 0] s_axi_AXILiteS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB" *)
input wire [3 : 0] s_axi_AXILiteS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID" *)
input wire s_axi_AXILiteS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY" *)
output wire s_axi_AXILiteS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP" *)
output wire [1 : 0] s_axi_AXILiteS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID" *)
output wire s_axi_AXILiteS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY" *)
input wire s_axi_AXILiteS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR" *)
input wire [5 : 0] s_axi_AXILiteS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID" *)
input wire s_axi_AXILiteS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY" *)
output wire s_axi_AXILiteS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA" *)
output wire [31 : 0] s_axi_AXILiteS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP" *)
output wire [1 : 0] s_axi_AXILiteS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID" *)
output wire s_axi_AXILiteS_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_AXILiteS, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 142857132, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY" *)
input wire s_axi_AXILiteS_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AXILiteS:m_axi_pMemPort:vstream, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 142857132, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort AWADDR" *)
output wire [31 : 0] m_axi_pMemPort_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort AWLEN" *)
output wire [7 : 0] m_axi_pMemPort_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort AWSIZE" *)
output wire [2 : 0] m_axi_pMemPort_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort AWBURST" *)
output wire [1 : 0] m_axi_pMemPort_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort AWLOCK" *)
output wire [1 : 0] m_axi_pMemPort_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort AWREGION" *)
output wire [3 : 0] m_axi_pMemPort_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort AWCACHE" *)
output wire [3 : 0] m_axi_pMemPort_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort AWPROT" *)
output wire [2 : 0] m_axi_pMemPort_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort AWQOS" *)
output wire [3 : 0] m_axi_pMemPort_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort AWVALID" *)
output wire m_axi_pMemPort_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort AWREADY" *)
input wire m_axi_pMemPort_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort WDATA" *)
output wire [31 : 0] m_axi_pMemPort_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort WSTRB" *)
output wire [3 : 0] m_axi_pMemPort_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort WLAST" *)
output wire m_axi_pMemPort_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort WVALID" *)
output wire m_axi_pMemPort_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort WREADY" *)
input wire m_axi_pMemPort_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort BRESP" *)
input wire [1 : 0] m_axi_pMemPort_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort BVALID" *)
input wire m_axi_pMemPort_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort BREADY" *)
output wire m_axi_pMemPort_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort ARADDR" *)
output wire [31 : 0] m_axi_pMemPort_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort ARLEN" *)
output wire [7 : 0] m_axi_pMemPort_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort ARSIZE" *)
output wire [2 : 0] m_axi_pMemPort_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort ARBURST" *)
output wire [1 : 0] m_axi_pMemPort_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort ARLOCK" *)
output wire [1 : 0] m_axi_pMemPort_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort ARREGION" *)
output wire [3 : 0] m_axi_pMemPort_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort ARCACHE" *)
output wire [3 : 0] m_axi_pMemPort_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort ARPROT" *)
output wire [2 : 0] m_axi_pMemPort_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort ARQOS" *)
output wire [3 : 0] m_axi_pMemPort_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort ARVALID" *)
output wire m_axi_pMemPort_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort ARREADY" *)
input wire m_axi_pMemPort_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort RDATA" *)
input wire [31 : 0] m_axi_pMemPort_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort RRESP" *)
input wire [1 : 0] m_axi_pMemPort_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort RLAST" *)
input wire m_axi_pMemPort_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort RVALID" *)
input wire m_axi_pMemPort_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_pMemPort, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 142857132, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_pMemPort RREADY" *)
output wire m_axi_pMemPort_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vstream TVALID" *)
input wire vstream_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vstream TREADY" *)
output wire vstream_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vstream TDATA" *)
input wire [23 : 0] vstream_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vstream TKEEP" *)
input wire [2 : 0] vstream_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vstream TSTRB" *)
input wire [2 : 0] vstream_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vstream TUSER" *)
input wire [0 : 0] vstream_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vstream TLAST" *)
input wire [0 : 0] vstream_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vstream TID" *)
input wire [0 : 0] vstream_TID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vstream, TDATA_NUM_BYTES 3, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 24 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 142857132, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vstream TDEST" *)
input wire [0 : 0] vstream_TDEST;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME indexw, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 indexw DATA" *)
output wire [31 : 0] indexw;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME indexr, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 indexr DATA" *)
input wire [31 : 0] indexr;

  stream2mem #(
    .C_S_AXI_AXILITES_ADDR_WIDTH(6),
    .C_S_AXI_AXILITES_DATA_WIDTH(32),
    .C_M_AXI_PMEMPORT_ID_WIDTH(1),
    .C_M_AXI_PMEMPORT_ADDR_WIDTH(32),
    .C_M_AXI_PMEMPORT_DATA_WIDTH(32),
    .C_M_AXI_PMEMPORT_AWUSER_WIDTH(1),
    .C_M_AXI_PMEMPORT_ARUSER_WIDTH(1),
    .C_M_AXI_PMEMPORT_WUSER_WIDTH(1),
    .C_M_AXI_PMEMPORT_RUSER_WIDTH(1),
    .C_M_AXI_PMEMPORT_BUSER_WIDTH(1),
    .C_M_AXI_PMEMPORT_USER_VALUE('H00000000),
    .C_M_AXI_PMEMPORT_PROT_VALUE('B000),
    .C_M_AXI_PMEMPORT_CACHE_VALUE('B0011),
    .C_M_AXI_PMEMPORT_TARGET_ADDR('H00000000)
  ) inst (
    .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
    .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
    .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_AWREADY),
    .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
    .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
    .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID),
    .s_axi_AXILiteS_WREADY(s_axi_AXILiteS_WREADY),
    .s_axi_AXILiteS_BRESP(s_axi_AXILiteS_BRESP),
    .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
    .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
    .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
    .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
    .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_ARREADY),
    .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
    .s_axi_AXILiteS_RRESP(s_axi_AXILiteS_RRESP),
    .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
    .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_pMemPort_AWID(),
    .m_axi_pMemPort_AWADDR(m_axi_pMemPort_AWADDR),
    .m_axi_pMemPort_AWLEN(m_axi_pMemPort_AWLEN),
    .m_axi_pMemPort_AWSIZE(m_axi_pMemPort_AWSIZE),
    .m_axi_pMemPort_AWBURST(m_axi_pMemPort_AWBURST),
    .m_axi_pMemPort_AWLOCK(m_axi_pMemPort_AWLOCK),
    .m_axi_pMemPort_AWREGION(m_axi_pMemPort_AWREGION),
    .m_axi_pMemPort_AWCACHE(m_axi_pMemPort_AWCACHE),
    .m_axi_pMemPort_AWPROT(m_axi_pMemPort_AWPROT),
    .m_axi_pMemPort_AWQOS(m_axi_pMemPort_AWQOS),
    .m_axi_pMemPort_AWUSER(),
    .m_axi_pMemPort_AWVALID(m_axi_pMemPort_AWVALID),
    .m_axi_pMemPort_AWREADY(m_axi_pMemPort_AWREADY),
    .m_axi_pMemPort_WID(),
    .m_axi_pMemPort_WDATA(m_axi_pMemPort_WDATA),
    .m_axi_pMemPort_WSTRB(m_axi_pMemPort_WSTRB),
    .m_axi_pMemPort_WLAST(m_axi_pMemPort_WLAST),
    .m_axi_pMemPort_WUSER(),
    .m_axi_pMemPort_WVALID(m_axi_pMemPort_WVALID),
    .m_axi_pMemPort_WREADY(m_axi_pMemPort_WREADY),
    .m_axi_pMemPort_BID(1'B0),
    .m_axi_pMemPort_BRESP(m_axi_pMemPort_BRESP),
    .m_axi_pMemPort_BUSER(1'B0),
    .m_axi_pMemPort_BVALID(m_axi_pMemPort_BVALID),
    .m_axi_pMemPort_BREADY(m_axi_pMemPort_BREADY),
    .m_axi_pMemPort_ARID(),
    .m_axi_pMemPort_ARADDR(m_axi_pMemPort_ARADDR),
    .m_axi_pMemPort_ARLEN(m_axi_pMemPort_ARLEN),
    .m_axi_pMemPort_ARSIZE(m_axi_pMemPort_ARSIZE),
    .m_axi_pMemPort_ARBURST(m_axi_pMemPort_ARBURST),
    .m_axi_pMemPort_ARLOCK(m_axi_pMemPort_ARLOCK),
    .m_axi_pMemPort_ARREGION(m_axi_pMemPort_ARREGION),
    .m_axi_pMemPort_ARCACHE(m_axi_pMemPort_ARCACHE),
    .m_axi_pMemPort_ARPROT(m_axi_pMemPort_ARPROT),
    .m_axi_pMemPort_ARQOS(m_axi_pMemPort_ARQOS),
    .m_axi_pMemPort_ARUSER(),
    .m_axi_pMemPort_ARVALID(m_axi_pMemPort_ARVALID),
    .m_axi_pMemPort_ARREADY(m_axi_pMemPort_ARREADY),
    .m_axi_pMemPort_RID(1'B0),
    .m_axi_pMemPort_RDATA(m_axi_pMemPort_RDATA),
    .m_axi_pMemPort_RRESP(m_axi_pMemPort_RRESP),
    .m_axi_pMemPort_RLAST(m_axi_pMemPort_RLAST),
    .m_axi_pMemPort_RUSER(1'B0),
    .m_axi_pMemPort_RVALID(m_axi_pMemPort_RVALID),
    .m_axi_pMemPort_RREADY(m_axi_pMemPort_RREADY),
    .vstream_TVALID(vstream_TVALID),
    .vstream_TREADY(vstream_TREADY),
    .vstream_TDATA(vstream_TDATA),
    .vstream_TKEEP(vstream_TKEEP),
    .vstream_TSTRB(vstream_TSTRB),
    .vstream_TUSER(vstream_TUSER),
    .vstream_TLAST(vstream_TLAST),
    .vstream_TID(vstream_TID),
    .vstream_TDEST(vstream_TDEST),
    .indexw(indexw),
    .indexr(indexr)
  );
endmodule
