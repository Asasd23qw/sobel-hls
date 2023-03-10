// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dataflow_in_loop (
        p_read,
        img_data_stream_0_V_dout,
        img_data_stream_0_V_empty_n,
        img_data_stream_0_V_read,
        img_data_stream_1_V_dout,
        img_data_stream_1_V_empty_n,
        img_data_stream_1_V_read,
        img_data_stream_2_V_dout,
        img_data_stream_2_V_empty_n,
        img_data_stream_2_V_read,
        r,
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
        row,
        index,
        baseAddr_address0,
        baseAddr_ce0,
        baseAddr_d0,
        baseAddr_q0,
        baseAddr_we0,
        ap_clk,
        ap_rst,
        p_read_ap_vld,
        r_ap_vld,
        row_ap_vld,
        index_ap_vld,
        ap_done,
        ap_start,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [31:0] p_read;
input  [7:0] img_data_stream_0_V_dout;
input   img_data_stream_0_V_empty_n;
output   img_data_stream_0_V_read;
input  [7:0] img_data_stream_1_V_dout;
input   img_data_stream_1_V_empty_n;
output   img_data_stream_1_V_read;
input  [7:0] img_data_stream_2_V_dout;
input   img_data_stream_2_V_empty_n;
output   img_data_stream_2_V_read;
input  [31:0] r;
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
input  [30:0] row;
input  [31:0] index;
output  [1:0] baseAddr_address0;
output   baseAddr_ce0;
output  [31:0] baseAddr_d0;
input  [31:0] baseAddr_q0;
output   baseAddr_we0;
input   ap_clk;
input   ap_rst;
input   p_read_ap_vld;
input   r_ap_vld;
input   row_ap_vld;
input   index_ap_vld;
output   ap_done;
input   ap_start;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    Loop_0_proc56_U0_ap_start;
wire    Loop_0_proc56_U0_ap_done;
wire    Loop_0_proc56_U0_ap_continue;
wire    Loop_0_proc56_U0_ap_idle;
wire    Loop_0_proc56_U0_ap_ready;
wire    Loop_0_proc56_U0_img_data_stream_0_V_read;
wire    Loop_0_proc56_U0_img_data_stream_1_V_read;
wire    Loop_0_proc56_U0_img_data_stream_2_V_read;
wire   [31:0] Loop_0_proc56_U0_cacheBuff1_i_din;
wire    Loop_0_proc56_U0_cacheBuff1_i_write;
wire   [31:0] Loop_0_proc56_U0_img_cols_V_out_din;
wire    Loop_0_proc56_U0_img_cols_V_out_write;
wire   [31:0] Loop_0_proc56_U0_r_out_din;
wire    Loop_0_proc56_U0_r_out_write;
wire   [30:0] Loop_0_proc56_U0_row_out_din;
wire    Loop_0_proc56_U0_row_out_write;
wire   [31:0] Loop_0_proc56_U0_index_out_din;
wire    Loop_0_proc56_U0_index_out_write;
wire    writemem_U0_ap_start;
wire    writemem_U0_ap_done;
wire    writemem_U0_ap_continue;
wire    writemem_U0_ap_idle;
wire    writemem_U0_ap_ready;
wire    writemem_U0_m_axi_pMemPort_AWVALID;
wire   [31:0] writemem_U0_m_axi_pMemPort_AWADDR;
wire   [0:0] writemem_U0_m_axi_pMemPort_AWID;
wire   [31:0] writemem_U0_m_axi_pMemPort_AWLEN;
wire   [2:0] writemem_U0_m_axi_pMemPort_AWSIZE;
wire   [1:0] writemem_U0_m_axi_pMemPort_AWBURST;
wire   [1:0] writemem_U0_m_axi_pMemPort_AWLOCK;
wire   [3:0] writemem_U0_m_axi_pMemPort_AWCACHE;
wire   [2:0] writemem_U0_m_axi_pMemPort_AWPROT;
wire   [3:0] writemem_U0_m_axi_pMemPort_AWQOS;
wire   [3:0] writemem_U0_m_axi_pMemPort_AWREGION;
wire   [0:0] writemem_U0_m_axi_pMemPort_AWUSER;
wire    writemem_U0_m_axi_pMemPort_WVALID;
wire   [31:0] writemem_U0_m_axi_pMemPort_WDATA;
wire   [3:0] writemem_U0_m_axi_pMemPort_WSTRB;
wire    writemem_U0_m_axi_pMemPort_WLAST;
wire   [0:0] writemem_U0_m_axi_pMemPort_WID;
wire   [0:0] writemem_U0_m_axi_pMemPort_WUSER;
wire    writemem_U0_m_axi_pMemPort_ARVALID;
wire   [31:0] writemem_U0_m_axi_pMemPort_ARADDR;
wire   [0:0] writemem_U0_m_axi_pMemPort_ARID;
wire   [31:0] writemem_U0_m_axi_pMemPort_ARLEN;
wire   [2:0] writemem_U0_m_axi_pMemPort_ARSIZE;
wire   [1:0] writemem_U0_m_axi_pMemPort_ARBURST;
wire   [1:0] writemem_U0_m_axi_pMemPort_ARLOCK;
wire   [3:0] writemem_U0_m_axi_pMemPort_ARCACHE;
wire   [2:0] writemem_U0_m_axi_pMemPort_ARPROT;
wire   [3:0] writemem_U0_m_axi_pMemPort_ARQOS;
wire   [3:0] writemem_U0_m_axi_pMemPort_ARREGION;
wire   [0:0] writemem_U0_m_axi_pMemPort_ARUSER;
wire    writemem_U0_m_axi_pMemPort_RREADY;
wire    writemem_U0_m_axi_pMemPort_BREADY;
wire    writemem_U0_img_cols_V_read;
wire    writemem_U0_row_read;
wire    writemem_U0_index_read;
wire    writemem_U0_r_read;
wire    writemem_U0_from_read;
wire   [1:0] writemem_U0_baseAddr_address0;
wire    writemem_U0_baseAddr_ce0;
wire    ap_sync_continue;
wire    cacheBuff_full_n;
wire   [31:0] cacheBuff_dout;
wire    cacheBuff_empty_n;
wire    img_cols_V_c_full_n;
wire   [31:0] img_cols_V_c_dout;
wire    img_cols_V_c_empty_n;
wire    r_c_full_n;
wire   [31:0] r_c_dout;
wire    r_c_empty_n;
wire    row_c_full_n;
wire   [30:0] row_c_dout;
wire    row_c_empty_n;
wire    index_c_full_n;
wire   [31:0] index_c_dout;
wire    index_c_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_Loop_0_proc56_U0_ap_ready;
wire    ap_sync_Loop_0_proc56_U0_ap_ready;
reg   [1:0] Loop_0_proc56_U0_ap_ready_count;
reg    ap_sync_reg_writemem_U0_ap_ready;
wire    ap_sync_writemem_U0_ap_ready;
reg   [1:0] writemem_U0_ap_ready_count;
wire    Loop_0_proc56_U0_start_full_n;
wire    Loop_0_proc56_U0_start_write;
wire    writemem_U0_start_full_n;
wire    writemem_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_Loop_0_proc56_U0_ap_ready = 1'b0;
#0 Loop_0_proc56_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_writemem_U0_ap_ready = 1'b0;
#0 writemem_U0_ap_ready_count = 2'd0;
end

Loop_0_proc56 Loop_0_proc56_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_0_proc56_U0_ap_start),
    .ap_done(Loop_0_proc56_U0_ap_done),
    .ap_continue(Loop_0_proc56_U0_ap_continue),
    .ap_idle(Loop_0_proc56_U0_ap_idle),
    .ap_ready(Loop_0_proc56_U0_ap_ready),
    .p_read(p_read),
    .img_data_stream_0_V_dout(img_data_stream_0_V_dout),
    .img_data_stream_0_V_empty_n(img_data_stream_0_V_empty_n),
    .img_data_stream_0_V_read(Loop_0_proc56_U0_img_data_stream_0_V_read),
    .img_data_stream_1_V_dout(img_data_stream_1_V_dout),
    .img_data_stream_1_V_empty_n(img_data_stream_1_V_empty_n),
    .img_data_stream_1_V_read(Loop_0_proc56_U0_img_data_stream_1_V_read),
    .img_data_stream_2_V_dout(img_data_stream_2_V_dout),
    .img_data_stream_2_V_empty_n(img_data_stream_2_V_empty_n),
    .img_data_stream_2_V_read(Loop_0_proc56_U0_img_data_stream_2_V_read),
    .cacheBuff1_i_din(Loop_0_proc56_U0_cacheBuff1_i_din),
    .cacheBuff1_i_full_n(cacheBuff_full_n),
    .cacheBuff1_i_write(Loop_0_proc56_U0_cacheBuff1_i_write),
    .r(r),
    .row(row),
    .img_cols_V_out_din(Loop_0_proc56_U0_img_cols_V_out_din),
    .img_cols_V_out_full_n(img_cols_V_c_full_n),
    .img_cols_V_out_write(Loop_0_proc56_U0_img_cols_V_out_write),
    .r_out_din(Loop_0_proc56_U0_r_out_din),
    .r_out_full_n(r_c_full_n),
    .r_out_write(Loop_0_proc56_U0_r_out_write),
    .row_out_din(Loop_0_proc56_U0_row_out_din),
    .row_out_full_n(row_c_full_n),
    .row_out_write(Loop_0_proc56_U0_row_out_write),
    .index_out_din(Loop_0_proc56_U0_index_out_din),
    .index_out_full_n(index_c_full_n),
    .index_out_write(Loop_0_proc56_U0_index_out_write),
    .index(index)
);

writemem writemem_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(writemem_U0_ap_start),
    .ap_done(writemem_U0_ap_done),
    .ap_continue(writemem_U0_ap_continue),
    .ap_idle(writemem_U0_ap_idle),
    .ap_ready(writemem_U0_ap_ready),
    .m_axi_pMemPort_AWVALID(writemem_U0_m_axi_pMemPort_AWVALID),
    .m_axi_pMemPort_AWREADY(m_axi_pMemPort_AWREADY),
    .m_axi_pMemPort_AWADDR(writemem_U0_m_axi_pMemPort_AWADDR),
    .m_axi_pMemPort_AWID(writemem_U0_m_axi_pMemPort_AWID),
    .m_axi_pMemPort_AWLEN(writemem_U0_m_axi_pMemPort_AWLEN),
    .m_axi_pMemPort_AWSIZE(writemem_U0_m_axi_pMemPort_AWSIZE),
    .m_axi_pMemPort_AWBURST(writemem_U0_m_axi_pMemPort_AWBURST),
    .m_axi_pMemPort_AWLOCK(writemem_U0_m_axi_pMemPort_AWLOCK),
    .m_axi_pMemPort_AWCACHE(writemem_U0_m_axi_pMemPort_AWCACHE),
    .m_axi_pMemPort_AWPROT(writemem_U0_m_axi_pMemPort_AWPROT),
    .m_axi_pMemPort_AWQOS(writemem_U0_m_axi_pMemPort_AWQOS),
    .m_axi_pMemPort_AWREGION(writemem_U0_m_axi_pMemPort_AWREGION),
    .m_axi_pMemPort_AWUSER(writemem_U0_m_axi_pMemPort_AWUSER),
    .m_axi_pMemPort_WVALID(writemem_U0_m_axi_pMemPort_WVALID),
    .m_axi_pMemPort_WREADY(m_axi_pMemPort_WREADY),
    .m_axi_pMemPort_WDATA(writemem_U0_m_axi_pMemPort_WDATA),
    .m_axi_pMemPort_WSTRB(writemem_U0_m_axi_pMemPort_WSTRB),
    .m_axi_pMemPort_WLAST(writemem_U0_m_axi_pMemPort_WLAST),
    .m_axi_pMemPort_WID(writemem_U0_m_axi_pMemPort_WID),
    .m_axi_pMemPort_WUSER(writemem_U0_m_axi_pMemPort_WUSER),
    .m_axi_pMemPort_ARVALID(writemem_U0_m_axi_pMemPort_ARVALID),
    .m_axi_pMemPort_ARREADY(1'b0),
    .m_axi_pMemPort_ARADDR(writemem_U0_m_axi_pMemPort_ARADDR),
    .m_axi_pMemPort_ARID(writemem_U0_m_axi_pMemPort_ARID),
    .m_axi_pMemPort_ARLEN(writemem_U0_m_axi_pMemPort_ARLEN),
    .m_axi_pMemPort_ARSIZE(writemem_U0_m_axi_pMemPort_ARSIZE),
    .m_axi_pMemPort_ARBURST(writemem_U0_m_axi_pMemPort_ARBURST),
    .m_axi_pMemPort_ARLOCK(writemem_U0_m_axi_pMemPort_ARLOCK),
    .m_axi_pMemPort_ARCACHE(writemem_U0_m_axi_pMemPort_ARCACHE),
    .m_axi_pMemPort_ARPROT(writemem_U0_m_axi_pMemPort_ARPROT),
    .m_axi_pMemPort_ARQOS(writemem_U0_m_axi_pMemPort_ARQOS),
    .m_axi_pMemPort_ARREGION(writemem_U0_m_axi_pMemPort_ARREGION),
    .m_axi_pMemPort_ARUSER(writemem_U0_m_axi_pMemPort_ARUSER),
    .m_axi_pMemPort_RVALID(1'b0),
    .m_axi_pMemPort_RREADY(writemem_U0_m_axi_pMemPort_RREADY),
    .m_axi_pMemPort_RDATA(32'd0),
    .m_axi_pMemPort_RLAST(1'b0),
    .m_axi_pMemPort_RID(1'd0),
    .m_axi_pMemPort_RUSER(1'd0),
    .m_axi_pMemPort_RRESP(2'd0),
    .m_axi_pMemPort_BVALID(m_axi_pMemPort_BVALID),
    .m_axi_pMemPort_BREADY(writemem_U0_m_axi_pMemPort_BREADY),
    .m_axi_pMemPort_BRESP(m_axi_pMemPort_BRESP),
    .m_axi_pMemPort_BID(m_axi_pMemPort_BID),
    .m_axi_pMemPort_BUSER(m_axi_pMemPort_BUSER),
    .img_cols_V_dout(img_cols_V_c_dout),
    .img_cols_V_empty_n(img_cols_V_c_empty_n),
    .img_cols_V_read(writemem_U0_img_cols_V_read),
    .row_dout(row_c_dout),
    .row_empty_n(row_c_empty_n),
    .row_read(writemem_U0_row_read),
    .index_dout(index_c_dout),
    .index_empty_n(index_c_empty_n),
    .index_read(writemem_U0_index_read),
    .r_dout(r_c_dout),
    .r_empty_n(r_c_empty_n),
    .r_read(writemem_U0_r_read),
    .from_dout(cacheBuff_dout),
    .from_empty_n(cacheBuff_empty_n),
    .from_read(writemem_U0_from_read),
    .baseAddr_address0(writemem_U0_baseAddr_address0),
    .baseAddr_ce0(writemem_U0_baseAddr_ce0),
    .baseAddr_q0(baseAddr_q0)
);

fifo_w32_d480_A cacheBuff_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_0_proc56_U0_cacheBuff1_i_din),
    .if_full_n(cacheBuff_full_n),
    .if_write(Loop_0_proc56_U0_cacheBuff1_i_write),
    .if_dout(cacheBuff_dout),
    .if_empty_n(cacheBuff_empty_n),
    .if_read(writemem_U0_from_read)
);

fifo_w32_d1_A img_cols_V_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_0_proc56_U0_img_cols_V_out_din),
    .if_full_n(img_cols_V_c_full_n),
    .if_write(Loop_0_proc56_U0_img_cols_V_out_write),
    .if_dout(img_cols_V_c_dout),
    .if_empty_n(img_cols_V_c_empty_n),
    .if_read(writemem_U0_img_cols_V_read)
);

fifo_w32_d1_A r_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_0_proc56_U0_r_out_din),
    .if_full_n(r_c_full_n),
    .if_write(Loop_0_proc56_U0_r_out_write),
    .if_dout(r_c_dout),
    .if_empty_n(r_c_empty_n),
    .if_read(writemem_U0_r_read)
);

fifo_w31_d1_A row_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_0_proc56_U0_row_out_din),
    .if_full_n(row_c_full_n),
    .if_write(Loop_0_proc56_U0_row_out_write),
    .if_dout(row_c_dout),
    .if_empty_n(row_c_empty_n),
    .if_read(writemem_U0_row_read)
);

fifo_w32_d1_A index_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_0_proc56_U0_index_out_din),
    .if_full_n(index_c_full_n),
    .if_write(Loop_0_proc56_U0_index_out_write),
    .if_dout(index_c_dout),
    .if_empty_n(index_c_empty_n),
    .if_read(writemem_U0_index_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_Loop_0_proc56_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Loop_0_proc56_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Loop_0_proc56_U0_ap_ready <= ap_sync_Loop_0_proc56_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_writemem_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_writemem_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_writemem_U0_ap_ready <= ap_sync_writemem_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == Loop_0_proc56_U0_ap_ready) & (ap_sync_ready == 1'b1))) begin
        Loop_0_proc56_U0_ap_ready_count <= (Loop_0_proc56_U0_ap_ready_count - 2'd1);
    end else if (((1'b1 == Loop_0_proc56_U0_ap_ready) & (ap_sync_ready == 1'b0))) begin
        Loop_0_proc56_U0_ap_ready_count <= (Loop_0_proc56_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((writemem_U0_ap_ready == 1'b0) & (ap_sync_ready == 1'b1))) begin
        writemem_U0_ap_ready_count <= (writemem_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (writemem_U0_ap_ready == 1'b1))) begin
        writemem_U0_ap_ready_count <= (writemem_U0_ap_ready_count + 2'd1);
    end
end

assign Loop_0_proc56_U0_ap_continue = 1'b1;

assign Loop_0_proc56_U0_ap_start = ((ap_sync_reg_Loop_0_proc56_U0_ap_ready ^ 1'b1) & ap_start);

assign Loop_0_proc56_U0_start_full_n = 1'b1;

assign Loop_0_proc56_U0_start_write = 1'b0;

assign ap_done = writemem_U0_ap_done;

assign ap_idle = (writemem_U0_ap_idle & Loop_0_proc56_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_Loop_0_proc56_U0_ap_ready = (ap_sync_reg_Loop_0_proc56_U0_ap_ready | Loop_0_proc56_U0_ap_ready);

assign ap_sync_continue = ap_continue;

assign ap_sync_done = writemem_U0_ap_done;

assign ap_sync_ready = (ap_sync_writemem_U0_ap_ready & ap_sync_Loop_0_proc56_U0_ap_ready);

assign ap_sync_writemem_U0_ap_ready = (writemem_U0_ap_ready | ap_sync_reg_writemem_U0_ap_ready);

assign baseAddr_address0 = writemem_U0_baseAddr_address0;

assign baseAddr_ce0 = writemem_U0_baseAddr_ce0;

assign baseAddr_d0 = 32'd0;

assign baseAddr_we0 = 1'b0;

assign img_data_stream_0_V_read = Loop_0_proc56_U0_img_data_stream_0_V_read;

assign img_data_stream_1_V_read = Loop_0_proc56_U0_img_data_stream_1_V_read;

assign img_data_stream_2_V_read = Loop_0_proc56_U0_img_data_stream_2_V_read;

assign m_axi_pMemPort_ARADDR = 32'd0;

assign m_axi_pMemPort_ARBURST = 2'd0;

assign m_axi_pMemPort_ARCACHE = 4'd0;

assign m_axi_pMemPort_ARID = 1'd0;

assign m_axi_pMemPort_ARLEN = 32'd0;

assign m_axi_pMemPort_ARLOCK = 2'd0;

assign m_axi_pMemPort_ARPROT = 3'd0;

assign m_axi_pMemPort_ARQOS = 4'd0;

assign m_axi_pMemPort_ARREGION = 4'd0;

assign m_axi_pMemPort_ARSIZE = 3'd0;

assign m_axi_pMemPort_ARUSER = 1'd0;

assign m_axi_pMemPort_ARVALID = 1'b0;

assign m_axi_pMemPort_AWADDR = writemem_U0_m_axi_pMemPort_AWADDR;

assign m_axi_pMemPort_AWBURST = writemem_U0_m_axi_pMemPort_AWBURST;

assign m_axi_pMemPort_AWCACHE = writemem_U0_m_axi_pMemPort_AWCACHE;

assign m_axi_pMemPort_AWID = writemem_U0_m_axi_pMemPort_AWID;

assign m_axi_pMemPort_AWLEN = writemem_U0_m_axi_pMemPort_AWLEN;

assign m_axi_pMemPort_AWLOCK = writemem_U0_m_axi_pMemPort_AWLOCK;

assign m_axi_pMemPort_AWPROT = writemem_U0_m_axi_pMemPort_AWPROT;

assign m_axi_pMemPort_AWQOS = writemem_U0_m_axi_pMemPort_AWQOS;

assign m_axi_pMemPort_AWREGION = writemem_U0_m_axi_pMemPort_AWREGION;

assign m_axi_pMemPort_AWSIZE = writemem_U0_m_axi_pMemPort_AWSIZE;

assign m_axi_pMemPort_AWUSER = writemem_U0_m_axi_pMemPort_AWUSER;

assign m_axi_pMemPort_AWVALID = writemem_U0_m_axi_pMemPort_AWVALID;

assign m_axi_pMemPort_BREADY = writemem_U0_m_axi_pMemPort_BREADY;

assign m_axi_pMemPort_RREADY = 1'b0;

assign m_axi_pMemPort_WDATA = writemem_U0_m_axi_pMemPort_WDATA;

assign m_axi_pMemPort_WID = writemem_U0_m_axi_pMemPort_WID;

assign m_axi_pMemPort_WLAST = writemem_U0_m_axi_pMemPort_WLAST;

assign m_axi_pMemPort_WSTRB = writemem_U0_m_axi_pMemPort_WSTRB;

assign m_axi_pMemPort_WUSER = writemem_U0_m_axi_pMemPort_WUSER;

assign m_axi_pMemPort_WVALID = writemem_U0_m_axi_pMemPort_WVALID;

assign writemem_U0_ap_continue = ap_continue;

assign writemem_U0_ap_start = ((ap_sync_reg_writemem_U0_ap_ready ^ 1'b1) & ap_start);

assign writemem_U0_start_full_n = 1'b1;

assign writemem_U0_start_write = 1'b0;

endmodule //dataflow_in_loop
