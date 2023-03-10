// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="mem2stream,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z035ffg676-2,HLS_INPUT_CLOCK=6.666000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=5.832750,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=12,HLS_SYN_DSP=4,HLS_SYN_FF=2064,HLS_SYN_LUT=3792}" *)

module mem2stream (
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
        interrupt,
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
output   interrupt;
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
output  [23:0] vstream_TDATA;
output  [2:0] vstream_TKEEP;
output  [2:0] vstream_TSTRB;
output  [0:0] vstream_TUSER;
output  [0:0] vstream_TLAST;
output  [0:0] vstream_TID;
output  [0:0] vstream_TDEST;
input  [31:0] indexw;
output  [31:0] indexr;
output   vstream_TVALID;
input   vstream_TREADY;

reg    ap_rst_n_inv;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
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
wire   [31:0] Block_Mat_exit3_proc_U0_indexw_out_din;
wire    Block_Mat_exit3_proc_U0_indexw_out_write;
wire    mem2mat_U0_ap_start;
wire    mem2mat_U0_ap_done;
wire    mem2mat_U0_ap_continue;
wire    mem2mat_U0_ap_idle;
wire    mem2mat_U0_ap_ready;
wire    mem2mat_U0_start_out;
wire    mem2mat_U0_start_write;
wire    mem2mat_U0_img_rows_V_read;
wire    mem2mat_U0_img_cols_V_read;
wire   [7:0] mem2mat_U0_img_data_stream_0_V_din;
wire    mem2mat_U0_img_data_stream_0_V_write;
wire   [7:0] mem2mat_U0_img_data_stream_1_V_din;
wire    mem2mat_U0_img_data_stream_1_V_write;
wire   [7:0] mem2mat_U0_img_data_stream_2_V_din;
wire    mem2mat_U0_img_data_stream_2_V_write;
wire    mem2mat_U0_m_axi_pMemPort_AWVALID;
wire   [31:0] mem2mat_U0_m_axi_pMemPort_AWADDR;
wire   [0:0] mem2mat_U0_m_axi_pMemPort_AWID;
wire   [31:0] mem2mat_U0_m_axi_pMemPort_AWLEN;
wire   [2:0] mem2mat_U0_m_axi_pMemPort_AWSIZE;
wire   [1:0] mem2mat_U0_m_axi_pMemPort_AWBURST;
wire   [1:0] mem2mat_U0_m_axi_pMemPort_AWLOCK;
wire   [3:0] mem2mat_U0_m_axi_pMemPort_AWCACHE;
wire   [2:0] mem2mat_U0_m_axi_pMemPort_AWPROT;
wire   [3:0] mem2mat_U0_m_axi_pMemPort_AWQOS;
wire   [3:0] mem2mat_U0_m_axi_pMemPort_AWREGION;
wire   [0:0] mem2mat_U0_m_axi_pMemPort_AWUSER;
wire    mem2mat_U0_m_axi_pMemPort_WVALID;
wire   [31:0] mem2mat_U0_m_axi_pMemPort_WDATA;
wire   [3:0] mem2mat_U0_m_axi_pMemPort_WSTRB;
wire    mem2mat_U0_m_axi_pMemPort_WLAST;
wire   [0:0] mem2mat_U0_m_axi_pMemPort_WID;
wire   [0:0] mem2mat_U0_m_axi_pMemPort_WUSER;
wire    mem2mat_U0_m_axi_pMemPort_ARVALID;
wire   [31:0] mem2mat_U0_m_axi_pMemPort_ARADDR;
wire   [0:0] mem2mat_U0_m_axi_pMemPort_ARID;
wire   [31:0] mem2mat_U0_m_axi_pMemPort_ARLEN;
wire   [2:0] mem2mat_U0_m_axi_pMemPort_ARSIZE;
wire   [1:0] mem2mat_U0_m_axi_pMemPort_ARBURST;
wire   [1:0] mem2mat_U0_m_axi_pMemPort_ARLOCK;
wire   [3:0] mem2mat_U0_m_axi_pMemPort_ARCACHE;
wire   [2:0] mem2mat_U0_m_axi_pMemPort_ARPROT;
wire   [3:0] mem2mat_U0_m_axi_pMemPort_ARQOS;
wire   [3:0] mem2mat_U0_m_axi_pMemPort_ARREGION;
wire   [0:0] mem2mat_U0_m_axi_pMemPort_ARUSER;
wire    mem2mat_U0_m_axi_pMemPort_RREADY;
wire    mem2mat_U0_m_axi_pMemPort_BREADY;
wire    mem2mat_U0_w_read;
wire   [31:0] mem2mat_U0_r;
wire    mem2mat_U0_r_ap_vld;
wire   [31:0] mem2mat_U0_img_rows_V_out_din;
wire    mem2mat_U0_img_rows_V_out_write;
wire   [31:0] mem2mat_U0_img_cols_V_out_din;
wire    mem2mat_U0_img_cols_V_out_write;
wire   [1:0] mem2mat_U0_baseAddr_address0;
wire    mem2mat_U0_baseAddr_ce0;
wire    ap_sync_continue;
wire    Mat2AXIvideo_U0_ap_start;
wire    Mat2AXIvideo_U0_ap_done;
wire    Mat2AXIvideo_U0_ap_continue;
wire    Mat2AXIvideo_U0_ap_idle;
wire    Mat2AXIvideo_U0_ap_ready;
wire    Mat2AXIvideo_U0_img_rows_V_read;
wire    Mat2AXIvideo_U0_img_cols_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_0_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_1_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_2_V_read;
wire   [23:0] Mat2AXIvideo_U0_vstream_TDATA;
wire    Mat2AXIvideo_U0_vstream_TVALID;
wire   [2:0] Mat2AXIvideo_U0_vstream_TKEEP;
wire   [2:0] Mat2AXIvideo_U0_vstream_TSTRB;
wire   [0:0] Mat2AXIvideo_U0_vstream_TUSER;
wire   [0:0] Mat2AXIvideo_U0_vstream_TLAST;
wire   [0:0] Mat2AXIvideo_U0_vstream_TID;
wire   [0:0] Mat2AXIvideo_U0_vstream_TDEST;
wire    img_rows_V_c_full_n;
wire   [31:0] img_rows_V_c_dout;
wire    img_rows_V_c_empty_n;
wire    img_cols_V_c_full_n;
wire   [31:0] img_cols_V_c_dout;
wire    img_cols_V_c_empty_n;
wire    indexw_c_full_n;
wire   [31:0] indexw_c_dout;
wire    indexw_c_empty_n;
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
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_mem2mat_U0_ap_ready;
wire    ap_sync_mem2mat_U0_ap_ready;
reg   [1:0] mem2mat_U0_ap_ready_count;
reg    ap_sync_reg_Block_Mat_exit3_proc_U0_ap_ready;
wire    ap_sync_Block_Mat_exit3_proc_U0_ap_ready;
reg   [1:0] Block_Mat_exit3_proc_U0_ap_ready_count;
wire    Block_Mat_exit3_proc_U0_start_full_n;
wire    Block_Mat_exit3_proc_U0_start_write;
wire   [0:0] start_for_Mat2AXIvideo_U0_din;
wire    start_for_Mat2AXIvideo_U0_full_n;
wire   [0:0] start_for_Mat2AXIvideo_U0_dout;
wire    start_for_Mat2AXIvideo_U0_empty_n;
wire    Mat2AXIvideo_U0_start_full_n;
wire    Mat2AXIvideo_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_mem2mat_U0_ap_ready = 1'b0;
#0 mem2mat_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_Block_Mat_exit3_proc_U0_ap_ready = 1'b0;
#0 Block_Mat_exit3_proc_U0_ap_ready_count = 2'd0;
end

mem2stream_AXILiteS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
mem2stream_AXILiteS_s_axi_U(
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
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .rows(rows),
    .cols(cols),
    .baseAddr_address0(mem2mat_U0_baseAddr_address0),
    .baseAddr_ce0(mem2mat_U0_baseAddr_ce0),
    .baseAddr_q0(baseAddr_q0)
);

mem2stream_pMemPort_m_axi #(
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
mem2stream_pMemPort_m_axi_U(
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
    .I_ARVALID(mem2mat_U0_m_axi_pMemPort_ARVALID),
    .I_ARREADY(pMemPort_ARREADY),
    .I_ARADDR(mem2mat_U0_m_axi_pMemPort_ARADDR),
    .I_ARID(mem2mat_U0_m_axi_pMemPort_ARID),
    .I_ARLEN(mem2mat_U0_m_axi_pMemPort_ARLEN),
    .I_ARSIZE(mem2mat_U0_m_axi_pMemPort_ARSIZE),
    .I_ARLOCK(mem2mat_U0_m_axi_pMemPort_ARLOCK),
    .I_ARCACHE(mem2mat_U0_m_axi_pMemPort_ARCACHE),
    .I_ARQOS(mem2mat_U0_m_axi_pMemPort_ARQOS),
    .I_ARPROT(mem2mat_U0_m_axi_pMemPort_ARPROT),
    .I_ARUSER(mem2mat_U0_m_axi_pMemPort_ARUSER),
    .I_ARBURST(mem2mat_U0_m_axi_pMemPort_ARBURST),
    .I_ARREGION(mem2mat_U0_m_axi_pMemPort_ARREGION),
    .I_RVALID(pMemPort_RVALID),
    .I_RREADY(mem2mat_U0_m_axi_pMemPort_RREADY),
    .I_RDATA(pMemPort_RDATA),
    .I_RID(pMemPort_RID),
    .I_RUSER(pMemPort_RUSER),
    .I_RRESP(pMemPort_RRESP),
    .I_RLAST(pMemPort_RLAST),
    .I_AWVALID(1'b0),
    .I_AWREADY(pMemPort_AWREADY),
    .I_AWADDR(32'd0),
    .I_AWID(1'd0),
    .I_AWLEN(32'd0),
    .I_AWSIZE(3'd0),
    .I_AWLOCK(2'd0),
    .I_AWCACHE(4'd0),
    .I_AWQOS(4'd0),
    .I_AWPROT(3'd0),
    .I_AWUSER(1'd0),
    .I_AWBURST(2'd0),
    .I_AWREGION(4'd0),
    .I_WVALID(1'b0),
    .I_WREADY(pMemPort_WREADY),
    .I_WDATA(32'd0),
    .I_WID(1'd0),
    .I_WUSER(1'd0),
    .I_WLAST(1'b0),
    .I_WSTRB(4'd0),
    .I_BVALID(pMemPort_BVALID),
    .I_BREADY(1'b0),
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
    .indexw(indexw),
    .img_rows_V_out_din(Block_Mat_exit3_proc_U0_img_rows_V_out_din),
    .img_rows_V_out_full_n(img_rows_V_c_full_n),
    .img_rows_V_out_write(Block_Mat_exit3_proc_U0_img_rows_V_out_write),
    .img_cols_V_out_din(Block_Mat_exit3_proc_U0_img_cols_V_out_din),
    .img_cols_V_out_full_n(img_cols_V_c_full_n),
    .img_cols_V_out_write(Block_Mat_exit3_proc_U0_img_cols_V_out_write),
    .indexw_out_din(Block_Mat_exit3_proc_U0_indexw_out_din),
    .indexw_out_full_n(indexw_c_full_n),
    .indexw_out_write(Block_Mat_exit3_proc_U0_indexw_out_write)
);

mem2mat mem2mat_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(mem2mat_U0_ap_start),
    .start_full_n(start_for_Mat2AXIvideo_U0_full_n),
    .ap_done(mem2mat_U0_ap_done),
    .ap_continue(mem2mat_U0_ap_continue),
    .ap_idle(mem2mat_U0_ap_idle),
    .ap_ready(mem2mat_U0_ap_ready),
    .start_out(mem2mat_U0_start_out),
    .start_write(mem2mat_U0_start_write),
    .img_rows_V_dout(img_rows_V_c_dout),
    .img_rows_V_empty_n(img_rows_V_c_empty_n),
    .img_rows_V_read(mem2mat_U0_img_rows_V_read),
    .img_cols_V_dout(img_cols_V_c_dout),
    .img_cols_V_empty_n(img_cols_V_c_empty_n),
    .img_cols_V_read(mem2mat_U0_img_cols_V_read),
    .img_data_stream_0_V_din(mem2mat_U0_img_data_stream_0_V_din),
    .img_data_stream_0_V_full_n(img_data_stream_0_V_full_n),
    .img_data_stream_0_V_write(mem2mat_U0_img_data_stream_0_V_write),
    .img_data_stream_1_V_din(mem2mat_U0_img_data_stream_1_V_din),
    .img_data_stream_1_V_full_n(img_data_stream_1_V_full_n),
    .img_data_stream_1_V_write(mem2mat_U0_img_data_stream_1_V_write),
    .img_data_stream_2_V_din(mem2mat_U0_img_data_stream_2_V_din),
    .img_data_stream_2_V_full_n(img_data_stream_2_V_full_n),
    .img_data_stream_2_V_write(mem2mat_U0_img_data_stream_2_V_write),
    .m_axi_pMemPort_AWVALID(mem2mat_U0_m_axi_pMemPort_AWVALID),
    .m_axi_pMemPort_AWREADY(1'b0),
    .m_axi_pMemPort_AWADDR(mem2mat_U0_m_axi_pMemPort_AWADDR),
    .m_axi_pMemPort_AWID(mem2mat_U0_m_axi_pMemPort_AWID),
    .m_axi_pMemPort_AWLEN(mem2mat_U0_m_axi_pMemPort_AWLEN),
    .m_axi_pMemPort_AWSIZE(mem2mat_U0_m_axi_pMemPort_AWSIZE),
    .m_axi_pMemPort_AWBURST(mem2mat_U0_m_axi_pMemPort_AWBURST),
    .m_axi_pMemPort_AWLOCK(mem2mat_U0_m_axi_pMemPort_AWLOCK),
    .m_axi_pMemPort_AWCACHE(mem2mat_U0_m_axi_pMemPort_AWCACHE),
    .m_axi_pMemPort_AWPROT(mem2mat_U0_m_axi_pMemPort_AWPROT),
    .m_axi_pMemPort_AWQOS(mem2mat_U0_m_axi_pMemPort_AWQOS),
    .m_axi_pMemPort_AWREGION(mem2mat_U0_m_axi_pMemPort_AWREGION),
    .m_axi_pMemPort_AWUSER(mem2mat_U0_m_axi_pMemPort_AWUSER),
    .m_axi_pMemPort_WVALID(mem2mat_U0_m_axi_pMemPort_WVALID),
    .m_axi_pMemPort_WREADY(1'b0),
    .m_axi_pMemPort_WDATA(mem2mat_U0_m_axi_pMemPort_WDATA),
    .m_axi_pMemPort_WSTRB(mem2mat_U0_m_axi_pMemPort_WSTRB),
    .m_axi_pMemPort_WLAST(mem2mat_U0_m_axi_pMemPort_WLAST),
    .m_axi_pMemPort_WID(mem2mat_U0_m_axi_pMemPort_WID),
    .m_axi_pMemPort_WUSER(mem2mat_U0_m_axi_pMemPort_WUSER),
    .m_axi_pMemPort_ARVALID(mem2mat_U0_m_axi_pMemPort_ARVALID),
    .m_axi_pMemPort_ARREADY(pMemPort_ARREADY),
    .m_axi_pMemPort_ARADDR(mem2mat_U0_m_axi_pMemPort_ARADDR),
    .m_axi_pMemPort_ARID(mem2mat_U0_m_axi_pMemPort_ARID),
    .m_axi_pMemPort_ARLEN(mem2mat_U0_m_axi_pMemPort_ARLEN),
    .m_axi_pMemPort_ARSIZE(mem2mat_U0_m_axi_pMemPort_ARSIZE),
    .m_axi_pMemPort_ARBURST(mem2mat_U0_m_axi_pMemPort_ARBURST),
    .m_axi_pMemPort_ARLOCK(mem2mat_U0_m_axi_pMemPort_ARLOCK),
    .m_axi_pMemPort_ARCACHE(mem2mat_U0_m_axi_pMemPort_ARCACHE),
    .m_axi_pMemPort_ARPROT(mem2mat_U0_m_axi_pMemPort_ARPROT),
    .m_axi_pMemPort_ARQOS(mem2mat_U0_m_axi_pMemPort_ARQOS),
    .m_axi_pMemPort_ARREGION(mem2mat_U0_m_axi_pMemPort_ARREGION),
    .m_axi_pMemPort_ARUSER(mem2mat_U0_m_axi_pMemPort_ARUSER),
    .m_axi_pMemPort_RVALID(pMemPort_RVALID),
    .m_axi_pMemPort_RREADY(mem2mat_U0_m_axi_pMemPort_RREADY),
    .m_axi_pMemPort_RDATA(pMemPort_RDATA),
    .m_axi_pMemPort_RLAST(pMemPort_RLAST),
    .m_axi_pMemPort_RID(pMemPort_RID),
    .m_axi_pMemPort_RUSER(pMemPort_RUSER),
    .m_axi_pMemPort_RRESP(pMemPort_RRESP),
    .m_axi_pMemPort_BVALID(1'b0),
    .m_axi_pMemPort_BREADY(mem2mat_U0_m_axi_pMemPort_BREADY),
    .m_axi_pMemPort_BRESP(2'd0),
    .m_axi_pMemPort_BID(1'd0),
    .m_axi_pMemPort_BUSER(1'd0),
    .w_dout(indexw_c_dout),
    .w_empty_n(indexw_c_empty_n),
    .w_read(mem2mat_U0_w_read),
    .r(mem2mat_U0_r),
    .r_ap_vld(mem2mat_U0_r_ap_vld),
    .img_rows_V_out_din(mem2mat_U0_img_rows_V_out_din),
    .img_rows_V_out_full_n(img_rows_V_c9_full_n),
    .img_rows_V_out_write(mem2mat_U0_img_rows_V_out_write),
    .img_cols_V_out_din(mem2mat_U0_img_cols_V_out_din),
    .img_cols_V_out_full_n(img_cols_V_c10_full_n),
    .img_cols_V_out_write(mem2mat_U0_img_cols_V_out_write),
    .baseAddr_address0(mem2mat_U0_baseAddr_address0),
    .baseAddr_ce0(mem2mat_U0_baseAddr_ce0),
    .baseAddr_q0(baseAddr_q0)
);

Mat2AXIvideo Mat2AXIvideo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Mat2AXIvideo_U0_ap_start),
    .ap_done(Mat2AXIvideo_U0_ap_done),
    .ap_continue(Mat2AXIvideo_U0_ap_continue),
    .ap_idle(Mat2AXIvideo_U0_ap_idle),
    .ap_ready(Mat2AXIvideo_U0_ap_ready),
    .img_rows_V_dout(img_rows_V_c9_dout),
    .img_rows_V_empty_n(img_rows_V_c9_empty_n),
    .img_rows_V_read(Mat2AXIvideo_U0_img_rows_V_read),
    .img_cols_V_dout(img_cols_V_c10_dout),
    .img_cols_V_empty_n(img_cols_V_c10_empty_n),
    .img_cols_V_read(Mat2AXIvideo_U0_img_cols_V_read),
    .img_data_stream_0_V_dout(img_data_stream_0_V_dout),
    .img_data_stream_0_V_empty_n(img_data_stream_0_V_empty_n),
    .img_data_stream_0_V_read(Mat2AXIvideo_U0_img_data_stream_0_V_read),
    .img_data_stream_1_V_dout(img_data_stream_1_V_dout),
    .img_data_stream_1_V_empty_n(img_data_stream_1_V_empty_n),
    .img_data_stream_1_V_read(Mat2AXIvideo_U0_img_data_stream_1_V_read),
    .img_data_stream_2_V_dout(img_data_stream_2_V_dout),
    .img_data_stream_2_V_empty_n(img_data_stream_2_V_empty_n),
    .img_data_stream_2_V_read(Mat2AXIvideo_U0_img_data_stream_2_V_read),
    .vstream_TDATA(Mat2AXIvideo_U0_vstream_TDATA),
    .vstream_TVALID(Mat2AXIvideo_U0_vstream_TVALID),
    .vstream_TREADY(vstream_TREADY),
    .vstream_TKEEP(Mat2AXIvideo_U0_vstream_TKEEP),
    .vstream_TSTRB(Mat2AXIvideo_U0_vstream_TSTRB),
    .vstream_TUSER(Mat2AXIvideo_U0_vstream_TUSER),
    .vstream_TLAST(Mat2AXIvideo_U0_vstream_TLAST),
    .vstream_TID(Mat2AXIvideo_U0_vstream_TID),
    .vstream_TDEST(Mat2AXIvideo_U0_vstream_TDEST)
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
    .if_read(mem2mat_U0_img_rows_V_read)
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
    .if_read(mem2mat_U0_img_cols_V_read)
);

fifo_w32_d1_A_x indexw_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_Mat_exit3_proc_U0_indexw_out_din),
    .if_full_n(indexw_c_full_n),
    .if_write(Block_Mat_exit3_proc_U0_indexw_out_write),
    .if_dout(indexw_c_dout),
    .if_empty_n(indexw_c_empty_n),
    .if_read(mem2mat_U0_w_read)
);

fifo_w8_d1_A img_data_stream_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(mem2mat_U0_img_data_stream_0_V_din),
    .if_full_n(img_data_stream_0_V_full_n),
    .if_write(mem2mat_U0_img_data_stream_0_V_write),
    .if_dout(img_data_stream_0_V_dout),
    .if_empty_n(img_data_stream_0_V_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_0_V_read)
);

fifo_w8_d1_A img_data_stream_1_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(mem2mat_U0_img_data_stream_1_V_din),
    .if_full_n(img_data_stream_1_V_full_n),
    .if_write(mem2mat_U0_img_data_stream_1_V_write),
    .if_dout(img_data_stream_1_V_dout),
    .if_empty_n(img_data_stream_1_V_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_1_V_read)
);

fifo_w8_d1_A img_data_stream_2_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(mem2mat_U0_img_data_stream_2_V_din),
    .if_full_n(img_data_stream_2_V_full_n),
    .if_write(mem2mat_U0_img_data_stream_2_V_write),
    .if_dout(img_data_stream_2_V_dout),
    .if_empty_n(img_data_stream_2_V_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_2_V_read)
);

fifo_w32_d1_A_x img_rows_V_c9_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(mem2mat_U0_img_rows_V_out_din),
    .if_full_n(img_rows_V_c9_full_n),
    .if_write(mem2mat_U0_img_rows_V_out_write),
    .if_dout(img_rows_V_c9_dout),
    .if_empty_n(img_rows_V_c9_empty_n),
    .if_read(Mat2AXIvideo_U0_img_rows_V_read)
);

fifo_w32_d1_A_x img_cols_V_c10_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(mem2mat_U0_img_cols_V_out_din),
    .if_full_n(img_cols_V_c10_full_n),
    .if_write(mem2mat_U0_img_cols_V_out_write),
    .if_dout(img_cols_V_c10_dout),
    .if_empty_n(img_cols_V_c10_empty_n),
    .if_read(Mat2AXIvideo_U0_img_cols_V_read)
);

start_for_Mat2AXIdEe start_for_Mat2AXIdEe_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Mat2AXIvideo_U0_din),
    .if_full_n(start_for_Mat2AXIvideo_U0_full_n),
    .if_write(mem2mat_U0_start_write),
    .if_dout(start_for_Mat2AXIvideo_U0_dout),
    .if_empty_n(start_for_Mat2AXIvideo_U0_empty_n),
    .if_read(Mat2AXIvideo_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_Block_Mat_exit3_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Block_Mat_exit3_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Block_Mat_exit3_proc_U0_ap_ready <= ap_sync_Block_Mat_exit3_proc_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_mem2mat_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_mem2mat_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_mem2mat_U0_ap_ready <= ap_sync_mem2mat_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_sync_ready == 1'b1) & (1'b0 == Block_Mat_exit3_proc_U0_ap_ready))) begin
        Block_Mat_exit3_proc_U0_ap_ready_count <= (Block_Mat_exit3_proc_U0_ap_ready_count - 2'd1);
    end else if (((1'b1 == Block_Mat_exit3_proc_U0_ap_ready) & (ap_sync_ready == 1'b0))) begin
        Block_Mat_exit3_proc_U0_ap_ready_count <= (Block_Mat_exit3_proc_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((ap_sync_ready == 1'b1) & (mem2mat_U0_ap_ready == 1'b0))) begin
        mem2mat_U0_ap_ready_count <= (mem2mat_U0_ap_ready_count - 2'd1);
    end else if (((mem2mat_U0_ap_ready == 1'b1) & (ap_sync_ready == 1'b0))) begin
        mem2mat_U0_ap_ready_count <= (mem2mat_U0_ap_ready_count + 2'd1);
    end
end

assign Block_Mat_exit3_proc_U0_ap_continue = 1'b1;

assign Block_Mat_exit3_proc_U0_ap_start = ((ap_sync_reg_Block_Mat_exit3_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign Block_Mat_exit3_proc_U0_start_full_n = 1'b1;

assign Block_Mat_exit3_proc_U0_start_write = 1'b0;

assign Mat2AXIvideo_U0_ap_continue = ap_sync_done;

assign Mat2AXIvideo_U0_ap_start = start_for_Mat2AXIvideo_U0_empty_n;

assign Mat2AXIvideo_U0_start_full_n = 1'b1;

assign Mat2AXIvideo_U0_start_write = 1'b0;

assign ap_done = ap_sync_done;

assign ap_idle = (mem2mat_U0_ap_idle & Mat2AXIvideo_U0_ap_idle & Block_Mat_exit3_proc_U0_ap_idle);

assign ap_ready = ap_sync_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_Block_Mat_exit3_proc_U0_ap_ready = (ap_sync_reg_Block_Mat_exit3_proc_U0_ap_ready | Block_Mat_exit3_proc_U0_ap_ready);

assign ap_sync_continue = ap_sync_done;

assign ap_sync_done = (mem2mat_U0_ap_done & Mat2AXIvideo_U0_ap_done);

assign ap_sync_mem2mat_U0_ap_ready = (mem2mat_U0_ap_ready | ap_sync_reg_mem2mat_U0_ap_ready);

assign ap_sync_ready = (ap_sync_mem2mat_U0_ap_ready & ap_sync_Block_Mat_exit3_proc_U0_ap_ready);

assign indexr = mem2mat_U0_r;

assign mem2mat_U0_ap_continue = ap_sync_done;

assign mem2mat_U0_ap_start = ((ap_sync_reg_mem2mat_U0_ap_ready ^ 1'b1) & ap_start);

assign start_for_Mat2AXIvideo_U0_din = 1'b1;

assign vstream_TDATA = Mat2AXIvideo_U0_vstream_TDATA;

assign vstream_TDEST = Mat2AXIvideo_U0_vstream_TDEST;

assign vstream_TID = Mat2AXIvideo_U0_vstream_TID;

assign vstream_TKEEP = Mat2AXIvideo_U0_vstream_TKEEP;

assign vstream_TLAST = Mat2AXIvideo_U0_vstream_TLAST;

assign vstream_TSTRB = Mat2AXIvideo_U0_vstream_TSTRB;

assign vstream_TUSER = Mat2AXIvideo_U0_vstream_TUSER;

assign vstream_TVALID = Mat2AXIvideo_U0_vstream_TVALID;

endmodule //mem2stream
