// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:axi_stream_loop:3.0
// IP Revision: 2

(* X_CORE_INFO = "axi_stream_loop_v3_0,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "system_axi_stream_loop_0_0,axi_stream_loop_v3_0,{}" *)
(* CORE_GENERATION_INFO = "system_axi_stream_loop_0_0,axi_stream_loop_v3_0,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=axi_stream_loop,x_ipVersion=3.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_ctr_AXIlite_DATA_WIDTH=32,C_ctr_AXIlite_ADDR_WIDTH=4,C_S_AXIS_TDATA_WIDTH=32,C_M_AXIS_TDATA_WIDTH=32,C_M_AXIS_START_COUNT=32}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_axi_stream_loop_0_0 (
  ctr_axilite_awaddr,
  ctr_axilite_awprot,
  ctr_axilite_awvalid,
  ctr_axilite_awready,
  ctr_axilite_wdata,
  ctr_axilite_wstrb,
  ctr_axilite_wvalid,
  ctr_axilite_wready,
  ctr_axilite_bresp,
  ctr_axilite_bvalid,
  ctr_axilite_bready,
  ctr_axilite_araddr,
  ctr_axilite_arprot,
  ctr_axilite_arvalid,
  ctr_axilite_arready,
  ctr_axilite_rdata,
  ctr_axilite_rresp,
  ctr_axilite_rvalid,
  ctr_axilite_rready,
  ctr_axilite_aclk,
  ctr_axilite_aresetn,
  s_axis_tdata,
  s_axis_tstrb,
  s_axis_tlast,
  s_axis_tvalid,
  s_axis_tready,
  s_axis_aclk,
  s_axis_aresetn,
  m_axis_tdata,
  m_axis_tstrb,
  m_axis_tlast,
  m_axis_tvalid,
  m_axis_tready,
  m_axis_aclk,
  m_axis_aresetn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite AWADDR" *)
input wire [3 : 0] ctr_axilite_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite AWPROT" *)
input wire [2 : 0] ctr_axilite_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite AWVALID" *)
input wire ctr_axilite_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite AWREADY" *)
output wire ctr_axilite_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite WDATA" *)
input wire [31 : 0] ctr_axilite_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite WSTRB" *)
input wire [3 : 0] ctr_axilite_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite WVALID" *)
input wire ctr_axilite_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite WREADY" *)
output wire ctr_axilite_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite BRESP" *)
output wire [1 : 0] ctr_axilite_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite BVALID" *)
output wire ctr_axilite_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite BREADY" *)
input wire ctr_axilite_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite ARADDR" *)
input wire [3 : 0] ctr_axilite_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite ARPROT" *)
input wire [2 : 0] ctr_axilite_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite ARVALID" *)
input wire ctr_axilite_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite ARREADY" *)
output wire ctr_axilite_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite RDATA" *)
output wire [31 : 0] ctr_axilite_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite RRESP" *)
output wire [1 : 0] ctr_axilite_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite RVALID" *)
output wire ctr_axilite_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctr_AXIlite, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_s\
ystem7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite RREADY" *)
input wire ctr_axilite_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctr_AXIlite_CLK, ASSOCIATED_BUSIF ctr_AXIlite, ASSOCIATED_RESET ctr_axilite_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ctr_AXIlite_CLK CLK" *)
input wire ctr_axilite_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctr_AXIlite_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ctr_AXIlite_RST RST" *)
input wire ctr_axilite_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *)
input wire [31 : 0] s_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TSTRB" *)
input wire [3 : 0] s_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *)
input wire s_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *)
input wire s_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *)
output wire s_axis_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXIS_CLK CLK" *)
input wire s_axis_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXIS_RST RST" *)
input wire s_axis_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
output wire [31 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TSTRB" *)
output wire [3 : 0] m_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *)
output wire m_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
output wire m_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *)
input wire m_axis_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXIS_CLK CLK" *)
input wire m_axis_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXIS_RST RST" *)
input wire m_axis_aresetn;

  axi_stream_loop_v3_0 #(
    .C_ctr_AXIlite_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_ctr_AXIlite_ADDR_WIDTH(4),  // Width of S_AXI address bus
    .C_S_AXIS_TDATA_WIDTH(32),  // AXI4Stream sink: Data Width
    .C_M_AXIS_TDATA_WIDTH(32),  // Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
    .C_M_AXIS_START_COUNT(32)  // Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.
  ) inst (
    .ctr_axilite_awaddr(ctr_axilite_awaddr),
    .ctr_axilite_awprot(ctr_axilite_awprot),
    .ctr_axilite_awvalid(ctr_axilite_awvalid),
    .ctr_axilite_awready(ctr_axilite_awready),
    .ctr_axilite_wdata(ctr_axilite_wdata),
    .ctr_axilite_wstrb(ctr_axilite_wstrb),
    .ctr_axilite_wvalid(ctr_axilite_wvalid),
    .ctr_axilite_wready(ctr_axilite_wready),
    .ctr_axilite_bresp(ctr_axilite_bresp),
    .ctr_axilite_bvalid(ctr_axilite_bvalid),
    .ctr_axilite_bready(ctr_axilite_bready),
    .ctr_axilite_araddr(ctr_axilite_araddr),
    .ctr_axilite_arprot(ctr_axilite_arprot),
    .ctr_axilite_arvalid(ctr_axilite_arvalid),
    .ctr_axilite_arready(ctr_axilite_arready),
    .ctr_axilite_rdata(ctr_axilite_rdata),
    .ctr_axilite_rresp(ctr_axilite_rresp),
    .ctr_axilite_rvalid(ctr_axilite_rvalid),
    .ctr_axilite_rready(ctr_axilite_rready),
    .ctr_axilite_aclk(ctr_axilite_aclk),
    .ctr_axilite_aresetn(ctr_axilite_aresetn),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tstrb(s_axis_tstrb),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .s_axis_aclk(s_axis_aclk),
    .s_axis_aresetn(s_axis_aresetn),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tstrb(m_axis_tstrb),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_aclk(m_axis_aclk),
    .m_axis_aresetn(m_axis_aresetn)
  );
endmodule
