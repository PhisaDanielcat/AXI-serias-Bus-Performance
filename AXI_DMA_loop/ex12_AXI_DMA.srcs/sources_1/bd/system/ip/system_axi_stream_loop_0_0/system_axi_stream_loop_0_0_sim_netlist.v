// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Dec 23 22:33:46 2022
// Host        : DESKTOP-TKLACMU running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/VivadoCode/AXI_Stream_DMA/AXI_DMA_loop/ex12_AXI_DMA.srcs/sources_1/bd/system/ip/system_axi_stream_loop_0_0/system_axi_stream_loop_0_0_sim_netlist.v
// Design      : system_axi_stream_loop_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_axi_stream_loop_0_0,axi_stream_loop_v3_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_stream_loop_v3_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module system_axi_stream_loop_0_0
   (ctr_axilite_awaddr,
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
    m_axis_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite AWADDR" *) input [3:0]ctr_axilite_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite AWPROT" *) input [2:0]ctr_axilite_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite AWVALID" *) input ctr_axilite_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite AWREADY" *) output ctr_axilite_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite WDATA" *) input [31:0]ctr_axilite_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite WSTRB" *) input [3:0]ctr_axilite_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite WVALID" *) input ctr_axilite_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite WREADY" *) output ctr_axilite_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite BRESP" *) output [1:0]ctr_axilite_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite BVALID" *) output ctr_axilite_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite BREADY" *) input ctr_axilite_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite ARADDR" *) input [3:0]ctr_axilite_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite ARPROT" *) input [2:0]ctr_axilite_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite ARVALID" *) input ctr_axilite_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite ARREADY" *) output ctr_axilite_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite RDATA" *) output [31:0]ctr_axilite_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite RRESP" *) output [1:0]ctr_axilite_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite RVALID" *) output ctr_axilite_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctr_AXIlite RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctr_AXIlite, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input ctr_axilite_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ctr_AXIlite_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctr_AXIlite_CLK, ASSOCIATED_BUSIF ctr_AXIlite, ASSOCIATED_RESET ctr_axilite_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ctr_axilite_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ctr_AXIlite_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctr_AXIlite_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ctr_axilite_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TSTRB" *) input [3:0]s_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CLK, ASSOCIATED_BUSIF S_AXIS, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TSTRB" *) output [3:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axis_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire ctr_axilite_aclk;
  wire [3:0]ctr_axilite_araddr;
  wire ctr_axilite_aresetn;
  wire ctr_axilite_arready;
  wire ctr_axilite_arvalid;
  wire [3:0]ctr_axilite_awaddr;
  wire ctr_axilite_awready;
  wire ctr_axilite_awvalid;
  wire ctr_axilite_bready;
  wire ctr_axilite_bvalid;
  wire [31:0]ctr_axilite_rdata;
  wire ctr_axilite_rready;
  wire ctr_axilite_rvalid;
  wire [31:0]ctr_axilite_wdata;
  wire ctr_axilite_wready;
  wire [3:0]ctr_axilite_wstrb;
  wire ctr_axilite_wvalid;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign ctr_axilite_bresp[1] = \<const0> ;
  assign ctr_axilite_bresp[0] = \<const0> ;
  assign ctr_axilite_rresp[1] = \<const0> ;
  assign ctr_axilite_rresp[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[3] = \<const1> ;
  assign m_axis_tstrb[2] = \<const1> ;
  assign m_axis_tstrb[1] = \<const1> ;
  assign m_axis_tstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  system_axi_stream_loop_0_0_axi_stream_loop_v3_0 inst
       (.ctr_axilite_aclk(ctr_axilite_aclk),
        .ctr_axilite_araddr(ctr_axilite_araddr[3:2]),
        .ctr_axilite_aresetn(ctr_axilite_aresetn),
        .ctr_axilite_arready(ctr_axilite_arready),
        .ctr_axilite_arvalid(ctr_axilite_arvalid),
        .ctr_axilite_awaddr(ctr_axilite_awaddr[3:2]),
        .ctr_axilite_awready(ctr_axilite_awready),
        .ctr_axilite_awvalid(ctr_axilite_awvalid),
        .ctr_axilite_bready(ctr_axilite_bready),
        .ctr_axilite_bvalid(ctr_axilite_bvalid),
        .ctr_axilite_rdata(ctr_axilite_rdata),
        .ctr_axilite_rready(ctr_axilite_rready),
        .ctr_axilite_rvalid(ctr_axilite_rvalid),
        .ctr_axilite_wdata(ctr_axilite_wdata),
        .ctr_axilite_wready(ctr_axilite_wready),
        .ctr_axilite_wstrb(ctr_axilite_wstrb),
        .ctr_axilite_wvalid(ctr_axilite_wvalid),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_aresetn(m_axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .mst_exec_state_reg(s_axis_tready),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axi_stream_loop_v3_0" *) 
module system_axi_stream_loop_0_0_axi_stream_loop_v3_0
   (ctr_axilite_wready,
    ctr_axilite_awready,
    ctr_axilite_arready,
    ctr_axilite_rdata,
    mst_exec_state_reg,
    m_axis_tdata,
    ctr_axilite_rvalid,
    m_axis_tvalid,
    ctr_axilite_bvalid,
    ctr_axilite_aclk,
    ctr_axilite_awaddr,
    ctr_axilite_wvalid,
    ctr_axilite_awvalid,
    ctr_axilite_wdata,
    ctr_axilite_araddr,
    ctr_axilite_arvalid,
    s_axis_tvalid,
    s_axis_aresetn,
    s_axis_aclk,
    s_axis_tdata,
    m_axis_aclk,
    ctr_axilite_wstrb,
    s_axis_tlast,
    m_axis_tready,
    ctr_axilite_aresetn,
    m_axis_aresetn,
    ctr_axilite_bready,
    ctr_axilite_rready);
  output ctr_axilite_wready;
  output ctr_axilite_awready;
  output ctr_axilite_arready;
  output [31:0]ctr_axilite_rdata;
  output mst_exec_state_reg;
  output [31:0]m_axis_tdata;
  output ctr_axilite_rvalid;
  output m_axis_tvalid;
  output ctr_axilite_bvalid;
  input ctr_axilite_aclk;
  input [1:0]ctr_axilite_awaddr;
  input ctr_axilite_wvalid;
  input ctr_axilite_awvalid;
  input [31:0]ctr_axilite_wdata;
  input [1:0]ctr_axilite_araddr;
  input ctr_axilite_arvalid;
  input s_axis_tvalid;
  input s_axis_aresetn;
  input s_axis_aclk;
  input [31:0]s_axis_tdata;
  input m_axis_aclk;
  input [3:0]ctr_axilite_wstrb;
  input s_axis_tlast;
  input m_axis_tready;
  input ctr_axilite_aresetn;
  input m_axis_aresetn;
  input ctr_axilite_bready;
  input ctr_axilite_rready;

  wire ctr_axilite_aclk;
  wire [1:0]ctr_axilite_araddr;
  wire ctr_axilite_aresetn;
  wire ctr_axilite_arready;
  wire ctr_axilite_arvalid;
  wire [1:0]ctr_axilite_awaddr;
  wire ctr_axilite_awready;
  wire ctr_axilite_awvalid;
  wire ctr_axilite_bready;
  wire ctr_axilite_bvalid;
  wire [31:0]ctr_axilite_rdata;
  wire ctr_axilite_rready;
  wire ctr_axilite_rvalid;
  wire [31:0]ctr_axilite_wdata;
  wire ctr_axilite_wready;
  wire [3:0]ctr_axilite_wstrb;
  wire ctr_axilite_wvalid;
  wire [31:0]inner_data0;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire mst_exec_state_reg;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire start;
  wire \stream_data_out[3]_i_2_n_0 ;
  wire \stream_data_out[3]_i_3_n_0 ;
  wire \stream_data_out_reg[11]_i_1_n_0 ;
  wire \stream_data_out_reg[11]_i_1_n_1 ;
  wire \stream_data_out_reg[11]_i_1_n_2 ;
  wire \stream_data_out_reg[11]_i_1_n_3 ;
  wire \stream_data_out_reg[15]_i_1_n_0 ;
  wire \stream_data_out_reg[15]_i_1_n_1 ;
  wire \stream_data_out_reg[15]_i_1_n_2 ;
  wire \stream_data_out_reg[15]_i_1_n_3 ;
  wire \stream_data_out_reg[19]_i_1_n_0 ;
  wire \stream_data_out_reg[19]_i_1_n_1 ;
  wire \stream_data_out_reg[19]_i_1_n_2 ;
  wire \stream_data_out_reg[19]_i_1_n_3 ;
  wire \stream_data_out_reg[23]_i_1_n_0 ;
  wire \stream_data_out_reg[23]_i_1_n_1 ;
  wire \stream_data_out_reg[23]_i_1_n_2 ;
  wire \stream_data_out_reg[23]_i_1_n_3 ;
  wire \stream_data_out_reg[27]_i_1_n_0 ;
  wire \stream_data_out_reg[27]_i_1_n_1 ;
  wire \stream_data_out_reg[27]_i_1_n_2 ;
  wire \stream_data_out_reg[27]_i_1_n_3 ;
  wire \stream_data_out_reg[31]_i_3_n_1 ;
  wire \stream_data_out_reg[31]_i_3_n_2 ;
  wire \stream_data_out_reg[31]_i_3_n_3 ;
  wire \stream_data_out_reg[3]_i_1_n_0 ;
  wire \stream_data_out_reg[3]_i_1_n_1 ;
  wire \stream_data_out_reg[3]_i_1_n_2 ;
  wire \stream_data_out_reg[3]_i_1_n_3 ;
  wire \stream_data_out_reg[7]_i_1_n_0 ;
  wire \stream_data_out_reg[7]_i_1_n_1 ;
  wire \stream_data_out_reg[7]_i_1_n_2 ;
  wire \stream_data_out_reg[7]_i_1_n_3 ;
  wire [3:3]\NLW_stream_data_out_reg[31]_i_3_CO_UNCONNECTED ;

  system_axi_stream_loop_0_0_axi_stream_loop_v3_0_M_AXIS axi_stream_loop_v3_0_M_AXIS_inst
       (.Q(start),
        .inner_data0(inner_data0),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_aresetn(m_axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid));
  system_axi_stream_loop_0_0_axi_stream_loop_v3_0_S_AXIS axi_stream_loop_v3_0_S_AXIS_inst
       (.mst_exec_state_reg_0(mst_exec_state_reg),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
  system_axi_stream_loop_0_0_axi_stream_loop_v3_0_ctr_AXIlite axi_stream_loop_v3_0_ctr_AXIlite_inst
       (.Q(start),
        .ctr_axilite_aclk(ctr_axilite_aclk),
        .ctr_axilite_araddr(ctr_axilite_araddr),
        .ctr_axilite_aresetn(ctr_axilite_aresetn),
        .ctr_axilite_arready(ctr_axilite_arready),
        .ctr_axilite_arvalid(ctr_axilite_arvalid),
        .ctr_axilite_awaddr(ctr_axilite_awaddr),
        .ctr_axilite_awready(ctr_axilite_awready),
        .ctr_axilite_awvalid(ctr_axilite_awvalid),
        .ctr_axilite_bready(ctr_axilite_bready),
        .ctr_axilite_bvalid(ctr_axilite_bvalid),
        .ctr_axilite_rdata(ctr_axilite_rdata),
        .ctr_axilite_rready(ctr_axilite_rready),
        .ctr_axilite_rvalid(ctr_axilite_rvalid),
        .ctr_axilite_wdata(ctr_axilite_wdata),
        .ctr_axilite_wready(ctr_axilite_wready),
        .ctr_axilite_wstrb(ctr_axilite_wstrb),
        .ctr_axilite_wvalid(ctr_axilite_wvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \stream_data_out[3]_i_2 
       (.I0(s_axis_tdata[3]),
        .O(\stream_data_out[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \stream_data_out[3]_i_3 
       (.I0(s_axis_tdata[1]),
        .O(\stream_data_out[3]_i_3_n_0 ));
  CARRY4 \stream_data_out_reg[11]_i_1 
       (.CI(\stream_data_out_reg[7]_i_1_n_0 ),
        .CO({\stream_data_out_reg[11]_i_1_n_0 ,\stream_data_out_reg[11]_i_1_n_1 ,\stream_data_out_reg[11]_i_1_n_2 ,\stream_data_out_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inner_data0[11:8]),
        .S(s_axis_tdata[11:8]));
  CARRY4 \stream_data_out_reg[15]_i_1 
       (.CI(\stream_data_out_reg[11]_i_1_n_0 ),
        .CO({\stream_data_out_reg[15]_i_1_n_0 ,\stream_data_out_reg[15]_i_1_n_1 ,\stream_data_out_reg[15]_i_1_n_2 ,\stream_data_out_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inner_data0[15:12]),
        .S(s_axis_tdata[15:12]));
  CARRY4 \stream_data_out_reg[19]_i_1 
       (.CI(\stream_data_out_reg[15]_i_1_n_0 ),
        .CO({\stream_data_out_reg[19]_i_1_n_0 ,\stream_data_out_reg[19]_i_1_n_1 ,\stream_data_out_reg[19]_i_1_n_2 ,\stream_data_out_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inner_data0[19:16]),
        .S(s_axis_tdata[19:16]));
  CARRY4 \stream_data_out_reg[23]_i_1 
       (.CI(\stream_data_out_reg[19]_i_1_n_0 ),
        .CO({\stream_data_out_reg[23]_i_1_n_0 ,\stream_data_out_reg[23]_i_1_n_1 ,\stream_data_out_reg[23]_i_1_n_2 ,\stream_data_out_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inner_data0[23:20]),
        .S(s_axis_tdata[23:20]));
  CARRY4 \stream_data_out_reg[27]_i_1 
       (.CI(\stream_data_out_reg[23]_i_1_n_0 ),
        .CO({\stream_data_out_reg[27]_i_1_n_0 ,\stream_data_out_reg[27]_i_1_n_1 ,\stream_data_out_reg[27]_i_1_n_2 ,\stream_data_out_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inner_data0[27:24]),
        .S(s_axis_tdata[27:24]));
  CARRY4 \stream_data_out_reg[31]_i_3 
       (.CI(\stream_data_out_reg[27]_i_1_n_0 ),
        .CO({\NLW_stream_data_out_reg[31]_i_3_CO_UNCONNECTED [3],\stream_data_out_reg[31]_i_3_n_1 ,\stream_data_out_reg[31]_i_3_n_2 ,\stream_data_out_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inner_data0[31:28]),
        .S(s_axis_tdata[31:28]));
  CARRY4 \stream_data_out_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\stream_data_out_reg[3]_i_1_n_0 ,\stream_data_out_reg[3]_i_1_n_1 ,\stream_data_out_reg[3]_i_1_n_2 ,\stream_data_out_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({s_axis_tdata[3],1'b0,s_axis_tdata[1],1'b0}),
        .O(inner_data0[3:0]),
        .S({\stream_data_out[3]_i_2_n_0 ,s_axis_tdata[2],\stream_data_out[3]_i_3_n_0 ,s_axis_tdata[0]}));
  CARRY4 \stream_data_out_reg[7]_i_1 
       (.CI(\stream_data_out_reg[3]_i_1_n_0 ),
        .CO({\stream_data_out_reg[7]_i_1_n_0 ,\stream_data_out_reg[7]_i_1_n_1 ,\stream_data_out_reg[7]_i_1_n_2 ,\stream_data_out_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(inner_data0[7:4]),
        .S(s_axis_tdata[7:4]));
endmodule

(* ORIG_REF_NAME = "axi_stream_loop_v3_0_M_AXIS" *) 
module system_axi_stream_loop_0_0_axi_stream_loop_v3_0_M_AXIS
   (m_axis_tvalid,
    m_axis_tdata,
    m_axis_aclk,
    m_axis_tready,
    Q,
    m_axis_aresetn,
    inner_data0);
  output m_axis_tvalid;
  output [31:0]m_axis_tdata;
  input m_axis_aclk;
  input m_axis_tready;
  input [0:0]Q;
  input m_axis_aresetn;
  input [31:0]inner_data0;

  wire FSM_sequential_mst_exec_state_i_1_n_0;
  wire [0:0]Q;
  wire [31:0]inner_data0;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \stream_data_out[31]_i_1_n_0 ;
  wire tx_en;

  LUT3 #(
    .INIT(8'hE0)) 
    FSM_sequential_mst_exec_state_i_1
       (.I0(m_axis_tvalid),
        .I1(Q),
        .I2(m_axis_aresetn),
        .O(FSM_sequential_mst_exec_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "SEND_STREAM:1,IDLE:0" *) 
  FDRE FSM_sequential_mst_exec_state_reg
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(FSM_sequential_mst_exec_state_i_1_n_0),
        .Q(m_axis_tvalid),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \stream_data_out[31]_i_1 
       (.I0(m_axis_aresetn),
        .O(\stream_data_out[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \stream_data_out[31]_i_2 
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid),
        .O(tx_en));
  FDRE \stream_data_out_reg[0] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[0]),
        .Q(m_axis_tdata[0]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[10] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[10]),
        .Q(m_axis_tdata[10]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[11] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[11]),
        .Q(m_axis_tdata[11]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[12] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[12]),
        .Q(m_axis_tdata[12]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[13] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[13]),
        .Q(m_axis_tdata[13]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[14] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[14]),
        .Q(m_axis_tdata[14]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[15] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[15]),
        .Q(m_axis_tdata[15]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[16] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[16]),
        .Q(m_axis_tdata[16]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[17] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[17]),
        .Q(m_axis_tdata[17]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[18] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[18]),
        .Q(m_axis_tdata[18]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[19] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[19]),
        .Q(m_axis_tdata[19]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[1] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[1]),
        .Q(m_axis_tdata[1]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[20] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[20]),
        .Q(m_axis_tdata[20]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[21] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[21]),
        .Q(m_axis_tdata[21]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[22] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[22]),
        .Q(m_axis_tdata[22]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[23] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[23]),
        .Q(m_axis_tdata[23]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[24] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[24]),
        .Q(m_axis_tdata[24]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[25] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[25]),
        .Q(m_axis_tdata[25]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[26] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[26]),
        .Q(m_axis_tdata[26]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[27] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[27]),
        .Q(m_axis_tdata[27]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[28] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[28]),
        .Q(m_axis_tdata[28]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[29] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[29]),
        .Q(m_axis_tdata[29]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[2] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[2]),
        .Q(m_axis_tdata[2]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[30] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[30]),
        .Q(m_axis_tdata[30]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[31] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[31]),
        .Q(m_axis_tdata[31]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[3] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[3]),
        .Q(m_axis_tdata[3]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[4] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[4]),
        .Q(m_axis_tdata[4]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[5] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[5]),
        .Q(m_axis_tdata[5]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[6] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[6]),
        .Q(m_axis_tdata[6]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[7] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[7]),
        .Q(m_axis_tdata[7]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[8] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[8]),
        .Q(m_axis_tdata[8]),
        .R(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[9] 
       (.C(m_axis_aclk),
        .CE(tx_en),
        .D(inner_data0[9]),
        .Q(m_axis_tdata[9]),
        .R(\stream_data_out[31]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "axi_stream_loop_v3_0_S_AXIS" *) 
module system_axi_stream_loop_0_0_axi_stream_loop_v3_0_S_AXIS
   (mst_exec_state_reg_0,
    s_axis_tlast,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_aresetn);
  output mst_exec_state_reg_0;
  input s_axis_tlast;
  input s_axis_aclk;
  input s_axis_tvalid;
  input s_axis_aresetn;

  wire mst_exec_state_i_1_n_0;
  wire mst_exec_state_reg_0;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire \write_pointer[0]_i_1_n_0 ;
  wire \write_pointer[1]_i_1_n_0 ;
  wire \write_pointer[2]_i_1_n_0 ;
  wire \write_pointer_reg_n_0_[0] ;
  wire \write_pointer_reg_n_0_[1] ;
  wire \write_pointer_reg_n_0_[2] ;
  wire writes_done;
  wire writes_done0_n_0;
  wire writes_done_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    mst_exec_state_i_1
       (.I0(s_axis_tvalid),
        .I1(mst_exec_state_reg_0),
        .I2(writes_done),
        .I3(s_axis_aresetn),
        .O(mst_exec_state_i_1_n_0));
  FDRE mst_exec_state_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state_i_1_n_0),
        .Q(mst_exec_state_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \write_pointer[0]_i_1 
       (.I0(\write_pointer_reg_n_0_[0] ),
        .I1(s_axis_tvalid),
        .I2(mst_exec_state_reg_0),
        .I3(s_axis_aresetn),
        .O(\write_pointer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \write_pointer[1]_i_1 
       (.I0(\write_pointer_reg_n_0_[1] ),
        .I1(mst_exec_state_reg_0),
        .I2(s_axis_tvalid),
        .I3(\write_pointer_reg_n_0_[0] ),
        .I4(s_axis_aresetn),
        .O(\write_pointer[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    \write_pointer[2]_i_1 
       (.I0(\write_pointer_reg_n_0_[2] ),
        .I1(mst_exec_state_reg_0),
        .I2(s_axis_tvalid),
        .I3(\write_pointer_reg_n_0_[1] ),
        .I4(\write_pointer_reg_n_0_[0] ),
        .I5(s_axis_aresetn),
        .O(\write_pointer[2]_i_1_n_0 ));
  FDRE \write_pointer_reg[0] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\write_pointer[0]_i_1_n_0 ),
        .Q(\write_pointer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \write_pointer_reg[1] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\write_pointer[1]_i_1_n_0 ),
        .Q(\write_pointer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \write_pointer_reg[2] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(\write_pointer[2]_i_1_n_0 ),
        .Q(\write_pointer_reg_n_0_[2] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF80)) 
    writes_done0
       (.I0(\write_pointer_reg_n_0_[2] ),
        .I1(\write_pointer_reg_n_0_[0] ),
        .I2(\write_pointer_reg_n_0_[1] ),
        .I3(s_axis_tlast),
        .O(writes_done0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF2A0000)) 
    writes_done_i_1
       (.I0(writes_done),
        .I1(s_axis_tvalid),
        .I2(mst_exec_state_reg_0),
        .I3(writes_done0_n_0),
        .I4(s_axis_aresetn),
        .O(writes_done_i_1_n_0));
  FDRE writes_done_reg
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_stream_loop_v3_0_ctr_AXIlite" *) 
module system_axi_stream_loop_0_0_axi_stream_loop_v3_0_ctr_AXIlite
   (ctr_axilite_wready,
    ctr_axilite_awready,
    ctr_axilite_arready,
    ctr_axilite_bvalid,
    ctr_axilite_rvalid,
    Q,
    ctr_axilite_rdata,
    ctr_axilite_aclk,
    ctr_axilite_aresetn,
    ctr_axilite_awvalid,
    ctr_axilite_wvalid,
    ctr_axilite_bready,
    ctr_axilite_arvalid,
    ctr_axilite_rready,
    ctr_axilite_awaddr,
    ctr_axilite_wdata,
    ctr_axilite_araddr,
    ctr_axilite_wstrb);
  output ctr_axilite_wready;
  output ctr_axilite_awready;
  output ctr_axilite_arready;
  output ctr_axilite_bvalid;
  output ctr_axilite_rvalid;
  output [0:0]Q;
  output [31:0]ctr_axilite_rdata;
  input ctr_axilite_aclk;
  input ctr_axilite_aresetn;
  input ctr_axilite_awvalid;
  input ctr_axilite_wvalid;
  input ctr_axilite_bready;
  input ctr_axilite_arvalid;
  input ctr_axilite_rready;
  input [1:0]ctr_axilite_awaddr;
  input [31:0]ctr_axilite_wdata;
  input [1:0]ctr_axilite_araddr;
  input [3:0]ctr_axilite_wstrb;

  wire [0:0]Q;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire ctr_axilite_aclk;
  wire [1:0]ctr_axilite_araddr;
  wire ctr_axilite_aresetn;
  wire ctr_axilite_arready;
  wire ctr_axilite_arvalid;
  wire [1:0]ctr_axilite_awaddr;
  wire ctr_axilite_awready;
  wire ctr_axilite_awvalid;
  wire ctr_axilite_bready;
  wire ctr_axilite_bvalid;
  wire [31:0]ctr_axilite_rdata;
  wire ctr_axilite_rready;
  wire ctr_axilite_rvalid;
  wire [31:0]ctr_axilite_wdata;
  wire ctr_axilite_wready;
  wire [3:0]ctr_axilite_wstrb;
  wire ctr_axilite_wvalid;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire [31:1]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(ctr_axilite_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(ctr_axilite_awready),
        .I3(ctr_axilite_wvalid),
        .I4(ctr_axilite_bready),
        .I5(ctr_axilite_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(ctr_axilite_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(ctr_axilite_araddr[0]),
        .I1(ctr_axilite_arvalid),
        .I2(ctr_axilite_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(ctr_axilite_araddr[1]),
        .I1(ctr_axilite_arvalid),
        .I2(ctr_axilite_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(ctr_axilite_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(ctr_axilite_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(ctr_axilite_arvalid),
        .I1(ctr_axilite_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(ctr_axilite_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(ctr_axilite_arready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(ctr_axilite_awaddr[0]),
        .I1(ctr_axilite_wvalid),
        .I2(ctr_axilite_awready),
        .I3(aw_en_reg_n_0),
        .I4(ctr_axilite_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(ctr_axilite_awaddr[1]),
        .I1(ctr_axilite_wvalid),
        .I2(ctr_axilite_awready),
        .I3(aw_en_reg_n_0),
        .I4(ctr_axilite_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(ctr_axilite_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(ctr_axilite_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(ctr_axilite_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(ctr_axilite_wvalid),
        .I1(ctr_axilite_awready),
        .I2(aw_en_reg_n_0),
        .I3(ctr_axilite_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(ctr_axilite_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(ctr_axilite_awready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(ctr_axilite_awvalid),
        .I1(ctr_axilite_wvalid),
        .I2(ctr_axilite_awready),
        .I3(ctr_axilite_wready),
        .I4(ctr_axilite_bready),
        .I5(ctr_axilite_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(ctr_axilite_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(ctr_axilite_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(Q),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(ctr_axilite_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(ctr_axilite_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(ctr_axilite_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(ctr_axilite_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(ctr_axilite_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(ctr_axilite_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(ctr_axilite_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(ctr_axilite_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(ctr_axilite_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(ctr_axilite_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(ctr_axilite_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(ctr_axilite_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(ctr_axilite_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(ctr_axilite_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(ctr_axilite_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(ctr_axilite_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(ctr_axilite_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(ctr_axilite_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(ctr_axilite_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(ctr_axilite_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(ctr_axilite_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(ctr_axilite_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(ctr_axilite_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(ctr_axilite_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(ctr_axilite_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(ctr_axilite_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(ctr_axilite_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(ctr_axilite_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(ctr_axilite_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(ctr_axilite_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(ctr_axilite_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(ctr_axilite_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(ctr_axilite_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(ctr_axilite_arready),
        .I1(ctr_axilite_arvalid),
        .I2(ctr_axilite_rvalid),
        .I3(ctr_axilite_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(ctr_axilite_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(ctr_axilite_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(ctr_axilite_awvalid),
        .I1(ctr_axilite_wvalid),
        .I2(ctr_axilite_wready),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(ctr_axilite_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(ctr_axilite_wready),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(ctr_axilite_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(ctr_axilite_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(ctr_axilite_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(ctr_axilite_wready),
        .I1(ctr_axilite_awready),
        .I2(ctr_axilite_awvalid),
        .I3(ctr_axilite_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(ctr_axilite_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[0]),
        .Q(Q),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctr_axilite_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctr_axilite_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctr_axilite_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctr_axilite_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctr_axilite_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctr_axilite_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctr_axilite_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctr_axilite_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctr_axilite_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctr_axilite_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctr_axilite_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(ctr_axilite_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctr_axilite_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(ctr_axilite_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(ctr_axilite_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(ctr_axilite_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(ctr_axilite_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[7]),
        .D(ctr_axilite_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[15]),
        .D(ctr_axilite_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[15]),
        .D(ctr_axilite_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[15]),
        .D(ctr_axilite_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[15]),
        .D(ctr_axilite_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[15]),
        .D(ctr_axilite_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[15]),
        .D(ctr_axilite_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[23]),
        .D(ctr_axilite_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[23]),
        .D(ctr_axilite_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[23]),
        .D(ctr_axilite_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[23]),
        .D(ctr_axilite_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[7]),
        .D(ctr_axilite_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[23]),
        .D(ctr_axilite_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[23]),
        .D(ctr_axilite_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[23]),
        .D(ctr_axilite_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[23]),
        .D(ctr_axilite_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[31]),
        .D(ctr_axilite_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[31]),
        .D(ctr_axilite_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[31]),
        .D(ctr_axilite_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[31]),
        .D(ctr_axilite_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[31]),
        .D(ctr_axilite_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[31]),
        .D(ctr_axilite_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[7]),
        .D(ctr_axilite_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[31]),
        .D(ctr_axilite_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[31]),
        .D(ctr_axilite_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[7]),
        .D(ctr_axilite_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[7]),
        .D(ctr_axilite_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[7]),
        .D(ctr_axilite_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[7]),
        .D(ctr_axilite_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[7]),
        .D(ctr_axilite_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[15]),
        .D(ctr_axilite_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(ctr_axilite_aclk),
        .CE(p_1_in[15]),
        .D(ctr_axilite_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(ctr_axilite_arvalid),
        .I1(ctr_axilite_rvalid),
        .I2(ctr_axilite_arready),
        .O(slv_reg_rden__0));
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
