// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="stream2mem,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z035ffg676-2,HLS_INPUT_CLOCK=6.666600,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=5.833275,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=6,HLS_SYN_DSP=4,HLS_SYN_FF=1958,HLS_SYN_LUT=3435}" *)

module stream2mem (
        s_axi_AXILiteS_AWVALID,
        s_axi_AXILiteS_AWREADY,
        s_axi_AXILiteS_AWADDR,
        s_axi_AXILiteS_WVALID,
        s_axi_AXILiteS_WREADY,
        s_axi_AXILiteS_WDATA,
        s_axi_AXILiteS_WSTRB,
        s_axi_AXILiteS_ARVALID,
        s_axi_AXILiteS_ARREADY,
        s_axi_AXILiteS_ARADDR,
        s_axi_AXILiteS_RVALID,
        s_axi_AXILiteS_RREADY,
        s_axi_AXILiteS_RDATA,
        s_axi_AXILiteS_RRESP,
        s_axi_AXILiteS_BVALID,
        s_axi_AXILiteS_BREADY,
        s_axi_AXILiteS_BRESP,
        ap_clk,
        ap_rst_n,
        m_axi_pMemPort_AWVALID,
        m_axi_pMemPort_AWREADY,
        m_axi_pMemPort_AWADDR,
        m_axi_pMemPort_AWID,
        m_axi_pMemPort_AWLEN,
        m_axi_pMemPort_AWSIZE,
        m_axi_pMemPort_AWBURST,
        m_axi_pMemPort_AWLOCK,
        m_axi_pMemPort_AWCACHE,
        m_axi_pMemPort_AWPROT,
        m_axi_pMemPort_AWQOS,
        m_axi_pMemPort_AWREGION,
        m_axi_pMemPort_AWUSER,
        m_axi_pMemPort_WVALID,
        m_axi_pMemPort_WREADY,
        m_axi_pMemPort_WDATA,
        m_axi_pMemPort_WSTRB,
        m_axi_pMemPort_WLAST,
        m_axi_pMemPort_WID,
        m_axi_pMemPort_WUSER,
        m_axi_pMemPort_ARVALID,
        m_axi_pMemPort_ARREADY,
        m_axi_pMemPort_ARADDR,
        m_axi_pMemPort_ARID,
        m_axi_pMemPort_ARLEN,
        m_axi_pMemPort_ARSIZE,
        m_axi_pMemPort_ARBURST,
        m_axi_pMemPort_ARLOCK,
        m_axi_pMemPort_ARCACHE,
        m_axi_pMemPort_ARPROT,
        m_axi_pMemPort_ARQOS,
        m_axi_pMemPort_ARREGION,
        m_axi_pMemPort_ARUSER,
        m_axi_pMemPort_RVALID,
        m_axi_pMemPort_RREADY,
        m_axi_pMemPort_RDATA,
        m_axi_pMemPort_RLAST,
        m_axi_pMemPort_RID,
        m_axi_pMemPort_RUSER,
        m_axi_pMemPort_RRESP,
        m_axi_pMemPort_BVALID,
        m_axi_pMemPort_BREADY,
        m_axi_pMemPort_BRESP,
        m_axi_pMemPort_BID,
        m_axi_pMemPort_BUSER,
        vstream_TDATA,
        vstream_TKEEP,
        vstream_TSTRB,
        vstream_TUSER,
        vstream_TLAST,
        vstream_TID,
        vstream_TDEST,
        indexw,
        indexr,
        vstream_TVALID,
        vstream_TREADY
);

parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_S_AXI_ADDR_WIDTH = 32;
parameter    C_M_AXI_PMEMPORT_ID_WIDTH = 1;
parameter    C_M_AXI_PMEMPORT_ADDR_WIDTH = 32;
parameter    C_M_AXI_PMEMPORT_DATA_WIDTH = 32;
parameter    C_M_AXI_PMEMPORT_AWUSER_WIDTH = 1;
parameter    C_M_AXI_PMEMPORT_ARUSER_WIDTH = 1;
parameter    C_M_AXI_PMEMPORT_WUSER_WIDTH = 1;
parameter    C_M_AXI_PMEMPORT_RUSER_WIDTH = 1;
parameter    C_M_AXI_PMEMPORT_BUSER_WIDTH = 1;
parameter    C_M_AXI_PMEMPORT_TARGET_ADDR = 0;
parameter    C_M_AXI_PMEMPORT_USER_VALUE = 0;
parameter    C_M_AXI_PMEMPORT_PROT_VALUE = 0;
parameter    C_M_AXI_PMEMPORT_CACHE_VALUE = 3;
parameter    C_M_AXI_ID_WIDTH = 1;
parameter    C_M_AXI_ADDR_WIDTH = 32;
parameter    C_M_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_AWUSER_WIDTH = 1;
parameter    C_M_AXI_ARUSER_WIDTH = 1;
parameter    C_M_AXI_WUSER_WIDTH = 1;
parameter    C_M_AXI_RUSER_WIDTH = 1;
parameter    C_M_AXI_BUSER_WIDTH = 1;

parameter C_S_AXI_AXILITES_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_PMEMPORT_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   s_axi_AXILiteS_AWVALID;
output   s_axi_AXILiteS_AWREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_AWADDR;
input   s_axi_AXILiteS_WVALID;
output   s_axi_AXILiteS_WREADY;
input  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_WDATA;
input  [C_S_AXI_AXILITES_WSTRB_WIDTH - 1:0] s_axi_AXILiteS_WSTRB;
input   s_axi_AXILiteS_ARVALID;
output   s_axi_AXILiteS_ARREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_ARADDR;
output   s_axi_AXILiteS_RVALID;
input   s_axi_AXILiteS_RREADY;
output  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_RDATA;
output  [1:0] s_axi_AXILiteS_RRESP;
output   s_axi_AXILiteS_BVALID;
input   s_axi_AXILiteS_BREADY;
output  [1:0] s_axi_AXILiteS_BRESP;
input   ap_clk;
input   ap_rst_n;
output   m_axi_pMemPort_AWVALID;
input   m_axi_pMemPort_AWREADY;
output  [C_M_AXI_PMEMPORT_ADDR_WIDTH - 1:0] m_axi_pMemPort_AWADDR;
output  [C_M_AXI_PMEMPORT_ID_WIDTH - 1:0] m_axi_pMemPort_AWID;
output  [7:0] m_axi_pMemPort_AWLEN;
output  [2:0] m_axi_pMemPort_AWSIZE;
output  [1:0] m_axi_pMemPort_AWBURST;
output  [1:0] m_axi_pMemPort_AWLOCK;
output  [3:0] m_axi_pMemPort_AWCACHE;
output  [2:0] m_axi_pMemPort_AWPROT;
output  [3:0] m_axi_pMemPort_AWQOS;
output  [3:0] m_axi_pMemPort_AWREGION;
output  [C_M_AXI_PMEMPORT_AWUSER_WIDTH - 1:0] m_axi_pMemPort_AWUSER;
output   m_axi_pMemPort_WVALID;
input   m_axi_pMemPort_WREADY;
output  [C_M_AXI_PMEMPORT_DATA_WIDTH - 1:0] m_axi_pMemPort_WDATA;
output  [C_M_AXI_PMEMPORT_WSTRB_WIDTH - 1:0] m_axi_pMemPort_WSTRB;
output   m_axi_pMemPort_WLAST;
output  [C_M_AXI_PMEMPORT_ID_WIDTH - 1:0] m_axi_pMemPort_WID;
output  [C_M_AXI_PMEMPORT_WUSER_WIDTH - 1:0] m_axi_pMemPort_WUSER;
output   m_axi_pMemPort_ARVALID;
input   m_axi_pMemPort_ARREADY;
output  [C_M_AXI_PMEMPORT_ADDR_WIDTH - 1:0] m_axi_pMemPort_ARADDR;
output  [C_M_AXI_PMEMPORT_ID_WIDTH - 1:0] m_axi_pMemPort_ARID;
output  [7:0] m_axi_pMemPort_ARLEN;
output  [2:0] m_axi_pMemPort_ARSIZE;
output  [1:0] m_axi_pMemPort_ARBURST;
output  [1:0] m_axi_pMemPort_ARLOCK;
output  [3:0] m_axi_pMemPort_ARCACHE;
output  [2:0] m_axi_pMemPort_ARPROT;
output  [3:0] m_axi_pMemPort_ARQOS;
output  [3:0] m_axi_pMemPort_ARREGION;
output  [C_M_AXI_PMEMPORT_ARUSER_WIDTH - 1:0] m_axi_pMemPort_ARUSER;
input   m_axi_pMemPort_RVALID;
output   m_axi_pMemPort_RREADY;
input  [C_M_AXI_PMEMPORT_DATA_WIDTH - 1:0] m_axi_pMemPort_RDATA;
input   m_axi_pMemPort_RLAST;
input  [C_M_AXI_PMEMPORT_ID_WIDTH - 1:0] m_axi_pMemPort_RID;
input  [C_M_AXI_PMEMPORT_RUSER_WIDTH - 1:0] m_axi_pMemPort_RUSER;
input  [1:0] m_axi_pMemPort_RRESP;
input   m_axi_pMemPort_BVALID;
output   m_axi_pMemPort_BREADY;
input  [1:0] m_axi_pMemPort_BRESP;
input  [C_M_AXI_PMEMPORT_ID_WIDTH - 1:0] m_axi_pMemPort_BID;
input  [C_M_AXI_PMEMPORT_BUSER_WIDTH - 1:0] m_axi_pMemPort_BUSER;
input  [23:0] vstream_TDATA;
input  [2:0] vstream_TKEEP;
input  [2:0] vstream_TSTRB;
input  [0:0] vstream_TUSER;
input  [0:0] vstream_TLAST;
input  [0:0] vstream_TID;
input  [0:0] vstream_TDEST;
output  [31:0] indexw;
input  [31:0] indexr;
input   vstream_TVALID;
output   vstream_TREADY;

reg    ap_rst_n_inv;
wire   [31:0] rows;
wire   [31:0] cols;
wire   [31:0] baseAddr_q0;
wire    pMemPort_AWREADY;
wire    pMemPort_WREADY;
wire    pMemPort_ARREADY;
wire    pMemPort_RVALID;
wire   [31:0] pMemPort_RDATA;
wire    pMemPort_RLAST;
wire   [0:0] pMemPort_RID;
wire   [0:0] pMemPort_RUSER;
wire   [1:0] pMemPort_RRESP;
wire    pMemPort_BVALID;
wire   [1:0] pMemPort_BRESP;
wire   [0:0] pMemPort_BID;
wire   [0:0] pMemPort_BUSER;
wire    Block_Mat_exit3_proc_U0_ap_start;
wire    Block_Mat_exit3_proc_U0_ap_done;
wire    Block_Mat_exit3_proc_U0_ap_continue;
wire    Block_Mat_exit3_proc_U0_ap_idle;
wire    Block_Mat_exit3_proc_U0_ap_ready;
wire   [31:0] Block_Mat_exit3_proc_U0_img_rows_V_out_din;
wire    Block_Mat_exit3_proc_U0_img_rows_V_out_write;
wire   [31:0] Block_Mat_exit3_proc_U0_img_cols_V_out_din;
wire    Block_Mat_exit3_proc_U0_img_cols_V_out_write;
wire   [31:0] Block_Mat_exit3_proc_U0_indexr_out_din;
wire    Block_Mat_exit3_proc_U0_indexr_out_write;
wire    AXIvideo2Mat_U0_ap_start;
wire    AXIvideo2Mat_U0_ap_done;
wire    AXIvideo2Mat_U0_ap_continue;
wire    AXIvideo2Mat_U0_ap_idle;
wire    AXIvideo2Mat_U0_ap_ready;
wire    AXIvideo2Mat_U0_vstream_TREADY;
wire    AXIvideo2Mat_U0_img_rows_V_read;
wire    AXIvideo2Mat_U0_img_cols_V_read;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_0_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_0_V_write;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_1_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_1_V_write;
wire   [7:0] AXIvideo2Mat_U0_img_data_stream_2_V_din;
wire    AXIvideo2Mat_U0_img_data_stream_2_V_write;
wire   [31:0] AXIvideo2Mat_U0_img_rows_V_out_din;
wire    AXIvideo2Mat_U0_img_rows_V_out_write;
wire   [31:0] AXIvideo2Mat_U0_img_cols_V_out_din;
wire    AXIvideo2Mat_U0_img_cols_V_out_write;
wire    mat2mem_U0_ap_start;
wire    mat2mem_U0_ap_done;
wire    mat2mem_U0_ap_continue;
wire    mat2mem_U0_ap_idle;
wire    mat2mem_U0_ap_ready;
wire    mat2mem_U0_img_rows_V_read;
wire    mat2mem_U0_img_cols_V_read;
wire    mat2mem_U0_img_data_stream_0_V_read;
wire    mat2mem_U0_img_data_stream_1_V_read;
wire    mat2mem_U0_img_data_stream_2_V_read;
wire    mat2mem_U0_m_axi_pMemPort_AWVALID;
wire   [31:0] mat2mem_U0_m_axi_pMemPort_AWADDR;
wire   [0:0] mat2mem_U0_m_axi_pMemPort_AWID;
wire   [31:0] mat2mem_U0_m_axi_pMemPort_AWLEN;
wire   [2:0] mat2mem_U0_m_axi_pMemPort_AWSIZE;
wire   [1:0] mat2mem_U0_m_axi_pMemPort_AWBURST;
wire   [1:0] mat2mem_U0_m_axi_pMemPort_AWLOCK;
wire   [3:0] mat2mem_U0_m_axi_pMemPort_AWCACHE;
wire   [2:0] mat2mem_U0_m_axi_pMemPort_AWPROT;
wire   [3:0] mat2mem_U0_m_axi_pMemPort_AWQOS;
wire   [3:0] mat2mem_U0_m_axi_pMemPort_AWREGION;
wire   [0:0] mat2mem_U0_m_axi_pMemPort_AWUSER;
wire    mat2mem_U0_m_axi_pMemPort_WVALID;
wire   [31:0] mat2mem_U0_m_axi_pMemPort_WDATA;
wire   [3:0] mat2mem_U0_m_axi_pMemPort_WSTRB;
wire    mat2mem_U0_m_axi_pMemPort_WLAST;
wire   [0:0] mat2mem_U0_m_axi_pMemPort_WID;
wire   [0:0] mat2mem_U0_m_axi_pMemPort_WUSER;
wire    mat2mem_U0_m_axi_pMemPort_ARVALID;
wire   [31:0] mat2mem_U0_m_axi_pMemPort_ARADDR;
wire   [0:0] mat2mem_U0_m_axi_pMemPort_ARID;
wire   [31:0] mat2mem_U0_m_axi_pMemPort_ARLEN;
wire   [2:0] mat2mem_U0_m_axi_pMemPort_ARSIZE;
wire   [1:0] mat2mem_U0_m_axi_pMemPort_ARBURST;
wire   [1:0] mat2mem_U0_m_axi_pMemPort_ARLOCK;
wire   [3:0] mat2mem_U0_m_axi_pMemPort_ARCACHE;
wire   [2:0] mat2mem_U0_m_axi_pMemPort_ARPROT;
wire   [3:0] mat2mem_U0_m_axi_pMemPort_ARQOS;
wire   [3:0] mat2mem_U0_m_axi_pMemPort_ARREGION;
wire   [0:0] mat2mem_U0_m_axi_pMemPort_ARUSER;
wire    mat2mem_U0_m_axi_pMemPort_RREADY;
wire    mat2mem_U0_m_axi_pMemPort_BREADY;
wire   [31:0] mat2mem_U0_w;
wire    mat2mem_U0_w_ap_vld;
wire    mat2mem_U0_r_read;
wire   [1:0] mat2mem_U0_baseAddr_address0;
wire    mat2mem_U0_baseAddr_ce0;
wire    ap_sync_continue;
wire    img_rows_V_c_full_n;
wire   [31:0] img_rows_V_c_dout;
wire    img_rows_V_c_empty_n;
wire    img_cols_V_c_full_n;
wire   [31:0] img_cols_V_c_dout;
wire    img_cols_V_c_empty_n;
wire    indexr_c_full_n;
wire   [31:0] indexr_c_dout;
wire    indexr_c_empty_n;
wire    img_data_stream_0_V_full_n;
wire   [7:0] img_data_stream_0_V_dout;
wire    img_data_stream_0_V_empty_n;
wire    img_data_stream_1_V_full_n;
wire   [7:0] img_data_stream_1_V_dout;
wire    img_data_stream_1_V_empty_n;
wire    img_data_stream_2_V_full_n;
wire   [7:0] img_data_stream_2_V_dout;
wire    img_data_stream_2_V_empty_n;
wire    img_rows_V_c9_full_n;
wire   [31:0] img_rows_V_c9_dout;
wire    img_rows_V_c9_empty_n;
wire    img_cols_V_c10_full_n;
wire   [31:0] img_cols_V_c10_dout;
wire    img_cols_V_c10_empty_n;
wire    Block_Mat_exit3_proc_U0_start_full_n;
wire    Block_Mat_exit3_proc_U0_start_write;
wire    AXIvideo2Mat_U0_start_full_n;
wire    AXIvideo2Mat_U0_start_write;
wire    mat2mem_U0_start_full_n;
wire    mat2mem_U0_start_write;

stream2mem_AXILiteS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
stream2mem_AXILiteS_s_axi_U(
    .AWVALID(s_axi_AXILiteS_AWVALID),
    .AWREADY(s_axi_AXILiteS_AWREADY),
    .AWADDR(s_axi_AXILiteS_AWADDR),
    .WVALID(s_axi_AXILiteS_WVALID),
    .WREADY(s_axi_AXILiteS_WREADY),
    .WDATA(s_axi_AXILiteS_WDATA),
    .WSTRB(s_axi_AXILiteS_WSTRB),
    .ARVALID(s_axi_AXILiteS_ARVALID),
    .ARREADY(s_axi_AXILiteS_ARREADY),
    .ARADDR(s_axi_AXILiteS_ARADDR),
    .RVALID(s_axi_AXILiteS_RVALID),
    .RREADY(s_axi_AXILiteS_RREADY),
    .RDATA(s_axi_AXILiteS_RDATA),
    .RRESP(s_axi_AXILiteS_RRESP),
    .BVALID(s_axi_AXILiteS_BVALID),
    .BREADY(s_axi_AXILiteS_BREADY),
    .BRESP(s_axi_AXILiteS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .rows(rows),
    .cols(cols),
    .baseAddr_address0(mat2mem_U0_baseAddr_address0),
    .baseAddr_ce0(mat2mem_U0_baseAddr_ce0),
    .baseAddr_q0(baseAddr_q0)
);

stream2mem_pMemPort_m_axi #(
    .USER_DW( 32 ),
    .USER_AW( 32 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_PMEMPORT_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_PMEMPORT_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_PMEMPORT_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_PMEMPORT_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_PMEMPORT_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_PMEMPORT_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_PMEMPORT_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_PMEMPORT_BUSER_WIDTH ),
    .C_TARGET_ADDR( C_M_AXI_PMEMPORT_TARGET_ADDR ),
    .C_USER_VALUE( C_M_AXI_PMEMPORT_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_PMEMPORT_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_PMEMPORT_CACHE_VALUE ))
stream2mem_pMemPort_m_axi_U(
    .AWVALID(m_axi_pMemPort_AWVALID),
    .AWREADY(m_axi_pMemPort_AWREADY),
    .AWADDR(m_axi_pMemPort_AWADDR),
    .AWID(m_axi_pMemPort_AWID),
    .AWLEN(m_axi_pMemPort_AWLEN),
    .AWSIZE(m_axi_pMemPort_AWSIZE),
    .AWBURST(m_axi_pMemPort_AWBURST),
    .AWLOCK(m_axi_pMemPort_AWLOCK),
    .AWCACHE(m_axi_pMemPort_AWCACHE),
    .AWPROT(m_axi_pMemPort_AWPROT),
    .AWQOS(m_axi_pMemPort_AWQOS),
    .AWREGION(m_axi_pMemPort_AWREGION),
    .AWUSER(m_axi_pMemPort_AWUSER),
    .WVALID(m_axi_pMemPort_WVALID),
    .WREADY(m_axi_pMemPort_WREADY),
    .WDATA(m_axi_pMemPort_WDATA),
    .WSTRB(m_axi_pMemPort_WSTRB),
    .WLAST(m_axi_pMemPort_WLAST),
    .WID(m_axi_pMemPort_WID),
    .WUSER(m_axi_pMemPort_WUSER),
    .ARVALID(m_axi_pMemPort_ARVALID),
    .ARREADY(m_axi_pMemPort_ARREADY),
    .ARADDR(m_axi_pMemPort_ARADDR),
    .ARID(m_axi_pMemPort_ARID),
    .ARLEN(m_axi_pMemPort_ARLEN),
    .ARSIZE(m_axi_pMemPort_ARSIZE),
    .ARBURST(m_axi_pMemPort_ARBURST),
    .ARLOCK(m_axi_pMemPort_ARLOCK),
    .ARCACHE(m_axi_pMemPort_ARCACHE),
    .ARPROT(m_axi_pMemPort_ARPROT),
    .ARQOS(m_axi_pMemPort_ARQOS),
    .ARREGION(m_axi_pMemPort_ARREGION),
    .ARUSER(m_axi_pMemPort_ARUSER),
    .RVALID(m_axi_pMemPort_RVALID),
    .RREADY(m_axi_pMemPort_RREADY),
    .RDATA(m_axi_pMemPort_RDATA),
    .RLAST(m_axi_pMemPort_RLAST),
    .RID(m_axi_pMemPort_RID),
    .RUSER(m_axi_pMemPort_RUSER),
    .RRESP(m_axi_pMemPort_RRESP),
    .BVALID(m_axi_pMemPort_BVALID),
    .BREADY(m_axi_pMemPort_BREADY),
    .BRESP(m_axi_pMemPort_BRESP),
    .BID(m_axi_pMemPort_BID),
    .BUSER(m_axi_pMemPort_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(1'b0),
    .I_ARREADY(pMemPort_ARREADY),
    .I_ARADDR(32'd0),
    .I_ARID(1'd0),
    .I_ARLEN(32'd0),
    .I_ARSIZE(3'd0),
    .I_ARLOCK(2'd0),
    .I_ARCACHE(4'd0),
    .I_ARQOS(4'd0),
    .I_ARPROT(3'd0),
    .I_ARUSER(1'd0),
    .I_ARBURST(2'd0),
    .I_ARREGION(4'd0),
    .I_RVALID(pMemPort_RVALID),
    .I_RREADY(1'b0),
    .I_RDATA(pMemPort_RDATA),
    .I_RID(pMemPort_RID),
    .I_RUSER(pMemPort_RUSER),
    .I_RRESP(pMemPort_RRESP),
    .I_RLAST(pMemPort_RLAST),
    .I_AWVALID(mat2mem_U0_m_axi_pMemPort_AWVALID),
    .I_AWREADY(pMemPort_AWREADY),
    .I_AWADDR(mat2mem_U0_m_axi_pMemPort_AWADDR),
    .I_AWID(mat2mem_U0_m_axi_pMemPort_AWID),
    .I_AWLEN(mat2mem_U0_m_axi_pMemPort_AWLEN),
    .I_AWSIZE(mat2mem_U0_m_axi_pMemPort_AWSIZE),
    .I_AWLOCK(mat2mem_U0_m_axi_pMemPort_AWLOCK),
    .I_AWCACHE(mat2mem_U0_m_axi_pMemPort_AWCACHE),
    .I_AWQOS(mat2mem_U0_m_axi_pMemPort_AWQOS),
    .I_AWPROT(mat2mem_U0_m_axi_pMemPort_AWPROT),
    .I_AWUSER(mat2mem_U0_m_axi_pMemPort_AWUSER),
    .I_AWBURST(mat2mem_U0_m_axi_pMemPort_AWBURST),
    .I_AWREGION(mat2mem_U0_m_axi_pMemPort_AWREGION),
    .I_WVALID(mat2mem_U0_m_axi_pMemPort_WVALID),
    .I_WREADY(pMemPort_WREADY),
    .I_WDATA(mat2mem_U0_m_axi_pMemPort_WDATA),
    .I_WID(mat2mem_U0_m_axi_pMemPort_WID),
    .I_WUSER(mat2mem_U0_m_axi_pMemPort_WUSER),
    .I_WLAST(mat2mem_U0_m_axi_pMemPort_WLAST),
    .I_WSTRB(mat2mem_U0_m_axi_pMemPort_WSTRB),
    .I_BVALID(pMemPort_BVALID),
    .I_BREADY(mat2mem_U0_m_axi_pMemPort_BREADY),
    .I_BRESP(pMemPort_BRESP),
    .I_BID(pMemPort_BID),
    .I_BUSER(pMemPort_BUSER)
);

Block_Mat_exit3_proc Block_Mat_exit3_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_Mat_exit3_proc_U0_ap_start),
    .ap_done(Block_Mat_exit3_proc_U0_ap_done),
    .ap_continue(Block_Mat_exit3_proc_U0_ap_continue),
    .ap_idle(Block_Mat_exit3_proc_U0_ap_idle),
    .ap_ready(Block_Mat_exit3_proc_U0_ap_ready),
    .rows(rows),
    .cols(cols),
    .indexr(indexr),
    .img_rows_V_out_din(Block_Mat_exit3_proc_U0_img_rows_V_out_din),
    .img_rows_V_out_full_n(img_rows_V_c_full_n),
    .img_rows_V_out_write(Block_Mat_exit3_proc_U0_img_rows_V_out_write),
    .img_cols_V_out_din(Block_Mat_exit3_proc_U0_img_cols_V_out_din),
    .img_cols_V_out_full_n(img_cols_V_c_full_n),
    .img_cols_V_out_write(Block_Mat_exit3_proc_U0_img_cols_V_out_write),
    .indexr_out_din(Block_Mat_exit3_proc_U0_indexr_out_din),
    .indexr_out_full_n(indexr_c_full_n),
    .indexr_out_write(Block_Mat_exit3_proc_U0_indexr_out_write)
);

AXIvideo2Mat AXIvideo2Mat_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIvideo2Mat_U0_ap_start),
    .ap_done(AXIvideo2Mat_U0_ap_done),
    .ap_continue(AXIvideo2Mat_U0_ap_continue),
    .ap_idle(AXIvideo2Mat_U0_ap_idle),
    .ap_ready(AXIvideo2Mat_U0_ap_ready),
    .vstream_TDATA(vstream_TDATA),
    .vstream_TVALID(vstream_TVALID),
    .vstream_TREADY(AXIvideo2Mat_U0_vstream_TREADY),
    .vstream_TKEEP(vstream_TKEEP),
    .vstream_TSTRB(vstream_TSTRB),
    .vstream_TUSER(vstream_TUSER),
    .vstream_TLAST(vstream_TLAST),
    .vstream_TID(vstream_TID),
    .vstream_TDEST(vstream_TDEST),
    .img_rows_V_dout(img_rows_V_c_dout),
    .img_rows_V_empty_n(img_rows_V_c_empty_n),
    .img_rows_V_read(AXIvideo2Mat_U0_img_rows_V_read),
    .img_cols_V_dout(img_cols_V_c_dout),
    .img_cols_V_empty_n(img_cols_V_c_empty_n),
    .img_cols_V_read(AXIvideo2Mat_U0_img_cols_V_read),
    .img_data_stream_0_V_din(AXIvideo2Mat_U0_img_data_stream_0_V_din),
    .img_data_stream_0_V_full_n(img_data_stream_0_V_full_n),
    .img_data_stream_0_V_write(AXIvideo2Mat_U0_img_data_stream_0_V_write),
    .img_data_stream_1_V_din(AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .img_data_stream_1_V_full_n(img_data_stream_1_V_full_n),
    .img_data_stream_1_V_write(AXIvideo2Mat_U0_img_data_stream_1_V_write),
    .img_data_stream_2_V_din(AXIvideo2Mat_U0_img_data_stream_2_V_din),
    .img_data_stream_2_V_full_n(img_data_stream_2_V_full_n),
    .img_data_stream_2_V_write(AXIvideo2Mat_U0_img_data_stream_2_V_write),
    .img_rows_V_out_din(AXIvideo2Mat_U0_img_rows_V_out_din),
    .img_rows_V_out_full_n(img_rows_V_c9_full_n),
    .img_rows_V_out_write(AXIvideo2Mat_U0_img_rows_V_out_write),
    .img_cols_V_out_din(AXIvideo2Mat_U0_img_cols_V_out_din),
    .img_cols_V_out_full_n(img_cols_V_c10_full_n),
    .img_cols_V_out_write(AXIvideo2Mat_U0_img_cols_V_out_write)
);

mat2mem mat2mem_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(mat2mem_U0_ap_start),
    .ap_done(mat2mem_U0_ap_done),
    .ap_continue(mat2mem_U0_ap_continue),
    .ap_idle(mat2mem_U0_ap_idle),
    .ap_ready(mat2mem_U0_ap_ready),
    .img_rows_V_dout(img_rows_V_c9_dout),
    .img_rows_V_empty_n(img_rows_V_c9_empty_n),
    .img_rows_V_read(mat2mem_U0_img_rows_V_read),
    .img_cols_V_dout(img_cols_V_c10_dout),
    .img_cols_V_empty_n(img_cols_V_c10_empty_n),
    .img_cols_V_read(mat2mem_U0_img_cols_V_read),
    .img_data_stream_0_V_dout(img_data_stream_0_V_dout),
    .img_data_stream_0_V_empty_n(img_data_stream_0_V_empty_n),
    .img_data_stream_0_V_read(mat2mem_U0_img_data_stream_0_V_read),
    .img_data_stream_1_V_dout(img_data_stream_1_V_dout),
    .img_data_stream_1_V_empty_n(img_data_stream_1_V_empty_n),
    .img_data_stream_1_V_read(mat2mem_U0_img_data_stream_1_V_read),
    .img_data_stream_2_V_dout(img_data_stream_2_V_dout),
    .img_data_stream_2_V_empty_n(img_data_stream_2_V_empty_n),
    .img_data_stream_2_V_read(mat2mem_U0_img_data_stream_2_V_read),
    .m_axi_pMemPort_AWVALID(mat2mem_U0_m_axi_pMemPort_AWVALID),
    .m_axi_pMemPort_AWREADY(pMemPort_AWREADY),
    .m_axi_pMemPort_AWADDR(mat2mem_U0_m_axi_pMemPort_AWADDR),
    .m_axi_pMemPort_AWID(mat2mem_U0_m_axi_pMemPort_AWID),
    .m_axi_pMemPort_AWLEN(mat2mem_U0_m_axi_pMemPort_AWLEN),
    .m_axi_pMemPort_AWSIZE(mat2mem_U0_m_axi_pMemPort_AWSIZE),
    .m_axi_pMemPort_AWBURST(mat2mem_U0_m_axi_pMemPort_AWBURST),
    .m_axi_pMemPort_AWLOCK(mat2mem_U0_m_axi_pMemPort_AWLOCK),
    .m_axi_pMemPort_AWCACHE(mat2mem_U0_m_axi_pMemPort_AWCACHE),
    .m_axi_pMemPort_AWPROT(mat2mem_U0_m_axi_pMemPort_AWPROT),
    .m_axi_pMemPort_AWQOS(mat2mem_U0_m_axi_pMemPort_AWQOS),
    .m_axi_pMemPort_AWREGION(mat2mem_U0_m_axi_pMemPort_AWREGION),
    .m_axi_pMemPort_AWUSER(mat2mem_U0_m_axi_pMemPort_AWUSER),
    .m_axi_pMemPort_WVALID(mat2mem_U0_m_axi_pMemPort_WVALID),
    .m_axi_pMemPort_WREADY(pMemPort_WREADY),
    .m_axi_pMemPort_WDATA(mat2mem_U0_m_axi_pMemPort_WDATA),
    .m_axi_pMemPort_WSTRB(mat2mem_U0_m_axi_pMemPort_WSTRB),
    .m_axi_pMemPort_WLAST(mat2mem_U0_m_axi_pMemPort_WLAST),
    .m_axi_pMemPort_WID(mat2mem_U0_m_axi_pMemPort_WID),
    .m_axi_pMemPort_WUSER(mat2mem_U0_m_axi_pMemPort_WUSER),
    .m_axi_pMemPort_ARVALID(mat2mem_U0_m_axi_pMemPort_ARVALID),
    .m_axi_pMemPort_ARREADY(1'b0),
    .m_axi_pMemPort_ARADDR(mat2mem_U0_m_axi_pMemPort_ARADDR),
    .m_axi_pMemPort_ARID(mat2mem_U0_m_axi_pMemPort_ARID),
    .m_axi_pMemPort_ARLEN(mat2mem_U0_m_axi_pMemPort_ARLEN),
    .m_axi_pMemPort_ARSIZE(mat2mem_U0_m_axi_pMemPort_ARSIZE),
    .m_axi_pMemPort_ARBURST(mat2mem_U0_m_axi_pMemPort_ARBURST),
    .m_axi_pMemPort_ARLOCK(mat2mem_U0_m_axi_pMemPort_ARLOCK),
    .m_axi_pMemPort_ARCACHE(mat2mem_U0_m_axi_pMemPort_ARCACHE),
    .m_axi_pMemPort_ARPROT(mat2mem_U0_m_axi_pMemPort_ARPROT),
    .m_axi_pMemPort_ARQOS(mat2mem_U0_m_axi_pMemPort_ARQOS),
    .m_axi_pMemPort_ARREGION(mat2mem_U0_m_axi_pMemPort_ARREGION),
    .m_axi_pMemPort_ARUSER(mat2mem_U0_m_axi_pMemPort_ARUSER),
    .m_axi_pMemPort_RVALID(1'b0),
    .m_axi_pMemPort_RREADY(mat2mem_U0_m_axi_pMemPort_RREADY),
    .m_axi_pMemPort_RDATA(32'd0),
    .m_axi_pMemPort_RLAST(1'b0),
    .m_axi_pMemPort_RID(1'd0),
    .m_axi_pMemPort_RUSER(1'd0),
    .m_axi_pMemPort_RRESP(2'd0),
    .m_axi_pMemPort_BVALID(pMemPort_BVALID),
    .m_axi_pMemPort_BREADY(mat2mem_U0_m_axi_pMemPort_BREADY),
    .m_axi_pMemPort_BRESP(pMemPort_BRESP),
    .m_axi_pMemPort_BID(pMemPort_BID),
    .m_axi_pMemPort_BUSER(pMemPort_BUSER),
    .w(mat2mem_U0_w),
    .w_ap_vld(mat2mem_U0_w_ap_vld),
    .r_dout(indexr_c_dout),
    .r_empty_n(indexr_c_empty_n),
    .r_read(mat2mem_U0_r_read),
    .baseAddr_address0(mat2mem_U0_baseAddr_address0),
    .baseAddr_ce0(mat2mem_U0_baseAddr_ce0),
    .baseAddr_q0(baseAddr_q0)
);

fifo_w32_d1_A_x img_rows_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit3_proc_U0_img_rows_V_out_din),
    .if_full_n(img_rows_V_c_full_n),
    .if_write(Block_Mat_exit3_proc_U0_img_rows_V_out_write),
    .if_dout(img_rows_V_c_dout),
    .if_empty_n(img_rows_V_c_empty_n),
    .if_read(AXIvideo2Mat_U0_img_rows_V_read)
);

fifo_w32_d1_A_x img_cols_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit3_proc_U0_img_cols_V_out_din),
    .if_full_n(img_cols_V_c_full_n),
    .if_write(Block_Mat_exit3_proc_U0_img_cols_V_out_write),
    .if_dout(img_cols_V_c_dout),
    .if_empty_n(img_cols_V_c_empty_n),
    .if_read(AXIvideo2Mat_U0_img_cols_V_read)
);

fifo_w32_d2_A indexr_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit3_proc_U0_indexr_out_din),
    .if_full_n(indexr_c_full_n),
    .if_write(Block_Mat_exit3_proc_U0_indexr_out_write),
    .if_dout(indexr_c_dout),
    .if_empty_n(indexr_c_empty_n),
    .if_read(mat2mem_U0_r_read)
);

fifo_w8_d1_A img_data_stream_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_0_V_din),
    .if_full_n(img_data_stream_0_V_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_0_V_write),
    .if_dout(img_data_stream_0_V_dout),
    .if_empty_n(img_data_stream_0_V_empty_n),
    .if_read(mat2mem_U0_img_data_stream_0_V_read)
);

fifo_w8_d1_A img_data_stream_1_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_1_V_din),
    .if_full_n(img_data_stream_1_V_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_1_V_write),
    .if_dout(img_data_stream_1_V_dout),
    .if_empty_n(img_data_stream_1_V_empty_n),
    .if_read(mat2mem_U0_img_data_stream_1_V_read)
);

fifo_w8_d1_A img_data_stream_2_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_data_stream_2_V_din),
    .if_full_n(img_data_stream_2_V_full_n),
    .if_write(AXIvideo2Mat_U0_img_data_stream_2_V_write),
    .if_dout(img_data_stream_2_V_dout),
    .if_empty_n(img_data_stream_2_V_empty_n),
    .if_read(mat2mem_U0_img_data_stream_2_V_read)
);

fifo_w32_d1_A_x img_rows_V_c9_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_rows_V_out_din),
    .if_full_n(img_rows_V_c9_full_n),
    .if_write(AXIvideo2Mat_U0_img_rows_V_out_write),
    .if_dout(img_rows_V_c9_dout),
    .if_empty_n(img_rows_V_c9_empty_n),
    .if_read(mat2mem_U0_img_rows_V_read)
);

fifo_w32_d1_A_x img_cols_V_c10_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2Mat_U0_img_cols_V_out_din),
    .if_full_n(img_cols_V_c10_full_n),
    .if_write(AXIvideo2Mat_U0_img_cols_V_out_write),
    .if_dout(img_cols_V_c10_dout),
    .if_empty_n(img_cols_V_c10_empty_n),
    .if_read(mat2mem_U0_img_cols_V_read)
);

assign AXIvideo2Mat_U0_ap_continue = 1'b1;

assign AXIvideo2Mat_U0_ap_start = 1'b1;

assign AXIvideo2Mat_U0_start_full_n = 1'b1;

assign AXIvideo2Mat_U0_start_write = 1'b0;

assign Block_Mat_exit3_proc_U0_ap_continue = 1'b1;

assign Block_Mat_exit3_proc_U0_ap_start = 1'b1;

assign Block_Mat_exit3_proc_U0_start_full_n = 1'b1;

assign Block_Mat_exit3_proc_U0_start_write = 1'b0;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b0;

assign indexw = mat2mem_U0_w;

assign mat2mem_U0_ap_continue = 1'b1;

assign mat2mem_U0_ap_start = 1'b1;

assign mat2mem_U0_start_full_n = 1'b1;

assign mat2mem_U0_start_write = 1'b0;

assign vstream_TREADY = AXIvideo2Mat_U0_vstream_TREADY;

endmodule //stream2mem
