-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Dec 23 22:33:46 2022
-- Host        : DESKTOP-TKLACMU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/VivadoCode/AXI_Stream_DMA/AXI_DMA_loop/ex12_AXI_DMA.srcs/sources_1/bd/system/ip/system_axi_stream_loop_0_0/system_axi_stream_loop_0_0_sim_netlist.vhdl
-- Design      : system_axi_stream_loop_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_stream_loop_0_0_axi_stream_loop_v3_0_M_AXIS is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_aresetn : in STD_LOGIC;
    inner_data0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_stream_loop_0_0_axi_stream_loop_v3_0_M_AXIS : entity is "axi_stream_loop_v3_0_M_AXIS";
end system_axi_stream_loop_0_0_axi_stream_loop_v3_0_M_AXIS;

architecture STRUCTURE of system_axi_stream_loop_0_0_axi_stream_loop_v3_0_M_AXIS is
  signal FSM_sequential_mst_exec_state_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal \stream_data_out[31]_i_1_n_0\ : STD_LOGIC;
  signal tx_en : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of FSM_sequential_mst_exec_state_reg : label is "SEND_STREAM:1,IDLE:0";
begin
  m_axis_tvalid <= \^m_axis_tvalid\;
FSM_sequential_mst_exec_state_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => Q(0),
      I2 => m_axis_aresetn,
      O => FSM_sequential_mst_exec_state_i_1_n_0
    );
FSM_sequential_mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => '1',
      D => FSM_sequential_mst_exec_state_i_1_n_0,
      Q => \^m_axis_tvalid\,
      R => '0'
    );
\stream_data_out[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axis_aresetn,
      O => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid\,
      O => tx_en
    );
\stream_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(0),
      Q => m_axis_tdata(0),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(10),
      Q => m_axis_tdata(10),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(11),
      Q => m_axis_tdata(11),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(12),
      Q => m_axis_tdata(12),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(13),
      Q => m_axis_tdata(13),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(14),
      Q => m_axis_tdata(14),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(15),
      Q => m_axis_tdata(15),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(16),
      Q => m_axis_tdata(16),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(17),
      Q => m_axis_tdata(17),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(18),
      Q => m_axis_tdata(18),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(19),
      Q => m_axis_tdata(19),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(1),
      Q => m_axis_tdata(1),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(20),
      Q => m_axis_tdata(20),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(21),
      Q => m_axis_tdata(21),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(22),
      Q => m_axis_tdata(22),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(23),
      Q => m_axis_tdata(23),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(24),
      Q => m_axis_tdata(24),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(25),
      Q => m_axis_tdata(25),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(26),
      Q => m_axis_tdata(26),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(27),
      Q => m_axis_tdata(27),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(28),
      Q => m_axis_tdata(28),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(29),
      Q => m_axis_tdata(29),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(2),
      Q => m_axis_tdata(2),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(30),
      Q => m_axis_tdata(30),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(31),
      Q => m_axis_tdata(31),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(3),
      Q => m_axis_tdata(3),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(4),
      Q => m_axis_tdata(4),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(5),
      Q => m_axis_tdata(5),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(6),
      Q => m_axis_tdata(6),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(7),
      Q => m_axis_tdata(7),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(8),
      Q => m_axis_tdata(8),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_aclk,
      CE => tx_en,
      D => inner_data0(9),
      Q => m_axis_tdata(9),
      R => \stream_data_out[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_stream_loop_0_0_axi_stream_loop_v3_0_S_AXIS is
  port (
    mst_exec_state_reg_0 : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_stream_loop_0_0_axi_stream_loop_v3_0_S_AXIS : entity is "axi_stream_loop_v3_0_S_AXIS";
end system_axi_stream_loop_0_0_axi_stream_loop_v3_0_S_AXIS;

architecture STRUCTURE of system_axi_stream_loop_0_0_axi_stream_loop_v3_0_S_AXIS is
  signal mst_exec_state_i_1_n_0 : STD_LOGIC;
  signal \^mst_exec_state_reg_0\ : STD_LOGIC;
  signal \write_pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer_reg_n_0_[0]\ : STD_LOGIC;
  signal \write_pointer_reg_n_0_[1]\ : STD_LOGIC;
  signal \write_pointer_reg_n_0_[2]\ : STD_LOGIC;
  signal writes_done : STD_LOGIC;
  signal writes_done0_n_0 : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of mst_exec_state_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_pointer[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \write_pointer[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of writes_done_i_1 : label is "soft_lutpair0";
begin
  mst_exec_state_reg_0 <= \^mst_exec_state_reg_0\;
mst_exec_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^mst_exec_state_reg_0\,
      I2 => writes_done,
      I3 => s_axis_aresetn,
      O => mst_exec_state_i_1_n_0
    );
mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => mst_exec_state_i_1_n_0,
      Q => \^mst_exec_state_reg_0\,
      R => '0'
    );
\write_pointer[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => \write_pointer_reg_n_0_[0]\,
      I1 => s_axis_tvalid,
      I2 => \^mst_exec_state_reg_0\,
      I3 => s_axis_aresetn,
      O => \write_pointer[0]_i_1_n_0\
    );
\write_pointer[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => \write_pointer_reg_n_0_[1]\,
      I1 => \^mst_exec_state_reg_0\,
      I2 => s_axis_tvalid,
      I3 => \write_pointer_reg_n_0_[0]\,
      I4 => s_axis_aresetn,
      O => \write_pointer[1]_i_1_n_0\
    );
\write_pointer[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => \write_pointer_reg_n_0_[2]\,
      I1 => \^mst_exec_state_reg_0\,
      I2 => s_axis_tvalid,
      I3 => \write_pointer_reg_n_0_[1]\,
      I4 => \write_pointer_reg_n_0_[0]\,
      I5 => s_axis_aresetn,
      O => \write_pointer[2]_i_1_n_0\
    );
\write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \write_pointer[0]_i_1_n_0\,
      Q => \write_pointer_reg_n_0_[0]\,
      R => '0'
    );
\write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \write_pointer[1]_i_1_n_0\,
      Q => \write_pointer_reg_n_0_[1]\,
      R => '0'
    );
\write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => \write_pointer[2]_i_1_n_0\,
      Q => \write_pointer_reg_n_0_[2]\,
      R => '0'
    );
writes_done0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \write_pointer_reg_n_0_[2]\,
      I1 => \write_pointer_reg_n_0_[0]\,
      I2 => \write_pointer_reg_n_0_[1]\,
      I3 => s_axis_tlast,
      O => writes_done0_n_0
    );
writes_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2A0000"
    )
        port map (
      I0 => writes_done,
      I1 => s_axis_tvalid,
      I2 => \^mst_exec_state_reg_0\,
      I3 => writes_done0_n_0,
      I4 => s_axis_aresetn,
      O => writes_done_i_1_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_stream_loop_0_0_axi_stream_loop_v3_0_ctr_AXIlite is
  port (
    ctr_axilite_wready : out STD_LOGIC;
    ctr_axilite_awready : out STD_LOGIC;
    ctr_axilite_arready : out STD_LOGIC;
    ctr_axilite_bvalid : out STD_LOGIC;
    ctr_axilite_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    ctr_axilite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ctr_axilite_aclk : in STD_LOGIC;
    ctr_axilite_aresetn : in STD_LOGIC;
    ctr_axilite_awvalid : in STD_LOGIC;
    ctr_axilite_wvalid : in STD_LOGIC;
    ctr_axilite_bready : in STD_LOGIC;
    ctr_axilite_arvalid : in STD_LOGIC;
    ctr_axilite_rready : in STD_LOGIC;
    ctr_axilite_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ctr_axilite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ctr_axilite_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ctr_axilite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_stream_loop_0_0_axi_stream_loop_v3_0_ctr_AXIlite : entity is "axi_stream_loop_v3_0_ctr_AXIlite";
end system_axi_stream_loop_0_0_axi_stream_loop_v3_0_ctr_AXIlite;

architecture STRUCTURE of system_axi_stream_loop_0_0_axi_stream_loop_v3_0_ctr_AXIlite is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^ctr_axilite_arready\ : STD_LOGIC;
  signal \^ctr_axilite_awready\ : STD_LOGIC;
  signal \^ctr_axilite_bvalid\ : STD_LOGIC;
  signal \^ctr_axilite_rvalid\ : STD_LOGIC;
  signal \^ctr_axilite_wready\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair3";
begin
  Q(0) <= \^q\(0);
  ctr_axilite_arready <= \^ctr_axilite_arready\;
  ctr_axilite_awready <= \^ctr_axilite_awready\;
  ctr_axilite_bvalid <= \^ctr_axilite_bvalid\;
  ctr_axilite_rvalid <= \^ctr_axilite_rvalid\;
  ctr_axilite_wready <= \^ctr_axilite_wready\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => ctr_axilite_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^ctr_axilite_awready\,
      I3 => ctr_axilite_wvalid,
      I4 => ctr_axilite_bready,
      I5 => \^ctr_axilite_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => ctr_axilite_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => ctr_axilite_araddr(0),
      I1 => ctr_axilite_arvalid,
      I2 => \^ctr_axilite_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => ctr_axilite_araddr(1),
      I1 => ctr_axilite_arvalid,
      I2 => \^ctr_axilite_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctr_axilite_arvalid,
      I1 => \^ctr_axilite_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^ctr_axilite_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => ctr_axilite_awaddr(0),
      I1 => ctr_axilite_wvalid,
      I2 => \^ctr_axilite_awready\,
      I3 => aw_en_reg_n_0,
      I4 => ctr_axilite_awvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => ctr_axilite_awaddr(1),
      I1 => ctr_axilite_wvalid,
      I2 => \^ctr_axilite_awready\,
      I3 => aw_en_reg_n_0,
      I4 => ctr_axilite_awvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr_axilite_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => ctr_axilite_wvalid,
      I1 => \^ctr_axilite_awready\,
      I2 => aw_en_reg_n_0,
      I3 => ctr_axilite_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^ctr_axilite_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => ctr_axilite_awvalid,
      I1 => ctr_axilite_wvalid,
      I2 => \^ctr_axilite_awready\,
      I3 => \^ctr_axilite_wready\,
      I4 => ctr_axilite_bready,
      I5 => \^ctr_axilite_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^ctr_axilite_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => \^q\(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => slv_reg0(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => slv_reg0(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => slv_reg0(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => slv_reg0(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => slv_reg0(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => slv_reg0(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => slv_reg0(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => slv_reg0(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => slv_reg0(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => slv_reg0(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => slv_reg0(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => slv_reg0(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => slv_reg0(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => slv_reg0(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => slv_reg0(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => slv_reg0(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => slv_reg0(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => slv_reg0(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => slv_reg0(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => slv_reg0(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => slv_reg0(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => slv_reg0(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => slv_reg0(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => slv_reg0(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => slv_reg0(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => slv_reg0(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => slv_reg0(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => slv_reg0(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => slv_reg0(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => slv_reg0(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => slv_reg0(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => ctr_axilite_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => ctr_axilite_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => ctr_axilite_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => ctr_axilite_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => ctr_axilite_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => ctr_axilite_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => ctr_axilite_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => ctr_axilite_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => ctr_axilite_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => ctr_axilite_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => ctr_axilite_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => ctr_axilite_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => ctr_axilite_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => ctr_axilite_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => ctr_axilite_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => ctr_axilite_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => ctr_axilite_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => ctr_axilite_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => ctr_axilite_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => ctr_axilite_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => ctr_axilite_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => ctr_axilite_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => ctr_axilite_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => ctr_axilite_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => ctr_axilite_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => ctr_axilite_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => ctr_axilite_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => ctr_axilite_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => ctr_axilite_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => ctr_axilite_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => ctr_axilite_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => ctr_axilite_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^ctr_axilite_arready\,
      I1 => ctr_axilite_arvalid,
      I2 => \^ctr_axilite_rvalid\,
      I3 => ctr_axilite_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^ctr_axilite_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => ctr_axilite_awvalid,
      I1 => ctr_axilite_wvalid,
      I2 => \^ctr_axilite_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^ctr_axilite_wready\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => ctr_axilite_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => ctr_axilite_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => ctr_axilite_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^ctr_axilite_wready\,
      I1 => \^ctr_axilite_awready\,
      I2 => ctr_axilite_awvalid,
      I3 => ctr_axilite_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => ctr_axilite_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => ctr_axilite_wdata(0),
      Q => \^q\(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => ctr_axilite_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => ctr_axilite_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => ctr_axilite_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => ctr_axilite_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => ctr_axilite_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => ctr_axilite_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => ctr_axilite_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => ctr_axilite_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => ctr_axilite_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => ctr_axilite_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => ctr_axilite_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => ctr_axilite_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => ctr_axilite_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => ctr_axilite_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => ctr_axilite_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => ctr_axilite_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => ctr_axilite_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => ctr_axilite_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => ctr_axilite_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => ctr_axilite_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => ctr_axilite_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => ctr_axilite_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => ctr_axilite_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => ctr_axilite_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => ctr_axilite_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => ctr_axilite_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => ctr_axilite_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => ctr_axilite_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => ctr_axilite_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => ctr_axilite_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => ctr_axilite_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => ctr_axilite_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => ctr_axilite_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => ctr_axilite_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => ctr_axilite_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => ctr_axilite_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => ctr_axilite_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => ctr_axilite_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => ctr_axilite_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => ctr_axilite_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => ctr_axilite_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => ctr_axilite_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => ctr_axilite_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => ctr_axilite_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => ctr_axilite_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => ctr_axilite_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => ctr_axilite_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => ctr_axilite_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => ctr_axilite_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => ctr_axilite_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => ctr_axilite_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => ctr_axilite_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => ctr_axilite_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => ctr_axilite_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => ctr_axilite_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => ctr_axilite_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => ctr_axilite_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => ctr_axilite_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => ctr_axilite_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => ctr_axilite_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => ctr_axilite_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => ctr_axilite_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => ctr_axilite_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => ctr_axilite_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => ctr_axilite_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => ctr_axilite_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => ctr_axilite_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => ctr_axilite_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => ctr_axilite_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => ctr_axilite_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => ctr_axilite_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => ctr_axilite_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => ctr_axilite_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => ctr_axilite_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => ctr_axilite_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => ctr_axilite_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => ctr_axilite_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => ctr_axilite_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => ctr_axilite_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => ctr_axilite_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => ctr_axilite_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => ctr_axilite_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => ctr_axilite_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => ctr_axilite_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => ctr_axilite_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => ctr_axilite_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => ctr_axilite_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => ctr_axilite_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => ctr_axilite_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => ctr_axilite_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => ctr_axilite_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => ctr_axilite_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => ctr_axilite_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => ctr_axilite_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => ctr_axilite_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => ctr_axilite_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => ctr_axilite_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => ctr_axilite_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => ctr_axilite_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => ctr_axilite_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => ctr_axilite_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => ctr_axilite_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => ctr_axilite_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => ctr_axilite_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => ctr_axilite_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => ctr_axilite_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(31)
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => ctr_axilite_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => p_1_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(7),
      D => ctr_axilite_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(15),
      D => ctr_axilite_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(15),
      D => ctr_axilite_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(15),
      D => ctr_axilite_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(15),
      D => ctr_axilite_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(15),
      D => ctr_axilite_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(15),
      D => ctr_axilite_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(23),
      D => ctr_axilite_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(23),
      D => ctr_axilite_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(23),
      D => ctr_axilite_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(23),
      D => ctr_axilite_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(7),
      D => ctr_axilite_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(23),
      D => ctr_axilite_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(23),
      D => ctr_axilite_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(23),
      D => ctr_axilite_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(23),
      D => ctr_axilite_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(31),
      D => ctr_axilite_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(31),
      D => ctr_axilite_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(31),
      D => ctr_axilite_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(31),
      D => ctr_axilite_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(31),
      D => ctr_axilite_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(31),
      D => ctr_axilite_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(7),
      D => ctr_axilite_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(31),
      D => ctr_axilite_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(31),
      D => ctr_axilite_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(7),
      D => ctr_axilite_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(7),
      D => ctr_axilite_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(7),
      D => ctr_axilite_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(7),
      D => ctr_axilite_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(7),
      D => ctr_axilite_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(15),
      D => ctr_axilite_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ctr_axilite_aclk,
      CE => p_1_in(15),
      D => ctr_axilite_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => ctr_axilite_arvalid,
      I1 => \^ctr_axilite_rvalid\,
      I2 => \^ctr_axilite_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_stream_loop_0_0_axi_stream_loop_v3_0 is
  port (
    ctr_axilite_wready : out STD_LOGIC;
    ctr_axilite_awready : out STD_LOGIC;
    ctr_axilite_arready : out STD_LOGIC;
    ctr_axilite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mst_exec_state_reg : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ctr_axilite_rvalid : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    ctr_axilite_bvalid : out STD_LOGIC;
    ctr_axilite_aclk : in STD_LOGIC;
    ctr_axilite_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ctr_axilite_wvalid : in STD_LOGIC;
    ctr_axilite_awvalid : in STD_LOGIC;
    ctr_axilite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ctr_axilite_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ctr_axilite_arvalid : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    ctr_axilite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    ctr_axilite_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    ctr_axilite_bready : in STD_LOGIC;
    ctr_axilite_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_stream_loop_0_0_axi_stream_loop_v3_0 : entity is "axi_stream_loop_v3_0";
end system_axi_stream_loop_0_0_axi_stream_loop_v3_0;

architecture STRUCTURE of system_axi_stream_loop_0_0_axi_stream_loop_v3_0 is
  signal inner_data0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal start : STD_LOGIC;
  signal \stream_data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \stream_data_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \stream_data_out_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \stream_data_out_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \stream_data_out_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \stream_data_out_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \stream_data_out_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \stream_data_out_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \stream_data_out_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \stream_data_out_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \stream_data_out_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \stream_data_out_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \stream_data_out_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \stream_data_out_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \stream_data_out_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \stream_data_out_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \stream_data_out_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \stream_data_out_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \stream_data_out_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \stream_data_out_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \stream_data_out_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \stream_data_out_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \stream_data_out_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \stream_data_out_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \stream_data_out_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \stream_data_out_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_stream_data_out_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
axi_stream_loop_v3_0_M_AXIS_inst: entity work.system_axi_stream_loop_0_0_axi_stream_loop_v3_0_M_AXIS
     port map (
      Q(0) => start,
      inner_data0(31 downto 0) => inner_data0(31 downto 0),
      m_axis_aclk => m_axis_aclk,
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid
    );
axi_stream_loop_v3_0_S_AXIS_inst: entity work.system_axi_stream_loop_0_0_axi_stream_loop_v3_0_S_AXIS
     port map (
      mst_exec_state_reg_0 => mst_exec_state_reg,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
axi_stream_loop_v3_0_ctr_AXIlite_inst: entity work.system_axi_stream_loop_0_0_axi_stream_loop_v3_0_ctr_AXIlite
     port map (
      Q(0) => start,
      ctr_axilite_aclk => ctr_axilite_aclk,
      ctr_axilite_araddr(1 downto 0) => ctr_axilite_araddr(1 downto 0),
      ctr_axilite_aresetn => ctr_axilite_aresetn,
      ctr_axilite_arready => ctr_axilite_arready,
      ctr_axilite_arvalid => ctr_axilite_arvalid,
      ctr_axilite_awaddr(1 downto 0) => ctr_axilite_awaddr(1 downto 0),
      ctr_axilite_awready => ctr_axilite_awready,
      ctr_axilite_awvalid => ctr_axilite_awvalid,
      ctr_axilite_bready => ctr_axilite_bready,
      ctr_axilite_bvalid => ctr_axilite_bvalid,
      ctr_axilite_rdata(31 downto 0) => ctr_axilite_rdata(31 downto 0),
      ctr_axilite_rready => ctr_axilite_rready,
      ctr_axilite_rvalid => ctr_axilite_rvalid,
      ctr_axilite_wdata(31 downto 0) => ctr_axilite_wdata(31 downto 0),
      ctr_axilite_wready => ctr_axilite_wready,
      ctr_axilite_wstrb(3 downto 0) => ctr_axilite_wstrb(3 downto 0),
      ctr_axilite_wvalid => ctr_axilite_wvalid
    );
\stream_data_out[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(3),
      O => \stream_data_out[3]_i_2_n_0\
    );
\stream_data_out[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(1),
      O => \stream_data_out[3]_i_3_n_0\
    );
\stream_data_out_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stream_data_out_reg[7]_i_1_n_0\,
      CO(3) => \stream_data_out_reg[11]_i_1_n_0\,
      CO(2) => \stream_data_out_reg[11]_i_1_n_1\,
      CO(1) => \stream_data_out_reg[11]_i_1_n_2\,
      CO(0) => \stream_data_out_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => inner_data0(11 downto 8),
      S(3 downto 0) => s_axis_tdata(11 downto 8)
    );
\stream_data_out_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stream_data_out_reg[11]_i_1_n_0\,
      CO(3) => \stream_data_out_reg[15]_i_1_n_0\,
      CO(2) => \stream_data_out_reg[15]_i_1_n_1\,
      CO(1) => \stream_data_out_reg[15]_i_1_n_2\,
      CO(0) => \stream_data_out_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => inner_data0(15 downto 12),
      S(3 downto 0) => s_axis_tdata(15 downto 12)
    );
\stream_data_out_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stream_data_out_reg[15]_i_1_n_0\,
      CO(3) => \stream_data_out_reg[19]_i_1_n_0\,
      CO(2) => \stream_data_out_reg[19]_i_1_n_1\,
      CO(1) => \stream_data_out_reg[19]_i_1_n_2\,
      CO(0) => \stream_data_out_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => inner_data0(19 downto 16),
      S(3 downto 0) => s_axis_tdata(19 downto 16)
    );
\stream_data_out_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stream_data_out_reg[19]_i_1_n_0\,
      CO(3) => \stream_data_out_reg[23]_i_1_n_0\,
      CO(2) => \stream_data_out_reg[23]_i_1_n_1\,
      CO(1) => \stream_data_out_reg[23]_i_1_n_2\,
      CO(0) => \stream_data_out_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => inner_data0(23 downto 20),
      S(3 downto 0) => s_axis_tdata(23 downto 20)
    );
\stream_data_out_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stream_data_out_reg[23]_i_1_n_0\,
      CO(3) => \stream_data_out_reg[27]_i_1_n_0\,
      CO(2) => \stream_data_out_reg[27]_i_1_n_1\,
      CO(1) => \stream_data_out_reg[27]_i_1_n_2\,
      CO(0) => \stream_data_out_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => inner_data0(27 downto 24),
      S(3 downto 0) => s_axis_tdata(27 downto 24)
    );
\stream_data_out_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \stream_data_out_reg[27]_i_1_n_0\,
      CO(3) => \NLW_stream_data_out_reg[31]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \stream_data_out_reg[31]_i_3_n_1\,
      CO(1) => \stream_data_out_reg[31]_i_3_n_2\,
      CO(0) => \stream_data_out_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => inner_data0(31 downto 28),
      S(3 downto 0) => s_axis_tdata(31 downto 28)
    );
\stream_data_out_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \stream_data_out_reg[3]_i_1_n_0\,
      CO(2) => \stream_data_out_reg[3]_i_1_n_1\,
      CO(1) => \stream_data_out_reg[3]_i_1_n_2\,
      CO(0) => \stream_data_out_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => s_axis_tdata(3),
      DI(2) => '0',
      DI(1) => s_axis_tdata(1),
      DI(0) => '0',
      O(3 downto 0) => inner_data0(3 downto 0),
      S(3) => \stream_data_out[3]_i_2_n_0\,
      S(2) => s_axis_tdata(2),
      S(1) => \stream_data_out[3]_i_3_n_0\,
      S(0) => s_axis_tdata(0)
    );
\stream_data_out_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stream_data_out_reg[3]_i_1_n_0\,
      CO(3) => \stream_data_out_reg[7]_i_1_n_0\,
      CO(2) => \stream_data_out_reg[7]_i_1_n_1\,
      CO(1) => \stream_data_out_reg[7]_i_1_n_2\,
      CO(0) => \stream_data_out_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => inner_data0(7 downto 4),
      S(3 downto 0) => s_axis_tdata(7 downto 4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_stream_loop_0_0 is
  port (
    ctr_axilite_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ctr_axilite_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ctr_axilite_awvalid : in STD_LOGIC;
    ctr_axilite_awready : out STD_LOGIC;
    ctr_axilite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ctr_axilite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ctr_axilite_wvalid : in STD_LOGIC;
    ctr_axilite_wready : out STD_LOGIC;
    ctr_axilite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ctr_axilite_bvalid : out STD_LOGIC;
    ctr_axilite_bready : in STD_LOGIC;
    ctr_axilite_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ctr_axilite_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ctr_axilite_arvalid : in STD_LOGIC;
    ctr_axilite_arready : out STD_LOGIC;
    ctr_axilite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ctr_axilite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ctr_axilite_rvalid : out STD_LOGIC;
    ctr_axilite_rready : in STD_LOGIC;
    ctr_axilite_aclk : in STD_LOGIC;
    ctr_axilite_aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_axi_stream_loop_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_axi_stream_loop_0_0 : entity is "system_axi_stream_loop_0_0,axi_stream_loop_v3_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_axi_stream_loop_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_axi_stream_loop_0_0 : entity is "axi_stream_loop_v3_0,Vivado 2018.3";
end system_axi_stream_loop_0_0;

architecture STRUCTURE of system_axi_stream_loop_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ctr_axilite_aclk : signal is "xilinx.com:signal:clock:1.0 ctr_AXIlite_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ctr_axilite_aclk : signal is "XIL_INTERFACENAME ctr_AXIlite_CLK, ASSOCIATED_BUSIF ctr_AXIlite, ASSOCIATED_RESET ctr_axilite_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ctr_axilite_aresetn : signal is "xilinx.com:signal:reset:1.0 ctr_AXIlite_RST RST";
  attribute X_INTERFACE_PARAMETER of ctr_axilite_aresetn : signal is "XIL_INTERFACENAME ctr_AXIlite_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ctr_axilite_arready : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite ARREADY";
  attribute X_INTERFACE_INFO of ctr_axilite_arvalid : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite ARVALID";
  attribute X_INTERFACE_INFO of ctr_axilite_awready : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite AWREADY";
  attribute X_INTERFACE_INFO of ctr_axilite_awvalid : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite AWVALID";
  attribute X_INTERFACE_INFO of ctr_axilite_bready : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite BREADY";
  attribute X_INTERFACE_INFO of ctr_axilite_bvalid : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite BVALID";
  attribute X_INTERFACE_INFO of ctr_axilite_rready : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite RREADY";
  attribute X_INTERFACE_PARAMETER of ctr_axilite_rready : signal is "XIL_INTERFACENAME ctr_AXIlite, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ctr_axilite_rvalid : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite RVALID";
  attribute X_INTERFACE_INFO of ctr_axilite_wready : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite WREADY";
  attribute X_INTERFACE_INFO of ctr_axilite_wvalid : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite WVALID";
  attribute X_INTERFACE_INFO of m_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER of m_axis_aclk : signal is "XIL_INTERFACENAME M_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of m_axis_aresetn : signal is "XIL_INTERFACENAME M_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME M_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk : signal is "XIL_INTERFACENAME S_AXIS_CLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of s_axis_aresetn : signal is "XIL_INTERFACENAME S_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_tready : signal is "XIL_INTERFACENAME S_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of ctr_axilite_araddr : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite ARADDR";
  attribute X_INTERFACE_INFO of ctr_axilite_arprot : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite ARPROT";
  attribute X_INTERFACE_INFO of ctr_axilite_awaddr : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite AWADDR";
  attribute X_INTERFACE_INFO of ctr_axilite_awprot : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite AWPROT";
  attribute X_INTERFACE_INFO of ctr_axilite_bresp : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite BRESP";
  attribute X_INTERFACE_INFO of ctr_axilite_rdata : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite RDATA";
  attribute X_INTERFACE_INFO of ctr_axilite_rresp : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite RRESP";
  attribute X_INTERFACE_INFO of ctr_axilite_wdata : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite WDATA";
  attribute X_INTERFACE_INFO of ctr_axilite_wstrb : signal is "xilinx.com:interface:aximm:1.0 ctr_AXIlite WSTRB";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M_AXIS TSTRB";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S_AXIS TSTRB";
begin
  ctr_axilite_bresp(1) <= \<const0>\;
  ctr_axilite_bresp(0) <= \<const0>\;
  ctr_axilite_rresp(1) <= \<const0>\;
  ctr_axilite_rresp(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(3) <= \<const1>\;
  m_axis_tstrb(2) <= \<const1>\;
  m_axis_tstrb(1) <= \<const1>\;
  m_axis_tstrb(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.system_axi_stream_loop_0_0_axi_stream_loop_v3_0
     port map (
      ctr_axilite_aclk => ctr_axilite_aclk,
      ctr_axilite_araddr(1 downto 0) => ctr_axilite_araddr(3 downto 2),
      ctr_axilite_aresetn => ctr_axilite_aresetn,
      ctr_axilite_arready => ctr_axilite_arready,
      ctr_axilite_arvalid => ctr_axilite_arvalid,
      ctr_axilite_awaddr(1 downto 0) => ctr_axilite_awaddr(3 downto 2),
      ctr_axilite_awready => ctr_axilite_awready,
      ctr_axilite_awvalid => ctr_axilite_awvalid,
      ctr_axilite_bready => ctr_axilite_bready,
      ctr_axilite_bvalid => ctr_axilite_bvalid,
      ctr_axilite_rdata(31 downto 0) => ctr_axilite_rdata(31 downto 0),
      ctr_axilite_rready => ctr_axilite_rready,
      ctr_axilite_rvalid => ctr_axilite_rvalid,
      ctr_axilite_wdata(31 downto 0) => ctr_axilite_wdata(31 downto 0),
      ctr_axilite_wready => ctr_axilite_wready,
      ctr_axilite_wstrb(3 downto 0) => ctr_axilite_wstrb(3 downto 0),
      ctr_axilite_wvalid => ctr_axilite_wvalid,
      m_axis_aclk => m_axis_aclk,
      m_axis_aresetn => m_axis_aresetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      mst_exec_state_reg => s_axis_tready,
      s_axis_aclk => s_axis_aclk,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
