// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1ns/1ps
module stream2mem_AXILiteS_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 6,
    C_S_AXI_DATA_WIDTH = 32
)(
    // axi4 lite slave signals
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    // user signals
    output wire [31:0]                   rows,
    output wire [31:0]                   cols,
    input  wire [1:0]                    baseAddr_address0,
    input  wire                          baseAddr_ce0,
    output wire [31:0]                   baseAddr_q0
);
//------------------------Address Info-------------------
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of rows
//        bit 31~0 - rows[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of cols
//        bit 31~0 - cols[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 ~
// 0x2f : Memory 'baseAddr' (3 * 32b)
//        Word n : bit [31:0] - baseAddr[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_ROWS_DATA_0   = 6'h10,
    ADDR_ROWS_CTRL     = 6'h14,
    ADDR_COLS_DATA_0   = 6'h18,
    ADDR_COLS_CTRL     = 6'h1c,
    ADDR_BASEADDR_BASE = 6'h20,
    ADDR_BASEADDR_HIGH = 6'h2f,
    WRIDLE             = 2'd0,
    WRDATA             = 2'd1,
    WRRESP             = 2'd2,
    WRRESET            = 2'd3,
    RDIDLE             = 2'd0,
    RDDATA             = 2'd1,
    RDRESET            = 2'd2,
    ADDR_BITS         = 6;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [31:0]                   int_rows = 'b0;
    reg  [31:0]                   int_cols = 'b0;
    // memory signals
    wire [1:0]                    int_baseAddr_address0;
    wire                          int_baseAddr_ce0;
    wire                          int_baseAddr_we0;
    wire [3:0]                    int_baseAddr_be0;
    wire [31:0]                   int_baseAddr_d0;
    wire [31:0]                   int_baseAddr_q0;
    wire [1:0]                    int_baseAddr_address1;
    wire                          int_baseAddr_ce1;
    wire                          int_baseAddr_we1;
    wire [3:0]                    int_baseAddr_be1;
    wire [31:0]                   int_baseAddr_d1;
    wire [31:0]                   int_baseAddr_q1;
    reg                           int_baseAddr_read;
    reg                           int_baseAddr_write;

//------------------------Instantiation------------------
// int_baseAddr
stream2mem_AXILiteS_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 3 )
) int_baseAddr (
    .clk0     ( ACLK ),
    .address0 ( int_baseAddr_address0 ),
    .ce0      ( int_baseAddr_ce0 ),
    .we0      ( int_baseAddr_we0 ),
    .be0      ( int_baseAddr_be0 ),
    .d0       ( int_baseAddr_d0 ),
    .q0       ( int_baseAddr_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_baseAddr_address1 ),
    .ce1      ( int_baseAddr_ce1 ),
    .we1      ( int_baseAddr_we1 ),
    .be1      ( int_baseAddr_be1 ),
    .d1       ( int_baseAddr_d1 ),
    .q1       ( int_baseAddr_q1 )
);

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_baseAddr_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_ROWS_DATA_0: begin
                    rdata <= int_rows[31:0];
                end
                ADDR_COLS_DATA_0: begin
                    rdata <= int_cols[31:0];
                end
            endcase
        end
        else if (int_baseAddr_read) begin
            rdata <= int_baseAddr_q1;
        end
    end
end


//------------------------Register logic-----------------
assign rows = int_rows;
assign cols = int_cols;
// int_rows[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_rows[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ROWS_DATA_0)
            int_rows[31:0] <= (WDATA[31:0] & wmask) | (int_rows[31:0] & ~wmask);
    end
end

// int_cols[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_cols[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_COLS_DATA_0)
            int_cols[31:0] <= (WDATA[31:0] & wmask) | (int_cols[31:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------
// baseAddr
assign int_baseAddr_address0 = baseAddr_address0;
assign int_baseAddr_ce0      = baseAddr_ce0;
assign int_baseAddr_we0      = 1'b0;
assign int_baseAddr_be0      = 1'b0;
assign int_baseAddr_d0       = 1'b0;
assign baseAddr_q0           = int_baseAddr_q0;
assign int_baseAddr_address1 = ar_hs? raddr[3:2] : waddr[3:2];
assign int_baseAddr_ce1      = ar_hs | (int_baseAddr_write & WVALID);
assign int_baseAddr_we1      = int_baseAddr_write & WVALID;
assign int_baseAddr_be1      = WSTRB;
assign int_baseAddr_d1       = WDATA;
// int_baseAddr_read
always @(posedge ACLK) begin
    if (ARESET)
        int_baseAddr_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_BASEADDR_BASE && raddr <= ADDR_BASEADDR_HIGH)
            int_baseAddr_read <= 1'b1;
        else
            int_baseAddr_read <= 1'b0;
    end
end

// int_baseAddr_write
always @(posedge ACLK) begin
    if (ARESET)
        int_baseAddr_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_BASEADDR_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_BASEADDR_HIGH)
            int_baseAddr_write <= 1'b1;
        else if (WVALID)
            int_baseAddr_write <= 1'b0;
    end
end


endmodule


`timescale 1ns/1ps

module stream2mem_AXILiteS_s_axi_ram
#(parameter
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire               we0,
    input  wire [BYTES-1:0]   be0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire               we1,
    input  wire [BYTES-1:0]   be1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------Local signal-------------------
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
// read port 0
always @(posedge clk0) begin
    if (ce0) q0 <= mem[address0];
end

// read port 1
always @(posedge clk1) begin
    if (ce1) q1 <= mem[address1];
end

genvar i;
generate
    for (i = 0; i < BYTES; i = i + 1) begin : gen_write
        // write port 0
        always @(posedge clk0) begin
            if (ce0 & we0 & be0[i]) begin
                mem[address0][8*i+7:8*i] <= d0[8*i+7:8*i];
            end
        end
        // write port 1
        always @(posedge clk1) begin
            if (ce1 & we1 & be1[i]) begin
                mem[address1][8*i+7:8*i] <= d1[8*i+7:8*i];
            end
        end
    end
endgenerate

endmodule

