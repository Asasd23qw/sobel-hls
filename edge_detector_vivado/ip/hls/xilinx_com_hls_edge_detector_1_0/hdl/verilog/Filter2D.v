// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Filter2D (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_src_data_stream_V_dout,
        p_src_data_stream_V_empty_n,
        p_src_data_stream_V_read,
        p_dst_data_stream_V_din,
        p_dst_data_stream_V_full_n,
        p_dst_data_stream_V_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state9 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] p_src_data_stream_V_dout;
input   p_src_data_stream_V_empty_n;
output   p_src_data_stream_V_read;
output  [7:0] p_dst_data_stream_V_din;
input   p_dst_data_stream_V_full_n;
output   p_dst_data_stream_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_data_stream_V_read;
reg p_dst_data_stream_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_src_data_stream_V_blk_n;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond388_i_reg_995;
reg   [0:0] ap_reg_pp0_iter1_exitcond388_i_reg_995;
reg   [0:0] or_cond_i_i_reg_1009;
reg   [0:0] ap_reg_pp0_iter1_or_cond_i_i_reg_1009;
reg   [0:0] icmp_reg_966;
reg   [0:0] tmp_s_reg_957;
reg    p_dst_data_stream_V_blk_n;
reg    ap_enable_reg_pp0_iter5;
reg   [0:0] or_cond_i_reg_1032;
reg   [0:0] ap_reg_pp0_iter4_or_cond_i_reg_1032;
reg   [10:0] t_V_3_reg_257;
wire   [0:0] exitcond389_i_fu_268_p2;
wire    ap_CS_fsm_state2;
wire   [10:0] i_V_fu_274_p2;
reg   [10:0] i_V_reg_952;
wire   [0:0] tmp_s_fu_280_p2;
wire   [0:0] tmp_109_not_fu_286_p2;
reg   [0:0] tmp_109_not_reg_961;
wire   [0:0] icmp_fu_302_p2;
wire   [0:0] tmp_17_fu_308_p2;
reg   [0:0] tmp_17_reg_971;
wire   [0:0] tmp_153_1_fu_314_p2;
reg   [0:0] tmp_153_1_reg_975;
wire   [0:0] tmp_18_fu_320_p2;
reg   [0:0] tmp_18_reg_979;
wire   [1:0] tmp_35_fu_326_p1;
reg   [1:0] tmp_35_reg_985;
wire   [1:0] row_assign_8_2_t_fu_330_p2;
reg   [1:0] row_assign_8_2_t_reg_990;
wire   [0:0] exitcond388_i_fu_340_p2;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
reg    ap_predicate_op104_read_state5;
reg    ap_predicate_op115_read_state5;
reg    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state6_pp0_stage0_iter3;
wire    ap_block_state7_pp0_stage0_iter4;
reg    ap_block_state8_pp0_stage0_iter5;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] ap_reg_pp0_iter2_exitcond388_i_reg_995;
wire   [10:0] j_V_fu_346_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [11:0] ImagLoc_x_fu_368_p2;
reg   [11:0] ImagLoc_x_reg_1004;
wire   [0:0] or_cond_i_i_fu_394_p2;
wire   [11:0] p_p2_i_i_fu_414_p3;
reg   [11:0] p_p2_i_i_reg_1014;
wire   [0:0] sel_tmp8_fu_440_p2;
reg   [0:0] sel_tmp8_reg_1020;
wire   [0:0] brmerge_fu_446_p2;
reg   [0:0] brmerge_reg_1025;
reg   [0:0] ap_reg_pp0_iter1_brmerge_reg_1025;
wire   [0:0] or_cond_i_fu_451_p2;
reg   [0:0] ap_reg_pp0_iter1_or_cond_i_reg_1032;
reg   [0:0] ap_reg_pp0_iter2_or_cond_i_reg_1032;
reg   [0:0] ap_reg_pp0_iter3_or_cond_i_reg_1032;
wire   [1:0] tmp_41_fu_477_p1;
reg   [1:0] tmp_41_reg_1036;
reg   [10:0] k_buf_0_val_3_addr_reg_1041;
reg   [10:0] k_buf_0_val_4_addr_reg_1047;
reg   [10:0] k_buf_0_val_5_addr_reg_1053;
wire   [7:0] col_buf_0_val_0_0_fu_523_p3;
reg   [7:0] col_buf_0_val_0_0_reg_1059;
wire   [7:0] col_buf_0_val_2_0_fu_561_p3;
reg   [7:0] col_buf_0_val_2_0_reg_1064;
wire   [7:0] tmp_26_fu_604_p5;
reg   [7:0] tmp_26_reg_1069;
wire   [7:0] tmp_27_fu_615_p5;
reg   [7:0] tmp_27_reg_1074;
reg   [7:0] src_kernel_win_0_va_20_reg_1079;
wire   [9:0] p_Val2_16_1_2_fu_690_p2;
reg   [9:0] p_Val2_16_1_2_reg_1084;
wire   [7:0] tmp_47_fu_734_p1;
reg   [7:0] tmp_47_reg_1089;
wire   [9:0] tmp19_fu_738_p2;
reg   [9:0] tmp19_reg_1094;
wire   [7:0] tmp20_fu_744_p2;
reg   [7:0] tmp20_reg_1099;
reg   [0:0] isneg_reg_1104;
wire   [7:0] p_Val2_4_fu_832_p2;
reg   [7:0] p_Val2_4_reg_1110;
wire   [0:0] not_i_i_i_fu_847_p2;
reg   [0:0] not_i_i_i_reg_1115;
reg    ap_block_pp0_stage0_subdone;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter3;
reg    ap_condition_pp0_exit_iter2_state5;
reg    ap_enable_reg_pp0_iter4;
wire   [10:0] k_buf_0_val_3_address0;
reg    k_buf_0_val_3_ce0;
wire   [7:0] k_buf_0_val_3_q0;
reg    k_buf_0_val_3_ce1;
reg    k_buf_0_val_3_we1;
wire   [10:0] k_buf_0_val_4_address0;
reg    k_buf_0_val_4_ce0;
wire   [7:0] k_buf_0_val_4_q0;
reg    k_buf_0_val_4_ce1;
reg    k_buf_0_val_4_we1;
reg   [7:0] k_buf_0_val_4_d1;
wire   [10:0] k_buf_0_val_5_address0;
reg    k_buf_0_val_5_ce0;
wire   [7:0] k_buf_0_val_5_q0;
reg    k_buf_0_val_5_ce1;
reg    k_buf_0_val_5_we1;
reg   [7:0] k_buf_0_val_5_d1;
reg   [10:0] t_V_reg_246;
reg    ap_block_state1;
wire    ap_CS_fsm_state9;
wire   [63:0] tmp_22_fu_481_p1;
reg    ap_block_pp0_stage0_01001;
reg   [7:0] src_kernel_win_0_va_fu_134;
wire   [7:0] src_kernel_win_0_va_18_fu_626_p3;
reg   [7:0] src_kernel_win_0_va_15_fu_138;
reg   [7:0] src_kernel_win_0_va_16_fu_142;
wire   [7:0] src_kernel_win_0_va_19_fu_631_p3;
reg   [7:0] src_kernel_win_0_va_17_fu_146;
reg   [7:0] right_border_buf_0_s_fu_150;
reg   [7:0] right_border_buf_0_14_fu_154;
reg   [7:0] right_border_buf_0_15_fu_158;
reg   [7:0] right_border_buf_0_16_fu_162;
wire   [7:0] col_buf_0_val_1_0_fu_542_p3;
reg   [7:0] right_border_buf_0_17_fu_166;
reg   [7:0] right_border_buf_0_18_fu_170;
wire   [9:0] tmp_34_fu_292_p4;
wire   [9:0] tmp_36_fu_352_p4;
wire   [11:0] t_V_4_cast_fu_336_p1;
wire   [0:0] tmp_38_fu_374_p3;
wire   [0:0] tmp_20_fu_388_p2;
wire   [0:0] rev_fu_382_p2;
wire   [0:0] tmp_39_fu_400_p3;
wire   [11:0] p_assign_1_fu_408_p2;
wire   [0:0] tmp_22_not_fu_428_p2;
wire   [0:0] tmp_21_fu_422_p2;
wire   [0:0] sel_tmp7_fu_434_p2;
wire   [0:0] icmp2_fu_362_p2;
wire   [11:0] p_assign_2_fu_456_p2;
wire   [11:0] p_assign_5_fu_461_p3;
wire   [11:0] x_fu_467_p3;
wire  signed [31:0] col_assign_cast8_fu_473_p1;
wire   [1:0] col_assign_1_fu_506_p2;
wire   [7:0] tmp_23_fu_511_p5;
wire   [7:0] tmp_24_fu_530_p5;
wire   [7:0] tmp_25_fu_549_p5;
wire   [8:0] r_V_7_0_1_fu_652_p3;
wire   [8:0] tmp_197_0_2_cast_cas_fu_664_p1;
wire   [8:0] tmp_197_0_cast_cast_fu_648_p1;
wire   [8:0] tmp16_fu_674_p2;
wire   [9:0] tmp_197_0_cast_fu_660_p1;
wire   [9:0] tmp16_cast_fu_680_p1;
wire   [8:0] OP1_V_2_cast_fu_696_p1;
wire   [8:0] r_V_7_2_fu_700_p2;
wire   [7:0] tmp_28_fu_668_p2;
wire   [7:0] tmp_44_fu_684_p2;
wire   [8:0] OP1_V_2_2_cast_fu_720_p1;
wire   [8:0] r_V_7_2_2_fu_724_p2;
wire  signed [9:0] tmp_197_2_cast_cast_fu_706_p1;
wire  signed [9:0] tmp_197_2_2_cast_cas_fu_730_p1;
wire   [7:0] tmp_29_fu_714_p2;
wire   [7:0] tmp_45_fu_710_p1;
wire   [8:0] p_shl_fu_779_p3;
wire   [9:0] p_shl_cast_fu_786_p1;
wire   [9:0] r_V_7_2_1_fu_790_p2;
wire   [10:0] p_Val2_16_1_2_cast_fu_776_p1;
wire  signed [10:0] tmp_197_2_1_cast_fu_796_p1;
wire   [10:0] tmp18_fu_804_p2;
wire  signed [10:0] tmp19_cast_fu_810_p1;
wire   [10:0] p_Val2_3_fu_813_p2;
wire   [7:0] tmp_46_fu_800_p1;
wire   [7:0] tmp21_fu_827_p2;
wire   [2:0] tmp_30_fu_837_p4;
wire   [0:0] tmp_i_i_fu_853_p2;
wire   [0:0] overflow_fu_858_p2;
wire   [0:0] tmp_i_i_84_fu_871_p2;
wire   [7:0] p_mux_i_i_cast_fu_863_p3;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_338;
reg    ap_condition_332;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
end

Filter2D102_k_bufeOg #(
    .DataWidth( 8 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
k_buf_0_val_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(k_buf_0_val_3_address0),
    .ce0(k_buf_0_val_3_ce0),
    .q0(k_buf_0_val_3_q0),
    .address1(k_buf_0_val_3_addr_reg_1041),
    .ce1(k_buf_0_val_3_ce1),
    .we1(k_buf_0_val_3_we1),
    .d1(p_src_data_stream_V_dout)
);

Filter2D102_k_bufeOg #(
    .DataWidth( 8 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
k_buf_0_val_4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(k_buf_0_val_4_address0),
    .ce0(k_buf_0_val_4_ce0),
    .q0(k_buf_0_val_4_q0),
    .address1(k_buf_0_val_4_addr_reg_1047),
    .ce1(k_buf_0_val_4_ce1),
    .we1(k_buf_0_val_4_we1),
    .d1(k_buf_0_val_4_d1)
);

Filter2D102_k_bufeOg #(
    .DataWidth( 8 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
k_buf_0_val_5_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(k_buf_0_val_5_address0),
    .ce0(k_buf_0_val_5_ce0),
    .q0(k_buf_0_val_5_q0),
    .address1(k_buf_0_val_5_addr_reg_1053),
    .ce1(k_buf_0_val_5_ce1),
    .we1(k_buf_0_val_5_we1),
    .d1(k_buf_0_val_5_d1)
);

edge_detector_muxhbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
edge_detector_muxhbi_U44(
    .din0(right_border_buf_0_s_fu_150),
    .din1(right_border_buf_0_14_fu_154),
    .din2(8'd0),
    .din3(col_assign_1_fu_506_p2),
    .dout(tmp_23_fu_511_p5)
);

edge_detector_muxhbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
edge_detector_muxhbi_U45(
    .din0(right_border_buf_0_16_fu_162),
    .din1(right_border_buf_0_17_fu_166),
    .din2(8'd0),
    .din3(col_assign_1_fu_506_p2),
    .dout(tmp_24_fu_530_p5)
);

edge_detector_muxhbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
edge_detector_muxhbi_U46(
    .din0(right_border_buf_0_18_fu_170),
    .din1(right_border_buf_0_15_fu_158),
    .din2(8'd0),
    .din3(col_assign_1_fu_506_p2),
    .dout(tmp_25_fu_549_p5)
);

edge_detector_muxhbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
edge_detector_muxhbi_U47(
    .din0(col_buf_0_val_0_0_fu_523_p3),
    .din1(col_buf_0_val_1_0_fu_542_p3),
    .din2(col_buf_0_val_2_0_fu_561_p3),
    .din3(tmp_35_reg_985),
    .dout(tmp_26_fu_604_p5)
);

edge_detector_muxhbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
edge_detector_muxhbi_U48(
    .din0(col_buf_0_val_0_0_fu_523_p3),
    .din1(col_buf_0_val_1_0_fu_542_p3),
    .din2(col_buf_0_val_2_0_fu_561_p3),
    .din3(row_assign_8_2_t_reg_990),
    .dout(tmp_27_fu_615_p5)
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
        end else if (((exitcond389_i_fu_268_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((exitcond388_i_fu_340_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((exitcond389_i_fu_268_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter2_state5)) begin
                ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter1;
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end else if (((exitcond389_i_fu_268_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond388_i_fu_340_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        t_V_3_reg_257 <= j_V_fu_346_p2;
    end else if (((exitcond389_i_fu_268_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_3_reg_257 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        t_V_reg_246 <= i_V_reg_952;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_246 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond388_i_fu_340_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ImagLoc_x_reg_1004 <= ImagLoc_x_fu_368_p2;
        brmerge_reg_1025 <= brmerge_fu_446_p2;
        or_cond_i_i_reg_1009 <= or_cond_i_i_fu_394_p2;
        or_cond_i_reg_1032 <= or_cond_i_fu_451_p2;
        p_p2_i_i_reg_1014 <= p_p2_i_i_fu_414_p3;
        sel_tmp8_reg_1020 <= sel_tmp8_fu_440_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_reg_pp0_iter1_brmerge_reg_1025 <= brmerge_reg_1025;
        ap_reg_pp0_iter1_exitcond388_i_reg_995 <= exitcond388_i_reg_995;
        ap_reg_pp0_iter1_or_cond_i_i_reg_1009 <= or_cond_i_i_reg_1009;
        ap_reg_pp0_iter1_or_cond_i_reg_1032 <= or_cond_i_reg_1032;
        exitcond388_i_reg_995 <= exitcond388_i_fu_340_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_reg_pp0_iter2_exitcond388_i_reg_995 <= ap_reg_pp0_iter1_exitcond388_i_reg_995;
        ap_reg_pp0_iter2_or_cond_i_reg_1032 <= ap_reg_pp0_iter1_or_cond_i_reg_1032;
        ap_reg_pp0_iter3_or_cond_i_reg_1032 <= ap_reg_pp0_iter2_or_cond_i_reg_1032;
        ap_reg_pp0_iter4_or_cond_i_reg_1032 <= ap_reg_pp0_iter3_or_cond_i_reg_1032;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter1_exitcond388_i_reg_995 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        col_buf_0_val_0_0_reg_1059 <= col_buf_0_val_0_0_fu_523_p3;
        col_buf_0_val_2_0_reg_1064 <= col_buf_0_val_2_0_fu_561_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_V_reg_952 <= i_V_fu_274_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond389_i_fu_268_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_reg_966 <= icmp_fu_302_p2;
        row_assign_8_2_t_reg_990 <= row_assign_8_2_t_fu_330_p2;
        tmp_109_not_reg_961 <= tmp_109_not_fu_286_p2;
        tmp_153_1_reg_975 <= tmp_153_1_fu_314_p2;
        tmp_17_reg_971 <= tmp_17_fu_308_p2;
        tmp_18_reg_979 <= tmp_18_fu_320_p2;
        tmp_35_reg_985 <= tmp_35_fu_326_p1;
        tmp_s_reg_957 <= tmp_s_fu_280_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter3_or_cond_i_reg_1032 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        isneg_reg_1104 <= p_Val2_3_fu_813_p2[32'd10];
        not_i_i_i_reg_1115 <= not_i_i_i_fu_847_p2;
        p_Val2_4_reg_1110 <= p_Val2_4_fu_832_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond388_i_reg_995 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        k_buf_0_val_3_addr_reg_1041 <= tmp_22_fu_481_p1;
        k_buf_0_val_4_addr_reg_1047 <= tmp_22_fu_481_p1;
        k_buf_0_val_5_addr_reg_1053 <= tmp_22_fu_481_p1;
        tmp_41_reg_1036 <= tmp_41_fu_477_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter2_or_cond_i_reg_1032 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Val2_16_1_2_reg_1084 <= p_Val2_16_1_2_fu_690_p2;
        src_kernel_win_0_va_20_reg_1079 <= src_kernel_win_0_va_fu_134;
        tmp19_reg_1094 <= tmp19_fu_738_p2;
        tmp20_reg_1099 <= tmp20_fu_744_p2;
        tmp_47_reg_1089 <= tmp_47_fu_734_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_predicate_op115_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        right_border_buf_0_14_fu_154 <= right_border_buf_0_s_fu_150;
        right_border_buf_0_15_fu_158 <= right_border_buf_0_18_fu_170;
        right_border_buf_0_16_fu_162 <= col_buf_0_val_1_0_fu_542_p3;
        right_border_buf_0_17_fu_166 <= right_border_buf_0_16_fu_162;
        right_border_buf_0_18_fu_170 <= col_buf_0_val_2_0_fu_561_p3;
        right_border_buf_0_s_fu_150 <= col_buf_0_val_0_0_fu_523_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter2_exitcond388_i_reg_995 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src_kernel_win_0_va_15_fu_138 <= src_kernel_win_0_va_fu_134;
        src_kernel_win_0_va_16_fu_142 <= src_kernel_win_0_va_19_fu_631_p3;
        src_kernel_win_0_va_17_fu_146 <= src_kernel_win_0_va_16_fu_142;
        src_kernel_win_0_va_fu_134 <= src_kernel_win_0_va_18_fu_626_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_18_reg_979 == 1'd1) & (ap_reg_pp0_iter1_exitcond388_i_reg_995 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_26_reg_1069 <= tmp_26_fu_604_p5;
        tmp_27_reg_1074 <= tmp_27_fu_615_p5;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_condition_pp0_exit_iter2_state5 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter2_state5 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond389_i_fu_268_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond389_i_fu_268_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        k_buf_0_val_3_ce0 = 1'b1;
    end else begin
        k_buf_0_val_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_17_reg_971 == 1'd1) & (ap_reg_pp0_iter1_or_cond_i_i_reg_1009 == 1'd1) & (icmp_reg_966 == 1'd0) & (ap_reg_pp0_iter1_exitcond388_i_reg_995 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op115_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_3_ce1 = 1'b1;
    end else begin
        k_buf_0_val_3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_17_reg_971 == 1'd1) & (ap_reg_pp0_iter1_or_cond_i_i_reg_1009 == 1'd1) & (icmp_reg_966 == 1'd0) & (ap_reg_pp0_iter1_exitcond388_i_reg_995 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op115_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_3_we1 = 1'b1;
    end else begin
        k_buf_0_val_3_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        k_buf_0_val_4_ce0 = 1'b1;
    end else begin
        k_buf_0_val_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_153_1_reg_975 == 1'd1) & (ap_reg_pp0_iter1_or_cond_i_i_reg_1009 == 1'd1) & (icmp_reg_966 == 1'd0) & (ap_reg_pp0_iter1_exitcond388_i_reg_995 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op115_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_4_ce1 = 1'b1;
    end else begin
        k_buf_0_val_4_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((ap_predicate_op115_read_state5 == 1'b1)) begin
            k_buf_0_val_4_d1 = k_buf_0_val_3_q0;
        end else if ((1'b1 == ap_condition_338)) begin
            k_buf_0_val_4_d1 = p_src_data_stream_V_dout;
        end else begin
            k_buf_0_val_4_d1 = 'bx;
        end
    end else begin
        k_buf_0_val_4_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((tmp_153_1_reg_975 == 1'd1) & (ap_reg_pp0_iter1_or_cond_i_i_reg_1009 == 1'd1) & (icmp_reg_966 == 1'd0) & (ap_reg_pp0_iter1_exitcond388_i_reg_995 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op115_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_4_we1 = 1'b1;
    end else begin
        k_buf_0_val_4_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        k_buf_0_val_5_ce0 = 1'b1;
    end else begin
        k_buf_0_val_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_17_reg_971 == 1'd1) & (ap_reg_pp0_iter1_or_cond_i_i_reg_1009 == 1'd1) & (icmp_reg_966 == 1'd0) & (ap_reg_pp0_iter1_exitcond388_i_reg_995 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op115_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_5_ce1 = 1'b1;
    end else begin
        k_buf_0_val_5_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((ap_predicate_op115_read_state5 == 1'b1)) begin
            k_buf_0_val_5_d1 = k_buf_0_val_4_q0;
        end else if ((1'b1 == ap_condition_332)) begin
            k_buf_0_val_5_d1 = p_src_data_stream_V_dout;
        end else begin
            k_buf_0_val_5_d1 = 'bx;
        end
    end else begin
        k_buf_0_val_5_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((tmp_17_reg_971 == 1'd1) & (ap_reg_pp0_iter1_or_cond_i_i_reg_1009 == 1'd1) & (icmp_reg_966 == 1'd0) & (ap_reg_pp0_iter1_exitcond388_i_reg_995 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op115_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        k_buf_0_val_5_we1 = 1'b1;
    end else begin
        k_buf_0_val_5_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter4_or_cond_i_reg_1032 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        p_dst_data_stream_V_blk_n = p_dst_data_stream_V_full_n;
    end else begin
        p_dst_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter4_or_cond_i_reg_1032 == 1'd1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_dst_data_stream_V_write = 1'b1;
    end else begin
        p_dst_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((((tmp_s_reg_957 == 1'd1) & (icmp_reg_966 == 1'd1) & (ap_reg_pp0_iter1_or_cond_i_i_reg_1009 == 1'd1) & (ap_reg_pp0_iter1_exitcond388_i_reg_995 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_reg_pp0_iter1_or_cond_i_i_reg_1009 == 1'd1) & (icmp_reg_966 == 1'd0) & (ap_reg_pp0_iter1_exitcond388_i_reg_995 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        p_src_data_stream_V_blk_n = p_src_data_stream_V_empty_n;
    end else begin
        p_src_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op115_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op104_read_state5 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        p_src_data_stream_V_read = 1'b1;
    end else begin
        p_src_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond389_i_fu_268_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ImagLoc_x_fu_368_p2 = ($signed(12'd4095) + $signed(t_V_4_cast_fu_336_p1));

assign OP1_V_2_2_cast_fu_720_p1 = src_kernel_win_0_va_18_fu_626_p3;

assign OP1_V_2_cast_fu_696_p1 = src_kernel_win_0_va_15_fu_138;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_reg_pp0_iter4_or_cond_i_reg_1032 == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op115_read_state5 == 1'b1)) | ((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op104_read_state5 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_reg_pp0_iter4_or_cond_i_reg_1032 == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op115_read_state5 == 1'b1)) | ((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op104_read_state5 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_reg_pp0_iter4_or_cond_i_reg_1032 == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op115_read_state5 == 1'b1)) | ((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op104_read_state5 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_pp0_stage0_iter2 = (((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op115_read_state5 == 1'b1)) | ((p_src_data_stream_V_empty_n == 1'b0) & (ap_predicate_op104_read_state5 == 1'b1)));
end

assign ap_block_state6_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state8_pp0_stage0_iter5 = ((ap_reg_pp0_iter4_or_cond_i_reg_1032 == 1'd1) & (p_dst_data_stream_V_full_n == 1'b0));
end

always @ (*) begin
    ap_condition_332 = ((tmp_17_reg_971 == 1'd1) & (ap_reg_pp0_iter1_or_cond_i_i_reg_1009 == 1'd1) & (icmp_reg_966 == 1'd0) & (ap_reg_pp0_iter1_exitcond388_i_reg_995 == 1'd0));
end

always @ (*) begin
    ap_condition_338 = ((tmp_153_1_reg_975 == 1'd1) & (ap_reg_pp0_iter1_or_cond_i_i_reg_1009 == 1'd1) & (icmp_reg_966 == 1'd0) & (ap_reg_pp0_iter1_exitcond388_i_reg_995 == 1'd0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_predicate_op104_read_state5 = ((ap_reg_pp0_iter1_or_cond_i_i_reg_1009 == 1'd1) & (icmp_reg_966 == 1'd0) & (ap_reg_pp0_iter1_exitcond388_i_reg_995 == 1'd0));
end

always @ (*) begin
    ap_predicate_op115_read_state5 = ((tmp_s_reg_957 == 1'd1) & (icmp_reg_966 == 1'd1) & (ap_reg_pp0_iter1_or_cond_i_i_reg_1009 == 1'd1) & (ap_reg_pp0_iter1_exitcond388_i_reg_995 == 1'd0));
end

assign brmerge_fu_446_p2 = (tmp_20_fu_388_p2 | tmp_109_not_reg_961);

assign col_assign_1_fu_506_p2 = (tmp_41_reg_1036 ^ 2'd3);

assign col_assign_cast8_fu_473_p1 = $signed(x_fu_467_p3);

assign col_buf_0_val_0_0_fu_523_p3 = ((ap_reg_pp0_iter1_brmerge_reg_1025[0:0] === 1'b1) ? k_buf_0_val_3_q0 : tmp_23_fu_511_p5);

assign col_buf_0_val_1_0_fu_542_p3 = ((ap_reg_pp0_iter1_brmerge_reg_1025[0:0] === 1'b1) ? k_buf_0_val_4_q0 : tmp_24_fu_530_p5);

assign col_buf_0_val_2_0_fu_561_p3 = ((ap_reg_pp0_iter1_brmerge_reg_1025[0:0] === 1'b1) ? k_buf_0_val_5_q0 : tmp_25_fu_549_p5);

assign exitcond388_i_fu_340_p2 = ((t_V_3_reg_257 == 11'd1922) ? 1'b1 : 1'b0);

assign exitcond389_i_fu_268_p2 = ((t_V_reg_246 == 11'd1082) ? 1'b1 : 1'b0);

assign i_V_fu_274_p2 = (t_V_reg_246 + 11'd1);

assign icmp2_fu_362_p2 = ((tmp_36_fu_352_p4 != 10'd0) ? 1'b1 : 1'b0);

assign icmp_fu_302_p2 = ((tmp_34_fu_292_p4 != 10'd0) ? 1'b1 : 1'b0);

assign j_V_fu_346_p2 = (t_V_3_reg_257 + 11'd1);

assign k_buf_0_val_3_address0 = tmp_22_fu_481_p1;

assign k_buf_0_val_4_address0 = tmp_22_fu_481_p1;

assign k_buf_0_val_5_address0 = tmp_22_fu_481_p1;

assign not_i_i_i_fu_847_p2 = ((tmp_30_fu_837_p4 != 3'd0) ? 1'b1 : 1'b0);

assign or_cond_i_fu_451_p2 = (icmp_reg_966 & icmp2_fu_362_p2);

assign or_cond_i_i_fu_394_p2 = (tmp_20_fu_388_p2 & rev_fu_382_p2);

assign overflow_fu_858_p2 = (tmp_i_i_fu_853_p2 & not_i_i_i_reg_1115);

assign p_Val2_16_1_2_cast_fu_776_p1 = p_Val2_16_1_2_reg_1084;

assign p_Val2_16_1_2_fu_690_p2 = (tmp_197_0_cast_fu_660_p1 + tmp16_cast_fu_680_p1);

assign p_Val2_3_fu_813_p2 = ($signed(tmp18_fu_804_p2) + $signed(tmp19_cast_fu_810_p1));

assign p_Val2_4_fu_832_p2 = (tmp20_reg_1099 + tmp21_fu_827_p2);

assign p_assign_1_fu_408_p2 = (12'd1 - t_V_4_cast_fu_336_p1);

assign p_assign_2_fu_456_p2 = ($signed(12'd3838) - $signed(p_p2_i_i_reg_1014));

assign p_assign_5_fu_461_p3 = ((or_cond_i_i_reg_1009[0:0] === 1'b1) ? ImagLoc_x_reg_1004 : p_assign_2_fu_456_p2);

assign p_dst_data_stream_V_din = ((tmp_i_i_84_fu_871_p2[0:0] === 1'b1) ? p_mux_i_i_cast_fu_863_p3 : p_Val2_4_reg_1110);

assign p_mux_i_i_cast_fu_863_p3 = ((tmp_i_i_fu_853_p2[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign p_p2_i_i_fu_414_p3 = ((tmp_39_fu_400_p3[0:0] === 1'b1) ? p_assign_1_fu_408_p2 : ImagLoc_x_fu_368_p2);

assign p_shl_cast_fu_786_p1 = p_shl_fu_779_p3;

assign p_shl_fu_779_p3 = {{src_kernel_win_0_va_20_reg_1079}, {1'd0}};

assign r_V_7_0_1_fu_652_p3 = {{src_kernel_win_0_va_16_fu_142}, {1'd0}};

assign r_V_7_2_1_fu_790_p2 = (10'd0 - p_shl_cast_fu_786_p1);

assign r_V_7_2_2_fu_724_p2 = (9'd0 - OP1_V_2_2_cast_fu_720_p1);

assign r_V_7_2_fu_700_p2 = (9'd0 - OP1_V_2_cast_fu_696_p1);

assign rev_fu_382_p2 = (tmp_38_fu_374_p3 ^ 1'd1);

assign row_assign_8_2_t_fu_330_p2 = ($signed(2'd2) - $signed(tmp_35_fu_326_p1));

assign sel_tmp7_fu_434_p2 = (tmp_38_fu_374_p3 | tmp_22_not_fu_428_p2);

assign sel_tmp8_fu_440_p2 = (tmp_21_fu_422_p2 & sel_tmp7_fu_434_p2);

assign src_kernel_win_0_va_18_fu_626_p3 = ((tmp_18_reg_979[0:0] === 1'b1) ? tmp_26_reg_1069 : col_buf_0_val_0_0_reg_1059);

assign src_kernel_win_0_va_19_fu_631_p3 = ((tmp_18_reg_979[0:0] === 1'b1) ? tmp_27_reg_1074 : col_buf_0_val_2_0_reg_1064);

assign t_V_4_cast_fu_336_p1 = t_V_3_reg_257;

assign tmp16_cast_fu_680_p1 = tmp16_fu_674_p2;

assign tmp16_fu_674_p2 = (tmp_197_0_2_cast_cas_fu_664_p1 + tmp_197_0_cast_cast_fu_648_p1);

assign tmp18_fu_804_p2 = ($signed(p_Val2_16_1_2_cast_fu_776_p1) + $signed(tmp_197_2_1_cast_fu_796_p1));

assign tmp19_cast_fu_810_p1 = $signed(tmp19_reg_1094);

assign tmp19_fu_738_p2 = ($signed(tmp_197_2_cast_cast_fu_706_p1) + $signed(tmp_197_2_2_cast_cas_fu_730_p1));

assign tmp20_fu_744_p2 = (tmp_29_fu_714_p2 + tmp_45_fu_710_p1);

assign tmp21_fu_827_p2 = (tmp_47_reg_1089 + tmp_46_fu_800_p1);

assign tmp_109_not_fu_286_p2 = ((t_V_reg_246 > 11'd1079) ? 1'b1 : 1'b0);

assign tmp_153_1_fu_314_p2 = ((t_V_reg_246 == 11'd0) ? 1'b1 : 1'b0);

assign tmp_17_fu_308_p2 = ((t_V_reg_246 == 11'd1) ? 1'b1 : 1'b0);

assign tmp_18_fu_320_p2 = ((t_V_reg_246 > 11'd1080) ? 1'b1 : 1'b0);

assign tmp_197_0_2_cast_cas_fu_664_p1 = src_kernel_win_0_va_19_fu_631_p3;

assign tmp_197_0_cast_cast_fu_648_p1 = src_kernel_win_0_va_17_fu_146;

assign tmp_197_0_cast_fu_660_p1 = r_V_7_0_1_fu_652_p3;

assign tmp_197_2_1_cast_fu_796_p1 = $signed(r_V_7_2_1_fu_790_p2);

assign tmp_197_2_2_cast_cas_fu_730_p1 = $signed(r_V_7_2_2_fu_724_p2);

assign tmp_197_2_cast_cast_fu_706_p1 = $signed(r_V_7_2_fu_700_p2);

assign tmp_20_fu_388_p2 = (($signed(ImagLoc_x_fu_368_p2) < $signed(12'd1920)) ? 1'b1 : 1'b0);

assign tmp_21_fu_422_p2 = (($signed(p_p2_i_i_fu_414_p3) < $signed(12'd1920)) ? 1'b1 : 1'b0);

assign tmp_22_fu_481_p1 = $unsigned(col_assign_cast8_fu_473_p1);

assign tmp_22_not_fu_428_p2 = (tmp_20_fu_388_p2 ^ 1'd1);

assign tmp_28_fu_668_p2 = (src_kernel_win_0_va_17_fu_146 + src_kernel_win_0_va_19_fu_631_p3);

assign tmp_29_fu_714_p2 = (tmp_28_fu_668_p2 + tmp_44_fu_684_p2);

assign tmp_30_fu_837_p4 = {{p_Val2_3_fu_813_p2[10:8]}};

assign tmp_34_fu_292_p4 = {{t_V_reg_246[10:1]}};

assign tmp_35_fu_326_p1 = t_V_reg_246[1:0];

assign tmp_36_fu_352_p4 = {{t_V_3_reg_257[10:1]}};

assign tmp_38_fu_374_p3 = ImagLoc_x_fu_368_p2[32'd11];

assign tmp_39_fu_400_p3 = ImagLoc_x_fu_368_p2[32'd11];

assign tmp_41_fu_477_p1 = x_fu_467_p3[1:0];

assign tmp_44_fu_684_p2 = src_kernel_win_0_va_16_fu_142 << 8'd1;

assign tmp_45_fu_710_p1 = r_V_7_2_fu_700_p2[7:0];

assign tmp_46_fu_800_p1 = r_V_7_2_1_fu_790_p2[7:0];

assign tmp_47_fu_734_p1 = r_V_7_2_2_fu_724_p2[7:0];

assign tmp_i_i_84_fu_871_p2 = (overflow_fu_858_p2 | isneg_reg_1104);

assign tmp_i_i_fu_853_p2 = (isneg_reg_1104 ^ 1'd1);

assign tmp_s_fu_280_p2 = ((t_V_reg_246 < 11'd1080) ? 1'b1 : 1'b0);

assign x_fu_467_p3 = ((sel_tmp8_reg_1020[0:0] === 1'b1) ? p_p2_i_i_reg_1014 : p_assign_5_fu_461_p3);

endmodule //Filter2D
