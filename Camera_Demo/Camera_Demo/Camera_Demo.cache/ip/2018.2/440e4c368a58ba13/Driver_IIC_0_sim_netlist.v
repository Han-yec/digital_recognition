// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Sep 16 21:00:37 2019
// Host        : DESKTOP-DU9F0PS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Driver_IIC_0_sim_netlist.v
// Design      : Driver_IIC_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ap_ST_fsm_state1 = "2'b01" *) (* ap_ST_fsm_state2 = "2'b10" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Driver_IIC
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    SCL_V,
    SCL_V_ap_vld,
    SDA_V,
    SDA_V_ap_vld,
    WR_V,
    Data_V_i,
    Data_V_o,
    Data_V_o_ap_vld,
    Res_V,
    Res_V_ap_vld);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [0:0]SCL_V;
  output SCL_V_ap_vld;
  output [0:0]SDA_V;
  output SDA_V_ap_vld;
  input [0:0]WR_V;
  input [7:0]Data_V_i;
  output [7:0]Data_V_o;
  output Data_V_o_ap_vld;
  output [0:0]Res_V;
  output Res_V_ap_vld;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]Data_V_i;
  wire [7:0]Data_V_o;
  wire Data_V_o_ap_vld;
  wire SCL_V_ap_vld;
  wire SCL_V_ap_vld_INST_0_i_1_n_0;
  wire [0:0]SDA_V;
  wire \SDA_V[0]_INST_0_i_1_n_0 ;
  wire SDA_V_ap_vld;
  wire [0:0]WR_V;
  wire \ap_CS_fsm[0]_i_1_n_0 ;
  wire \ap_CS_fsm[1]_i_1_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst;
  wire ap_start;
  wire [3:0]i_fu_118_p2;
  wire i_i_reg_107;
  wire \i_i_reg_107[3]_i_1_n_0 ;
  wire [3:0]i_i_reg_107_reg__0;
  wire p_0_in;
  wire [7:0]p_0_in__0;
  wire p_Val2_s_reg_98;
  wire \p_Val2_s_reg_98_reg_n_0_[0] ;
  wire \p_Val2_s_reg_98_reg_n_0_[1] ;
  wire \p_Val2_s_reg_98_reg_n_0_[2] ;
  wire \p_Val2_s_reg_98_reg_n_0_[3] ;
  wire \p_Val2_s_reg_98_reg_n_0_[4] ;
  wire \p_Val2_s_reg_98_reg_n_0_[5] ;
  wire \p_Val2_s_reg_98_reg_n_0_[6] ;

  assign Res_V[0] = \<const1> ;
  assign Res_V_ap_vld = ap_done;
  assign SCL_V[0] = \<const0> ;
  assign ap_ready = ap_done;
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \Data_V_o[0]_INST_0 
       (.I0(WR_V),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(Data_V_i[0]),
        .O(Data_V_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \Data_V_o[1]_INST_0 
       (.I0(WR_V),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(Data_V_i[1]),
        .O(Data_V_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \Data_V_o[2]_INST_0 
       (.I0(WR_V),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(Data_V_i[2]),
        .O(Data_V_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \Data_V_o[3]_INST_0 
       (.I0(WR_V),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(Data_V_i[3]),
        .O(Data_V_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \Data_V_o[4]_INST_0 
       (.I0(WR_V),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(Data_V_i[4]),
        .O(Data_V_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \Data_V_o[5]_INST_0 
       (.I0(WR_V),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(Data_V_i[5]),
        .O(Data_V_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \Data_V_o[6]_INST_0 
       (.I0(WR_V),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(Data_V_i[6]),
        .O(Data_V_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \Data_V_o[7]_INST_0 
       (.I0(WR_V),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(Data_V_i[7]),
        .O(Data_V_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    Data_V_o_ap_vld_INST_0
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(WR_V),
        .O(Data_V_o_ap_vld));
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h00000002AAAAAAAA)) 
    Res_V_ap_vld_INST_0
       (.I0(ap_CS_fsm_state2),
        .I1(i_i_reg_107_reg__0[3]),
        .I2(i_i_reg_107_reg__0[1]),
        .I3(i_i_reg_107_reg__0[0]),
        .I4(i_i_reg_107_reg__0[2]),
        .I5(WR_V),
        .O(ap_done));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h4F404040)) 
    SCL_V_ap_vld_INST_0
       (.I0(SCL_V_ap_vld_INST_0_i_1_n_0),
        .I1(ap_CS_fsm_state2),
        .I2(WR_V),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(ap_start),
        .O(SCL_V_ap_vld));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    SCL_V_ap_vld_INST_0_i_1
       (.I0(i_i_reg_107_reg__0[2]),
        .I1(i_i_reg_107_reg__0[0]),
        .I2(i_i_reg_107_reg__0[1]),
        .I3(i_i_reg_107_reg__0[3]),
        .O(SCL_V_ap_vld_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2F202020)) 
    \SDA_V[0]_INST_0 
       (.I0(p_0_in),
        .I1(\SDA_V[0]_INST_0_i_1_n_0 ),
        .I2(WR_V),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(ap_start),
        .O(SDA_V));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \SDA_V[0]_INST_0_i_1 
       (.I0(i_i_reg_107_reg__0[3]),
        .I1(i_i_reg_107_reg__0[1]),
        .I2(i_i_reg_107_reg__0[0]),
        .I3(i_i_reg_107_reg__0[2]),
        .I4(ap_CS_fsm_state2),
        .O(\SDA_V[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    SDA_V_ap_vld_INST_0
       (.I0(\SDA_V[0]_INST_0_i_1_n_0 ),
        .I1(WR_V),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_start),
        .O(SDA_V_ap_vld));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF2E)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_done),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(ap_rst),
        .O(\ap_CS_fsm[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DD8D8D8D)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .I2(ap_CS_fsm_state2),
        .I3(SCL_V_ap_vld_INST_0_i_1_n_0),
        .I4(WR_V),
        .I5(ap_rst),
        .O(\ap_CS_fsm[1]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1_n_0 ),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[1]_i_1_n_0 ),
        .Q(ap_CS_fsm_state2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT1 #(
    .INIT(2'h1)) 
    \i_i_reg_107[0]_i_1 
       (.I0(i_i_reg_107_reg__0[0]),
        .O(i_fu_118_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \i_i_reg_107[1]_i_1 
       (.I0(i_i_reg_107_reg__0[1]),
        .I1(i_i_reg_107_reg__0[0]),
        .O(i_fu_118_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \i_i_reg_107[2]_i_1 
       (.I0(i_i_reg_107_reg__0[2]),
        .I1(i_i_reg_107_reg__0[0]),
        .I2(i_i_reg_107_reg__0[1]),
        .O(i_fu_118_p2[2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \i_i_reg_107[3]_i_1 
       (.I0(WR_V),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_start),
        .I3(\SDA_V[0]_INST_0_i_1_n_0 ),
        .O(\i_i_reg_107[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \i_i_reg_107[3]_i_2 
       (.I0(WR_V),
        .I1(ap_CS_fsm_state2),
        .I2(i_i_reg_107_reg__0[2]),
        .I3(i_i_reg_107_reg__0[0]),
        .I4(i_i_reg_107_reg__0[1]),
        .I5(i_i_reg_107_reg__0[3]),
        .O(i_i_reg_107));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \i_i_reg_107[3]_i_3 
       (.I0(i_i_reg_107_reg__0[3]),
        .I1(i_i_reg_107_reg__0[1]),
        .I2(i_i_reg_107_reg__0[0]),
        .I3(i_i_reg_107_reg__0[2]),
        .O(i_fu_118_p2[3]));
  FDRE \i_i_reg_107_reg[0] 
       (.C(ap_clk),
        .CE(i_i_reg_107),
        .D(i_fu_118_p2[0]),
        .Q(i_i_reg_107_reg__0[0]),
        .R(\i_i_reg_107[3]_i_1_n_0 ));
  FDRE \i_i_reg_107_reg[1] 
       (.C(ap_clk),
        .CE(i_i_reg_107),
        .D(i_fu_118_p2[1]),
        .Q(i_i_reg_107_reg__0[1]),
        .R(\i_i_reg_107[3]_i_1_n_0 ));
  FDRE \i_i_reg_107_reg[2] 
       (.C(ap_clk),
        .CE(i_i_reg_107),
        .D(i_fu_118_p2[2]),
        .Q(i_i_reg_107_reg__0[2]),
        .R(\i_i_reg_107[3]_i_1_n_0 ));
  FDSE \i_i_reg_107_reg[3] 
       (.C(ap_clk),
        .CE(i_i_reg_107),
        .D(i_fu_118_p2[3]),
        .Q(i_i_reg_107_reg__0[3]),
        .S(\i_i_reg_107[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555700000000)) 
    \p_Val2_s_reg_98[0]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(i_i_reg_107_reg__0[2]),
        .I2(i_i_reg_107_reg__0[0]),
        .I3(i_i_reg_107_reg__0[1]),
        .I4(i_i_reg_107_reg__0[3]),
        .I5(Data_V_i[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Val2_s_reg_98[1]_i_1 
       (.I0(Data_V_i[1]),
        .I1(\SDA_V[0]_INST_0_i_1_n_0 ),
        .I2(\p_Val2_s_reg_98_reg_n_0_[0] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Val2_s_reg_98[2]_i_1 
       (.I0(Data_V_i[2]),
        .I1(\SDA_V[0]_INST_0_i_1_n_0 ),
        .I2(\p_Val2_s_reg_98_reg_n_0_[1] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Val2_s_reg_98[3]_i_1 
       (.I0(Data_V_i[3]),
        .I1(\SDA_V[0]_INST_0_i_1_n_0 ),
        .I2(\p_Val2_s_reg_98_reg_n_0_[2] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Val2_s_reg_98[4]_i_1 
       (.I0(Data_V_i[4]),
        .I1(\SDA_V[0]_INST_0_i_1_n_0 ),
        .I2(\p_Val2_s_reg_98_reg_n_0_[3] ),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Val2_s_reg_98[5]_i_1 
       (.I0(Data_V_i[5]),
        .I1(\SDA_V[0]_INST_0_i_1_n_0 ),
        .I2(\p_Val2_s_reg_98_reg_n_0_[4] ),
        .O(p_0_in__0[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Val2_s_reg_98[6]_i_1 
       (.I0(Data_V_i[6]),
        .I1(\SDA_V[0]_INST_0_i_1_n_0 ),
        .I2(\p_Val2_s_reg_98_reg_n_0_[5] ),
        .O(p_0_in__0[6]));
  LUT4 #(
    .INIT(16'h8F00)) 
    \p_Val2_s_reg_98[7]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .I2(\SDA_V[0]_INST_0_i_1_n_0 ),
        .I3(WR_V),
        .O(p_Val2_s_reg_98));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \p_Val2_s_reg_98[7]_i_2 
       (.I0(Data_V_i[7]),
        .I1(\SDA_V[0]_INST_0_i_1_n_0 ),
        .I2(\p_Val2_s_reg_98_reg_n_0_[6] ),
        .O(p_0_in__0[7]));
  FDRE \p_Val2_s_reg_98_reg[0] 
       (.C(ap_clk),
        .CE(p_Val2_s_reg_98),
        .D(p_0_in__0[0]),
        .Q(\p_Val2_s_reg_98_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \p_Val2_s_reg_98_reg[1] 
       (.C(ap_clk),
        .CE(p_Val2_s_reg_98),
        .D(p_0_in__0[1]),
        .Q(\p_Val2_s_reg_98_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \p_Val2_s_reg_98_reg[2] 
       (.C(ap_clk),
        .CE(p_Val2_s_reg_98),
        .D(p_0_in__0[2]),
        .Q(\p_Val2_s_reg_98_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \p_Val2_s_reg_98_reg[3] 
       (.C(ap_clk),
        .CE(p_Val2_s_reg_98),
        .D(p_0_in__0[3]),
        .Q(\p_Val2_s_reg_98_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \p_Val2_s_reg_98_reg[4] 
       (.C(ap_clk),
        .CE(p_Val2_s_reg_98),
        .D(p_0_in__0[4]),
        .Q(\p_Val2_s_reg_98_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \p_Val2_s_reg_98_reg[5] 
       (.C(ap_clk),
        .CE(p_Val2_s_reg_98),
        .D(p_0_in__0[5]),
        .Q(\p_Val2_s_reg_98_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \p_Val2_s_reg_98_reg[6] 
       (.C(ap_clk),
        .CE(p_Val2_s_reg_98),
        .D(p_0_in__0[6]),
        .Q(\p_Val2_s_reg_98_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \p_Val2_s_reg_98_reg[7] 
       (.C(ap_clk),
        .CE(p_Val2_s_reg_98),
        .D(p_0_in__0[7]),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "Driver_IIC_0,Driver_IIC,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "Driver_IIC,Vivado 2018.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (SCL_V_ap_vld,
    SDA_V_ap_vld,
    Data_V_o_ap_vld,
    Res_V_ap_vld,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    SCL_V,
    SDA_V,
    WR_V,
    Data_V_i,
    Data_V_o,
    Res_V);
  output SCL_V_ap_vld;
  output SDA_V_ap_vld;
  output Data_V_o_ap_vld;
  output Res_V_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 SCL_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SCL_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [0:0]SCL_V;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 SDA_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SDA_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [0:0]SDA_V;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 WR_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME WR_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) input [0:0]WR_V;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Data_V_i DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Data_V_i, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) input [7:0]Data_V_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Data_V_o DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Data_V_o, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [7:0]Data_V_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Res_V DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Res_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [0:0]Res_V;

  wire [7:0]Data_V_i;
  wire [7:0]Data_V_o;
  wire Data_V_o_ap_vld;
  wire [0:0]Res_V;
  wire Res_V_ap_vld;
  wire [0:0]SCL_V;
  wire SCL_V_ap_vld;
  wire [0:0]SDA_V;
  wire SDA_V_ap_vld;
  wire [0:0]WR_V;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;

  (* ap_ST_fsm_state1 = "2'b01" *) 
  (* ap_ST_fsm_state2 = "2'b10" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Driver_IIC inst
       (.Data_V_i(Data_V_i),
        .Data_V_o(Data_V_o),
        .Data_V_o_ap_vld(Data_V_o_ap_vld),
        .Res_V(Res_V),
        .Res_V_ap_vld(Res_V_ap_vld),
        .SCL_V(SCL_V),
        .SCL_V_ap_vld(SCL_V_ap_vld),
        .SDA_V(SDA_V),
        .SDA_V_ap_vld(SDA_V_ap_vld),
        .WR_V(WR_V),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
