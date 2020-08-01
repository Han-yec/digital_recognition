-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Sep 16 21:00:37 2019
-- Host        : DESKTOP-DU9F0PS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Driver_IIC_0_stub.vhdl
-- Design      : Driver_IIC_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s15ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    SCL_V_ap_vld : out STD_LOGIC;
    SDA_V_ap_vld : out STD_LOGIC;
    Data_V_o_ap_vld : out STD_LOGIC;
    Res_V_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    SCL_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    SDA_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    WR_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    Data_V_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Data_V_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Res_V : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SCL_V_ap_vld,SDA_V_ap_vld,Data_V_o_ap_vld,Res_V_ap_vld,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,SCL_V[0:0],SDA_V[0:0],WR_V[0:0],Data_V_i[7:0],Data_V_o[7:0],Res_V[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Driver_IIC,Vivado 2018.2";
begin
end;
