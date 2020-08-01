// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Sep 16 21:00:37 2019
// Host        : DESKTOP-DU9F0PS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Driver_IIC_0_stub.v
// Design      : Driver_IIC_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Driver_IIC,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(SCL_V_ap_vld, SDA_V_ap_vld, Data_V_o_ap_vld, 
  Res_V_ap_vld, ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, SCL_V, SDA_V, WR_V, Data_V_i, 
  Data_V_o, Res_V)
/* synthesis syn_black_box black_box_pad_pin="SCL_V_ap_vld,SDA_V_ap_vld,Data_V_o_ap_vld,Res_V_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,SCL_V[0:0],SDA_V[0:0],WR_V[0:0],Data_V_i[7:0],Data_V_o[7:0],Res_V[0:0]" */;
  output SCL_V_ap_vld;
  output SDA_V_ap_vld;
  output Data_V_o_ap_vld;
  output Res_V_ap_vld;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [0:0]SCL_V;
  output [0:0]SDA_V;
  input [0:0]WR_V;
  input [7:0]Data_V_i;
  output [7:0]Data_V_o;
  output [0:0]Res_V;
endmodule
