-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mul1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    A_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    A_ce0 : OUT STD_LOGIC;
    A_we0 : OUT STD_LOGIC;
    A_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    A_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    A_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    A_ce1 : OUT STD_LOGIC;
    A_we1 : OUT STD_LOGIC;
    A_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    A_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    B_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    B_ce0 : OUT STD_LOGIC;
    B_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    B_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    B_ce1 : OUT STD_LOGIC;
    B_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    C_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    C_ce0 : OUT STD_LOGIC;
    C_we0 : OUT STD_LOGIC;
    C_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    C_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    C_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    C_ce1 : OUT STD_LOGIC;
    C_we1 : OUT STD_LOGIC;
    C_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    C_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    sparse_new_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    sparse_new_ce0 : OUT STD_LOGIC;
    sparse_new_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    sparse_new_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
    sparse_new_ce1 : OUT STD_LOGIC;
    sparse_new_q1 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of mul1 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "mul1,hls_ip_2018_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.470000,HLS_SYN_LAT=55,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=6,HLS_SYN_FF=472,HLS_SYN_LUT=720,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv6_2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv8_2 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_const_lv8_3 : STD_LOGIC_VECTOR (7 downto 0) := "00000011";
    constant ap_const_lv8_4 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_const_lv8_5 : STD_LOGIC_VECTOR (7 downto 0) := "00000101";
    constant ap_const_lv8_6 : STD_LOGIC_VECTOR (7 downto 0) := "00000110";
    constant ap_const_lv8_7 : STD_LOGIC_VECTOR (7 downto 0) := "00000111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal reg_242 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal reg_246 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_250 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_254 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_258 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_262 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_266_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_276 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal grp_fu_271_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_280 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_284_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_308 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_290_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_313 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_296_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_318 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal grp_fu_302_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_323 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_1_fu_334_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_1_reg_583 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_2_fu_356_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_2_reg_588 : STD_LOGIC_VECTOR (5 downto 0);
    signal exitcond1_fu_328_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_8_cast_fu_405_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_8_cast_reg_608 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_17_cast_fu_441_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_17_cast_reg_628 : STD_LOGIC_VECTOR (7 downto 0);
    signal C_addr_reg_638 : STD_LOGIC_VECTOR (5 downto 0);
    signal C_addr_1_reg_643 : STD_LOGIC_VECTOR (5 downto 0);
    signal val_reg_648 : STD_LOGIC_VECTOR (31 downto 0);
    signal C_addr_2_reg_664 : STD_LOGIC_VECTOR (5 downto 0);
    signal C_addr_3_reg_669 : STD_LOGIC_VECTOR (5 downto 0);
    signal C_addr_4_reg_684 : STD_LOGIC_VECTOR (5 downto 0);
    signal C_addr_5_reg_689 : STD_LOGIC_VECTOR (5 downto 0);
    signal C_addr_6_reg_704 : STD_LOGIC_VECTOR (5 downto 0);
    signal C_addr_7_reg_709 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_reg_231 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal tmp_2_cast_fu_362_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_cast_fu_373_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_4_cast_fu_383_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_8_fu_396_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_9_cast_fu_419_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_16_fu_432_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_18_cast_fu_455_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_10_cast_fu_465_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_11_cast_fu_475_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_19_cast_fu_485_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_20_cast_fu_495_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_12_cast_fu_505_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_13_cast_fu_515_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_21_cast_fu_525_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_22_cast_fu_535_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_14_cast_fu_545_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_15_cast_fu_555_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_23_cast_fu_565_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_24_cast_fu_575_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_fu_344_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_shl_cast_fu_352_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_cast_fu_340_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_3_fu_367_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_4_fu_378_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_7_fu_388_p3 : STD_LOGIC_VECTOR (34 downto 0);
    signal tmp_fu_401_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_9_fu_413_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_15_fu_424_p3 : STD_LOGIC_VECTOR (34 downto 0);
    signal tmp_17_fu_437_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_18_fu_449_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_s_fu_460_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_10_fu_470_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_19_fu_480_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_20_fu_490_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_11_fu_500_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_12_fu_510_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_21_fu_520_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_22_fu_530_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_13_fu_540_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_14_fu_550_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_23_fu_560_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_24_fu_570_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);


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


    i_reg_231_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                i_reg_231 <= i_1_reg_583;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_231 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    C_addr_1_reg_643(5 downto 3) <= tmp_18_cast_fu_455_p1(6 - 1 downto 0)(5 downto 3);
                    C_addr_reg_638(5 downto 3) <= tmp_16_fu_432_p1(6 - 1 downto 0)(5 downto 3);
                    tmp_17_cast_reg_628(7 downto 3) <= tmp_17_cast_fu_441_p3(7 downto 3);
                    tmp_8_cast_reg_608(7 downto 3) <= tmp_8_cast_fu_405_p3(7 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                    C_addr_2_reg_664(5 downto 3) <= tmp_19_cast_fu_485_p1(6 - 1 downto 0)(5 downto 3);
                    C_addr_3_reg_669(5 downto 3) <= tmp_20_cast_fu_495_p1(6 - 1 downto 0)(5 downto 3);
                val_reg_648 <= sparse_new_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                    C_addr_4_reg_684(5 downto 3) <= tmp_21_cast_fu_525_p1(6 - 1 downto 0)(5 downto 3);
                    C_addr_5_reg_689(5 downto 3) <= tmp_22_cast_fu_535_p1(6 - 1 downto 0)(5 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                    C_addr_6_reg_704(5 downto 3) <= tmp_23_cast_fu_565_p1(6 - 1 downto 0)(5 downto 3);
                    C_addr_7_reg_709(5 downto 3) <= tmp_24_cast_fu_575_p1(6 - 1 downto 0)(5 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_1_reg_583 <= i_1_fu_334_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4))) then
                reg_242 <= B_q0;
                reg_250 <= B_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state4))) then
                reg_246 <= C_q0;
                reg_254 <= C_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state5))) then
                reg_258 <= C_q0;
                reg_262 <= C_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state8))) then
                reg_276 <= grp_fu_266_p2;
                reg_280 <= grp_fu_271_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state8))) then
                reg_308 <= grp_fu_284_p2;
                reg_313 <= grp_fu_290_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state9))) then
                reg_318 <= grp_fu_296_p2;
                reg_323 <= grp_fu_302_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_328_p2 = ap_const_lv1_0))) then
                tmp_2_reg_588 <= tmp_2_fu_356_p2;
            end if;
        end if;
    end process;
    tmp_8_cast_reg_608(2 downto 0) <= "000";
    tmp_17_cast_reg_628(2 downto 0) <= "000";
    C_addr_reg_638(2 downto 0) <= "000";
    C_addr_1_reg_643(2 downto 0) <= "001";
    C_addr_2_reg_664(2 downto 0) <= "010";
    C_addr_3_reg_669(2 downto 0) <= "011";
    C_addr_4_reg_684(2 downto 0) <= "100";
    C_addr_5_reg_689(2 downto 0) <= "101";
    C_addr_6_reg_704(2 downto 0) <= "110";
    C_addr_7_reg_709(2 downto 0) <= "111";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_328_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_328_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    A_address0 <= ap_const_lv6_0;
    A_address1 <= ap_const_lv6_0;
    A_ce0 <= ap_const_logic_0;
    A_ce1 <= ap_const_logic_0;
    A_d0 <= ap_const_lv32_0;
    A_d1 <= ap_const_lv32_0;
    A_we0 <= ap_const_logic_0;
    A_we1 <= ap_const_logic_0;

    B_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state3, tmp_8_fu_396_p1, tmp_10_cast_fu_465_p1, tmp_12_cast_fu_505_p1, tmp_14_cast_fu_545_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            B_address0 <= tmp_14_cast_fu_545_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            B_address0 <= tmp_12_cast_fu_505_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            B_address0 <= tmp_10_cast_fu_465_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            B_address0 <= tmp_8_fu_396_p1(6 - 1 downto 0);
        else 
            B_address0 <= "XXXXXX";
        end if; 
    end process;


    B_address1_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state3, tmp_9_cast_fu_419_p1, tmp_11_cast_fu_475_p1, tmp_13_cast_fu_515_p1, tmp_15_cast_fu_555_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            B_address1 <= tmp_15_cast_fu_555_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            B_address1 <= tmp_13_cast_fu_515_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            B_address1 <= tmp_11_cast_fu_475_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            B_address1 <= tmp_9_cast_fu_419_p1(6 - 1 downto 0);
        else 
            B_address1 <= "XXXXXX";
        end if; 
    end process;


    B_ce0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            B_ce0 <= ap_const_logic_1;
        else 
            B_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    B_ce1_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            B_ce1 <= ap_const_logic_1;
        else 
            B_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    C_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state3, C_addr_reg_638, C_addr_2_reg_664, C_addr_4_reg_684, C_addr_6_reg_704, ap_CS_fsm_state10, tmp_16_fu_432_p1, tmp_19_cast_fu_485_p1, tmp_21_cast_fu_525_p1, tmp_23_cast_fu_565_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            C_address0 <= C_addr_6_reg_704;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            C_address0 <= C_addr_4_reg_684;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            C_address0 <= C_addr_2_reg_664;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            C_address0 <= C_addr_reg_638;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            C_address0 <= tmp_23_cast_fu_565_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            C_address0 <= tmp_21_cast_fu_525_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            C_address0 <= tmp_19_cast_fu_485_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            C_address0 <= tmp_16_fu_432_p1(6 - 1 downto 0);
        else 
            C_address0 <= "XXXXXX";
        end if; 
    end process;


    C_address1_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state3, C_addr_1_reg_643, C_addr_3_reg_669, C_addr_5_reg_689, C_addr_7_reg_709, ap_CS_fsm_state10, tmp_18_cast_fu_455_p1, tmp_20_cast_fu_495_p1, tmp_22_cast_fu_535_p1, tmp_24_cast_fu_575_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            C_address1 <= C_addr_7_reg_709;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            C_address1 <= C_addr_5_reg_689;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            C_address1 <= C_addr_3_reg_669;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            C_address1 <= C_addr_1_reg_643;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            C_address1 <= tmp_24_cast_fu_575_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            C_address1 <= tmp_22_cast_fu_535_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            C_address1 <= tmp_20_cast_fu_495_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            C_address1 <= tmp_18_cast_fu_455_p1(6 - 1 downto 0);
        else 
            C_address1 <= "XXXXXX";
        end if; 
    end process;


    C_ce0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state3, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            C_ce0 <= ap_const_logic_1;
        else 
            C_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    C_ce1_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state5, ap_CS_fsm_state6, ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state3, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            C_ce1 <= ap_const_logic_1;
        else 
            C_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    C_d0_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state8, reg_308, reg_318, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            C_d0 <= reg_318;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            C_d0 <= reg_308;
        else 
            C_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    C_d1_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state8, reg_313, ap_CS_fsm_state9, reg_323, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            C_d1 <= reg_323;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            C_d1 <= reg_313;
        else 
            C_d1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    C_we0_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            C_we0 <= ap_const_logic_1;
        else 
            C_we0 <= ap_const_logic_0;
        end if; 
    end process;


    C_we1_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state8, ap_CS_fsm_state9, ap_CS_fsm_state10)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            C_we1 <= ap_const_logic_1;
        else 
            C_we1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_CS_fsm_state2, exitcond1_fu_328_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_328_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond1_fu_328_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_328_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_328_p2 <= "1" when (i_reg_231 = ap_const_lv3_6) else "0";
    grp_fu_266_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(val_reg_648) * signed(reg_242))), 32));
    grp_fu_271_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(val_reg_648) * signed(reg_250))), 32));
    grp_fu_284_p2 <= std_logic_vector(unsigned(reg_246) + unsigned(reg_276));
    grp_fu_290_p2 <= std_logic_vector(unsigned(reg_254) + unsigned(reg_280));
    grp_fu_296_p2 <= std_logic_vector(unsigned(reg_258) + unsigned(reg_276));
    grp_fu_302_p2 <= std_logic_vector(unsigned(reg_262) + unsigned(reg_280));
    i_1_fu_334_p2 <= std_logic_vector(unsigned(i_reg_231) + unsigned(ap_const_lv3_1));
    p_shl_cast_fu_352_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_344_p3),6));

    sparse_new_address0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3, tmp_2_cast_fu_362_p1, tmp_4_cast_fu_383_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            sparse_new_address0 <= tmp_4_cast_fu_383_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            sparse_new_address0 <= tmp_2_cast_fu_362_p1(5 - 1 downto 0);
        else 
            sparse_new_address0 <= "XXXXX";
        end if; 
    end process;

    sparse_new_address1 <= tmp_3_cast_fu_373_p1(5 - 1 downto 0);

    sparse_new_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            sparse_new_ce0 <= ap_const_logic_1;
        else 
            sparse_new_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    sparse_new_ce1_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            sparse_new_ce1 <= ap_const_logic_1;
        else 
            sparse_new_ce1 <= ap_const_logic_0;
        end if; 
    end process;

        tmp_10_cast_fu_465_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_s_fu_460_p2),64));

    tmp_10_fu_470_p2 <= (tmp_8_cast_reg_608 or ap_const_lv8_3);
        tmp_11_cast_fu_475_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_10_fu_470_p2),64));

    tmp_11_fu_500_p2 <= (tmp_8_cast_reg_608 or ap_const_lv8_4);
        tmp_12_cast_fu_505_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_11_fu_500_p2),64));

    tmp_12_fu_510_p2 <= (tmp_8_cast_reg_608 or ap_const_lv8_5);
        tmp_13_cast_fu_515_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_12_fu_510_p2),64));

    tmp_13_fu_540_p2 <= (tmp_8_cast_reg_608 or ap_const_lv8_6);
        tmp_14_cast_fu_545_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_13_fu_540_p2),64));

    tmp_14_fu_550_p2 <= (tmp_8_cast_reg_608 or ap_const_lv8_7);
        tmp_15_cast_fu_555_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_14_fu_550_p2),64));

    tmp_15_fu_424_p3 <= (sparse_new_q0 & ap_const_lv3_0);
        tmp_16_fu_432_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_15_fu_424_p3),64));

    tmp_17_cast_fu_441_p3 <= (tmp_17_fu_437_p1 & ap_const_lv3_0);
    tmp_17_fu_437_p1 <= sparse_new_q0(5 - 1 downto 0);
    tmp_18_cast_fu_455_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_18_fu_449_p2),64));
    tmp_18_fu_449_p2 <= (tmp_17_cast_fu_441_p3 or ap_const_lv8_1);
        tmp_19_cast_fu_485_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_19_fu_480_p2),64));

    tmp_19_fu_480_p2 <= (tmp_17_cast_reg_628 or ap_const_lv8_2);
    tmp_1_fu_344_p3 <= (i_reg_231 & ap_const_lv2_0);
        tmp_20_cast_fu_495_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_20_fu_490_p2),64));

    tmp_20_fu_490_p2 <= (tmp_17_cast_reg_628 or ap_const_lv8_3);
        tmp_21_cast_fu_525_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_21_fu_520_p2),64));

    tmp_21_fu_520_p2 <= (tmp_17_cast_reg_628 or ap_const_lv8_4);
        tmp_22_cast_fu_535_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_22_fu_530_p2),64));

    tmp_22_fu_530_p2 <= (tmp_17_cast_reg_628 or ap_const_lv8_5);
        tmp_23_cast_fu_565_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_23_fu_560_p2),64));

    tmp_23_fu_560_p2 <= (tmp_17_cast_reg_628 or ap_const_lv8_6);
        tmp_24_cast_fu_575_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_24_fu_570_p2),64));

    tmp_24_fu_570_p2 <= (tmp_17_cast_reg_628 or ap_const_lv8_7);
        tmp_2_cast_fu_362_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_2_fu_356_p2),64));

    tmp_2_fu_356_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_352_p1) - unsigned(tmp_cast_fu_340_p1));
        tmp_3_cast_fu_373_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_3_fu_367_p2),64));

    tmp_3_fu_367_p2 <= std_logic_vector(unsigned(ap_const_lv6_1) + unsigned(tmp_2_fu_356_p2));
        tmp_4_cast_fu_383_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_4_fu_378_p2),64));

    tmp_4_fu_378_p2 <= std_logic_vector(unsigned(ap_const_lv6_2) + unsigned(tmp_2_reg_588));
    tmp_7_fu_388_p3 <= (sparse_new_q1 & ap_const_lv3_0);
    tmp_8_cast_fu_405_p3 <= (tmp_fu_401_p1 & ap_const_lv3_0);
        tmp_8_fu_396_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_7_fu_388_p3),64));

    tmp_9_cast_fu_419_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_9_fu_413_p2),64));
    tmp_9_fu_413_p2 <= (tmp_8_cast_fu_405_p3 or ap_const_lv8_1);
    tmp_cast_fu_340_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_231),6));
    tmp_fu_401_p1 <= sparse_new_q1(5 - 1 downto 0);
    tmp_s_fu_460_p2 <= (tmp_8_cast_reg_608 or ap_const_lv8_2);
end behav;
