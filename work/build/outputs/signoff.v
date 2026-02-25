// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Feb 25 15:44:14 2026
// Host        : Marco running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno false -force -file work/build/outputs/signoff.v
// Design      : Whack
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module PLL
   (CLK_OUT,
    LOCKED,
    CLK_IN);
  output CLK_OUT;
  output LOCKED;
  input CLK_IN;

  (* IBUF_LOW_PWR *) wire CLK_IN;
  wire LOCKED;
  wire NLW_inst_CLK_OUT_UNCONNECTED;

  PLLPLL_clk_wiz inst
       (.CLK_IN(CLK_IN),
        .CLK_OUT(NLW_inst_CLK_OUT_UNCONNECTED),
        .LOCKED(LOCKED));
endmodule

(* ORIG_REF_NAME = "PLL_clk_wiz" *) 
module PLLPLL_clk_wiz
   (CLK_OUT,
    LOCKED,
    CLK_IN);
  output CLK_OUT;
  output LOCKED;
  input CLK_IN;

  wire CLK_IN;
  wire LOCKED;
  wire clkfbout_PLL;
  wire clkfbout_buf_PLL;
  wire NLW_plle2_adv_inst_CLKOUT0_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_plle2_adv_inst_DRDY_UNCONNECTED;
  wire [15:0]NLW_plle2_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_PLL),
        .O(clkfbout_buf_PLL));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  PLLE2_ADV #(
    .BANDWIDTH("LOW"),
    .CLKFBOUT_MULT(9),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE(9),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    plle2_adv_inst
       (.CLKFBIN(clkfbout_buf_PLL),
        .CLKFBOUT(clkfbout_PLL),
        .CLKIN1(CLK_IN),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(NLW_plle2_adv_inst_CLKOUT0_UNCONNECTED),
        .CLKOUT1(NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT2(NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT3(NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT4(NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_plle2_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_plle2_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(LOCKED),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

(* ECO_CHECKSUM = "2655575b" *) (* S0 = "2'b00" *) (* S1 = "2'b01" *) 
(* S2 = "2'b10" *) (* S3 = "2'b11" *) 
(* NotValidForBitStream *)
module Whack
   (clk,
    rst,
    START,
    button,
    Led,
    Tsegment,
    Ssegment1,
    Ssegment2,
    anodeT,
    anodeS1,
    anodeS2);
  input clk;
  input rst;
  input START;
  input [3:0]button;
  output [3:0]Led;
  output [6:0]Tsegment;
  output [6:0]Ssegment1;
  output [6:0]Ssegment2;
  output [1:0]anodeT;
  output [1:0]anodeS1;
  output [1:0]anodeS2;

  wire \Button_Click/POINT17_out ;
  wire CCT;
  wire Clk_div;
  wire Clk_div_BUFG;
  wire [6:0]\CountdownTick/count ;
  wire \CountdownTick/count_reg_n_0_[0] ;
  wire \CountdownTick/count_reg_n_0_[1] ;
  wire \CountdownTick/count_reg_n_0_[2] ;
  wire \CountdownTick/count_reg_n_0_[3] ;
  wire \CountdownTick/count_reg_n_0_[4] ;
  wire \CountdownTick/count_reg_n_0_[5] ;
  wire \CountdownTick/count_reg_n_0_[6] ;
  wire \FSM_sequential_STATE[0]_i_1_n_0 ;
  wire \FSM_sequential_STATE[1]_i_1_n_0 ;
  wire \FSM_sequential_STATE[1]_i_2_n_0 ;
  wire \FSM_sequential_STATE[1]_i_3_n_0 ;
  wire \FSM_sequential_STATE[1]_i_4_n_0 ;
  wire \FSM_sequential_STATE[1]_i_5_n_0 ;
  wire \FSM_sequential_STATE[1]_i_6_n_0 ;
  wire LCT;
  wire [3:0]Led;
  wire [6:0]\LedTick/count ;
  wire \LedTick/count_reg_n_0_[0] ;
  wire \LedTick/count_reg_n_0_[1] ;
  wire \LedTick/count_reg_n_0_[2] ;
  wire \LedTick/count_reg_n_0_[3] ;
  wire \LedTick/count_reg_n_0_[4] ;
  wire \LedTick/count_reg_n_0_[5] ;
  wire \LedTick/count_reg_n_0_[6] ;
  wire [3:0]Led_OBUF;
  wire \POINT[0]_i_1_n_0 ;
  wire \POINT[10]_i_1_n_0 ;
  wire \POINT[11]_i_1_n_0 ;
  wire \POINT[11]_i_2_n_0 ;
  wire \POINT[11]_i_3_n_0 ;
  wire \POINT[11]_i_4_n_0 ;
  wire \POINT[11]_i_5_n_0 ;
  wire \POINT[11]_i_6_n_0 ;
  wire \POINT[11]_i_7_n_0 ;
  wire \POINT[1]_i_1_n_0 ;
  wire \POINT[2]_i_1_n_0 ;
  wire \POINT[3]_i_1_n_0 ;
  wire \POINT[3]_i_2_n_0 ;
  wire \POINT[4]_i_1_n_0 ;
  wire \POINT[5]_i_1_n_0 ;
  wire \POINT[6]_i_1_n_0 ;
  wire \POINT[7]_i_1_n_0 ;
  wire \POINT[7]_i_2_n_0 ;
  wire \POINT[8]_i_1_n_0 ;
  wire \POINT[9]_i_1_n_0 ;
  wire [4:2]\RandomNumberGenerator/p_7_out ;
  wire \RandomNumberGenerator/q_reg_n_0_[0] ;
  wire \RandomNumberGenerator/q_reg_n_0_[1] ;
  wire \RandomNumberGenerator/q_reg_n_0_[2] ;
  wire \RandomNumberGenerator/q_reg_n_0_[3] ;
  wire [11:0]SCORE;
  wire START;
  wire START_IBUF;
  wire [1:0]STATE_reg;
  wire [3:0]\Scoring1/BCD_mux__3 ;
  wire [6:0]Ssegment1;
  wire [6:0]Ssegment1_OBUF;
  wire [6:0]Ssegment2;
  wire [6:0]Ssegment2_OBUF;
  wire [0:0]\StatusTick/count ;
  wire \StatusTick/count0_carry__0_n_0 ;
  wire \StatusTick/count0_carry__1_n_0 ;
  wire \StatusTick/count0_carry__2_n_0 ;
  wire \StatusTick/count0_carry_n_0 ;
  wire \StatusTick/count_reg_n_0_[0] ;
  wire \StatusTick/count_reg_n_0_[10] ;
  wire \StatusTick/count_reg_n_0_[11] ;
  wire \StatusTick/count_reg_n_0_[12] ;
  wire \StatusTick/count_reg_n_0_[13] ;
  wire \StatusTick/count_reg_n_0_[14] ;
  wire \StatusTick/count_reg_n_0_[15] ;
  wire \StatusTick/count_reg_n_0_[16] ;
  wire \StatusTick/count_reg_n_0_[17] ;
  wire \StatusTick/count_reg_n_0_[18] ;
  wire \StatusTick/count_reg_n_0_[19] ;
  wire \StatusTick/count_reg_n_0_[1] ;
  wire \StatusTick/count_reg_n_0_[2] ;
  wire \StatusTick/count_reg_n_0_[3] ;
  wire \StatusTick/count_reg_n_0_[4] ;
  wire \StatusTick/count_reg_n_0_[5] ;
  wire \StatusTick/count_reg_n_0_[6] ;
  wire \StatusTick/count_reg_n_0_[7] ;
  wire \StatusTick/count_reg_n_0_[8] ;
  wire \StatusTick/count_reg_n_0_[9] ;
  wire [19:1]\StatusTick/data0 ;
  wire TickEnable_i_1_n_0;
  wire TickEnable_reg_n_0;
  wire [3:0]\Timing/BCD_mux__3 ;
  wire [6:0]Tsegment;
  wire [6:0]Tsegment_OBUF;
  wire [1:0]anodeS1;
  wire [1:0]anodeS1_OBUF;
  wire [1:0]anodeS2;
  wire [1:0]anodeS2_OBUF;
  wire [1:0]anodeT;
  wire [1:0]anodeT_OBUF;
  wire [3:0]button;
  wire [3:0]button_IBUF;
  wire clk;
  wire clk_IBUF;
  wire \color[0]_i_1_n_0 ;
  wire \color[1]_i_1_n_0 ;
  wire \color[1]_i_2_n_0 ;
  wire \color[2]_i_1_n_0 ;
  wire \color[2]_i_2_n_0 ;
  wire \color[3]_i_1_n_0 ;
  wire \color[3]_i_2_n_0 ;
  wire \count[0]_i_1__2_n_0 ;
  wire \count[19]_i_1_n_0 ;
  wire \count[19]_i_2_n_0 ;
  wire \count[19]_i_3_n_0 ;
  wire \count[19]_i_4_n_0 ;
  wire \count[19]_i_5_n_0 ;
  wire \count[1]_i_1__1_n_0 ;
  wire \count[2]_i_1__1_n_0 ;
  wire \count[2]_i_2_n_0 ;
  wire \count[3]_i_1__1_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire \count[4]_i_1__1_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1_n_0 ;
  wire \count[6]_i_2__0_n_0 ;
  wire \count[6]_i_2__1_n_0 ;
  wire \count[6]_i_2_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[7]_i_2_n_0 ;
  wire \count[7]_i_3_n_0 ;
  wire \count[7]_i_4_n_0 ;
  wire \count[7]_i_5_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire [3:0]p_0_in;
  wire p_0_in__0;
  wire pll_locked;
  wire [7:4]q;
  wire rst;
  wire rst_IBUF;
  wire segA_reg_i_1__0_n_0;
  wire segA_reg_i_1__1_n_0;
  wire segA_reg_i_1_n_0;
  wire segA_reg_i_2__0_n_0;
  wire segA_reg_i_2__1_n_0;
  wire segA_reg_i_2_n_0;
  wire segA_reg_i_3_n_0;
  wire segB_reg_i_1__0_n_0;
  wire segB_reg_i_1__1_n_0;
  wire segB_reg_i_1_n_0;
  wire segC_reg_i_1__0_n_0;
  wire segC_reg_i_1__1_n_0;
  wire segC_reg_i_1_n_0;
  wire segD_reg_i_1__0_n_0;
  wire segD_reg_i_1__1_n_0;
  wire segD_reg_i_1_n_0;
  wire segE_reg_i_1__0_n_0;
  wire segE_reg_i_1__1_n_0;
  wire segE_reg_i_1_n_0;
  wire segF_reg_i_1__0_n_0;
  wire segF_reg_i_1__1_n_0;
  wire segF_reg_i_1_n_0;
  wire segG_reg_i_1__0_n_0;
  wire segG_reg_i_1__1_n_0;
  wire segG_reg_i_1_n_0;
  wire tick_i_1__0_n_0;
  wire tick_i_1_n_0;
  wire tick_i_2_n_0;
  wire NLW_PLL_inst_CLK_OUT_UNCONNECTED;
  wire [2:0]\NLW_StatusTick/count0_carry_CO_UNCONNECTED ;
  wire [2:0]\NLW_StatusTick/count0_carry__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_StatusTick/count0_carry__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_StatusTick/count0_carry__2_CO_UNCONNECTED ;
  wire [3:0]\NLW_StatusTick/count0_carry__3_CO_UNCONNECTED ;
  wire [3:3]\NLW_StatusTick/count0_carry__3_O_UNCONNECTED ;

  FDRE \Button_Click/POINT_reg[0] 
       (.C(Clk_div_BUFG),
        .CE(\POINT[3]_i_1_n_0 ),
        .D(\POINT[0]_i_1_n_0 ),
        .Q(SCORE[0]),
        .R(\POINT[11]_i_1_n_0 ));
  FDRE \Button_Click/POINT_reg[10] 
       (.C(Clk_div_BUFG),
        .CE(\POINT[11]_i_2_n_0 ),
        .D(\POINT[10]_i_1_n_0 ),
        .Q(SCORE[10]),
        .R(\POINT[11]_i_1_n_0 ));
  FDRE \Button_Click/POINT_reg[11] 
       (.C(Clk_div_BUFG),
        .CE(\POINT[11]_i_2_n_0 ),
        .D(\POINT[11]_i_3_n_0 ),
        .Q(SCORE[11]),
        .R(\POINT[11]_i_1_n_0 ));
  FDRE \Button_Click/POINT_reg[1] 
       (.C(Clk_div_BUFG),
        .CE(\POINT[3]_i_1_n_0 ),
        .D(\POINT[1]_i_1_n_0 ),
        .Q(SCORE[1]),
        .R(\POINT[11]_i_1_n_0 ));
  FDRE \Button_Click/POINT_reg[2] 
       (.C(Clk_div_BUFG),
        .CE(\POINT[3]_i_1_n_0 ),
        .D(\POINT[2]_i_1_n_0 ),
        .Q(SCORE[2]),
        .R(\POINT[11]_i_1_n_0 ));
  FDRE \Button_Click/POINT_reg[3] 
       (.C(Clk_div_BUFG),
        .CE(\POINT[3]_i_1_n_0 ),
        .D(\POINT[3]_i_2_n_0 ),
        .Q(SCORE[3]),
        .R(\POINT[11]_i_1_n_0 ));
  FDRE \Button_Click/POINT_reg[4] 
       (.C(Clk_div_BUFG),
        .CE(\POINT[7]_i_1_n_0 ),
        .D(\POINT[4]_i_1_n_0 ),
        .Q(SCORE[4]),
        .R(\POINT[11]_i_1_n_0 ));
  FDRE \Button_Click/POINT_reg[5] 
       (.C(Clk_div_BUFG),
        .CE(\POINT[7]_i_1_n_0 ),
        .D(\POINT[5]_i_1_n_0 ),
        .Q(SCORE[5]),
        .R(\POINT[11]_i_1_n_0 ));
  FDRE \Button_Click/POINT_reg[6] 
       (.C(Clk_div_BUFG),
        .CE(\POINT[7]_i_1_n_0 ),
        .D(\POINT[6]_i_1_n_0 ),
        .Q(SCORE[6]),
        .R(\POINT[11]_i_1_n_0 ));
  FDRE \Button_Click/POINT_reg[7] 
       (.C(Clk_div_BUFG),
        .CE(\POINT[7]_i_1_n_0 ),
        .D(\POINT[7]_i_2_n_0 ),
        .Q(SCORE[7]),
        .R(\POINT[11]_i_1_n_0 ));
  FDRE \Button_Click/POINT_reg[8] 
       (.C(Clk_div_BUFG),
        .CE(\POINT[11]_i_2_n_0 ),
        .D(\POINT[8]_i_1_n_0 ),
        .Q(SCORE[8]),
        .R(\POINT[11]_i_1_n_0 ));
  FDRE \Button_Click/POINT_reg[9] 
       (.C(Clk_div_BUFG),
        .CE(\POINT[11]_i_2_n_0 ),
        .D(\POINT[9]_i_1_n_0 ),
        .Q(SCORE[9]),
        .R(\POINT[11]_i_1_n_0 ));
  FDRE \Button_Click/color_reg[0] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(\color[0]_i_1_n_0 ),
        .Q(Led_OBUF[0]),
        .R(1'b0));
  FDRE \Button_Click/color_reg[1] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(\color[1]_i_1_n_0 ),
        .Q(Led_OBUF[1]),
        .R(1'b0));
  FDRE \Button_Click/color_reg[2] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(\color[2]_i_1_n_0 ),
        .Q(Led_OBUF[2]),
        .R(1'b0));
  FDRE \Button_Click/color_reg[3] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(\color[3]_i_1_n_0 ),
        .Q(Led_OBUF[3]),
        .R(1'b0));
  BUFG Clk_div_BUFG_inst
       (.I(Clk_div),
        .O(Clk_div_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \CountdownTick/count_reg[0] 
       (.C(Clk_div_BUFG),
        .CE(TickEnable_reg_n_0),
        .D(\CountdownTick/count [0]),
        .Q(\CountdownTick/count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CountdownTick/count_reg[1] 
       (.C(Clk_div_BUFG),
        .CE(TickEnable_reg_n_0),
        .D(\CountdownTick/count [1]),
        .Q(\CountdownTick/count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CountdownTick/count_reg[2] 
       (.C(Clk_div_BUFG),
        .CE(TickEnable_reg_n_0),
        .D(\CountdownTick/count [2]),
        .Q(\CountdownTick/count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CountdownTick/count_reg[3] 
       (.C(Clk_div_BUFG),
        .CE(TickEnable_reg_n_0),
        .D(\CountdownTick/count [3]),
        .Q(\CountdownTick/count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CountdownTick/count_reg[4] 
       (.C(Clk_div_BUFG),
        .CE(TickEnable_reg_n_0),
        .D(\CountdownTick/count [4]),
        .Q(\CountdownTick/count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CountdownTick/count_reg[5] 
       (.C(Clk_div_BUFG),
        .CE(TickEnable_reg_n_0),
        .D(\CountdownTick/count [5]),
        .Q(\CountdownTick/count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CountdownTick/count_reg[6] 
       (.C(Clk_div_BUFG),
        .CE(TickEnable_reg_n_0),
        .D(\CountdownTick/count [6]),
        .Q(\CountdownTick/count_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \CountdownTick/tick_reg 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(tick_i_1__0_n_0),
        .Q(CCT),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA720000)) 
    \FSM_sequential_STATE[0]_i_1 
       (.I0(STATE_reg[0]),
        .I1(\FSM_sequential_STATE[1]_i_2_n_0 ),
        .I2(START_IBUF),
        .I3(STATE_reg[1]),
        .I4(rst_IBUF),
        .O(\FSM_sequential_STATE[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4AF00000)) 
    \FSM_sequential_STATE[1]_i_1 
       (.I0(STATE_reg[1]),
        .I1(\FSM_sequential_STATE[1]_i_2_n_0 ),
        .I2(STATE_reg[0]),
        .I3(START_IBUF),
        .I4(rst_IBUF),
        .O(\FSM_sequential_STATE[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h08800000)) 
    \FSM_sequential_STATE[1]_i_2 
       (.I0(\FSM_sequential_STATE[1]_i_3_n_0 ),
        .I1(\FSM_sequential_STATE[1]_i_4_n_0 ),
        .I2(\count[4]_i_2_n_0 ),
        .I3(p_0_in[0]),
        .I4(\FSM_sequential_STATE[1]_i_5_n_0 ),
        .O(\FSM_sequential_STATE[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000032300000303)) 
    \FSM_sequential_STATE[1]_i_3 
       (.I0(\FSM_sequential_STATE[1]_i_6_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(CCT),
        .O(\FSM_sequential_STATE[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \FSM_sequential_STATE[1]_i_4 
       (.I0(CCT),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[3] ),
        .O(\FSM_sequential_STATE[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0330033203030303)) 
    \FSM_sequential_STATE[1]_i_5 
       (.I0(\count[2]_i_2_n_0 ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(CCT),
        .O(\FSM_sequential_STATE[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_STATE[1]_i_6 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[3] ),
        .O(\FSM_sequential_STATE[1]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "S2:10,S0:00,S3:11,S1:01" *) 
  FDRE \FSM_sequential_STATE_reg[0] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_STATE[0]_i_1_n_0 ),
        .Q(STATE_reg[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "S2:10,S0:00,S3:11,S1:01" *) 
  FDRE \FSM_sequential_STATE_reg[1] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_STATE[1]_i_1_n_0 ),
        .Q(STATE_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LedTick/count_reg[0] 
       (.C(Clk_div_BUFG),
        .CE(TickEnable_reg_n_0),
        .D(\LedTick/count [0]),
        .Q(\LedTick/count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LedTick/count_reg[1] 
       (.C(Clk_div_BUFG),
        .CE(TickEnable_reg_n_0),
        .D(\LedTick/count [1]),
        .Q(\LedTick/count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LedTick/count_reg[2] 
       (.C(Clk_div_BUFG),
        .CE(TickEnable_reg_n_0),
        .D(\LedTick/count [2]),
        .Q(\LedTick/count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LedTick/count_reg[3] 
       (.C(Clk_div_BUFG),
        .CE(TickEnable_reg_n_0),
        .D(\LedTick/count [3]),
        .Q(\LedTick/count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LedTick/count_reg[4] 
       (.C(Clk_div_BUFG),
        .CE(TickEnable_reg_n_0),
        .D(\LedTick/count [4]),
        .Q(\LedTick/count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LedTick/count_reg[5] 
       (.C(Clk_div_BUFG),
        .CE(TickEnable_reg_n_0),
        .D(\LedTick/count [5]),
        .Q(\LedTick/count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LedTick/count_reg[6] 
       (.C(Clk_div_BUFG),
        .CE(TickEnable_reg_n_0),
        .D(\LedTick/count [6]),
        .Q(\LedTick/count_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \LedTick/tick_reg 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(tick_i_1_n_0),
        .Q(LCT),
        .R(1'b0));
  OBUF \Led_OBUF[0]_inst 
       (.I(Led_OBUF[0]),
        .O(Led[0]));
  OBUF \Led_OBUF[1]_inst 
       (.I(Led_OBUF[1]),
        .O(Led[1]));
  OBUF \Led_OBUF[2]_inst 
       (.I(Led_OBUF[2]),
        .O(Led[2]));
  OBUF \Led_OBUF[3]_inst 
       (.I(Led_OBUF[3]),
        .O(Led[3]));
  (* IMPORTED_FROM = "c:/Users/marco/Desktop/LAE/Simon/cores/PLL/PLL.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  PLL PLL_inst
       (.CLK_IN(clk_IBUF),
        .CLK_OUT(NLW_PLL_inst_CLK_OUT_UNCONNECTED),
        .LOCKED(pll_locked));
  LUT2 #(
    .INIT(4'h6)) 
    \POINT[0]_i_1 
       (.I0(SCORE[0]),
        .I1(\POINT[11]_i_6_n_0 ),
        .O(\POINT[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \POINT[10]_i_1 
       (.I0(\POINT[11]_i_6_n_0 ),
        .I1(SCORE[9]),
        .I2(SCORE[8]),
        .I3(SCORE[10]),
        .O(\POINT[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \POINT[11]_i_1 
       (.I0(STATE_reg[0]),
        .I1(STATE_reg[1]),
        .O(\POINT[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000A800)) 
    \POINT[11]_i_2 
       (.I0(\POINT[11]_i_4_n_0 ),
        .I1(SCORE[6]),
        .I2(SCORE[5]),
        .I3(SCORE[7]),
        .I4(\POINT[11]_i_5_n_0 ),
        .I5(\POINT[11]_i_6_n_0 ),
        .O(\POINT[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h14505050)) 
    \POINT[11]_i_3 
       (.I0(\POINT[11]_i_6_n_0 ),
        .I1(SCORE[10]),
        .I2(SCORE[11]),
        .I3(SCORE[8]),
        .I4(SCORE[9]),
        .O(\POINT[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \POINT[11]_i_4 
       (.I0(STATE_reg[0]),
        .I1(STATE_reg[1]),
        .I2(LCT),
        .O(\POINT[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \POINT[11]_i_5 
       (.I0(SCORE[2]),
        .I1(SCORE[1]),
        .I2(SCORE[3]),
        .O(\POINT[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \POINT[11]_i_6 
       (.I0(\POINT[11]_i_7_n_0 ),
        .I1(button_IBUF[3]),
        .I2(Led_OBUF[3]),
        .O(\POINT[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \POINT[11]_i_7 
       (.I0(Led_OBUF[0]),
        .I1(button_IBUF[0]),
        .I2(Led_OBUF[1]),
        .I3(button_IBUF[1]),
        .I4(button_IBUF[2]),
        .I5(Led_OBUF[2]),
        .O(\POINT[11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h03F8F308)) 
    \POINT[1]_i_1 
       (.I0(SCORE[2]),
        .I1(SCORE[3]),
        .I2(\POINT[11]_i_6_n_0 ),
        .I3(SCORE[1]),
        .I4(SCORE[0]),
        .O(\POINT[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h5FA0F300)) 
    \POINT[2]_i_1 
       (.I0(SCORE[0]),
        .I1(SCORE[3]),
        .I2(\POINT[11]_i_6_n_0 ),
        .I3(SCORE[2]),
        .I4(SCORE[1]),
        .O(\POINT[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000E0000)) 
    \POINT[3]_i_1 
       (.I0(\POINT[11]_i_5_n_0 ),
        .I1(\POINT[11]_i_6_n_0 ),
        .I2(LCT),
        .I3(STATE_reg[1]),
        .I4(STATE_reg[0]),
        .O(\POINT[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7F800300)) 
    \POINT[3]_i_2 
       (.I0(SCORE[0]),
        .I1(SCORE[2]),
        .I2(SCORE[1]),
        .I3(SCORE[3]),
        .I4(\POINT[11]_i_6_n_0 ),
        .O(\POINT[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h14141444)) 
    \POINT[4]_i_1 
       (.I0(\POINT[11]_i_6_n_0 ),
        .I1(SCORE[4]),
        .I2(SCORE[3]),
        .I3(SCORE[1]),
        .I4(SCORE[2]),
        .O(\POINT[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000555544401115)) 
    \POINT[5]_i_1 
       (.I0(\POINT[11]_i_6_n_0 ),
        .I1(SCORE[3]),
        .I2(SCORE[1]),
        .I3(SCORE[2]),
        .I4(SCORE[5]),
        .I5(SCORE[4]),
        .O(\POINT[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h14415041)) 
    \POINT[6]_i_1 
       (.I0(\POINT[11]_i_6_n_0 ),
        .I1(\POINT[11]_i_5_n_0 ),
        .I2(SCORE[6]),
        .I3(SCORE[5]),
        .I4(SCORE[4]),
        .O(\POINT[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA8880)) 
    \POINT[7]_i_1 
       (.I0(\POINT[11]_i_4_n_0 ),
        .I1(SCORE[7]),
        .I2(SCORE[5]),
        .I3(SCORE[6]),
        .I4(\POINT[11]_i_5_n_0 ),
        .I5(\POINT[11]_i_6_n_0 ),
        .O(\POINT[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1444111444441114)) 
    \POINT[7]_i_2 
       (.I0(\POINT[11]_i_6_n_0 ),
        .I1(SCORE[7]),
        .I2(SCORE[5]),
        .I3(SCORE[6]),
        .I4(\POINT[11]_i_5_n_0 ),
        .I5(SCORE[4]),
        .O(\POINT[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h41414111)) 
    \POINT[8]_i_1 
       (.I0(\POINT[11]_i_6_n_0 ),
        .I1(SCORE[8]),
        .I2(SCORE[3]),
        .I3(SCORE[1]),
        .I4(SCORE[2]),
        .O(\POINT[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5014501450141414)) 
    \POINT[9]_i_1 
       (.I0(\POINT[11]_i_6_n_0 ),
        .I1(SCORE[8]),
        .I2(SCORE[9]),
        .I3(SCORE[3]),
        .I4(SCORE[1]),
        .I5(SCORE[2]),
        .O(\POINT[9]_i_1_n_0 ));
  FDSE \RandomNumberGenerator/q_reg[0] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(q[7]),
        .Q(\RandomNumberGenerator/q_reg_n_0_[0] ),
        .S(p_0_in__0));
  FDSE \RandomNumberGenerator/q_reg[1] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(\RandomNumberGenerator/q_reg_n_0_[0] ),
        .Q(\RandomNumberGenerator/q_reg_n_0_[1] ),
        .S(p_0_in__0));
  FDSE \RandomNumberGenerator/q_reg[2] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(\RandomNumberGenerator/p_7_out [2]),
        .Q(\RandomNumberGenerator/q_reg_n_0_[2] ),
        .S(p_0_in__0));
  FDSE \RandomNumberGenerator/q_reg[3] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(\RandomNumberGenerator/p_7_out [3]),
        .Q(\RandomNumberGenerator/q_reg_n_0_[3] ),
        .S(p_0_in__0));
  FDSE \RandomNumberGenerator/q_reg[4] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(\RandomNumberGenerator/p_7_out [4]),
        .Q(q[4]),
        .S(p_0_in__0));
  FDSE \RandomNumberGenerator/q_reg[5] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(q[4]),
        .Q(q[5]),
        .S(p_0_in__0));
  FDSE \RandomNumberGenerator/q_reg[6] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(q[5]),
        .Q(q[6]),
        .S(p_0_in__0));
  FDSE \RandomNumberGenerator/q_reg[7] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(q[6]),
        .Q(q[7]),
        .S(p_0_in__0));
  IBUF START_IBUF_inst
       (.I(START),
        .O(START_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \Scoring1/count_reg[0] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(anodeS1_OBUF[0]),
        .Q(anodeS1_OBUF[1]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Scoring1/display_decoder/segA_reg 
       (.D(segA_reg_i_1_n_0),
        .G(segA_reg_i_2_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Ssegment1_OBUF[6]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Scoring1/display_decoder/segB_reg 
       (.D(segB_reg_i_1_n_0),
        .G(segA_reg_i_2_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Ssegment1_OBUF[5]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Scoring1/display_decoder/segC_reg 
       (.D(segC_reg_i_1_n_0),
        .G(segA_reg_i_2_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Ssegment1_OBUF[4]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Scoring1/display_decoder/segD_reg 
       (.D(segD_reg_i_1_n_0),
        .G(segA_reg_i_2_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Ssegment1_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Scoring1/display_decoder/segE_reg 
       (.D(segE_reg_i_1_n_0),
        .G(segA_reg_i_2_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Ssegment1_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Scoring1/display_decoder/segF_reg 
       (.D(segF_reg_i_1_n_0),
        .G(segA_reg_i_2_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Ssegment1_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Scoring1/display_decoder/segG_reg 
       (.D(segG_reg_i_1_n_0),
        .G(segA_reg_i_2_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Ssegment1_OBUF[0]));
  FDRE #(
    .INIT(1'b0)) 
    \Scoring2/count_reg[0] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(anodeS2_OBUF[0]),
        .Q(anodeS2_OBUF[1]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Scoring2/display_decoder/segA_reg 
       (.D(segA_reg_i_1__0_n_0),
        .G(segA_reg_i_2__0_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Ssegment2_OBUF[6]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Scoring2/display_decoder/segB_reg 
       (.D(segB_reg_i_1__0_n_0),
        .G(segA_reg_i_2__0_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Ssegment2_OBUF[5]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Scoring2/display_decoder/segC_reg 
       (.D(segC_reg_i_1__0_n_0),
        .G(segA_reg_i_2__0_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Ssegment2_OBUF[4]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Scoring2/display_decoder/segD_reg 
       (.D(segD_reg_i_1__0_n_0),
        .G(segA_reg_i_2__0_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Ssegment2_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Scoring2/display_decoder/segE_reg 
       (.D(segE_reg_i_1__0_n_0),
        .G(segA_reg_i_2__0_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Ssegment2_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Scoring2/display_decoder/segF_reg 
       (.D(segF_reg_i_1__0_n_0),
        .G(segA_reg_i_2__0_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Ssegment2_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Scoring2/display_decoder/segG_reg 
       (.D(segG_reg_i_1__0_n_0),
        .G(segA_reg_i_2__0_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Ssegment2_OBUF[0]));
  OBUF \Ssegment1_OBUF[0]_inst 
       (.I(Ssegment1_OBUF[0]),
        .O(Ssegment1[0]));
  OBUF \Ssegment1_OBUF[1]_inst 
       (.I(Ssegment1_OBUF[1]),
        .O(Ssegment1[1]));
  OBUF \Ssegment1_OBUF[2]_inst 
       (.I(Ssegment1_OBUF[2]),
        .O(Ssegment1[2]));
  OBUF \Ssegment1_OBUF[3]_inst 
       (.I(Ssegment1_OBUF[3]),
        .O(Ssegment1[3]));
  OBUF \Ssegment1_OBUF[4]_inst 
       (.I(Ssegment1_OBUF[4]),
        .O(Ssegment1[4]));
  OBUF \Ssegment1_OBUF[5]_inst 
       (.I(Ssegment1_OBUF[5]),
        .O(Ssegment1[5]));
  OBUF \Ssegment1_OBUF[6]_inst 
       (.I(Ssegment1_OBUF[6]),
        .O(Ssegment1[6]));
  OBUF \Ssegment2_OBUF[0]_inst 
       (.I(Ssegment2_OBUF[0]),
        .O(Ssegment2[0]));
  OBUF \Ssegment2_OBUF[1]_inst 
       (.I(Ssegment2_OBUF[1]),
        .O(Ssegment2[1]));
  OBUF \Ssegment2_OBUF[2]_inst 
       (.I(Ssegment2_OBUF[2]),
        .O(Ssegment2[2]));
  OBUF \Ssegment2_OBUF[3]_inst 
       (.I(Ssegment2_OBUF[3]),
        .O(Ssegment2[3]));
  OBUF \Ssegment2_OBUF[4]_inst 
       (.I(Ssegment2_OBUF[4]),
        .O(Ssegment2[4]));
  OBUF \Ssegment2_OBUF[5]_inst 
       (.I(Ssegment2_OBUF[5]),
        .O(Ssegment2[5]));
  OBUF \Ssegment2_OBUF[6]_inst 
       (.I(Ssegment2_OBUF[6]),
        .O(Ssegment2[6]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  CARRY4 \StatusTick/count0_carry 
       (.CI(1'b0),
        .CO({\StatusTick/count0_carry_n_0 ,\NLW_StatusTick/count0_carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(\StatusTick/count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\StatusTick/data0 [4:1]),
        .S({\StatusTick/count_reg_n_0_[4] ,\StatusTick/count_reg_n_0_[3] ,\StatusTick/count_reg_n_0_[2] ,\StatusTick/count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  CARRY4 \StatusTick/count0_carry__0 
       (.CI(\StatusTick/count0_carry_n_0 ),
        .CO({\StatusTick/count0_carry__0_n_0 ,\NLW_StatusTick/count0_carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\StatusTick/data0 [8:5]),
        .S({\StatusTick/count_reg_n_0_[8] ,\StatusTick/count_reg_n_0_[7] ,\StatusTick/count_reg_n_0_[6] ,\StatusTick/count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  CARRY4 \StatusTick/count0_carry__1 
       (.CI(\StatusTick/count0_carry__0_n_0 ),
        .CO({\StatusTick/count0_carry__1_n_0 ,\NLW_StatusTick/count0_carry__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\StatusTick/data0 [12:9]),
        .S({\StatusTick/count_reg_n_0_[12] ,\StatusTick/count_reg_n_0_[11] ,\StatusTick/count_reg_n_0_[10] ,\StatusTick/count_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  CARRY4 \StatusTick/count0_carry__2 
       (.CI(\StatusTick/count0_carry__1_n_0 ),
        .CO({\StatusTick/count0_carry__2_n_0 ,\NLW_StatusTick/count0_carry__2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\StatusTick/data0 [16:13]),
        .S({\StatusTick/count_reg_n_0_[16] ,\StatusTick/count_reg_n_0_[15] ,\StatusTick/count_reg_n_0_[14] ,\StatusTick/count_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "POST_PROCESS_NETLIST" *) 
  CARRY4 \StatusTick/count0_carry__3 
       (.CI(\StatusTick/count0_carry__2_n_0 ),
        .CO(\NLW_StatusTick/count0_carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_StatusTick/count0_carry__3_O_UNCONNECTED [3],\StatusTick/data0 [19:17]}),
        .S({1'b0,\StatusTick/count_reg_n_0_[19] ,\StatusTick/count_reg_n_0_[18] ,\StatusTick/count_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[0] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/count ),
        .Q(\StatusTick/count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[10] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [10]),
        .Q(\StatusTick/count_reg_n_0_[10] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[11] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [11]),
        .Q(\StatusTick/count_reg_n_0_[11] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[12] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [12]),
        .Q(\StatusTick/count_reg_n_0_[12] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[13] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [13]),
        .Q(\StatusTick/count_reg_n_0_[13] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[14] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [14]),
        .Q(\StatusTick/count_reg_n_0_[14] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[15] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [15]),
        .Q(\StatusTick/count_reg_n_0_[15] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[16] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [16]),
        .Q(\StatusTick/count_reg_n_0_[16] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[17] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [17]),
        .Q(\StatusTick/count_reg_n_0_[17] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[18] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [18]),
        .Q(\StatusTick/count_reg_n_0_[18] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[19] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [19]),
        .Q(\StatusTick/count_reg_n_0_[19] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[1] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [1]),
        .Q(\StatusTick/count_reg_n_0_[1] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[2] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [2]),
        .Q(\StatusTick/count_reg_n_0_[2] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[3] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [3]),
        .Q(\StatusTick/count_reg_n_0_[3] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[4] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [4]),
        .Q(\StatusTick/count_reg_n_0_[4] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[5] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [5]),
        .Q(\StatusTick/count_reg_n_0_[5] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[6] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [6]),
        .Q(\StatusTick/count_reg_n_0_[6] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[7] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [7]),
        .Q(\StatusTick/count_reg_n_0_[7] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[8] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [8]),
        .Q(\StatusTick/count_reg_n_0_[8] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \StatusTick/count_reg[9] 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\StatusTick/data0 [9]),
        .Q(\StatusTick/count_reg_n_0_[9] ),
        .R(\count[19]_i_1_n_0 ));
  FDRE \StatusTick/tick_reg 
       (.C(clk_IBUF),
        .CE(1'b1),
        .D(\count[19]_i_1_n_0 ),
        .Q(Clk_div),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCB8AEB8A00000000)) 
    TickEnable_i_1
       (.I0(TickEnable_reg_n_0),
        .I1(STATE_reg[1]),
        .I2(STATE_reg[0]),
        .I3(START_IBUF),
        .I4(\FSM_sequential_STATE[1]_i_2_n_0 ),
        .I5(rst_IBUF),
        .O(TickEnable_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TickEnable_reg
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(TickEnable_i_1_n_0),
        .Q(TickEnable_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Timing/count_reg[0] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(anodeT_OBUF[0]),
        .Q(anodeT_OBUF[1]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Timing/display_decoder/segA_reg 
       (.D(segA_reg_i_1__1_n_0),
        .G(segA_reg_i_2__1_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Tsegment_OBUF[6]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Timing/display_decoder/segB_reg 
       (.D(segB_reg_i_1__1_n_0),
        .G(segA_reg_i_2__1_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Tsegment_OBUF[5]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Timing/display_decoder/segC_reg 
       (.D(segC_reg_i_1__1_n_0),
        .G(segA_reg_i_2__1_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Tsegment_OBUF[4]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Timing/display_decoder/segD_reg 
       (.D(segD_reg_i_1__1_n_0),
        .G(segA_reg_i_2__1_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Tsegment_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Timing/display_decoder/segE_reg 
       (.D(segE_reg_i_1__1_n_0),
        .G(segA_reg_i_2__1_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Tsegment_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Timing/display_decoder/segF_reg 
       (.D(segF_reg_i_1__1_n_0),
        .G(segA_reg_i_2__1_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Tsegment_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    \Timing/display_decoder/segG_reg 
       (.D(segG_reg_i_1__1_n_0),
        .G(segA_reg_i_2__1_n_0),
        .GE(1'b1),
        .PRE(segA_reg_i_3_n_0),
        .Q(Tsegment_OBUF[0]));
  OBUF \Tsegment_OBUF[0]_inst 
       (.I(Tsegment_OBUF[0]),
        .O(Tsegment[0]));
  OBUF \Tsegment_OBUF[1]_inst 
       (.I(Tsegment_OBUF[1]),
        .O(Tsegment[1]));
  OBUF \Tsegment_OBUF[2]_inst 
       (.I(Tsegment_OBUF[2]),
        .O(Tsegment[2]));
  OBUF \Tsegment_OBUF[3]_inst 
       (.I(Tsegment_OBUF[3]),
        .O(Tsegment[3]));
  OBUF \Tsegment_OBUF[4]_inst 
       (.I(Tsegment_OBUF[4]),
        .O(Tsegment[4]));
  OBUF \Tsegment_OBUF[5]_inst 
       (.I(Tsegment_OBUF[5]),
        .O(Tsegment[5]));
  OBUF \Tsegment_OBUF[6]_inst 
       (.I(Tsegment_OBUF[6]),
        .O(Tsegment[6]));
  OBUF \anodeS1_OBUF[0]_inst 
       (.I(anodeS1_OBUF[0]),
        .O(anodeS1[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \anodeS1_OBUF[0]_inst_i_1 
       (.I0(anodeS1_OBUF[1]),
        .O(anodeS1_OBUF[0]));
  OBUF \anodeS1_OBUF[1]_inst 
       (.I(anodeS1_OBUF[1]),
        .O(anodeS1[1]));
  OBUF \anodeS2_OBUF[0]_inst 
       (.I(anodeS2_OBUF[0]),
        .O(anodeS2[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \anodeS2_OBUF[0]_inst_i_1 
       (.I0(anodeS2_OBUF[1]),
        .O(anodeS2_OBUF[0]));
  OBUF \anodeS2_OBUF[1]_inst 
       (.I(anodeS2_OBUF[1]),
        .O(anodeS2[1]));
  OBUF \anodeT_OBUF[0]_inst 
       (.I(anodeT_OBUF[0]),
        .O(anodeT[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \anodeT_OBUF[0]_inst_i_1 
       (.I0(anodeT_OBUF[1]),
        .O(anodeT_OBUF[0]));
  OBUF \anodeT_OBUF[1]_inst 
       (.I(anodeT_OBUF[1]),
        .O(anodeT[1]));
  IBUF \button_IBUF[0]_inst 
       (.I(button[0]),
        .O(button_IBUF[0]));
  IBUF \button_IBUF[1]_inst 
       (.I(button[1]),
        .O(button_IBUF[1]));
  IBUF \button_IBUF[2]_inst 
       (.I(button[2]),
        .O(button_IBUF[2]));
  IBUF \button_IBUF[3]_inst 
       (.I(button[3]),
        .O(button_IBUF[3]));
  (* OPT_INSERTED *) 
  (* OPT_MODIFIED = "MLO" *) 
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT6 #(
    .INIT(64'hCC00CC00AA000C00)) 
    \color[0]_i_1 
       (.I0(q[4]),
        .I1(Led_OBUF[0]),
        .I2(button_IBUF[0]),
        .I3(STATE_reg[0]),
        .I4(LCT),
        .I5(STATE_reg[1]),
        .O(\color[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB030A0308000A000)) 
    \color[1]_i_1 
       (.I0(q[5]),
        .I1(\color[1]_i_2_n_0 ),
        .I2(STATE_reg[0]),
        .I3(LCT),
        .I4(STATE_reg[1]),
        .I5(Led_OBUF[1]),
        .O(\color[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h15000000)) 
    \color[1]_i_2 
       (.I0(STATE_reg[1]),
        .I1(Led_OBUF[0]),
        .I2(button_IBUF[0]),
        .I3(button_IBUF[1]),
        .I4(Led_OBUF[1]),
        .O(\color[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB030A0308000A000)) 
    \color[2]_i_1 
       (.I0(q[6]),
        .I1(\color[2]_i_2_n_0 ),
        .I2(STATE_reg[0]),
        .I3(LCT),
        .I4(STATE_reg[1]),
        .I5(Led_OBUF[2]),
        .O(\color[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000400040)) 
    \color[2]_i_2 
       (.I0(STATE_reg[1]),
        .I1(Led_OBUF[2]),
        .I2(button_IBUF[2]),
        .I3(\Button_Click/POINT17_out ),
        .I4(Led_OBUF[1]),
        .I5(button_IBUF[1]),
        .O(\color[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \color[2]_i_3 
       (.I0(Led_OBUF[0]),
        .I1(button_IBUF[0]),
        .O(\Button_Click/POINT17_out ));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \color[3]_i_1 
       (.I0(STATE_reg[0]),
        .I1(LCT),
        .I2(q[7]),
        .I3(\color[3]_i_2_n_0 ),
        .I4(Led_OBUF[3]),
        .O(\color[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FFFFFF40FF)) 
    \color[3]_i_2 
       (.I0(\POINT[11]_i_7_n_0 ),
        .I1(button_IBUF[3]),
        .I2(Led_OBUF[3]),
        .I3(STATE_reg[0]),
        .I4(LCT),
        .I5(STATE_reg[1]),
        .O(\color[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(\StatusTick/count_reg_n_0_[0] ),
        .O(\StatusTick/count ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00F7)) 
    \count[0]_i_1__0 
       (.I0(\LedTick/count_reg_n_0_[1] ),
        .I1(\LedTick/count_reg_n_0_[3] ),
        .I2(\count[3]_i_2_n_0 ),
        .I3(\LedTick/count_reg_n_0_[0] ),
        .O(\LedTick/count [0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__1 
       (.I0(\CountdownTick/count_reg_n_0_[0] ),
        .O(\CountdownTick/count [0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[0]_i_1__2 
       (.I0(\count_reg_n_0_[0] ),
        .I1(CCT),
        .O(\count[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \count[19]_i_1 
       (.I0(\StatusTick/count_reg_n_0_[1] ),
        .I1(\StatusTick/count_reg_n_0_[0] ),
        .I2(\StatusTick/count_reg_n_0_[3] ),
        .I3(\StatusTick/count_reg_n_0_[2] ),
        .I4(\count[19]_i_2_n_0 ),
        .I5(\count[19]_i_3_n_0 ),
        .O(\count[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \count[19]_i_2 
       (.I0(\StatusTick/count_reg_n_0_[15] ),
        .I1(\StatusTick/count_reg_n_0_[14] ),
        .I2(\StatusTick/count_reg_n_0_[12] ),
        .I3(\StatusTick/count_reg_n_0_[13] ),
        .I4(\count[19]_i_4_n_0 ),
        .O(\count[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \count[19]_i_3 
       (.I0(\StatusTick/count_reg_n_0_[6] ),
        .I1(\StatusTick/count_reg_n_0_[7] ),
        .I2(\StatusTick/count_reg_n_0_[4] ),
        .I3(\StatusTick/count_reg_n_0_[5] ),
        .I4(\count[19]_i_5_n_0 ),
        .O(\count[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[19]_i_4 
       (.I0(\StatusTick/count_reg_n_0_[17] ),
        .I1(\StatusTick/count_reg_n_0_[16] ),
        .I2(\StatusTick/count_reg_n_0_[19] ),
        .I3(\StatusTick/count_reg_n_0_[18] ),
        .O(\count[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \count[19]_i_5 
       (.I0(\StatusTick/count_reg_n_0_[9] ),
        .I1(\StatusTick/count_reg_n_0_[8] ),
        .I2(\StatusTick/count_reg_n_0_[11] ),
        .I3(\StatusTick/count_reg_n_0_[10] ),
        .O(\count[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0FB0)) 
    \count[1]_i_1 
       (.I0(\count[3]_i_2_n_0 ),
        .I1(\LedTick/count_reg_n_0_[3] ),
        .I2(\LedTick/count_reg_n_0_[1] ),
        .I3(\LedTick/count_reg_n_0_[0] ),
        .O(\LedTick/count [1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(\CountdownTick/count_reg_n_0_[0] ),
        .I1(\CountdownTick/count_reg_n_0_[1] ),
        .O(\CountdownTick/count [1]));
  LUT6 #(
    .INIT(64'hF50AF508F50AF50A)) 
    \count[1]_i_1__1 
       (.I0(CCT),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count[2]_i_2_n_0 ),
        .O(\count[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00000000FDFF)) 
    \count[2]_i_1 
       (.I0(\CountdownTick/count_reg_n_0_[6] ),
        .I1(\CountdownTick/count_reg_n_0_[3] ),
        .I2(\CountdownTick/count_reg_n_0_[4] ),
        .I3(\CountdownTick/count_reg_n_0_[5] ),
        .I4(\count[6]_i_2__0_n_0 ),
        .I5(\CountdownTick/count_reg_n_0_[2] ),
        .O(\CountdownTick/count [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1__0 
       (.I0(\LedTick/count_reg_n_0_[1] ),
        .I1(\LedTick/count_reg_n_0_[0] ),
        .I2(\LedTick/count_reg_n_0_[2] ),
        .O(\LedTick/count [2]));
  LUT6 #(
    .INIT(64'hFFF50008FFF5000A)) 
    \count[2]_i_1__1 
       (.I0(CCT),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count[2]_i_2_n_0 ),
        .O(\count[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[2]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[3]),
        .O(\count[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h62CCC8CC)) 
    \count[3]_i_1 
       (.I0(\LedTick/count_reg_n_0_[0] ),
        .I1(\LedTick/count_reg_n_0_[3] ),
        .I2(\count[3]_i_2_n_0 ),
        .I3(\LedTick/count_reg_n_0_[1] ),
        .I4(\LedTick/count_reg_n_0_[2] ),
        .O(\LedTick/count [3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1__0 
       (.I0(\CountdownTick/count_reg_n_0_[2] ),
        .I1(\CountdownTick/count_reg_n_0_[0] ),
        .I2(\CountdownTick/count_reg_n_0_[1] ),
        .I3(\CountdownTick/count_reg_n_0_[3] ),
        .O(\CountdownTick/count [3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hAAA9AAAA)) 
    \count[3]_i_1__1 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(CCT),
        .O(\count[3]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \count[3]_i_2 
       (.I0(\LedTick/count_reg_n_0_[2] ),
        .I1(\LedTick/count_reg_n_0_[4] ),
        .I2(\LedTick/count_reg_n_0_[5] ),
        .I3(\LedTick/count_reg_n_0_[6] ),
        .O(\count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(\LedTick/count_reg_n_0_[1] ),
        .I1(\LedTick/count_reg_n_0_[3] ),
        .I2(\LedTick/count_reg_n_0_[0] ),
        .I3(\LedTick/count_reg_n_0_[2] ),
        .I4(\LedTick/count_reg_n_0_[4] ),
        .O(\LedTick/count [4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1__0 
       (.I0(\CountdownTick/count_reg_n_0_[3] ),
        .I1(\CountdownTick/count_reg_n_0_[1] ),
        .I2(\CountdownTick/count_reg_n_0_[0] ),
        .I3(\CountdownTick/count_reg_n_0_[2] ),
        .I4(\CountdownTick/count_reg_n_0_[4] ),
        .O(\CountdownTick/count [4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count[4]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(\count[4]_i_2_n_0 ),
        .O(\count[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \count[4]_i_2 
       (.I0(CCT),
        .I1(\count[2]_i_2_n_0 ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[3] ),
        .O(\count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00001F00)) 
    \count[5]_i_1 
       (.I0(p_0_in[0]),
        .I1(\count[4]_i_2_n_0 ),
        .I2(STATE_reg[0]),
        .I3(rst_IBUF),
        .I4(STATE_reg[1]),
        .I5(p_0_in[1]),
        .O(\count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1__0 
       (.I0(\LedTick/count_reg_n_0_[4] ),
        .I1(\LedTick/count_reg_n_0_[2] ),
        .I2(\LedTick/count_reg_n_0_[0] ),
        .I3(\LedTick/count_reg_n_0_[3] ),
        .I4(\LedTick/count_reg_n_0_[1] ),
        .I5(\LedTick/count_reg_n_0_[5] ),
        .O(\LedTick/count [5]));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC4)) 
    \count[5]_i_1__1 
       (.I0(\CountdownTick/count_reg_n_0_[6] ),
        .I1(\CountdownTick/count_reg_n_0_[5] ),
        .I2(\CountdownTick/count_reg_n_0_[2] ),
        .I3(\CountdownTick/count_reg_n_0_[3] ),
        .I4(\CountdownTick/count_reg_n_0_[4] ),
        .I5(\count[6]_i_2__0_n_0 ),
        .O(\CountdownTick/count [5]));
  LUT6 #(
    .INIT(64'hFFFFFEFF000001FF)) 
    \count[6]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\count[4]_i_2_n_0 ),
        .I3(STATE_reg[0]),
        .I4(\count[6]_i_2__1_n_0 ),
        .I5(p_0_in[2]),
        .O(\count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC6CCCCCC8)) 
    \count[6]_i_1__0 
       (.I0(\LedTick/count_reg_n_0_[0] ),
        .I1(\LedTick/count_reg_n_0_[6] ),
        .I2(\LedTick/count_reg_n_0_[2] ),
        .I3(\LedTick/count_reg_n_0_[4] ),
        .I4(\LedTick/count_reg_n_0_[5] ),
        .I5(\count[6]_i_2_n_0 ),
        .O(\LedTick/count [6]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAA2)) 
    \count[6]_i_1__1 
       (.I0(\CountdownTick/count_reg_n_0_[6] ),
        .I1(\CountdownTick/count_reg_n_0_[5] ),
        .I2(\count[6]_i_2__0_n_0 ),
        .I3(\CountdownTick/count_reg_n_0_[2] ),
        .I4(\CountdownTick/count_reg_n_0_[4] ),
        .I5(\CountdownTick/count_reg_n_0_[3] ),
        .O(\CountdownTick/count [6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[6]_i_2 
       (.I0(\LedTick/count_reg_n_0_[1] ),
        .I1(\LedTick/count_reg_n_0_[3] ),
        .O(\count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[6]_i_2__0 
       (.I0(\CountdownTick/count_reg_n_0_[0] ),
        .I1(\CountdownTick/count_reg_n_0_[1] ),
        .O(\count[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \count[6]_i_2__1 
       (.I0(STATE_reg[1]),
        .I1(rst_IBUF),
        .O(\count[6]_i_2__1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \count[7]_i_1 
       (.I0(STATE_reg[0]),
        .I1(rst_IBUF),
        .I2(STATE_reg[1]),
        .O(\count[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[7]_i_2 
       (.I0(rst_IBUF),
        .I1(STATE_reg[1]),
        .O(\count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F0D0)) 
    \count[7]_i_3 
       (.I0(CCT),
        .I1(\count[7]_i_4_n_0 ),
        .I2(p_0_in[3]),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count[7]_i_5_n_0 ),
        .I5(\count_reg_n_0_[3] ),
        .O(\count[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \count[7]_i_4 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .O(\count[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \count[7]_i_5 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .O(\count[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(Clk_div_BUFG),
        .CE(\count[7]_i_2_n_0 ),
        .D(\count[0]_i_1__2_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(Clk_div_BUFG),
        .CE(\count[7]_i_2_n_0 ),
        .D(\count[1]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(Clk_div_BUFG),
        .CE(\count[7]_i_2_n_0 ),
        .D(\count[2]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(\count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(Clk_div_BUFG),
        .CE(\count[7]_i_2_n_0 ),
        .D(\count[3]_i_1__1_n_0 ),
        .Q(\count_reg_n_0_[3] ),
        .R(\count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \count_reg[4] 
       (.C(Clk_div_BUFG),
        .CE(\count[7]_i_2_n_0 ),
        .D(\count[4]_i_1__1_n_0 ),
        .Q(p_0_in[0]),
        .R(\count[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(\count[5]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(Clk_div_BUFG),
        .CE(1'b1),
        .D(\count[6]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(Clk_div_BUFG),
        .CE(\count[7]_i_2_n_0 ),
        .D(\count[7]_i_3_n_0 ),
        .Q(p_0_in[3]),
        .R(\count[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[2]_i_1 
       (.I0(q[7]),
        .I1(\RandomNumberGenerator/q_reg_n_0_[1] ),
        .O(\RandomNumberGenerator/p_7_out [2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[3]_i_1 
       (.I0(q[7]),
        .I1(\RandomNumberGenerator/q_reg_n_0_[2] ),
        .O(\RandomNumberGenerator/p_7_out [3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[4]_i_1 
       (.I0(q[7]),
        .I1(\RandomNumberGenerator/q_reg_n_0_[3] ),
        .O(\RandomNumberGenerator/p_7_out [4]));
  LUT1 #(
    .INIT(2'h1)) 
    \q[7]_i_1 
       (.I0(pll_locked),
        .O(p_0_in__0));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  LUT6 #(
    .INIT(64'h0001110100022202)) 
    segA_reg_i_1
       (.I0(\Scoring1/BCD_mux__3 [0]),
        .I1(\Scoring1/BCD_mux__3 [3]),
        .I2(SCORE[1]),
        .I3(anodeS1_OBUF[1]),
        .I4(SCORE[5]),
        .I5(\Scoring1/BCD_mux__3 [2]),
        .O(segA_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00010002)) 
    segA_reg_i_1__0
       (.I0(SCORE[8]),
        .I1(anodeS2_OBUF[1]),
        .I2(SCORE[11]),
        .I3(SCORE[9]),
        .I4(SCORE[10]),
        .O(segA_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0001110100022202)) 
    segA_reg_i_1__1
       (.I0(\Timing/BCD_mux__3 [0]),
        .I1(\Timing/BCD_mux__3 [3]),
        .I2(\count_reg_n_0_[1] ),
        .I3(anodeT_OBUF[1]),
        .I4(p_0_in[1]),
        .I5(\Timing/BCD_mux__3 [2]),
        .O(segA_reg_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h00440347FFFFFFFF)) 
    segA_reg_i_2
       (.I0(SCORE[6]),
        .I1(anodeS1_OBUF[1]),
        .I2(SCORE[2]),
        .I3(SCORE[5]),
        .I4(SCORE[1]),
        .I5(\Scoring1/BCD_mux__3 [3]),
        .O(segA_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF1FF)) 
    segA_reg_i_2__0
       (.I0(SCORE[10]),
        .I1(SCORE[9]),
        .I2(anodeS2_OBUF[1]),
        .I3(SCORE[11]),
        .O(segA_reg_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h00440347FFFFFFFF)) 
    segA_reg_i_2__1
       (.I0(p_0_in[2]),
        .I1(anodeT_OBUF[1]),
        .I2(\count_reg_n_0_[2] ),
        .I3(p_0_in[1]),
        .I4(\count_reg_n_0_[1] ),
        .I5(\Timing/BCD_mux__3 [3]),
        .O(segA_reg_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    segA_reg_i_3
       (.I0(rst_IBUF),
        .O(segA_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    segA_reg_i_3__0
       (.I0(p_0_in[0]),
        .I1(anodeT_OBUF[1]),
        .I2(\count_reg_n_0_[0] ),
        .O(\Timing/BCD_mux__3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    segA_reg_i_4
       (.I0(SCORE[4]),
        .I1(anodeS1_OBUF[1]),
        .I2(SCORE[0]),
        .O(\Scoring1/BCD_mux__3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    segA_reg_i_4__0
       (.I0(p_0_in[3]),
        .I1(anodeT_OBUF[1]),
        .I2(\count_reg_n_0_[3] ),
        .O(\Timing/BCD_mux__3 [3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    segA_reg_i_5
       (.I0(SCORE[7]),
        .I1(anodeS1_OBUF[1]),
        .I2(SCORE[3]),
        .O(\Scoring1/BCD_mux__3 [3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    segA_reg_i_5__0
       (.I0(p_0_in[2]),
        .I1(anodeT_OBUF[1]),
        .I2(\count_reg_n_0_[2] ),
        .O(\Timing/BCD_mux__3 [2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    segA_reg_i_6
       (.I0(SCORE[6]),
        .I1(anodeS1_OBUF[1]),
        .I2(SCORE[2]),
        .O(\Scoring1/BCD_mux__3 [2]));
  LUT6 #(
    .INIT(64'h33500050CCA000A0)) 
    segB_reg_i_1
       (.I0(SCORE[1]),
        .I1(SCORE[5]),
        .I2(SCORE[2]),
        .I3(anodeS1_OBUF[1]),
        .I4(SCORE[6]),
        .I5(\Scoring1/BCD_mux__3 [0]),
        .O(segB_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1400)) 
    segB_reg_i_1__0
       (.I0(anodeS2_OBUF[1]),
        .I1(SCORE[8]),
        .I2(SCORE[9]),
        .I3(SCORE[10]),
        .O(segB_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h33500050CCA000A0)) 
    segB_reg_i_1__1
       (.I0(\count_reg_n_0_[1] ),
        .I1(p_0_in[1]),
        .I2(\count_reg_n_0_[2] ),
        .I3(anodeT_OBUF[1]),
        .I4(p_0_in[2]),
        .I5(\Timing/BCD_mux__3 [0]),
        .O(segB_reg_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h1111050000000500)) 
    segC_reg_i_1
       (.I0(\Scoring1/BCD_mux__3 [0]),
        .I1(SCORE[6]),
        .I2(SCORE[2]),
        .I3(SCORE[1]),
        .I4(anodeS1_OBUF[1]),
        .I5(SCORE[5]),
        .O(segC_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    segC_reg_i_1__0
       (.I0(SCORE[10]),
        .I1(SCORE[8]),
        .I2(anodeS2_OBUF[1]),
        .I3(SCORE[9]),
        .O(segC_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h1111050000000500)) 
    segC_reg_i_1__1
       (.I0(\Timing/BCD_mux__3 [0]),
        .I1(p_0_in[2]),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(anodeT_OBUF[1]),
        .I5(p_0_in[1]),
        .O(segC_reg_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h2225552500022202)) 
    segD_reg_i_1
       (.I0(\Scoring1/BCD_mux__3 [0]),
        .I1(\Scoring1/BCD_mux__3 [3]),
        .I2(SCORE[1]),
        .I3(anodeS1_OBUF[1]),
        .I4(SCORE[5]),
        .I5(\Scoring1/BCD_mux__3 [2]),
        .O(segD_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h02110002)) 
    segD_reg_i_1__0
       (.I0(SCORE[8]),
        .I1(anodeS2_OBUF[1]),
        .I2(SCORE[11]),
        .I3(SCORE[9]),
        .I4(SCORE[10]),
        .O(segD_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h2225552500022202)) 
    segD_reg_i_1__1
       (.I0(\Timing/BCD_mux__3 [0]),
        .I1(\Timing/BCD_mux__3 [3]),
        .I2(\count_reg_n_0_[1] ),
        .I3(anodeT_OBUF[1]),
        .I4(p_0_in[1]),
        .I5(\Timing/BCD_mux__3 [2]),
        .O(segD_reg_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hAAAAEAEAAFAAEFEA)) 
    segE_reg_i_1
       (.I0(\Scoring1/BCD_mux__3 [0]),
        .I1(SCORE[6]),
        .I2(anodeS1_OBUF[1]),
        .I3(SCORE[2]),
        .I4(SCORE[5]),
        .I5(SCORE[1]),
        .O(segE_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00F2)) 
    segE_reg_i_1__0
       (.I0(SCORE[10]),
        .I1(SCORE[9]),
        .I2(SCORE[8]),
        .I3(anodeS2_OBUF[1]),
        .O(segE_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAEAEAAFAAEFEA)) 
    segE_reg_i_1__1
       (.I0(\Timing/BCD_mux__3 [0]),
        .I1(p_0_in[2]),
        .I2(anodeT_OBUF[1]),
        .I3(\count_reg_n_0_[2] ),
        .I4(p_0_in[1]),
        .I5(\count_reg_n_0_[1] ),
        .O(segE_reg_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h00000000888EEE8E)) 
    segF_reg_i_1
       (.I0(\Scoring1/BCD_mux__3 [0]),
        .I1(\Scoring1/BCD_mux__3 [1]),
        .I2(SCORE[2]),
        .I3(anodeS1_OBUF[1]),
        .I4(SCORE[6]),
        .I5(\Scoring1/BCD_mux__3 [3]),
        .O(segF_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0000080E)) 
    segF_reg_i_1__0
       (.I0(SCORE[8]),
        .I1(SCORE[9]),
        .I2(anodeS2_OBUF[1]),
        .I3(SCORE[10]),
        .I4(SCORE[11]),
        .O(segF_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h00000000888EEE8E)) 
    segF_reg_i_1__1
       (.I0(\Timing/BCD_mux__3 [0]),
        .I1(\Timing/BCD_mux__3 [1]),
        .I2(\count_reg_n_0_[2] ),
        .I3(anodeT_OBUF[1]),
        .I4(p_0_in[2]),
        .I5(\Timing/BCD_mux__3 [3]),
        .O(segF_reg_i_1__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    segF_reg_i_2
       (.I0(SCORE[5]),
        .I1(anodeS1_OBUF[1]),
        .I2(SCORE[1]),
        .O(\Scoring1/BCD_mux__3 [1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    segF_reg_i_2__0
       (.I0(p_0_in[1]),
        .I1(anodeT_OBUF[1]),
        .I2(\count_reg_n_0_[1] ),
        .O(\Timing/BCD_mux__3 [1]));
  LUT6 #(
    .INIT(64'h2220002000033303)) 
    segG_reg_i_1
       (.I0(\Scoring1/BCD_mux__3 [0]),
        .I1(\Scoring1/BCD_mux__3 [3]),
        .I2(SCORE[1]),
        .I3(anodeS1_OBUF[1]),
        .I4(SCORE[5]),
        .I5(\Scoring1/BCD_mux__3 [2]),
        .O(segG_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF2F0F0F3)) 
    segG_reg_i_1__0
       (.I0(SCORE[8]),
        .I1(SCORE[11]),
        .I2(anodeS2_OBUF[1]),
        .I3(SCORE[9]),
        .I4(SCORE[10]),
        .O(segG_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h2220002000033303)) 
    segG_reg_i_1__1
       (.I0(\Timing/BCD_mux__3 [0]),
        .I1(\Timing/BCD_mux__3 [3]),
        .I2(\count_reg_n_0_[1] ),
        .I3(anodeT_OBUF[1]),
        .I4(p_0_in[1]),
        .I5(\Timing/BCD_mux__3 [2]),
        .O(segG_reg_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    tick_i_1
       (.I0(\LedTick/count_reg_n_0_[0] ),
        .I1(TickEnable_reg_n_0),
        .I2(\LedTick/count_reg_n_0_[1] ),
        .I3(\LedTick/count_reg_n_0_[3] ),
        .I4(\count[3]_i_2_n_0 ),
        .O(tick_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    tick_i_1__0
       (.I0(\CountdownTick/count_reg_n_0_[0] ),
        .I1(\CountdownTick/count_reg_n_0_[1] ),
        .I2(TickEnable_reg_n_0),
        .I3(\CountdownTick/count_reg_n_0_[2] ),
        .I4(tick_i_2_n_0),
        .O(tick_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hFDFF)) 
    tick_i_2
       (.I0(\CountdownTick/count_reg_n_0_[6] ),
        .I1(\CountdownTick/count_reg_n_0_[3] ),
        .I2(\CountdownTick/count_reg_n_0_[4] ),
        .I3(\CountdownTick/count_reg_n_0_[5] ),
        .O(tick_i_2_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
