-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Sep  5 16:36:43 2019
-- Host        : DESKTOP-DU9F0PS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Driver_SK6805_0_sim_netlist.vhdl
-- Design      : Driver_SK6805_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s15ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Driver_SK6805 is
  port (
    LED_IO : out STD_LOGIC;
    clk_10MHz : in STD_LOGIC;
    G_In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B_In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    R_In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B_In2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    R_In2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    G_In2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Driver_SK6805;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Driver_SK6805 is
  signal Cnt : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \Data_Cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \Data_Cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \Data_Cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \Data_Cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \Data_Cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \Data_Cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \Data_Cnt[8]_i_6_n_0\ : STD_LOGIC;
  signal \^led_io\ : STD_LOGIC;
  signal LED_IO_i_1_n_0 : STD_LOGIC;
  signal LED_IO_i_2_n_0 : STD_LOGIC;
  signal LED_IO_i_3_n_0 : STD_LOGIC;
  signal LED_IO_i_4_n_0 : STD_LOGIC;
  signal LED_IO_i_5_n_0 : STD_LOGIC;
  signal \Send_Cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \Send_Cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \Send_Cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \Send_Cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \Send_Cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \Send_Cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \Send_Cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \Send_Cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \Send_Cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \Send_Cnt[9]_i_4_n_0\ : STD_LOGIC;
  signal \Send_Cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \Send_Cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \Send_Cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \Send_Cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \Send_Cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \Send_Cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \Send_Cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \Send_Cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \Send_Cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \Send_Cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal Send_State0 : STD_LOGIC;
  signal \Send_State[0]_i_10_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_12_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_13_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_14_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_15_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_16_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_17_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_18_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_19_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_1_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_20_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_21_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_22_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_23_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_24_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_25_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_26_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_27_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_2_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_3_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_4_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_5_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_6_n_0\ : STD_LOGIC;
  signal \Send_State[0]_i_8_n_0\ : STD_LOGIC;
  signal \Send_State[1]_i_1_n_0\ : STD_LOGIC;
  signal \Send_State[1]_i_2_n_0\ : STD_LOGIC;
  signal \Send_State[1]_i_4_n_0\ : STD_LOGIC;
  signal \Send_State[1]_i_5_n_0\ : STD_LOGIC;
  signal \Send_State[1]_i_6_n_0\ : STD_LOGIC;
  signal \Send_State_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \Send_State_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \Send_State_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \Send_State_reg_n_0_[0]\ : STD_LOGIC;
  signal \Send_State_reg_n_0_[1]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Data_Cnt[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Data_Cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Data_Cnt[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Data_Cnt[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Data_Cnt[6]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \Data_Cnt[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Data_Cnt[8]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Data_Cnt[8]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Data_Cnt[8]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of LED_IO_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Send_Cnt[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Send_Cnt[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Send_Cnt[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Send_Cnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Send_Cnt[5]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Send_Cnt[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Send_Cnt[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \Send_Cnt[8]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \Send_State[0]_i_12\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Send_State[0]_i_22\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \Send_State[0]_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Send_State[1]_i_2\ : label is "soft_lutpair3";
begin
  LED_IO <= \^led_io\;
\Data_Cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Cnt(0),
      I1 => \Data_Cnt[8]_i_3_n_0\,
      O => \Data_Cnt[0]_i_1_n_0\
    );
\Data_Cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => Cnt(1),
      I1 => Cnt(0),
      I2 => \Data_Cnt[8]_i_3_n_0\,
      O => \Data_Cnt[1]_i_1_n_0\
    );
\Data_Cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => Cnt(0),
      I1 => Cnt(1),
      I2 => Cnt(2),
      I3 => \Data_Cnt[8]_i_3_n_0\,
      O => \Data_Cnt[2]_i_1_n_0\
    );
\Data_Cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \Data_Cnt[8]_i_3_n_0\,
      I1 => Cnt(1),
      I2 => Cnt(0),
      I3 => Cnt(2),
      I4 => Cnt(3),
      O => \Data_Cnt[3]_i_1_n_0\
    );
\Data_Cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \Data_Cnt[8]_i_3_n_0\,
      I1 => Cnt(2),
      I2 => Cnt(0),
      I3 => Cnt(1),
      I4 => Cnt(3),
      I5 => Cnt(4),
      O => \Data_Cnt[4]_i_1_n_0\
    );
\Data_Cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BF40"
    )
        port map (
      I0 => \Data_Cnt[6]_i_2_n_0\,
      I1 => Cnt(4),
      I2 => Cnt(3),
      I3 => Cnt(5),
      I4 => \Data_Cnt[8]_i_3_n_0\,
      O => \Data_Cnt[5]_i_1_n_0\
    );
\Data_Cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5515555500400000"
    )
        port map (
      I0 => \Data_Cnt[8]_i_3_n_0\,
      I1 => Cnt(3),
      I2 => Cnt(4),
      I3 => \Data_Cnt[6]_i_2_n_0\,
      I4 => Cnt(5),
      I5 => Cnt(6),
      O => \Data_Cnt[6]_i_1_n_0\
    );
\Data_Cnt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => Cnt(1),
      I1 => Cnt(0),
      I2 => Cnt(2),
      O => \Data_Cnt[6]_i_2_n_0\
    );
\Data_Cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => Cnt(6),
      I1 => \Data_Cnt[8]_i_4_n_0\,
      I2 => Cnt(7),
      I3 => \Data_Cnt[8]_i_3_n_0\,
      O => \Data_Cnt[7]_i_1_n_0\
    );
\Data_Cnt[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => LED_IO_i_5_n_0,
      I1 => \Send_State_reg_n_0_[1]\,
      I2 => \Send_State_reg_n_0_[0]\,
      O => \Data_Cnt[8]_i_1_n_0\
    );
\Data_Cnt[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550400"
    )
        port map (
      I0 => \Data_Cnt[8]_i_3_n_0\,
      I1 => Cnt(6),
      I2 => \Data_Cnt[8]_i_4_n_0\,
      I3 => Cnt(7),
      I4 => Cnt(8),
      O => \Data_Cnt[8]_i_2_n_0\
    );
\Data_Cnt[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEEAEEEAEEE0000"
    )
        port map (
      I0 => \Data_Cnt[8]_i_5_n_0\,
      I1 => \Send_Cnt_reg_n_0_[8]\,
      I2 => \Send_Cnt_reg_n_0_[7]\,
      I3 => \Send_Cnt_reg_n_0_[6]\,
      I4 => \Data_Cnt[8]_i_6_n_0\,
      I5 => \Send_State_reg_n_0_[1]\,
      O => \Data_Cnt[8]_i_3_n_0\
    );
\Data_Cnt[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Cnt(3),
      I1 => Cnt(4),
      I2 => Cnt(1),
      I3 => Cnt(0),
      I4 => Cnt(2),
      I5 => Cnt(5),
      O => \Data_Cnt[8]_i_4_n_0\
    );
\Data_Cnt[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \Send_State_reg_n_0_[1]\,
      I1 => \Send_Cnt_reg_n_0_[9]\,
      I2 => \Send_Cnt_reg_n_0_[7]\,
      I3 => \Send_Cnt_reg_n_0_[8]\,
      I4 => \Send_Cnt[8]_i_2_n_0\,
      O => \Data_Cnt[8]_i_5_n_0\
    );
\Data_Cnt[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Cnt(6),
      I1 => Cnt(8),
      I2 => Cnt(7),
      I3 => \Send_State[1]_i_4_n_0\,
      O => \Data_Cnt[8]_i_6_n_0\
    );
\Data_Cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Data_Cnt[8]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => \Data_Cnt[0]_i_1_n_0\,
      Q => Cnt(0)
    );
\Data_Cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Data_Cnt[8]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => \Data_Cnt[1]_i_1_n_0\,
      Q => Cnt(1)
    );
\Data_Cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Data_Cnt[8]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => \Data_Cnt[2]_i_1_n_0\,
      Q => Cnt(2)
    );
\Data_Cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Data_Cnt[8]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => \Data_Cnt[3]_i_1_n_0\,
      Q => Cnt(3)
    );
\Data_Cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Data_Cnt[8]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => \Data_Cnt[4]_i_1_n_0\,
      Q => Cnt(4)
    );
\Data_Cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Data_Cnt[8]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => \Data_Cnt[5]_i_1_n_0\,
      Q => Cnt(5)
    );
\Data_Cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Data_Cnt[8]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => \Data_Cnt[6]_i_1_n_0\,
      Q => Cnt(6)
    );
\Data_Cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Data_Cnt[8]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => \Data_Cnt[7]_i_1_n_0\,
      Q => Cnt(7)
    );
\Data_Cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Data_Cnt[8]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => \Data_Cnt[8]_i_2_n_0\,
      Q => Cnt(8)
    );
LED_IO_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222FFFF02220000"
    )
        port map (
      I0 => LED_IO_i_3_n_0,
      I1 => LED_IO_i_4_n_0,
      I2 => \Send_State_reg_n_0_[0]\,
      I3 => \Send_State_reg_n_0_[1]\,
      I4 => LED_IO_i_5_n_0,
      I5 => \^led_io\,
      O => LED_IO_i_1_n_0
    );
LED_IO_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Rst,
      O => LED_IO_i_2_n_0
    );
LED_IO_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0100FFFF"
    )
        port map (
      I0 => \Send_Cnt_reg_n_0_[0]\,
      I1 => \Send_Cnt_reg_n_0_[2]\,
      I2 => \Send_Cnt_reg_n_0_[1]\,
      I3 => \Send_State_reg_n_0_[0]\,
      I4 => \Send_Cnt_reg_n_0_[3]\,
      O => LED_IO_i_3_n_0
    );
LED_IO_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAFFEA"
    )
        port map (
      I0 => \Send_Cnt[2]_i_2_n_0\,
      I1 => \Send_Cnt_reg_n_0_[1]\,
      I2 => \Send_Cnt_reg_n_0_[0]\,
      I3 => \Send_Cnt_reg_n_0_[2]\,
      I4 => \Send_State_reg_n_0_[0]\,
      I5 => \Send_State_reg_n_0_[1]\,
      O => LED_IO_i_4_n_0
    );
LED_IO_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => \Send_Cnt_reg_n_0_[0]\,
      I1 => \Send_Cnt_reg_n_0_[1]\,
      I2 => \Send_State_reg_n_0_[1]\,
      I3 => \Send_Cnt_reg_n_0_[3]\,
      I4 => \Send_Cnt[2]_i_2_n_0\,
      I5 => \Send_Cnt_reg_n_0_[2]\,
      O => LED_IO_i_5_n_0
    );
LED_IO_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_10MHz,
      CE => '1',
      CLR => LED_IO_i_2_n_0,
      D => LED_IO_i_1_n_0,
      Q => \^led_io\
    );
\Send_Cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Send_Cnt_reg_n_0_[0]\,
      I1 => \Send_Cnt[3]_i_2_n_0\,
      O => p_1_in(0)
    );
\Send_Cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Send_Cnt_reg_n_0_[1]\,
      I1 => \Send_Cnt_reg_n_0_[0]\,
      O => p_1_in(1)
    );
\Send_Cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFFFB000000"
    )
        port map (
      I0 => \Send_State_reg_n_0_[1]\,
      I1 => \Send_Cnt_reg_n_0_[3]\,
      I2 => \Send_Cnt[2]_i_2_n_0\,
      I3 => \Send_Cnt_reg_n_0_[1]\,
      I4 => \Send_Cnt_reg_n_0_[0]\,
      I5 => \Send_Cnt_reg_n_0_[2]\,
      O => p_1_in(2)
    );
\Send_Cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \Send_Cnt_reg_n_0_[5]\,
      I1 => \Send_Cnt_reg_n_0_[4]\,
      I2 => \Send_Cnt_reg_n_0_[6]\,
      I3 => \Send_Cnt_reg_n_0_[7]\,
      I4 => \Send_Cnt_reg_n_0_[9]\,
      I5 => \Send_Cnt_reg_n_0_[8]\,
      O => \Send_Cnt[2]_i_2_n_0\
    );
\Send_Cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888800002AAA8000"
    )
        port map (
      I0 => LED_IO_i_5_n_0,
      I1 => \Send_Cnt_reg_n_0_[0]\,
      I2 => \Send_Cnt_reg_n_0_[1]\,
      I3 => \Send_Cnt_reg_n_0_[2]\,
      I4 => \Send_Cnt_reg_n_0_[3]\,
      I5 => \Send_Cnt[3]_i_2_n_0\,
      O => p_1_in(3)
    );
\Send_Cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \Send_Cnt[8]_i_3_n_0\,
      I1 => \Send_Cnt_reg_n_0_[6]\,
      I2 => \Send_Cnt_reg_n_0_[5]\,
      I3 => \Send_Cnt_reg_n_0_[4]\,
      I4 => \Send_Cnt_reg_n_0_[3]\,
      I5 => \Send_Cnt[3]_i_3_n_0\,
      O => \Send_Cnt[3]_i_2_n_0\
    );
\Send_Cnt[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Send_Cnt_reg_n_0_[1]\,
      I1 => \Send_Cnt_reg_n_0_[2]\,
      O => \Send_Cnt[3]_i_3_n_0\
    );
\Send_Cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \Send_Cnt_reg_n_0_[4]\,
      I1 => \Send_Cnt_reg_n_0_[2]\,
      I2 => \Send_Cnt_reg_n_0_[1]\,
      I3 => \Send_Cnt_reg_n_0_[0]\,
      I4 => \Send_Cnt_reg_n_0_[3]\,
      O => p_1_in(4)
    );
\Send_Cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5155555504000000"
    )
        port map (
      I0 => \Send_Cnt[5]_i_2_n_0\,
      I1 => \Send_Cnt_reg_n_0_[3]\,
      I2 => \Send_Cnt[5]_i_3_n_0\,
      I3 => \Send_Cnt_reg_n_0_[2]\,
      I4 => \Send_Cnt_reg_n_0_[4]\,
      I5 => \Send_Cnt_reg_n_0_[5]\,
      O => p_1_in(5)
    );
\Send_Cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \Send_Cnt[8]_i_2_n_0\,
      I1 => \Send_Cnt_reg_n_0_[8]\,
      I2 => \Send_Cnt_reg_n_0_[7]\,
      I3 => \Send_Cnt_reg_n_0_[6]\,
      I4 => \Send_State_reg_n_0_[1]\,
      I5 => \Send_Cnt_reg_n_0_[9]\,
      O => \Send_Cnt[5]_i_2_n_0\
    );
\Send_Cnt[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \Send_Cnt_reg_n_0_[1]\,
      I1 => \Send_Cnt_reg_n_0_[0]\,
      O => \Send_Cnt[5]_i_3_n_0\
    );
\Send_Cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \Send_Cnt[9]_i_3_n_0\,
      I1 => \Send_Cnt[9]_i_4_n_0\,
      I2 => \Send_Cnt_reg_n_0_[6]\,
      O => p_1_in(6)
    );
\Send_Cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \Send_Cnt[9]_i_3_n_0\,
      I1 => \Send_Cnt[9]_i_4_n_0\,
      I2 => \Send_Cnt_reg_n_0_[6]\,
      I3 => \Send_Cnt_reg_n_0_[7]\,
      O => p_1_in(7)
    );
\Send_Cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFF0DFF0033D033"
    )
        port map (
      I0 => \Send_Cnt[8]_i_2_n_0\,
      I1 => \Send_Cnt[8]_i_3_n_0\,
      I2 => \Send_Cnt_reg_n_0_[7]\,
      I3 => \Send_Cnt_reg_n_0_[6]\,
      I4 => \Send_Cnt[9]_i_4_n_0\,
      I5 => \Send_Cnt_reg_n_0_[8]\,
      O => p_1_in(8)
    );
\Send_Cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \Send_Cnt_reg_n_0_[1]\,
      I1 => \Send_Cnt_reg_n_0_[2]\,
      I2 => \Send_Cnt_reg_n_0_[0]\,
      I3 => \Send_Cnt_reg_n_0_[3]\,
      I4 => \Send_Cnt_reg_n_0_[4]\,
      I5 => \Send_Cnt_reg_n_0_[5]\,
      O => \Send_Cnt[8]_i_2_n_0\
    );
\Send_Cnt[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \Send_Cnt_reg_n_0_[8]\,
      I1 => \Send_Cnt_reg_n_0_[7]\,
      I2 => \Send_Cnt_reg_n_0_[9]\,
      I3 => \Send_State_reg_n_0_[1]\,
      O => \Send_Cnt[8]_i_3_n_0\
    );
\Send_Cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \Send_State_reg_n_0_[1]\,
      I1 => \Send_State_reg_n_0_[0]\,
      O => \Send_Cnt[9]_i_1_n_0\
    );
\Send_Cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA2AAA00008000"
    )
        port map (
      I0 => \Send_Cnt[9]_i_3_n_0\,
      I1 => \Send_Cnt_reg_n_0_[8]\,
      I2 => \Send_Cnt_reg_n_0_[7]\,
      I3 => \Send_Cnt_reg_n_0_[6]\,
      I4 => \Send_Cnt[9]_i_4_n_0\,
      I5 => \Send_Cnt_reg_n_0_[9]\,
      O => p_1_in(9)
    );
\Send_Cnt[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => LED_IO_i_5_n_0,
      I1 => \Send_Cnt[5]_i_2_n_0\,
      O => \Send_Cnt[9]_i_3_n_0\
    );
\Send_Cnt[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \Send_Cnt_reg_n_0_[4]\,
      I1 => \Send_Cnt_reg_n_0_[2]\,
      I2 => \Send_Cnt_reg_n_0_[1]\,
      I3 => \Send_Cnt_reg_n_0_[0]\,
      I4 => \Send_Cnt_reg_n_0_[3]\,
      I5 => \Send_Cnt_reg_n_0_[5]\,
      O => \Send_Cnt[9]_i_4_n_0\
    );
\Send_Cnt_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Send_Cnt[9]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => p_1_in(0),
      Q => \Send_Cnt_reg_n_0_[0]\
    );
\Send_Cnt_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Send_Cnt[9]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => p_1_in(1),
      Q => \Send_Cnt_reg_n_0_[1]\
    );
\Send_Cnt_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Send_Cnt[9]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => p_1_in(2),
      Q => \Send_Cnt_reg_n_0_[2]\
    );
\Send_Cnt_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Send_Cnt[9]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => p_1_in(3),
      Q => \Send_Cnt_reg_n_0_[3]\
    );
\Send_Cnt_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Send_Cnt[9]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => p_1_in(4),
      Q => \Send_Cnt_reg_n_0_[4]\
    );
\Send_Cnt_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Send_Cnt[9]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => p_1_in(5),
      Q => \Send_Cnt_reg_n_0_[5]\
    );
\Send_Cnt_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Send_Cnt[9]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => p_1_in(6),
      Q => \Send_Cnt_reg_n_0_[6]\
    );
\Send_Cnt_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Send_Cnt[9]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => p_1_in(7),
      Q => \Send_Cnt_reg_n_0_[7]\
    );
\Send_Cnt_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Send_Cnt[9]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => p_1_in(8),
      Q => \Send_Cnt_reg_n_0_[8]\
    );
\Send_Cnt_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => \Send_Cnt[9]_i_1_n_0\,
      CLR => LED_IO_i_2_n_0,
      D => p_1_in(9),
      Q => \Send_Cnt_reg_n_0_[9]\
    );
\Send_State[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AEFFFF00AE0000"
    )
        port map (
      I0 => \Send_State[0]_i_2_n_0\,
      I1 => \Send_State[0]_i_3_n_0\,
      I2 => \Send_State[0]_i_4_n_0\,
      I3 => \Send_State[0]_i_5_n_0\,
      I4 => Send_State0,
      I5 => \Send_State_reg_n_0_[0]\,
      O => \Send_State[0]_i_1_n_0\
    );
\Send_State[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200030002000000"
    )
        port map (
      I0 => \Send_State[0]_i_21_n_0\,
      I1 => \Send_State[0]_i_22_n_0\,
      I2 => \Send_State[0]_i_23_n_0\,
      I3 => Cnt(5),
      I4 => Cnt(2),
      I5 => \Send_State[0]_i_24_n_0\,
      O => \Send_State[0]_i_10_n_0\
    );
\Send_State[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Cnt(5),
      I1 => Cnt(6),
      I2 => Cnt(8),
      I3 => Cnt(7),
      O => \Send_State[0]_i_12_n_0\
    );
\Send_State[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF4FFFFF"
    )
        port map (
      I0 => \Send_State[0]_i_27_n_0\,
      I1 => Cnt(2),
      I2 => Cnt(3),
      I3 => Cnt(4),
      I4 => Cnt(5),
      I5 => \Send_State[0]_i_23_n_0\,
      O => \Send_State[0]_i_13_n_0\
    );
\Send_State[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => B_In2(4),
      I1 => B_In2(5),
      I2 => Cnt(1),
      I3 => B_In2(6),
      I4 => Cnt(0),
      I5 => B_In2(7),
      O => \Send_State[0]_i_14_n_0\
    );
\Send_State[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => G_In1(4),
      I1 => G_In1(5),
      I2 => Cnt(1),
      I3 => G_In1(6),
      I4 => Cnt(0),
      I5 => G_In1(7),
      O => \Send_State[0]_i_15_n_0\
    );
\Send_State[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => G_In1(0),
      I1 => G_In1(1),
      I2 => Cnt(1),
      I3 => G_In1(2),
      I4 => Cnt(0),
      I5 => G_In1(3),
      O => \Send_State[0]_i_16_n_0\
    );
\Send_State[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => B_In1(4),
      I1 => B_In1(5),
      I2 => Cnt(1),
      I3 => B_In1(6),
      I4 => Cnt(0),
      I5 => B_In1(7),
      O => \Send_State[0]_i_17_n_0\
    );
\Send_State[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => B_In1(0),
      I1 => B_In1(1),
      I2 => Cnt(1),
      I3 => B_In1(2),
      I4 => Cnt(0),
      I5 => B_In1(3),
      O => \Send_State[0]_i_18_n_0\
    );
\Send_State[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => R_In1(6),
      I1 => R_In1(7),
      I2 => Cnt(1),
      I3 => R_In1(4),
      I4 => Cnt(0),
      I5 => R_In1(5),
      O => \Send_State[0]_i_19_n_0\
    );
\Send_State[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55D5FFD5"
    )
        port map (
      I0 => \Send_State[0]_i_6_n_0\,
      I1 => \Send_State_reg[0]_i_7_n_0\,
      I2 => \Send_State[0]_i_4_n_0\,
      I3 => \Send_State[0]_i_8_n_0\,
      I4 => \Send_State_reg[0]_i_9_n_0\,
      O => \Send_State[0]_i_2_n_0\
    );
\Send_State[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => R_In1(2),
      I1 => R_In1(3),
      I2 => Cnt(1),
      I3 => R_In1(0),
      I4 => Cnt(0),
      I5 => R_In1(1),
      O => \Send_State[0]_i_20_n_0\
    );
\Send_State[0]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => R_In2(0),
      I1 => R_In2(1),
      I2 => Cnt(1),
      I3 => R_In2(2),
      I4 => Cnt(0),
      I5 => R_In2(3),
      O => \Send_State[0]_i_21_n_0\
    );
\Send_State[0]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Cnt(3),
      I1 => Cnt(4),
      O => \Send_State[0]_i_22_n_0\
    );
\Send_State[0]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Cnt(7),
      I1 => Cnt(8),
      I2 => Cnt(6),
      O => \Send_State[0]_i_23_n_0\
    );
\Send_State[0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => R_In2(4),
      I1 => R_In2(5),
      I2 => Cnt(1),
      I3 => R_In2(6),
      I4 => Cnt(0),
      I5 => R_In2(7),
      O => \Send_State[0]_i_24_n_0\
    );
\Send_State[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => G_In2(4),
      I1 => G_In2(5),
      I2 => Cnt(1),
      I3 => G_In2(6),
      I4 => Cnt(0),
      I5 => G_In2(7),
      O => \Send_State[0]_i_25_n_0\
    );
\Send_State[0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => G_In2(0),
      I1 => G_In2(1),
      I2 => Cnt(1),
      I3 => G_In2(2),
      I4 => Cnt(0),
      I5 => G_In2(3),
      O => \Send_State[0]_i_26_n_0\
    );
\Send_State[0]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => B_In2(0),
      I1 => B_In2(1),
      I2 => Cnt(1),
      I3 => B_In2(2),
      I4 => Cnt(0),
      I5 => B_In2(3),
      O => \Send_State[0]_i_27_n_0\
    );
\Send_State[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFAEFFAEFFAEAE"
    )
        port map (
      I0 => \Send_State[0]_i_10_n_0\,
      I1 => \Send_State_reg[0]_i_11_n_0\,
      I2 => \Send_State[0]_i_12_n_0\,
      I3 => \Send_State[0]_i_13_n_0\,
      I4 => Cnt(2),
      I5 => \Send_State[0]_i_14_n_0\,
      O => \Send_State[0]_i_3_n_0\
    );
\Send_State[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010101"
    )
        port map (
      I0 => Cnt(6),
      I1 => Cnt(8),
      I2 => Cnt(7),
      I3 => Cnt(3),
      I4 => Cnt(4),
      I5 => Cnt(5),
      O => \Send_State[0]_i_4_n_0\
    );
\Send_State[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABBABAB"
    )
        port map (
      I0 => \Send_State[1]_i_2_n_0\,
      I1 => \Send_State[0]_i_6_n_0\,
      I2 => \Send_State[0]_i_15_n_0\,
      I3 => \Send_State[0]_i_16_n_0\,
      I4 => Cnt(2),
      O => \Send_State[0]_i_5_n_0\
    );
\Send_State[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Cnt(4),
      I1 => Cnt(3),
      I2 => Cnt(7),
      I3 => Cnt(8),
      I4 => Cnt(6),
      I5 => Cnt(5),
      O => \Send_State[0]_i_6_n_0\
    );
\Send_State[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => Cnt(7),
      I1 => Cnt(8),
      I2 => Cnt(5),
      I3 => Cnt(4),
      I4 => Cnt(6),
      O => \Send_State[0]_i_8_n_0\
    );
\Send_State[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Send_State[1]_i_2_n_0\,
      I1 => Send_State0,
      I2 => \Send_State_reg_n_0_[1]\,
      O => \Send_State[1]_i_1_n_0\
    );
\Send_State[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \Send_State[1]_i_4_n_0\,
      I1 => Cnt(7),
      I2 => Cnt(8),
      I3 => Cnt(6),
      I4 => \Send_State_reg_n_0_[1]\,
      O => \Send_State[1]_i_2_n_0\
    );
\Send_State[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20000000FFFFFFFF"
    )
        port map (
      I0 => \Send_State[1]_i_5_n_0\,
      I1 => \Send_State_reg_n_0_[0]\,
      I2 => \Send_Cnt_reg_n_0_[9]\,
      I3 => \Send_Cnt_reg_n_0_[3]\,
      I4 => \Send_State[1]_i_6_n_0\,
      I5 => LED_IO_i_5_n_0,
      O => Send_State0
    );
\Send_State[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => Cnt(1),
      I1 => Cnt(0),
      I2 => Cnt(2),
      I3 => Cnt(3),
      I4 => Cnt(5),
      I5 => Cnt(4),
      O => \Send_State[1]_i_4_n_0\
    );
\Send_State[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \Send_Cnt_reg_n_0_[6]\,
      I1 => \Send_Cnt_reg_n_0_[5]\,
      I2 => \Send_Cnt_reg_n_0_[4]\,
      O => \Send_State[1]_i_5_n_0\
    );
\Send_State[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \Send_Cnt_reg_n_0_[0]\,
      I1 => \Send_State_reg_n_0_[1]\,
      I2 => \Send_Cnt_reg_n_0_[7]\,
      I3 => \Send_Cnt_reg_n_0_[8]\,
      I4 => \Send_Cnt_reg_n_0_[2]\,
      I5 => \Send_Cnt_reg_n_0_[1]\,
      O => \Send_State[1]_i_6_n_0\
    );
\Send_State_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => '1',
      CLR => LED_IO_i_2_n_0,
      D => \Send_State[0]_i_1_n_0\,
      Q => \Send_State_reg_n_0_[0]\
    );
\Send_State_reg[0]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Send_State[0]_i_25_n_0\,
      I1 => \Send_State[0]_i_26_n_0\,
      O => \Send_State_reg[0]_i_11_n_0\,
      S => Cnt(2)
    );
\Send_State_reg[0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Send_State[0]_i_17_n_0\,
      I1 => \Send_State[0]_i_18_n_0\,
      O => \Send_State_reg[0]_i_7_n_0\,
      S => Cnt(2)
    );
\Send_State_reg[0]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Send_State[0]_i_19_n_0\,
      I1 => \Send_State[0]_i_20_n_0\,
      O => \Send_State_reg[0]_i_9_n_0\,
      S => Cnt(2)
    );
\Send_State_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_10MHz,
      CE => '1',
      CLR => LED_IO_i_2_n_0,
      D => \Send_State[1]_i_1_n_0\,
      Q => \Send_State_reg_n_0_[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    R_In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    G_In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B_In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    R_In2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    G_In2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B_In2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_10MHz : in STD_LOGIC;
    Rst : in STD_LOGIC;
    LED_IO : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Driver_SK6805_0,Driver_SK6805,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Driver_SK6805,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Rst : signal is "xilinx.com:signal:reset:1.0 Rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of Rst : signal is "XIL_INTERFACENAME Rst, POLARITY ACTIVE_LOW";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Driver_SK6805
     port map (
      B_In1(7 downto 0) => B_In1(7 downto 0),
      B_In2(7 downto 0) => B_In2(7 downto 0),
      G_In1(7 downto 0) => G_In1(7 downto 0),
      G_In2(7 downto 0) => G_In2(7 downto 0),
      LED_IO => LED_IO,
      R_In1(7 downto 0) => R_In1(7 downto 0),
      R_In2(7 downto 0) => R_In2(7 downto 0),
      Rst => Rst,
      clk_10MHz => clk_10MHz
    );
end STRUCTURE;
