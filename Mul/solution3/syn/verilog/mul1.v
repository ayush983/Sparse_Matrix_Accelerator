// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="mul1,hls_ip_2018_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.470000,HLS_SYN_LAT=217,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=177,HLS_SYN_LUT=257,HLS_VERSION=2018_2}" *)

module mul1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_address0,
        A_ce0,
        A_we0,
        A_d0,
        A_q0,
        A_address1,
        A_ce1,
        A_we1,
        A_d1,
        A_q1,
        B_address0,
        B_ce0,
        B_q0,
        C_address0,
        C_ce0,
        C_we0,
        C_d0,
        C_q0,
        sparse_new_address0,
        sparse_new_ce0,
        sparse_new_q0,
        sparse_new_address1,
        sparse_new_ce1,
        sparse_new_q1
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] A_address0;
output   A_ce0;
output   A_we0;
output  [31:0] A_d0;
input  [31:0] A_q0;
output  [5:0] A_address1;
output   A_ce1;
output   A_we1;
output  [31:0] A_d1;
input  [31:0] A_q1;
output  [5:0] B_address0;
output   B_ce0;
input  [31:0] B_q0;
output  [5:0] C_address0;
output   C_ce0;
output   C_we0;
output  [31:0] C_d0;
input  [31:0] C_q0;
output  [4:0] sparse_new_address0;
output   sparse_new_ce0;
input  [31:0] sparse_new_q0;
output  [4:0] sparse_new_address1;
output   sparse_new_ce1;
input  [31:0] sparse_new_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg B_ce0;
reg C_ce0;
reg C_we0;
reg[4:0] sparse_new_address0;
reg sparse_new_ce0;
reg sparse_new_ce1;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] i_1_fu_130_p2;
reg   [2:0] i_1_reg_254;
wire    ap_CS_fsm_state2;
wire  signed [5:0] tmp_2_fu_152_p2;
reg  signed [5:0] tmp_2_reg_259;
wire   [0:0] exitcond1_fu_124_p2;
wire    ap_CS_fsm_state3;
wire   [4:0] tmp_4_fu_183_p1;
reg   [4:0] tmp_4_reg_280;
reg  signed [31:0] val_reg_285;
wire    ap_CS_fsm_state4;
wire   [7:0] tmp_9_cast_fu_191_p3;
reg   [7:0] tmp_9_cast_reg_290;
wire   [7:0] tmp_11_cast_fu_199_p3;
reg   [7:0] tmp_11_cast_reg_295;
wire   [3:0] j_1_fu_212_p2;
reg   [3:0] j_1_reg_303;
wire    ap_CS_fsm_state5;
wire   [0:0] exitcond_fu_206_p2;
reg   [5:0] C_addr_reg_313;
reg  signed [31:0] B_load_reg_318;
wire    ap_CS_fsm_state6;
wire   [31:0] tmp_5_fu_242_p2;
reg   [31:0] tmp_5_reg_323;
wire    ap_CS_fsm_state7;
reg   [31:0] C_load_reg_328;
reg   [2:0] i_reg_102;
reg   [3:0] j_reg_113;
wire    ap_CS_fsm_state8;
wire  signed [63:0] tmp_2_cast_fu_158_p1;
wire  signed [63:0] tmp_3_cast_fu_168_p1;
wire  signed [63:0] tmp_7_cast_fu_178_p1;
wire  signed [63:0] tmp_12_cast_fu_227_p1;
wire  signed [63:0] tmp_13_cast_fu_237_p1;
wire   [4:0] tmp_1_fu_140_p3;
wire   [5:0] p_shl_cast_fu_148_p1;
wire   [5:0] tmp_cast_fu_136_p1;
wire   [5:0] tmp_3_fu_163_p2;
wire   [5:0] tmp_7_fu_173_p2;
wire   [4:0] tmp_fu_187_p1;
wire   [7:0] tmp_4_cast_fu_218_p1;
wire   [7:0] tmp_s_fu_222_p2;
wire   [7:0] tmp_8_fu_232_p2;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (exitcond_fu_206_p2 == 1'd1))) begin
        i_reg_102 <= i_1_reg_254;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_102 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        j_reg_113 <= j_1_reg_303;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        j_reg_113 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        B_load_reg_318 <= B_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_206_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        C_addr_reg_313 <= tmp_13_cast_fu_237_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        C_load_reg_328 <= C_q0;
        tmp_5_reg_323 <= tmp_5_fu_242_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_254 <= i_1_fu_130_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        j_1_reg_303 <= j_1_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_11_cast_reg_295[7 : 3] <= tmp_11_cast_fu_199_p3[7 : 3];
        tmp_9_cast_reg_290[7 : 3] <= tmp_9_cast_fu_191_p3[7 : 3];
        val_reg_285 <= sparse_new_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_124_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_2_reg_259 <= tmp_2_fu_152_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_4_reg_280 <= tmp_4_fu_183_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        B_ce0 = 1'b1;
    end else begin
        B_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6))) begin
        C_ce0 = 1'b1;
    end else begin
        C_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        C_we0 = 1'b1;
    end else begin
        C_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond1_fu_124_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((exitcond1_fu_124_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        sparse_new_address0 = tmp_3_cast_fu_168_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sparse_new_address0 = tmp_2_cast_fu_158_p1;
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
    if ((1'b1 == ap_CS_fsm_state3)) begin
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
            if (((exitcond1_fu_124_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((1'b1 == ap_CS_fsm_state5) & (exitcond_fu_206_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_address0 = 6'd0;

assign A_address1 = 6'd0;

assign A_ce0 = 1'b0;

assign A_ce1 = 1'b0;

assign A_d0 = 32'd0;

assign A_d1 = 32'd0;

assign A_we0 = 1'b0;

assign A_we1 = 1'b0;

assign B_address0 = tmp_12_cast_fu_227_p1;

assign C_address0 = C_addr_reg_313;

assign C_d0 = (tmp_5_reg_323 + C_load_reg_328);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign exitcond1_fu_124_p2 = ((i_reg_102 == 3'd6) ? 1'b1 : 1'b0);

assign exitcond_fu_206_p2 = ((j_reg_113 == 4'd8) ? 1'b1 : 1'b0);

assign i_1_fu_130_p2 = (i_reg_102 + 3'd1);

assign j_1_fu_212_p2 = (j_reg_113 + 4'd1);

assign p_shl_cast_fu_148_p1 = tmp_1_fu_140_p3;

assign sparse_new_address1 = tmp_7_cast_fu_178_p1;

assign tmp_11_cast_fu_199_p3 = {{tmp_4_reg_280}, {3'd0}};

assign tmp_12_cast_fu_227_p1 = $signed(tmp_s_fu_222_p2);

assign tmp_13_cast_fu_237_p1 = $signed(tmp_8_fu_232_p2);

assign tmp_1_fu_140_p3 = {{i_reg_102}, {2'd0}};

assign tmp_2_cast_fu_158_p1 = tmp_2_fu_152_p2;

assign tmp_2_fu_152_p2 = (p_shl_cast_fu_148_p1 - tmp_cast_fu_136_p1);

assign tmp_3_cast_fu_168_p1 = $signed(tmp_3_fu_163_p2);

assign tmp_3_fu_163_p2 = ($signed(6'd1) + $signed(tmp_2_reg_259));

assign tmp_4_cast_fu_218_p1 = j_reg_113;

assign tmp_4_fu_183_p1 = sparse_new_q0[4:0];

assign tmp_5_fu_242_p2 = ($signed(B_load_reg_318) * $signed(val_reg_285));

assign tmp_7_cast_fu_178_p1 = $signed(tmp_7_fu_173_p2);

assign tmp_7_fu_173_p2 = ($signed(6'd2) + $signed(tmp_2_reg_259));

assign tmp_8_fu_232_p2 = (tmp_11_cast_reg_295 + tmp_4_cast_fu_218_p1);

assign tmp_9_cast_fu_191_p3 = {{tmp_fu_187_p1}, {3'd0}};

assign tmp_cast_fu_136_p1 = i_reg_102;

assign tmp_fu_187_p1 = sparse_new_q0[4:0];

assign tmp_s_fu_222_p2 = (tmp_9_cast_reg_290 + tmp_4_cast_fu_218_p1);

always @ (posedge ap_clk) begin
    tmp_9_cast_reg_290[2:0] <= 3'b000;
    tmp_11_cast_reg_295[2:0] <= 3'b000;
end

endmodule //mul1