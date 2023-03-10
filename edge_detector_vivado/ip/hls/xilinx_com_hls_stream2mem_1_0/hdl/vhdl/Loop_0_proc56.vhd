-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Loop_0_proc56 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_read : IN STD_LOGIC_VECTOR (31 downto 0);
    img_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_data_stream_0_V_empty_n : IN STD_LOGIC;
    img_data_stream_0_V_read : OUT STD_LOGIC;
    img_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_data_stream_1_V_empty_n : IN STD_LOGIC;
    img_data_stream_1_V_read : OUT STD_LOGIC;
    img_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    img_data_stream_2_V_empty_n : IN STD_LOGIC;
    img_data_stream_2_V_read : OUT STD_LOGIC;
    cacheBuff1_i_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    cacheBuff1_i_full_n : IN STD_LOGIC;
    cacheBuff1_i_write : OUT STD_LOGIC;
    r : IN STD_LOGIC_VECTOR (31 downto 0);
    row : IN STD_LOGIC_VECTOR (30 downto 0);
    img_cols_V_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    img_cols_V_out_full_n : IN STD_LOGIC;
    img_cols_V_out_write : OUT STD_LOGIC;
    r_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    r_out_full_n : IN STD_LOGIC;
    r_out_write : OUT STD_LOGIC;
    row_out_din : OUT STD_LOGIC_VECTOR (30 downto 0);
    row_out_full_n : IN STD_LOGIC;
    row_out_write : OUT STD_LOGIC;
    index_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    index_out_full_n : IN STD_LOGIC;
    index_out_write : OUT STD_LOGIC;
    index : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of Loop_0_proc56 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_FFFFFFFD : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111101";
    constant ap_const_lv30_0 : STD_LOGIC_VECTOR (29 downto 0) := "000000000000000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal img_data_stream_0_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_9_fu_356_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal img_data_stream_1_V_blk_n : STD_LOGIC;
    signal img_data_stream_2_V_blk_n : STD_LOGIC;
    signal cacheBuff1_i_blk_n : STD_LOGIC;
    signal img_cols_V_out_blk_n : STD_LOGIC;
    signal r_out_blk_n : STD_LOGIC;
    signal row_out_blk_n : STD_LOGIC;
    signal index_out_blk_n : STD_LOGIC;
    signal reg_265 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state2 : BOOLEAN;
    signal ap_block_state3 : BOOLEAN;
    signal reg_269 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state4 : BOOLEAN;
    signal tmp_8_fu_348_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_reg_405 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal tmp_22_reg_413 : STD_LOGIC_VECTOR (7 downto 0);
    signal col_fu_361_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal col_reg_418 : STD_LOGIC_VECTOR (31 downto 0);
    signal col_i_i_i_reg_254 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state5 : BOOLEAN;
    signal tmp_23_i_i_i_fu_367_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_35_i_i_i_fu_379_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_47_i_i_i_fu_392_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_read_op_op_fu_286_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_neg_fu_300_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_lshr_fu_306_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_4_fu_292_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_neg_t_fu_316_p2 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_5_fu_322_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_fu_278_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_fu_332_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_7_fu_340_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_condition_123 : BOOLEAN;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not((((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_9_fu_356_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    col_i_i_i_reg_254_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                col_i_i_i_reg_254 <= col_reg_418;
            elsif ((not(((index_out_full_n = ap_const_logic_0) or (row_out_full_n = ap_const_logic_0) or (r_out_full_n = ap_const_logic_0) or (img_cols_V_out_full_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                col_i_i_i_reg_254 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_9_fu_356_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                col_reg_418 <= col_fu_361_p2;
                tmp_22_reg_413 <= img_data_stream_0_V_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state3)) or (not((((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_9_fu_356_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then
                reg_265 <= img_data_stream_1_V_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4)) or (not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state3)) or (not((((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_9_fu_356_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then
                reg_269 <= img_data_stream_2_V_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((index_out_full_n = ap_const_logic_0) or (row_out_full_n = ap_const_logic_0) or (r_out_full_n = ap_const_logic_0) or (img_cols_V_out_full_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    tmp_8_reg_405(31 downto 2) <= tmp_8_fu_348_p3(31 downto 2);
            end if;
        end if;
    end process;
    tmp_8_reg_405(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, img_data_stream_2_V_empty_n, cacheBuff1_i_full_n, img_cols_V_out_full_n, r_out_full_n, row_out_full_n, index_out_full_n, ap_CS_fsm_state2, tmp_9_fu_356_p2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((index_out_full_n = ap_const_logic_0) or (row_out_full_n = ap_const_logic_0) or (r_out_full_n = ap_const_logic_0) or (img_cols_V_out_full_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if ((not((((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_9_fu_356_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif ((not((((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_9_fu_356_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if ((not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if ((not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                if ((not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, img_cols_V_out_full_n, r_out_full_n, row_out_full_n, index_out_full_n)
    begin
                ap_block_state1 <= ((index_out_full_n = ap_const_logic_0) or (row_out_full_n = ap_const_logic_0) or (r_out_full_n = ap_const_logic_0) or (img_cols_V_out_full_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state2_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, img_data_stream_2_V_empty_n, tmp_9_fu_356_p2)
    begin
                ap_block_state2 <= (((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0)));
    end process;


    ap_block_state3_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, img_data_stream_2_V_empty_n, cacheBuff1_i_full_n)
    begin
                ap_block_state3 <= ((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0));
    end process;


    ap_block_state4_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, img_data_stream_2_V_empty_n, cacheBuff1_i_full_n)
    begin
                ap_block_state4 <= ((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0));
    end process;


    ap_block_state5_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, img_data_stream_2_V_empty_n, cacheBuff1_i_full_n)
    begin
                ap_block_state5 <= ((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0));
    end process;


    ap_condition_123_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, img_data_stream_2_V_empty_n, cacheBuff1_i_full_n)
    begin
                ap_condition_123 <= not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0)));
    end process;


    ap_done_assign_proc : process(ap_done_reg, img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, img_data_stream_2_V_empty_n, ap_CS_fsm_state2, tmp_9_fu_356_p2)
    begin
        if ((not((((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_9_fu_356_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, img_data_stream_2_V_empty_n, ap_CS_fsm_state2, tmp_9_fu_356_p2)
    begin
        if ((not((((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_9_fu_356_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    cacheBuff1_i_blk_n_assign_proc : process(cacheBuff1_i_full_n, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            cacheBuff1_i_blk_n <= cacheBuff1_i_full_n;
        else 
            cacheBuff1_i_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    cacheBuff1_i_din_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, tmp_23_i_i_i_fu_367_p5, tmp_35_i_i_i_fu_379_p5, tmp_47_i_i_i_fu_392_p5, ap_condition_123)
    begin
        if ((ap_const_boolean_1 = ap_condition_123)) then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                cacheBuff1_i_din <= tmp_47_i_i_i_fu_392_p5;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                cacheBuff1_i_din <= tmp_35_i_i_i_fu_379_p5;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                cacheBuff1_i_din <= tmp_23_i_i_i_fu_367_p5;
            else 
                cacheBuff1_i_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            cacheBuff1_i_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    cacheBuff1_i_write_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, img_data_stream_2_V_empty_n, cacheBuff1_i_full_n, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state5)) or (not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4)) or (not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            cacheBuff1_i_write <= ap_const_logic_1;
        else 
            cacheBuff1_i_write <= ap_const_logic_0;
        end if; 
    end process;

    col_fu_361_p2 <= std_logic_vector(unsigned(col_i_i_i_reg_254) + unsigned(ap_const_lv32_4));

    img_cols_V_out_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, img_cols_V_out_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            img_cols_V_out_blk_n <= img_cols_V_out_full_n;
        else 
            img_cols_V_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    img_cols_V_out_din <= p_read;

    img_cols_V_out_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, img_cols_V_out_full_n, r_out_full_n, row_out_full_n, index_out_full_n)
    begin
        if ((not(((index_out_full_n = ap_const_logic_0) or (row_out_full_n = ap_const_logic_0) or (r_out_full_n = ap_const_logic_0) or (img_cols_V_out_full_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            img_cols_V_out_write <= ap_const_logic_1;
        else 
            img_cols_V_out_write <= ap_const_logic_0;
        end if; 
    end process;


    img_data_stream_0_V_blk_n_assign_proc : process(img_data_stream_0_V_empty_n, ap_CS_fsm_state2, tmp_9_fu_356_p2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            img_data_stream_0_V_blk_n <= img_data_stream_0_V_empty_n;
        else 
            img_data_stream_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    img_data_stream_0_V_read_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, img_data_stream_2_V_empty_n, cacheBuff1_i_full_n, ap_CS_fsm_state2, tmp_9_fu_356_p2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state5)) or (not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4)) or (not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state3)) or (not((((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_9_fu_356_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            img_data_stream_0_V_read <= ap_const_logic_1;
        else 
            img_data_stream_0_V_read <= ap_const_logic_0;
        end if; 
    end process;


    img_data_stream_1_V_blk_n_assign_proc : process(img_data_stream_1_V_empty_n, ap_CS_fsm_state2, tmp_9_fu_356_p2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            img_data_stream_1_V_blk_n <= img_data_stream_1_V_empty_n;
        else 
            img_data_stream_1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    img_data_stream_1_V_read_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, img_data_stream_2_V_empty_n, cacheBuff1_i_full_n, ap_CS_fsm_state2, tmp_9_fu_356_p2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state5)) or (not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4)) or (not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state3)) or (not((((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_9_fu_356_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            img_data_stream_1_V_read <= ap_const_logic_1;
        else 
            img_data_stream_1_V_read <= ap_const_logic_0;
        end if; 
    end process;


    img_data_stream_2_V_blk_n_assign_proc : process(img_data_stream_2_V_empty_n, ap_CS_fsm_state2, tmp_9_fu_356_p2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            img_data_stream_2_V_blk_n <= img_data_stream_2_V_empty_n;
        else 
            img_data_stream_2_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    img_data_stream_2_V_read_assign_proc : process(img_data_stream_0_V_empty_n, img_data_stream_1_V_empty_n, img_data_stream_2_V_empty_n, cacheBuff1_i_full_n, ap_CS_fsm_state2, tmp_9_fu_356_p2, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state5)) or (not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state4)) or (not(((cacheBuff1_i_full_n = ap_const_logic_0) or (img_data_stream_2_V_empty_n = ap_const_logic_0) or (img_data_stream_1_V_empty_n = ap_const_logic_0) or (img_data_stream_0_V_empty_n = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state3)) or (not((((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_2_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_1_V_empty_n = ap_const_logic_0)) or ((tmp_9_fu_356_p2 = ap_const_lv1_0) and (img_data_stream_0_V_empty_n = ap_const_logic_0)))) and (tmp_9_fu_356_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            img_data_stream_2_V_read <= ap_const_logic_1;
        else 
            img_data_stream_2_V_read <= ap_const_logic_0;
        end if; 
    end process;


    index_out_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, index_out_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            index_out_blk_n <= index_out_full_n;
        else 
            index_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    index_out_din <= index;

    index_out_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, img_cols_V_out_full_n, r_out_full_n, row_out_full_n, index_out_full_n)
    begin
        if ((not(((index_out_full_n = ap_const_logic_0) or (row_out_full_n = ap_const_logic_0) or (r_out_full_n = ap_const_logic_0) or (img_cols_V_out_full_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            index_out_write <= ap_const_logic_1;
        else 
            index_out_write <= ap_const_logic_0;
        end if; 
    end process;

    p_lshr_fu_306_p4 <= p_neg_fu_300_p2(31 downto 2);
    p_neg_fu_300_p2 <= std_logic_vector(signed(ap_const_lv32_FFFFFFFD) - signed(p_read));
    p_neg_t_fu_316_p2 <= std_logic_vector(unsigned(ap_const_lv30_0) - unsigned(p_lshr_fu_306_p4));
    p_read_op_op_fu_286_p2 <= std_logic_vector(unsigned(p_read) + unsigned(ap_const_lv32_3));

    r_out_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, r_out_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            r_out_blk_n <= r_out_full_n;
        else 
            r_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    r_out_din <= r;

    r_out_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, img_cols_V_out_full_n, r_out_full_n, row_out_full_n, index_out_full_n)
    begin
        if ((not(((index_out_full_n = ap_const_logic_0) or (row_out_full_n = ap_const_logic_0) or (r_out_full_n = ap_const_logic_0) or (img_cols_V_out_full_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            r_out_write <= ap_const_logic_1;
        else 
            r_out_write <= ap_const_logic_0;
        end if; 
    end process;


    row_out_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, row_out_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            row_out_blk_n <= row_out_full_n;
        else 
            row_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    row_out_din <= row;

    row_out_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, img_cols_V_out_full_n, r_out_full_n, row_out_full_n, index_out_full_n)
    begin
        if ((not(((index_out_full_n = ap_const_logic_0) or (row_out_full_n = ap_const_logic_0) or (r_out_full_n = ap_const_logic_0) or (img_cols_V_out_full_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            row_out_write <= ap_const_logic_1;
        else 
            row_out_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_23_i_i_i_fu_367_p5 <= (((img_data_stream_0_V_dout & reg_269) & reg_265) & tmp_22_reg_413);
    tmp_35_i_i_i_fu_379_p5 <= (((img_data_stream_1_V_dout & img_data_stream_0_V_dout) & reg_269) & reg_265);
    tmp_47_i_i_i_fu_392_p5 <= (((img_data_stream_2_V_dout & img_data_stream_1_V_dout) & img_data_stream_0_V_dout) & reg_269);
    tmp_4_fu_292_p3 <= p_read_op_op_fu_286_p2(31 downto 31);
    tmp_5_fu_322_p4 <= p_read_op_op_fu_286_p2(31 downto 2);
    tmp_6_fu_332_p3 <= 
        p_neg_t_fu_316_p2 when (tmp_4_fu_292_p3(0) = '1') else 
        tmp_5_fu_322_p4;
    tmp_7_fu_340_p3 <= 
        ap_const_lv30_0 when (tmp_fu_278_p3(0) = '1') else 
        tmp_6_fu_332_p3;
    tmp_8_fu_348_p3 <= (tmp_7_fu_340_p3 & ap_const_lv2_0);
    tmp_9_fu_356_p2 <= "1" when (col_i_i_i_reg_254 = tmp_8_reg_405) else "0";
    tmp_fu_278_p3 <= p_read(31 downto 31);
end behav;
