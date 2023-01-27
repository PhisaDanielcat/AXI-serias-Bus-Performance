// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Dec 23 22:33:46 2022
// Host        : DESKTOP-TKLACMU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/VivadoCode/AXI_Stream_DMA/AXI_DMA_loop/ex12_AXI_DMA.srcs/sources_1/bd/system/ip/system_axi_stream_loop_0_0/system_axi_stream_loop_0_0_stub.v
// Design      : system_axi_stream_loop_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_stream_loop_v3_0,Vivado 2018.3" *)
module system_axi_stream_loop_0_0(ctr_axilite_awaddr, ctr_axilite_awprot, 
  ctr_axilite_awvalid, ctr_axilite_awready, ctr_axilite_wdata, ctr_axilite_wstrb, 
  ctr_axilite_wvalid, ctr_axilite_wready, ctr_axilite_bresp, ctr_axilite_bvalid, 
  ctr_axilite_bready, ctr_axilite_araddr, ctr_axilite_arprot, ctr_axilite_arvalid, 
  ctr_axilite_arready, ctr_axilite_rdata, ctr_axilite_rresp, ctr_axilite_rvalid, 
  ctr_axilite_rready, ctr_axilite_aclk, ctr_axilite_aresetn, s_axis_tdata, s_axis_tstrb, 
  s_axis_tlast, s_axis_tvalid, s_axis_tready, s_axis_aclk, s_axis_aresetn, m_axis_tdata, 
  m_axis_tstrb, m_axis_tlast, m_axis_tvalid, m_axis_tready, m_axis_aclk, m_axis_aresetn)
/* synthesis syn_black_box black_box_pad_pin="ctr_axilite_awaddr[3:0],ctr_axilite_awprot[2:0],ctr_axilite_awvalid,ctr_axilite_awready,ctr_axilite_wdata[31:0],ctr_axilite_wstrb[3:0],ctr_axilite_wvalid,ctr_axilite_wready,ctr_axilite_bresp[1:0],ctr_axilite_bvalid,ctr_axilite_bready,ctr_axilite_araddr[3:0],ctr_axilite_arprot[2:0],ctr_axilite_arvalid,ctr_axilite_arready,ctr_axilite_rdata[31:0],ctr_axilite_rresp[1:0],ctr_axilite_rvalid,ctr_axilite_rready,ctr_axilite_aclk,ctr_axilite_aresetn,s_axis_tdata[31:0],s_axis_tstrb[3:0],s_axis_tlast,s_axis_tvalid,s_axis_tready,s_axis_aclk,s_axis_aresetn,m_axis_tdata[31:0],m_axis_tstrb[3:0],m_axis_tlast,m_axis_tvalid,m_axis_tready,m_axis_aclk,m_axis_aresetn" */;
  input [3:0]ctr_axilite_awaddr;
  input [2:0]ctr_axilite_awprot;
  input ctr_axilite_awvalid;
  output ctr_axilite_awready;
  input [31:0]ctr_axilite_wdata;
  input [3:0]ctr_axilite_wstrb;
  input ctr_axilite_wvalid;
  output ctr_axilite_wready;
  output [1:0]ctr_axilite_bresp;
  output ctr_axilite_bvalid;
  input ctr_axilite_bready;
  input [3:0]ctr_axilite_araddr;
  input [2:0]ctr_axilite_arprot;
  input ctr_axilite_arvalid;
  output ctr_axilite_arready;
  output [31:0]ctr_axilite_rdata;
  output [1:0]ctr_axilite_rresp;
  output ctr_axilite_rvalid;
  input ctr_axilite_rready;
  input ctr_axilite_aclk;
  input ctr_axilite_aresetn;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input s_axis_tlast;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_aclk;
  input s_axis_aresetn;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output m_axis_tlast;
  output m_axis_tvalid;
  input m_axis_tready;
  input m_axis_aclk;
  input m_axis_aresetn;
endmodule
