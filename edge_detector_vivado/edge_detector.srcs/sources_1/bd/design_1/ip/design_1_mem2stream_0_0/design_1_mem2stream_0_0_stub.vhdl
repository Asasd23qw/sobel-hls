-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Fri Sep 21 16:34:22 2018
-- Host        : Mei-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/ax7020/2017/course_s3_hls/vivado/10_edge_detector/edge_detector.srcs/sources_1/bd/design_1/ip/design_1_mem2stream_0_0/design_1_mem2stream_0_0_stub.vhdl
-- Design      : design_1_mem2stream_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_mem2stream_0_0 is
  Port ( 
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_pMemPort_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_pMemPort_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_pMemPort_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_pMemPort_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_pMemPort_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_pMemPort_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_pMemPort_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_pMemPort_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_pMemPort_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_pMemPort_AWVALID : out STD_LOGIC;
    m_axi_pMemPort_AWREADY : in STD_LOGIC;
    m_axi_pMemPort_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_pMemPort_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_pMemPort_WLAST : out STD_LOGIC;
    m_axi_pMemPort_WVALID : out STD_LOGIC;
    m_axi_pMemPort_WREADY : in STD_LOGIC;
    m_axi_pMemPort_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_pMemPort_BVALID : in STD_LOGIC;
    m_axi_pMemPort_BREADY : out STD_LOGIC;
    m_axi_pMemPort_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_pMemPort_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_pMemPort_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_pMemPort_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_pMemPort_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_pMemPort_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_pMemPort_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_pMemPort_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_pMemPort_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_pMemPort_ARVALID : out STD_LOGIC;
    m_axi_pMemPort_ARREADY : in STD_LOGIC;
    m_axi_pMemPort_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_pMemPort_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_pMemPort_RLAST : in STD_LOGIC;
    m_axi_pMemPort_RVALID : in STD_LOGIC;
    m_axi_pMemPort_RREADY : out STD_LOGIC;
    vstream_TVALID : out STD_LOGIC;
    vstream_TREADY : in STD_LOGIC;
    vstream_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    vstream_TKEEP : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vstream_TSTRB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    vstream_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    vstream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    vstream_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    vstream_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    indexw : in STD_LOGIC_VECTOR ( 31 downto 0 );
    indexr : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_mem2stream_0_0;

architecture stub of design_1_mem2stream_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_AXILiteS_AWADDR[5:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[5:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_pMemPort_AWADDR[31:0],m_axi_pMemPort_AWLEN[7:0],m_axi_pMemPort_AWSIZE[2:0],m_axi_pMemPort_AWBURST[1:0],m_axi_pMemPort_AWLOCK[1:0],m_axi_pMemPort_AWREGION[3:0],m_axi_pMemPort_AWCACHE[3:0],m_axi_pMemPort_AWPROT[2:0],m_axi_pMemPort_AWQOS[3:0],m_axi_pMemPort_AWVALID,m_axi_pMemPort_AWREADY,m_axi_pMemPort_WDATA[31:0],m_axi_pMemPort_WSTRB[3:0],m_axi_pMemPort_WLAST,m_axi_pMemPort_WVALID,m_axi_pMemPort_WREADY,m_axi_pMemPort_BRESP[1:0],m_axi_pMemPort_BVALID,m_axi_pMemPort_BREADY,m_axi_pMemPort_ARADDR[31:0],m_axi_pMemPort_ARLEN[7:0],m_axi_pMemPort_ARSIZE[2:0],m_axi_pMemPort_ARBURST[1:0],m_axi_pMemPort_ARLOCK[1:0],m_axi_pMemPort_ARREGION[3:0],m_axi_pMemPort_ARCACHE[3:0],m_axi_pMemPort_ARPROT[2:0],m_axi_pMemPort_ARQOS[3:0],m_axi_pMemPort_ARVALID,m_axi_pMemPort_ARREADY,m_axi_pMemPort_RDATA[31:0],m_axi_pMemPort_RRESP[1:0],m_axi_pMemPort_RLAST,m_axi_pMemPort_RVALID,m_axi_pMemPort_RREADY,vstream_TVALID,vstream_TREADY,vstream_TDATA[23:0],vstream_TKEEP[2:0],vstream_TSTRB[2:0],vstream_TUSER[0:0],vstream_TLAST[0:0],vstream_TID[0:0],vstream_TDEST[0:0],indexw[31:0],indexr[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mem2stream,Vivado 2017.4";
begin
end;
