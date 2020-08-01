-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Sep 16 21:00:37 2019
-- Host        : DESKTOP-DU9F0PS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Driver_IIC_0_sim_netlist.vhdl
-- Design      : Driver_IIC_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s15ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Driver_IIC is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    SCL_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    SCL_V_ap_vld : out STD_LOGIC;
    SDA_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    SDA_V_ap_vld : out STD_LOGIC;
    WR_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    Data_V_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Data_V_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Data_V_o_ap_vld : out STD_LOGIC;
    Res_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    Res_V_ap_vld : out STD_LOGIC
  );
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Driver_IIC : entity is "2'b01";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Driver_IIC : entity is "2'b10";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Driver_IIC : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Driver_IIC;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Driver_IIC is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal SCL_V_ap_vld_INST_0_i_1_n_0 : STD_LOGIC;
  signal \SDA_V[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[0]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal \^ap_done\ : STD_LOGIC;
  signal i_fu_118_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i_i_reg_107 : STD_LOGIC;
  signal \i_i_reg_107[3]_i_1_n_0\ : STD_LOGIC;
  signal \i_i_reg_107_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_Val2_s_reg_98 : STD_LOGIC;
  signal \p_Val2_s_reg_98_reg_n_0_[0]\ : STD_LOGIC;
  signal \p_Val2_s_reg_98_reg_n_0_[1]\ : STD_LOGIC;
  signal \p_Val2_s_reg_98_reg_n_0_[2]\ : STD_LOGIC;
  signal \p_Val2_s_reg_98_reg_n_0_[3]\ : STD_LOGIC;
  signal \p_Val2_s_reg_98_reg_n_0_[4]\ : STD_LOGIC;
  signal \p_Val2_s_reg_98_reg_n_0_[5]\ : STD_LOGIC;
  signal \p_Val2_s_reg_98_reg_n_0_[6]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Data_V_o[0]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Data_V_o[1]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Data_V_o[2]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Data_V_o[3]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Data_V_o[4]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Data_V_o[5]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Data_V_o[6]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Data_V_o[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of Data_V_o_ap_vld_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of SCL_V_ap_vld_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of SCL_V_ap_vld_INST_0_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SDA_V[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \SDA_V[0]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of SDA_V_ap_vld_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i_i_reg_107[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \i_i_reg_107[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \p_Val2_s_reg_98[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \p_Val2_s_reg_98[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \p_Val2_s_reg_98[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \p_Val2_s_reg_98[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \p_Val2_s_reg_98[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \p_Val2_s_reg_98[7]_i_2\ : label is "soft_lutpair9";
begin
  Res_V(0) <= \<const1>\;
  Res_V_ap_vld <= \^ap_done\;
  SCL_V(0) <= \<const0>\;
  ap_done <= \^ap_done\;
  ap_ready <= \^ap_done\;
\Data_V_o[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => WR_V(0),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => Data_V_i(0),
      O => Data_V_o(0)
    );
\Data_V_o[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => WR_V(0),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => Data_V_i(1),
      O => Data_V_o(1)
    );
\Data_V_o[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => WR_V(0),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => Data_V_i(2),
      O => Data_V_o(2)
    );
\Data_V_o[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => WR_V(0),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => Data_V_i(3),
      O => Data_V_o(3)
    );
\Data_V_o[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => WR_V(0),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => Data_V_i(4),
      O => Data_V_o(4)
    );
\Data_V_o[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => WR_V(0),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => Data_V_i(5),
      O => Data_V_o(5)
    );
\Data_V_o[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => WR_V(0),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => Data_V_i(6),
      O => Data_V_o(6)
    );
\Data_V_o[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => WR_V(0),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => Data_V_i(7),
      O => Data_V_o(7)
    );
Data_V_o_ap_vld_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => WR_V(0),
      O => Data_V_o_ap_vld
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
Res_V_ap_vld_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002AAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \i_i_reg_107_reg__0\(3),
      I2 => \i_i_reg_107_reg__0\(1),
      I3 => \i_i_reg_107_reg__0\(0),
      I4 => \i_i_reg_107_reg__0\(2),
      I5 => WR_V(0),
      O => \^ap_done\
    );
SCL_V_ap_vld_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F404040"
    )
        port map (
      I0 => SCL_V_ap_vld_INST_0_i_1_n_0,
      I1 => ap_CS_fsm_state2,
      I2 => WR_V(0),
      I3 => \ap_CS_fsm_reg_n_0_[0]\,
      I4 => ap_start,
      O => SCL_V_ap_vld
    );
SCL_V_ap_vld_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \i_i_reg_107_reg__0\(2),
      I1 => \i_i_reg_107_reg__0\(0),
      I2 => \i_i_reg_107_reg__0\(1),
      I3 => \i_i_reg_107_reg__0\(3),
      O => SCL_V_ap_vld_INST_0_i_1_n_0
    );
\SDA_V[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F202020"
    )
        port map (
      I0 => p_0_in,
      I1 => \SDA_V[0]_INST_0_i_1_n_0\,
      I2 => WR_V(0),
      I3 => \ap_CS_fsm_reg_n_0_[0]\,
      I4 => ap_start,
      O => SDA_V(0)
    );
\SDA_V[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \i_i_reg_107_reg__0\(3),
      I1 => \i_i_reg_107_reg__0\(1),
      I2 => \i_i_reg_107_reg__0\(0),
      I3 => \i_i_reg_107_reg__0\(2),
      I4 => ap_CS_fsm_state2,
      O => \SDA_V[0]_INST_0_i_1_n_0\
    );
SDA_V_ap_vld_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => \SDA_V[0]_INST_0_i_1_n_0\,
      I1 => WR_V(0),
      I2 => \ap_CS_fsm_reg_n_0_[0]\,
      I3 => ap_start,
      O => SDA_V_ap_vld
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF2E"
    )
        port map (
      I0 => \^ap_done\,
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => ap_rst,
      O => \ap_CS_fsm[0]_i_1_n_0\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DD8D8D8D"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      I2 => ap_CS_fsm_state2,
      I3 => SCL_V_ap_vld_INST_0_i_1_n_0,
      I4 => WR_V(0),
      I5 => ap_rst,
      O => \ap_CS_fsm[1]_i_1_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[0]_i_1_n_0\,
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      R => '0'
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[1]_i_1_n_0\,
      Q => ap_CS_fsm_state2,
      R => '0'
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
\i_i_reg_107[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_i_reg_107_reg__0\(0),
      O => i_fu_118_p2(0)
    );
\i_i_reg_107[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \i_i_reg_107_reg__0\(1),
      I1 => \i_i_reg_107_reg__0\(0),
      O => i_fu_118_p2(1)
    );
\i_i_reg_107[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \i_i_reg_107_reg__0\(2),
      I1 => \i_i_reg_107_reg__0\(0),
      I2 => \i_i_reg_107_reg__0\(1),
      O => i_fu_118_p2(2)
    );
\i_i_reg_107[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => WR_V(0),
      I1 => \ap_CS_fsm_reg_n_0_[0]\,
      I2 => ap_start,
      I3 => \SDA_V[0]_INST_0_i_1_n_0\,
      O => \i_i_reg_107[3]_i_1_n_0\
    );
\i_i_reg_107[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => WR_V(0),
      I1 => ap_CS_fsm_state2,
      I2 => \i_i_reg_107_reg__0\(2),
      I3 => \i_i_reg_107_reg__0\(0),
      I4 => \i_i_reg_107_reg__0\(1),
      I5 => \i_i_reg_107_reg__0\(3),
      O => i_i_reg_107
    );
\i_i_reg_107[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \i_i_reg_107_reg__0\(3),
      I1 => \i_i_reg_107_reg__0\(1),
      I2 => \i_i_reg_107_reg__0\(0),
      I3 => \i_i_reg_107_reg__0\(2),
      O => i_fu_118_p2(3)
    );
\i_i_reg_107_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_i_reg_107,
      D => i_fu_118_p2(0),
      Q => \i_i_reg_107_reg__0\(0),
      R => \i_i_reg_107[3]_i_1_n_0\
    );
\i_i_reg_107_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_i_reg_107,
      D => i_fu_118_p2(1),
      Q => \i_i_reg_107_reg__0\(1),
      R => \i_i_reg_107[3]_i_1_n_0\
    );
\i_i_reg_107_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_i_reg_107,
      D => i_fu_118_p2(2),
      Q => \i_i_reg_107_reg__0\(2),
      R => \i_i_reg_107[3]_i_1_n_0\
    );
\i_i_reg_107_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => i_i_reg_107,
      D => i_fu_118_p2(3),
      Q => \i_i_reg_107_reg__0\(3),
      S => \i_i_reg_107[3]_i_1_n_0\
    );
\p_Val2_s_reg_98[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555700000000"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \i_i_reg_107_reg__0\(2),
      I2 => \i_i_reg_107_reg__0\(0),
      I3 => \i_i_reg_107_reg__0\(1),
      I4 => \i_i_reg_107_reg__0\(3),
      I5 => Data_V_i(0),
      O => \p_0_in__0\(0)
    );
\p_Val2_s_reg_98[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data_V_i(1),
      I1 => \SDA_V[0]_INST_0_i_1_n_0\,
      I2 => \p_Val2_s_reg_98_reg_n_0_[0]\,
      O => \p_0_in__0\(1)
    );
\p_Val2_s_reg_98[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data_V_i(2),
      I1 => \SDA_V[0]_INST_0_i_1_n_0\,
      I2 => \p_Val2_s_reg_98_reg_n_0_[1]\,
      O => \p_0_in__0\(2)
    );
\p_Val2_s_reg_98[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data_V_i(3),
      I1 => \SDA_V[0]_INST_0_i_1_n_0\,
      I2 => \p_Val2_s_reg_98_reg_n_0_[2]\,
      O => \p_0_in__0\(3)
    );
\p_Val2_s_reg_98[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data_V_i(4),
      I1 => \SDA_V[0]_INST_0_i_1_n_0\,
      I2 => \p_Val2_s_reg_98_reg_n_0_[3]\,
      O => \p_0_in__0\(4)
    );
\p_Val2_s_reg_98[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data_V_i(5),
      I1 => \SDA_V[0]_INST_0_i_1_n_0\,
      I2 => \p_Val2_s_reg_98_reg_n_0_[4]\,
      O => \p_0_in__0\(5)
    );
\p_Val2_s_reg_98[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data_V_i(6),
      I1 => \SDA_V[0]_INST_0_i_1_n_0\,
      I2 => \p_Val2_s_reg_98_reg_n_0_[5]\,
      O => \p_0_in__0\(6)
    );
\p_Val2_s_reg_98[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F00"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      I2 => \SDA_V[0]_INST_0_i_1_n_0\,
      I3 => WR_V(0),
      O => p_Val2_s_reg_98
    );
\p_Val2_s_reg_98[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data_V_i(7),
      I1 => \SDA_V[0]_INST_0_i_1_n_0\,
      I2 => \p_Val2_s_reg_98_reg_n_0_[6]\,
      O => \p_0_in__0\(7)
    );
\p_Val2_s_reg_98_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_Val2_s_reg_98,
      D => \p_0_in__0\(0),
      Q => \p_Val2_s_reg_98_reg_n_0_[0]\,
      R => '0'
    );
\p_Val2_s_reg_98_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_Val2_s_reg_98,
      D => \p_0_in__0\(1),
      Q => \p_Val2_s_reg_98_reg_n_0_[1]\,
      R => '0'
    );
\p_Val2_s_reg_98_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_Val2_s_reg_98,
      D => \p_0_in__0\(2),
      Q => \p_Val2_s_reg_98_reg_n_0_[2]\,
      R => '0'
    );
\p_Val2_s_reg_98_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_Val2_s_reg_98,
      D => \p_0_in__0\(3),
      Q => \p_Val2_s_reg_98_reg_n_0_[3]\,
      R => '0'
    );
\p_Val2_s_reg_98_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_Val2_s_reg_98,
      D => \p_0_in__0\(4),
      Q => \p_Val2_s_reg_98_reg_n_0_[4]\,
      R => '0'
    );
\p_Val2_s_reg_98_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_Val2_s_reg_98,
      D => \p_0_in__0\(5),
      Q => \p_Val2_s_reg_98_reg_n_0_[5]\,
      R => '0'
    );
\p_Val2_s_reg_98_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_Val2_s_reg_98,
      D => \p_0_in__0\(6),
      Q => \p_Val2_s_reg_98_reg_n_0_[6]\,
      R => '0'
    );
\p_Val2_s_reg_98_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_Val2_s_reg_98,
      D => \p_0_in__0\(7),
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Driver_IIC_0,Driver_IIC,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Driver_IIC,Vivado 2018.2";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "2'b01";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "2'b10";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_PARAMETER of ap_ready : signal is "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of Data_V_i : signal is "xilinx.com:signal:data:1.0 Data_V_i DATA";
  attribute X_INTERFACE_PARAMETER of Data_V_i : signal is "XIL_INTERFACENAME Data_V_i, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of Data_V_o : signal is "xilinx.com:signal:data:1.0 Data_V_o DATA";
  attribute X_INTERFACE_PARAMETER of Data_V_o : signal is "XIL_INTERFACENAME Data_V_o, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of Res_V : signal is "xilinx.com:signal:data:1.0 Res_V DATA";
  attribute X_INTERFACE_PARAMETER of Res_V : signal is "XIL_INTERFACENAME Res_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of SCL_V : signal is "xilinx.com:signal:data:1.0 SCL_V DATA";
  attribute X_INTERFACE_PARAMETER of SCL_V : signal is "XIL_INTERFACENAME SCL_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of SDA_V : signal is "xilinx.com:signal:data:1.0 SDA_V DATA";
  attribute X_INTERFACE_PARAMETER of SDA_V : signal is "XIL_INTERFACENAME SDA_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of WR_V : signal is "xilinx.com:signal:data:1.0 WR_V DATA";
  attribute X_INTERFACE_PARAMETER of WR_V : signal is "XIL_INTERFACENAME WR_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Driver_IIC
     port map (
      Data_V_i(7 downto 0) => Data_V_i(7 downto 0),
      Data_V_o(7 downto 0) => Data_V_o(7 downto 0),
      Data_V_o_ap_vld => Data_V_o_ap_vld,
      Res_V(0) => Res_V(0),
      Res_V_ap_vld => Res_V_ap_vld,
      SCL_V(0) => SCL_V(0),
      SCL_V_ap_vld => SCL_V_ap_vld,
      SDA_V(0) => SDA_V(0),
      SDA_V_ap_vld => SDA_V_ap_vld,
      WR_V(0) => WR_V(0),
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start
    );
end STRUCTURE;
