// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="mul1,hls_ip_2018_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.470000,HLS_SYN_LAT=31,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=24,HLS_SYN_FF=586,HLS_SYN_LUT=608,HLS_VERSION=2018_2}" *)

module mul1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        B_0_address0,
        B_0_ce0,
        B_0_q0,
        B_1_address0,
        B_1_ce0,
        B_1_q0,
        B_2_address0,
        B_2_ce0,
        B_2_q0,
        B_3_address0,
        B_3_ce0,
        B_3_q0,
        B_4_address0,
        B_4_ce0,
        B_4_q0,
        B_5_address0,
        B_5_ce0,
        B_5_q0,
        B_6_address0,
        B_6_ce0,
        B_6_q0,
        B_7_address0,
        B_7_ce0,
        B_7_q0,
        C_0_address0,
        C_0_ce0,
        C_0_we0,
        C_0_d0,
        C_0_q0,
        C_1_address0,
        C_1_ce0,
        C_1_we0,
        C_1_d0,
        C_1_q0,
        C_2_address0,
        C_2_ce0,
        C_2_we0,
        C_2_d0,
        C_2_q0,
        C_3_address0,
        C_3_ce0,
        C_3_we0,
        C_3_d0,
        C_3_q0,
        C_4_address0,
        C_4_ce0,
        C_4_we0,
        C_4_d0,
        C_4_q0,
        C_5_address0,
        C_5_ce0,
        C_5_we0,
        C_5_d0,
        C_5_q0,
        C_6_address0,
        C_6_ce0,
        C_6_we0,
        C_6_d0,
        C_6_q0,
        C_7_address0,
        C_7_ce0,
        C_7_we0,
        C_7_d0,
        C_7_q0,
        sparse_new_address0,
        sparse_new_ce0,
        sparse_new_q0,
        sparse_new_address1,
        sparse_new_ce1,
        sparse_new_q1
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] B_0_address0;
output   B_0_ce0;
input  [31:0] B_0_q0;
output  [2:0] B_1_address0;
output   B_1_ce0;
input  [31:0] B_1_q0;
output  [2:0] B_2_address0;
output   B_2_ce0;
input  [31:0] B_2_q0;
output  [2:0] B_3_address0;
output   B_3_ce0;
input  [31:0] B_3_q0;
output  [2:0] B_4_address0;
output   B_4_ce0;
input  [31:0] B_4_q0;
output  [2:0] B_5_address0;
output   B_5_ce0;
input  [31:0] B_5_q0;
output  [2:0] B_6_address0;
output   B_6_ce0;
input  [31:0] B_6_q0;
output  [2:0] B_7_address0;
output   B_7_ce0;
input  [31:0] B_7_q0;
output  [2:0] C_0_address0;
output   C_0_ce0;
output   C_0_we0;
output  [31:0] C_0_d0;
input  [31:0] C_0_q0;
output  [2:0] C_1_address0;
output   C_1_ce0;
output   C_1_we0;
output  [31:0] C_1_d0;
input  [31:0] C_1_q0;
output  [2:0] C_2_address0;
output   C_2_ce0;
output   C_2_we0;
output  [31:0] C_2_d0;
input  [31:0] C_2_q0;
output  [2:0] C_3_address0;
output   C_3_ce0;
output   C_3_we0;
output  [31:0] C_3_d0;
input  [31:0] C_3_q0;
output  [2:0] C_4_address0;
output   C_4_ce0;
output   C_4_we0;
output  [31:0] C_4_d0;
input  [31:0] C_4_q0;
output  [2:0] C_5_address0;
output   C_5_ce0;
output   C_5_we0;
output  [31:0] C_5_d0;
input  [31:0] C_5_q0;
output  [2:0] C_6_address0;
output   C_6_ce0;
output   C_6_we0;
output  [31:0] C_6_d0;
input  [31:0] C_6_q0;
output  [2:0] C_7_address0;
output   C_7_ce0;
output   C_7_we0;
output  [31:0] C_7_d0;
input  [31:0] C_7_q0;
output  [4:0] sparse_new_address0;
output   sparse_new_ce0;
input  [31:0] sparse_new_q0;
output  [4:0] sparse_new_address1;
output   sparse_new_ce1;
input  [31:0] sparse_new_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg B_0_ce0;
reg B_1_ce0;
reg B_2_ce0;
reg B_3_ce0;
reg B_4_ce0;
reg B_5_ce0;
reg B_6_ce0;
reg B_7_ce0;
reg C_0_ce0;
reg C_0_we0;
reg C_1_ce0;
reg C_1_we0;
reg C_2_ce0;
reg C_2_we0;
reg C_3_ce0;
reg C_3_we0;
reg C_4_ce0;
reg C_4_we0;
reg C_5_ce0;
reg C_5_we0;
reg C_6_ce0;
reg C_6_we0;
reg C_7_ce0;
reg C_7_we0;
reg[4:0] sparse_new_address0;
reg sparse_new_ce0;
reg sparse_new_ce1;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] i_1_fu_310_p2;
reg   [2:0] i_1_reg_471;
wire    ap_CS_fsm_state2;
wire  signed [5:0] tmp_4_fu_332_p2;
reg  signed [5:0] tmp_4_reg_476;
wire   [0:0] exitcond1_fu_304_p2;
wire    ap_CS_fsm_state3;
reg   [2:0] C_0_addr_reg_501;
reg   [2:0] C_1_addr_reg_511;
reg   [2:0] C_2_addr_reg_521;
reg   [2:0] C_3_addr_reg_531;
reg   [2:0] C_4_addr_reg_541;
reg   [2:0] C_5_addr_reg_551;
reg   [2:0] C_6_addr_reg_561;
reg   [2:0] C_7_addr_reg_571;
reg  signed [31:0] val_reg_576;
wire    ap_CS_fsm_state4;
reg  signed [31:0] B_0_load_reg_588;
reg  signed [31:0] B_1_load_reg_593;
reg  signed [31:0] B_2_load_reg_598;
reg  signed [31:0] B_3_load_reg_603;
reg  signed [31:0] B_4_load_reg_608;
reg  signed [31:0] B_5_load_reg_613;
reg  signed [31:0] B_6_load_reg_618;
reg  signed [31:0] B_7_load_reg_623;
wire   [31:0] tmp_5_fu_388_p2;
reg   [31:0] tmp_5_reg_628;
wire    ap_CS_fsm_state5;
wire   [31:0] tmp_5_1_fu_392_p2;
reg   [31:0] tmp_5_1_reg_633;
wire   [31:0] tmp_5_2_fu_396_p2;
reg   [31:0] tmp_5_2_reg_638;
wire   [31:0] tmp_5_3_fu_400_p2;
reg   [31:0] tmp_5_3_reg_643;
wire   [31:0] tmp_5_4_fu_404_p2;
reg   [31:0] tmp_5_4_reg_648;
wire   [31:0] tmp_5_5_fu_408_p2;
reg   [31:0] tmp_5_5_reg_653;
wire   [31:0] tmp_5_6_fu_412_p2;
reg   [31:0] tmp_5_6_reg_658;
wire   [31:0] tmp_5_7_fu_416_p2;
reg   [31:0] tmp_5_7_reg_663;
reg   [2:0] i_reg_293;
wire    ap_CS_fsm_state6;
wire  signed [63:0] tmp_4_cast_fu_338_p1;
wire  signed [63:0] tmp_7_cast_fu_349_p1;
wire  signed [63:0] tmp_8_cast_fu_359_p1;
wire  signed [63:0] tmp_1_fu_364_p1;
wire  signed [63:0] tmp_2_fu_376_p1;
wire   [4:0] tmp_3_fu_320_p3;
wire   [5:0] p_shl_cast_fu_328_p1;
wire   [5:0] tmp_cast_fu_316_p1;
wire   [5:0] tmp_7_fu_343_p2;
wire   [5:0] tmp_8_fu_354_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_reg_293 <= i_1_reg_471;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_293 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        B_0_load_reg_588 <= B_0_q0;
        B_1_load_reg_593 <= B_1_q0;
        B_2_load_reg_598 <= B_2_q0;
        B_3_load_reg_603 <= B_3_q0;
        B_4_load_reg_608 <= B_4_q0;
        B_5_load_reg_613 <= B_5_q0;
        B_6_load_reg_618 <= B_6_q0;
        B_7_load_reg_623 <= B_7_q0;
        val_reg_576 <= sparse_new_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        C_0_addr_reg_501 <= tmp_2_fu_376_p1;
        C_1_addr_reg_511 <= tmp_2_fu_376_p1;
        C_2_addr_reg_521 <= tmp_2_fu_376_p1;
        C_3_addr_reg_531 <= tmp_2_fu_376_p1;
        C_4_addr_reg_541 <= tmp_2_fu_376_p1;
        C_5_addr_reg_551 <= tmp_2_fu_376_p1;
        C_6_addr_reg_561 <= tmp_2_fu_376_p1;
        C_7_addr_reg_571 <= tmp_2_fu_376_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_471 <= i_1_fu_310_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_304_p2 == 1'd0))) begin
        tmp_4_reg_476 <= tmp_4_fu_332_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_5_1_reg_633 <= tmp_5_1_fu_392_p2;
        tmp_5_2_reg_638 <= tmp_5_2_fu_396_p2;
        tmp_5_3_reg_643 <= tmp_5_3_fu_400_p2;
        tmp_5_4_reg_648 <= tmp_5_4_fu_404_p2;
        tmp_5_5_reg_653 <= tmp_5_5_fu_408_p2;
        tmp_5_6_reg_658 <= tmp_5_6_fu_412_p2;
        tmp_5_7_reg_663 <= tmp_5_7_fu_416_p2;
        tmp_5_reg_628 <= tmp_5_fu_388_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_0_ce0 = 1'b1;
    end else begin
        B_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_1_ce0 = 1'b1;
    end else begin
        B_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_2_ce0 = 1'b1;
    end else begin
        B_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_3_ce0 = 1'b1;
    end else begin
        B_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_4_ce0 = 1'b1;
    end else begin
        B_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_5_ce0 = 1'b1;
    end else begin
        B_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_6_ce0 = 1'b1;
    end else begin
        B_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        B_7_ce0 = 1'b1;
    end else begin
        B_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        C_0_ce0 = 1'b1;
    end else begin
        C_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        C_0_we0 = 1'b1;
    end else begin
        C_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        C_1_ce0 = 1'b1;
    end else begin
        C_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        C_1_we0 = 1'b1;
    end else begin
        C_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        C_2_ce0 = 1'b1;
    end else begin
        C_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        C_2_we0 = 1'b1;
    end else begin
        C_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        C_3_ce0 = 1'b1;
    end else begin
        C_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        C_3_we0 = 1'b1;
    end else begin
        C_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        C_4_ce0 = 1'b1;
    end else begin
        C_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        C_4_we0 = 1'b1;
    end else begin
        C_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        C_5_ce0 = 1'b1;
    end else begin
        C_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        C_5_we0 = 1'b1;
    end else begin
        C_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        C_6_ce0 = 1'b1;
    end else begin
        C_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        C_6_we0 = 1'b1;
    end else begin
        C_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        C_7_ce0 = 1'b1;
    end else begin
        C_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        C_7_we0 = 1'b1;
    end else begin
        C_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_304_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_304_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        sparse_new_address0 = tmp_8_cast_fu_359_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sparse_new_address0 = tmp_4_cast_fu_338_p1;
    end else begin
        sparse_new_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        sparse_new_ce0 = 1'b1;
    end else begin
        sparse_new_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        sparse_new_ce1 = 1'b1;
    end else begin
        sparse_new_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_304_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign B_0_address0 = tmp_1_fu_364_p1;

assign B_1_address0 = tmp_1_fu_364_p1;

assign B_2_address0 = tmp_1_fu_364_p1;

assign B_3_address0 = tmp_1_fu_364_p1;

assign B_4_address0 = tmp_1_fu_364_p1;

assign B_5_address0 = tmp_1_fu_364_p1;

assign B_6_address0 = tmp_1_fu_364_p1;

assign B_7_address0 = tmp_1_fu_364_p1;

assign C_0_address0 = C_0_addr_reg_501;

assign C_0_d0 = (tmp_5_reg_628 + C_0_q0);

assign C_1_address0 = C_1_addr_reg_511;

assign C_1_d0 = (tmp_5_1_reg_633 + C_1_q0);

assign C_2_address0 = C_2_addr_reg_521;

assign C_2_d0 = (tmp_5_2_reg_638 + C_2_q0);

assign C_3_address0 = C_3_addr_reg_531;

assign C_3_d0 = (tmp_5_3_reg_643 + C_3_q0);

assign C_4_address0 = C_4_addr_reg_541;

assign C_4_d0 = (tmp_5_4_reg_648 + C_4_q0);

assign C_5_address0 = C_5_addr_reg_551;

assign C_5_d0 = (tmp_5_5_reg_653 + C_5_q0);

assign C_6_address0 = C_6_addr_reg_561;

assign C_6_d0 = (tmp_5_6_reg_658 + C_6_q0);

assign C_7_address0 = C_7_addr_reg_571;

assign C_7_d0 = (tmp_5_7_reg_663 + C_7_q0);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign exitcond1_fu_304_p2 = ((i_reg_293 == 3'd6) ? 1'b1 : 1'b0);

assign i_1_fu_310_p2 = (i_reg_293 + 3'd1);

assign p_shl_cast_fu_328_p1 = tmp_3_fu_320_p3;

assign sparse_new_address1 = tmp_7_cast_fu_349_p1;

assign tmp_1_fu_364_p1 = $signed(sparse_new_q1);

assign tmp_2_fu_376_p1 = $signed(sparse_new_q0);

assign tmp_3_fu_320_p3 = {{i_reg_293}, {2'd0}};

assign tmp_4_cast_fu_338_p1 = tmp_4_fu_332_p2;

assign tmp_4_fu_332_p2 = (p_shl_cast_fu_328_p1 - tmp_cast_fu_316_p1);

assign tmp_5_1_fu_392_p2 = ($signed(B_1_load_reg_593) * $signed(val_reg_576));

assign tmp_5_2_fu_396_p2 = ($signed(B_2_load_reg_598) * $signed(val_reg_576));

assign tmp_5_3_fu_400_p2 = ($signed(B_3_load_reg_603) * $signed(val_reg_576));

assign tmp_5_4_fu_404_p2 = ($signed(B_4_load_reg_608) * $signed(val_reg_576));

assign tmp_5_5_fu_408_p2 = ($signed(B_5_load_reg_613) * $signed(val_reg_576));

assign tmp_5_6_fu_412_p2 = ($signed(B_6_load_reg_618) * $signed(val_reg_576));

assign tmp_5_7_fu_416_p2 = ($signed(B_7_load_reg_623) * $signed(val_reg_576));

assign tmp_5_fu_388_p2 = ($signed(B_0_load_reg_588) * $signed(val_reg_576));

assign tmp_7_cast_fu_349_p1 = $signed(tmp_7_fu_343_p2);

assign tmp_7_fu_343_p2 = ($signed(tmp_4_fu_332_p2) + $signed(6'd1));

assign tmp_8_cast_fu_359_p1 = $signed(tmp_8_fu_354_p2);

assign tmp_8_fu_354_p2 = ($signed(tmp_4_reg_476) + $signed(6'd2));

assign tmp_cast_fu_316_p1 = i_reg_293;

endmodule //mul1
