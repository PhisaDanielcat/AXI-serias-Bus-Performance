-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Dec 23 22:33:46 2022
-- Host        : DESKTOP-TKLACMU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/VivadoCode/AXI_Stream_DMA/AXI_DMA_loop/ex12_AXI_DMA.srcs/sources_1/bd/system/ip/system_axi_stream_loop_0_0/system_axi_stream_loop_0_0_stub.vhdl
-- Design      : system_axi_stream_loop_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_axi_stream_loop_0_0 is
  Port ( 
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

end system_axi_stream_loop_0_0;

architecture stub of system_axi_stream_loop_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ctr_axilite_awaddr[3:0],ctr_axilite_awprot[2:0],ctr_axilite_awvalid,ctr_axilite_awready,ctr_axilite_wdata[31:0],ctr_axilite_wstrb[3:0],ctr_axilite_wvalid,ctr_axilite_wready,ctr_axilite_bresp[1:0],ctr_axilite_bvalid,ctr_axilite_bready,ctr_axilite_araddr[3:0],ctr_axilite_arprot[2:0],ctr_axilite_arvalid,ctr_axilite_arready,ctr_axilite_rdata[31:0],ctr_axilite_rresp[1:0],ctr_axilite_rvalid,ctr_axilite_rready,ctr_axilite_aclk,ctr_axilite_aresetn,s_axis_tdata[31:0],s_axis_tstrb[3:0],s_axis_tlast,s_axis_tvalid,s_axis_tready,s_axis_aclk,s_axis_aresetn,m_axis_tdata[31:0],m_axis_tstrb[3:0],m_axis_tlast,m_axis_tvalid,m_axis_tready,m_axis_aclk,m_axis_aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_stream_loop_v3_0,Vivado 2018.3";
begin
end;
