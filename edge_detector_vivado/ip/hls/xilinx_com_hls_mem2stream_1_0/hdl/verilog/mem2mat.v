// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mem2mat (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        img_rows_V_dout,
        img_rows_V_empty_n,
        img_rows_V_read,
        img_cols_V_dout,
        img_cols_V_empty_n,
        img_cols_V_read,
        img_data_stream_0_V_din,
        img_data_stream_0_V_full_n,
        img_data_stream_0_V_write,
        img_data_stream_1_V_din,
        img_data_stream_1_V_full_n,
        img_data_stream_1_V_write,
        img_data_stream_2_V_din,
        img_data_stream_2_V_full_n,
        img_data_stream_2_V_write,
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
        w_dout,
        w_empty_n,
        w_read,
        r,
        r_ap_vld,
        img_rows_V_out_din,
        img_rows_V_out_full_n,
        img_rows_V_out_write,
        img_cols_V_out_din,
        img_cols_V_out_full_n,
        img_cols_V_out_write,
        baseAddr_address0,
        baseAddr_ce0,
        baseAddr_q0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [31:0] img_rows_V_dout;
input   img_rows_V_empty_n;
output   img_rows_V_read;
input  [31:0] img_cols_V_dout;
input   img_cols_V_empty_n;
output   img_cols_V_read;
output  [7:0] img_data_stream_0_V_din;
input   img_data_stream_0_V_full_n;
output   img_data_stream_0_V_write;
output  [7:0] img_data_stream_1_V_din;
input   img_data_stream_1_V_full_n;
output   img_data_stream_1_V_write;
output  [7:0] img_data_stream_2_V_din;
input   img_data_stream_2_V_full_n;
output   img_data_stream_2_V_write;
output   m_axi_pMemPort_AWVALID;
input   m_axi_pMemPort_AWREADY;
output  [31:0] m_axi_pMemPort_AWADDR;
output  [0:0] m_axi_pMemPort_AWID;
output  [31:0] m_axi_pMemPort_AWLEN;
output  [2:0] m_axi_pMemPort_AWSIZE;
output  [1:0] m_axi_pMemPort_AWBURST;
output  [1:0] m_axi_pMemPort_AWLOCK;
output  [3:0] m_axi_pMemPort_AWCACHE;
output  [2:0] m_axi_pMemPort_AWPROT;
output  [3:0] m_axi_pMemPort_AWQOS;
output  [3:0] m_axi_pMemPort_AWREGION;
output  [0:0] m_axi_pMemPort_AWUSER;
output   m_axi_pMemPort_WVALID;
input   m_axi_pMemPort_WREADY;
output  [31:0] m_axi_pMemPort_WDATA;
output  [3:0] m_axi_pMemPort_WSTRB;
output   m_axi_pMemPort_WLAST;
output  [0:0] m_axi_pMemPort_WID;
output  [0:0] m_axi_pMemPort_WUSER;
output   m_axi_pMemPort_ARVALID;
input   m_axi_pMemPort_ARREADY;
output  [31:0] m_axi_pMemPort_ARADDR;
output  [0:0] m_axi_pMemPort_ARID;
output  [31:0] m_axi_pMemPort_ARLEN;
output  [2:0] m_axi_pMemPort_ARSIZE;
output  [1:0] m_axi_pMemPort_ARBURST;
output  [1:0] m_axi_pMemPort_ARLOCK;
output  [3:0] m_axi_pMemPort_ARCACHE;
output  [2:0] m_axi_pMemPort_ARPROT;
output  [3:0] m_axi_pMemPort_ARQOS;
output  [3:0] m_axi_pMemPort_ARREGION;
output  [0:0] m_axi_pMemPort_ARUSER;
input   m_axi_pMemPort_RVALID;
output   m_axi_pMemPort_RREADY;
input  [31:0] m_axi_pMemPort_RDATA;
input   m_axi_pMemPort_RLAST;
input  [0:0] m_axi_pMemPort_RID;
input  [0:0] m_axi_pMemPort_RUSER;
input  [1:0] m_axi_pMemPort_RRESP;
input   m_axi_pMemPort_BVALID;
output   m_axi_pMemPort_BREADY;
input  [1:0] m_axi_pMemPort_BRESP;
input  [0:0] m_axi_pMemPort_BID;
input  [0:0] m_axi_pMemPort_BUSER;
input  [31:0] w_dout;
input   w_empty_n;
output   w_read;
output  [31:0] r;
output   r_ap_vld;
output  [31:0] img_rows_V_out_din;
input   img_rows_V_out_full_n;
output   img_rows_V_out_write;
output  [31:0] img_cols_V_out_din;
input   img_cols_V_out_full_n;
output   img_cols_V_out_write;
output  [1:0] baseAddr_address0;
output   baseAddr_ce0;
input  [31:0] baseAddr_q0;

reg ap_done;
reg ap_idle;
reg start_write;
reg img_rows_V_read;
reg img_cols_V_read;
reg img_data_stream_0_V_write;
reg img_data_stream_1_V_write;
reg img_data_stream_2_V_write;
reg m_axi_pMemPort_ARVALID;
reg m_axi_pMemPort_RREADY;
reg w_read;
reg r_ap_vld;
reg img_rows_V_out_write;
reg img_cols_V_out_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg   [31:0] index;
reg    img_rows_V_blk_n;
reg    img_cols_V_blk_n;
reg    w_blk_n;
reg    img_rows_V_out_blk_n;
reg    img_cols_V_out_blk_n;
reg   [31:0] local_rows_reg_266;
reg    ap_block_state1;
reg   [31:0] img_cols_V_read_reg_272;
reg   [31:0] w_read_reg_277;
wire   [31:0] n_fu_241_p3;
reg   [31:0] n_reg_288;
wire    grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWVALID;
wire   [31:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWADDR;
wire   [0:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWID;
wire   [31:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWLEN;
wire   [2:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWSIZE;
wire   [1:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWBURST;
wire   [1:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWLOCK;
wire   [3:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWCACHE;
wire   [2:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWPROT;
wire   [3:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWQOS;
wire   [3:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWREGION;
wire   [0:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWUSER;
wire    grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_WVALID;
wire   [31:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_WDATA;
wire   [3:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_WSTRB;
wire    grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_WLAST;
wire   [0:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_WID;
wire   [0:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_WUSER;
wire    grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARVALID;
wire   [31:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARADDR;
wire   [0:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARID;
wire   [31:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARLEN;
wire   [2:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARSIZE;
wire   [1:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARBURST;
wire   [1:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARLOCK;
wire   [3:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARCACHE;
wire   [2:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARPROT;
wire   [3:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARQOS;
wire   [3:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARREGION;
wire   [0:0] grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARUSER;
wire    grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_RREADY;
wire    grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_BREADY;
wire   [7:0] grp_dataflow_parent_loop_1_fu_193_img_data_stream_0_V_din;
wire    grp_dataflow_parent_loop_1_fu_193_img_data_stream_0_V_write;
wire   [7:0] grp_dataflow_parent_loop_1_fu_193_img_data_stream_1_V_din;
wire    grp_dataflow_parent_loop_1_fu_193_img_data_stream_1_V_write;
wire   [7:0] grp_dataflow_parent_loop_1_fu_193_img_data_stream_2_V_din;
wire    grp_dataflow_parent_loop_1_fu_193_img_data_stream_2_V_write;
wire   [1:0] grp_dataflow_parent_loop_1_fu_193_baseAddr_address0;
wire    grp_dataflow_parent_loop_1_fu_193_baseAddr_ce0;
wire   [31:0] grp_dataflow_parent_loop_1_fu_193_baseAddr_d0;
wire    grp_dataflow_parent_loop_1_fu_193_baseAddr_we0;
wire    grp_dataflow_parent_loop_1_fu_193_ap_done;
wire    grp_dataflow_parent_loop_1_fu_193_ap_start;
wire    grp_dataflow_parent_loop_1_fu_193_ap_ready;
wire    grp_dataflow_parent_loop_1_fu_193_ap_idle;
reg    grp_dataflow_parent_loop_1_fu_193_ap_continue;
reg    ap_reg_grp_dataflow_parent_loop_1_fu_193_ap_start;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    ap_sync_reg_grp_dataflow_parent_loop_1_fu_193_ap_ready;
reg    ap_sync_grp_dataflow_parent_loop_1_fu_193_ap_ready;
wire   [31:0] n_1_fu_253_p3;
wire    ap_CS_fsm_state2;
wire   [30:0] tmp_fu_219_p4;
wire   [0:0] icmp_fu_229_p2;
wire   [31:0] tmp_8_i_fu_235_p2;
wire   [0:0] tmp_9_i_fu_249_p2;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 index = 32'd2;
#0 ap_reg_grp_dataflow_parent_loop_1_fu_193_ap_start = 1'b0;
#0 ap_sync_reg_grp_dataflow_parent_loop_1_fu_193_ap_ready = 1'b0;
end

dataflow_parent_loop_1 grp_dataflow_parent_loop_1_fu_193(
    .local_rows(local_rows_reg_266),
    .w(w_read_reg_277),
    .m_axi_pMemPort_AWVALID(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWVALID),
    .m_axi_pMemPort_AWREADY(1'b0),
    .m_axi_pMemPort_AWADDR(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWADDR),
    .m_axi_pMemPort_AWID(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWID),
    .m_axi_pMemPort_AWLEN(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWLEN),
    .m_axi_pMemPort_AWSIZE(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWSIZE),
    .m_axi_pMemPort_AWBURST(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWBURST),
    .m_axi_pMemPort_AWLOCK(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWLOCK),
    .m_axi_pMemPort_AWCACHE(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWCACHE),
    .m_axi_pMemPort_AWPROT(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWPROT),
    .m_axi_pMemPort_AWQOS(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWQOS),
    .m_axi_pMemPort_AWREGION(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWREGION),
    .m_axi_pMemPort_AWUSER(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_AWUSER),
    .m_axi_pMemPort_WVALID(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_WVALID),
    .m_axi_pMemPort_WREADY(1'b0),
    .m_axi_pMemPort_WDATA(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_WDATA),
    .m_axi_pMemPort_WSTRB(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_WSTRB),
    .m_axi_pMemPort_WLAST(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_WLAST),
    .m_axi_pMemPort_WID(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_WID),
    .m_axi_pMemPort_WUSER(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_WUSER),
    .m_axi_pMemPort_ARVALID(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARVALID),
    .m_axi_pMemPort_ARREADY(m_axi_pMemPort_ARREADY),
    .m_axi_pMemPort_ARADDR(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARADDR),
    .m_axi_pMemPort_ARID(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARID),
    .m_axi_pMemPort_ARLEN(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARLEN),
    .m_axi_pMemPort_ARSIZE(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARSIZE),
    .m_axi_pMemPort_ARBURST(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARBURST),
    .m_axi_pMemPort_ARLOCK(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARLOCK),
    .m_axi_pMemPort_ARCACHE(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARCACHE),
    .m_axi_pMemPort_ARPROT(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARPROT),
    .m_axi_pMemPort_ARQOS(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARQOS),
    .m_axi_pMemPort_ARREGION(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARREGION),
    .m_axi_pMemPort_ARUSER(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARUSER),
    .m_axi_pMemPort_RVALID(m_axi_pMemPort_RVALID),
    .m_axi_pMemPort_RREADY(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_RREADY),
    .m_axi_pMemPort_RDATA(m_axi_pMemPort_RDATA),
    .m_axi_pMemPort_RLAST(m_axi_pMemPort_RLAST),
    .m_axi_pMemPort_RID(m_axi_pMemPort_RID),
    .m_axi_pMemPort_RUSER(m_axi_pMemPort_RUSER),
    .m_axi_pMemPort_RRESP(m_axi_pMemPort_RRESP),
    .m_axi_pMemPort_BVALID(1'b0),
    .m_axi_pMemPort_BREADY(grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_BREADY),
    .m_axi_pMemPort_BRESP(2'd0),
    .m_axi_pMemPort_BID(1'd0),
    .m_axi_pMemPort_BUSER(1'd0),
    .p_read(local_rows_reg_266),
    .p_read1(img_cols_V_read_reg_272),
    .img_data_stream_0_V_din(grp_dataflow_parent_loop_1_fu_193_img_data_stream_0_V_din),
    .img_data_stream_0_V_full_n(img_data_stream_0_V_full_n),
    .img_data_stream_0_V_write(grp_dataflow_parent_loop_1_fu_193_img_data_stream_0_V_write),
    .img_data_stream_1_V_din(grp_dataflow_parent_loop_1_fu_193_img_data_stream_1_V_din),
    .img_data_stream_1_V_full_n(img_data_stream_1_V_full_n),
    .img_data_stream_1_V_write(grp_dataflow_parent_loop_1_fu_193_img_data_stream_1_V_write),
    .img_data_stream_2_V_din(grp_dataflow_parent_loop_1_fu_193_img_data_stream_2_V_din),
    .img_data_stream_2_V_full_n(img_data_stream_2_V_full_n),
    .img_data_stream_2_V_write(grp_dataflow_parent_loop_1_fu_193_img_data_stream_2_V_write),
    .index(index),
    .baseAddr_address0(grp_dataflow_parent_loop_1_fu_193_baseAddr_address0),
    .baseAddr_ce0(grp_dataflow_parent_loop_1_fu_193_baseAddr_ce0),
    .baseAddr_d0(grp_dataflow_parent_loop_1_fu_193_baseAddr_d0),
    .baseAddr_q0(baseAddr_q0),
    .baseAddr_we0(grp_dataflow_parent_loop_1_fu_193_baseAddr_we0),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .w_ap_vld(1'b1),
    .p_read_ap_vld(1'b1),
    .p_read1_ap_vld(1'b1),
    .index_ap_vld(1'b1),
    .ap_done(grp_dataflow_parent_loop_1_fu_193_ap_done),
    .ap_start(grp_dataflow_parent_loop_1_fu_193_ap_start),
    .ap_ready(grp_dataflow_parent_loop_1_fu_193_ap_ready),
    .ap_idle(grp_dataflow_parent_loop_1_fu_193_ap_idle),
    .ap_continue(grp_dataflow_parent_loop_1_fu_193_ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((grp_dataflow_parent_loop_1_fu_193_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_dataflow_parent_loop_1_fu_193_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) | ((ap_sync_grp_dataflow_parent_loop_1_fu_193_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state4)))) begin
            ap_reg_grp_dataflow_parent_loop_1_fu_193_ap_start <= 1'b1;
        end else if ((grp_dataflow_parent_loop_1_fu_193_ap_ready == 1'b1)) begin
            ap_reg_grp_dataflow_parent_loop_1_fu_193_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_dataflow_parent_loop_1_fu_193_ap_ready <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            if ((grp_dataflow_parent_loop_1_fu_193_ap_done == 1'b1)) begin
                ap_sync_reg_grp_dataflow_parent_loop_1_fu_193_ap_ready <= 1'b0;
            end else if ((grp_dataflow_parent_loop_1_fu_193_ap_ready == 1'b1)) begin
                ap_sync_reg_grp_dataflow_parent_loop_1_fu_193_ap_ready <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (img_cols_V_out_full_n == 1'b0) | (img_rows_V_out_full_n == 1'b0) | (w_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_cols_V_read_reg_272 <= img_cols_V_dout;
        local_rows_reg_266 <= img_rows_V_dout;
        n_reg_288 <= n_fu_241_p3;
        w_read_reg_277 <= w_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        index <= n_1_fu_253_p3;
    end
end

always @ (*) begin
    if (((grp_dataflow_parent_loop_1_fu_193_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((ap_sync_reg_grp_dataflow_parent_loop_1_fu_193_ap_ready == 1'b0)) begin
        ap_sync_grp_dataflow_parent_loop_1_fu_193_ap_ready = grp_dataflow_parent_loop_1_fu_193_ap_ready;
    end else begin
        ap_sync_grp_dataflow_parent_loop_1_fu_193_ap_ready = 1'b1;
    end
end

always @ (*) begin
    if (((grp_dataflow_parent_loop_1_fu_193_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        grp_dataflow_parent_loop_1_fu_193_ap_continue = 1'b1;
    end else begin
        grp_dataflow_parent_loop_1_fu_193_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_cols_V_blk_n = img_cols_V_empty_n;
    end else begin
        img_cols_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_cols_V_out_blk_n = img_cols_V_out_full_n;
    end else begin
        img_cols_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (img_cols_V_out_full_n == 1'b0) | (img_rows_V_out_full_n == 1'b0) | (w_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_cols_V_out_write = 1'b1;
    end else begin
        img_cols_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (img_cols_V_out_full_n == 1'b0) | (img_rows_V_out_full_n == 1'b0) | (w_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_cols_V_read = 1'b1;
    end else begin
        img_cols_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        img_data_stream_0_V_write = grp_dataflow_parent_loop_1_fu_193_img_data_stream_0_V_write;
    end else begin
        img_data_stream_0_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        img_data_stream_1_V_write = grp_dataflow_parent_loop_1_fu_193_img_data_stream_1_V_write;
    end else begin
        img_data_stream_1_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        img_data_stream_2_V_write = grp_dataflow_parent_loop_1_fu_193_img_data_stream_2_V_write;
    end else begin
        img_data_stream_2_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_rows_V_blk_n = img_rows_V_empty_n;
    end else begin
        img_rows_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_rows_V_out_blk_n = img_rows_V_out_full_n;
    end else begin
        img_rows_V_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (img_cols_V_out_full_n == 1'b0) | (img_rows_V_out_full_n == 1'b0) | (w_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_rows_V_out_write = 1'b1;
    end else begin
        img_rows_V_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (img_cols_V_out_full_n == 1'b0) | (img_rows_V_out_full_n == 1'b0) | (w_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        img_rows_V_read = 1'b1;
    end else begin
        img_rows_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((grp_dataflow_parent_loop_1_fu_193_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_pMemPort_ARVALID = grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARVALID;
    end else begin
        m_axi_pMemPort_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_pMemPort_RREADY = grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_RREADY;
    end else begin
        m_axi_pMemPort_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        r_ap_vld = 1'b1;
    end else begin
        r_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        w_blk_n = w_empty_n;
    end else begin
        w_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (img_cols_V_out_full_n == 1'b0) | (img_rows_V_out_full_n == 1'b0) | (w_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        w_read = 1'b1;
    end else begin
        w_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (img_cols_V_out_full_n == 1'b0) | (img_rows_V_out_full_n == 1'b0) | (w_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_dataflow_parent_loop_1_fu_193_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((img_cols_V_empty_n == 1'b0) | (img_rows_V_empty_n == 1'b0) | (img_cols_V_out_full_n == 1'b0) | (img_rows_V_out_full_n == 1'b0) | (w_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign baseAddr_address0 = grp_dataflow_parent_loop_1_fu_193_baseAddr_address0;

assign baseAddr_ce0 = grp_dataflow_parent_loop_1_fu_193_baseAddr_ce0;

assign grp_dataflow_parent_loop_1_fu_193_ap_start = ap_reg_grp_dataflow_parent_loop_1_fu_193_ap_start;

assign icmp_fu_229_p2 = (($signed(tmp_fu_219_p4) < $signed(31'd1)) ? 1'b1 : 1'b0);

assign img_cols_V_out_din = img_cols_V_dout;

assign img_data_stream_0_V_din = grp_dataflow_parent_loop_1_fu_193_img_data_stream_0_V_din;

assign img_data_stream_1_V_din = grp_dataflow_parent_loop_1_fu_193_img_data_stream_1_V_din;

assign img_data_stream_2_V_din = grp_dataflow_parent_loop_1_fu_193_img_data_stream_2_V_din;

assign img_rows_V_out_din = img_rows_V_dout;

assign m_axi_pMemPort_ARADDR = grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARADDR;

assign m_axi_pMemPort_ARBURST = grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARBURST;

assign m_axi_pMemPort_ARCACHE = grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARCACHE;

assign m_axi_pMemPort_ARID = grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARID;

assign m_axi_pMemPort_ARLEN = grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARLEN;

assign m_axi_pMemPort_ARLOCK = grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARLOCK;

assign m_axi_pMemPort_ARPROT = grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARPROT;

assign m_axi_pMemPort_ARQOS = grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARQOS;

assign m_axi_pMemPort_ARREGION = grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARREGION;

assign m_axi_pMemPort_ARSIZE = grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARSIZE;

assign m_axi_pMemPort_ARUSER = grp_dataflow_parent_loop_1_fu_193_m_axi_pMemPort_ARUSER;

assign m_axi_pMemPort_AWADDR = 32'd0;

assign m_axi_pMemPort_AWBURST = 2'd0;

assign m_axi_pMemPort_AWCACHE = 4'd0;

assign m_axi_pMemPort_AWID = 1'd0;

assign m_axi_pMemPort_AWLEN = 32'd0;

assign m_axi_pMemPort_AWLOCK = 2'd0;

assign m_axi_pMemPort_AWPROT = 3'd0;

assign m_axi_pMemPort_AWQOS = 4'd0;

assign m_axi_pMemPort_AWREGION = 4'd0;

assign m_axi_pMemPort_AWSIZE = 3'd0;

assign m_axi_pMemPort_AWUSER = 1'd0;

assign m_axi_pMemPort_AWVALID = 1'b0;

assign m_axi_pMemPort_BREADY = 1'b0;

assign m_axi_pMemPort_WDATA = 32'd0;

assign m_axi_pMemPort_WID = 1'd0;

assign m_axi_pMemPort_WLAST = 1'b0;

assign m_axi_pMemPort_WSTRB = 4'd0;

assign m_axi_pMemPort_WUSER = 1'd0;

assign m_axi_pMemPort_WVALID = 1'b0;

assign n_1_fu_253_p3 = ((tmp_9_i_fu_249_p2[0:0] === 1'b1) ? index : n_reg_288);

assign n_fu_241_p3 = ((icmp_fu_229_p2[0:0] === 1'b1) ? tmp_8_i_fu_235_p2 : 32'd0);

assign r = ((tmp_9_i_fu_249_p2[0:0] === 1'b1) ? index : n_reg_288);

assign start_out = real_start;

assign tmp_8_i_fu_235_p2 = (index + 32'd1);

assign tmp_9_i_fu_249_p2 = ((n_reg_288 == w_read_reg_277) ? 1'b1 : 1'b0);

assign tmp_fu_219_p4 = {{index[31:1]}};

endmodule //mem2mat
