
`timescale 1 ns / 1 ps

	module axi_stream_loop_v3_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface ctr_AXIlite
		parameter integer C_ctr_AXIlite_DATA_WIDTH	= 32,
		parameter integer C_ctr_AXIlite_ADDR_WIDTH	= 4,

		// Parameters of Axi Slave Bus Interface S_AXIS
		parameter integer C_S_AXIS_TDATA_WIDTH	= 32,

		// Parameters of Axi Master Bus Interface M_AXIS
		parameter integer C_M_AXIS_TDATA_WIDTH	= 32,
		parameter integer C_M_AXIS_START_COUNT	= 32
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface ctr_AXIlite
		input wire  ctr_axilite_aclk,
		input wire  ctr_axilite_aresetn,
		input wire [C_ctr_AXIlite_ADDR_WIDTH-1 : 0] ctr_axilite_awaddr,
		input wire [2 : 0] ctr_axilite_awprot,
		input wire  ctr_axilite_awvalid,
		output wire  ctr_axilite_awready,
		input wire [C_ctr_AXIlite_DATA_WIDTH-1 : 0] ctr_axilite_wdata,
		input wire [(C_ctr_AXIlite_DATA_WIDTH/8)-1 : 0] ctr_axilite_wstrb,
		input wire  ctr_axilite_wvalid,
		output wire  ctr_axilite_wready,
		output wire [1 : 0] ctr_axilite_bresp,
		output wire  ctr_axilite_bvalid,
		input wire  ctr_axilite_bready,
		input wire [C_ctr_AXIlite_ADDR_WIDTH-1 : 0] ctr_axilite_araddr,
		input wire [2 : 0] ctr_axilite_arprot,
		input wire  ctr_axilite_arvalid,
		output wire  ctr_axilite_arready,
		output wire [C_ctr_AXIlite_DATA_WIDTH-1 : 0] ctr_axilite_rdata,
		output wire [1 : 0] ctr_axilite_rresp,
		output wire  ctr_axilite_rvalid,
		input wire  ctr_axilite_rready,

		// Ports of Axi Slave Bus Interface S_AXIS
		input wire  s_axis_aclk,
		input wire  s_axis_aresetn,
		output wire  s_axis_tready,
		input wire [C_S_AXIS_TDATA_WIDTH-1 : 0] s_axis_tdata,
		input wire [(C_S_AXIS_TDATA_WIDTH/8)-1 : 0] s_axis_tstrb,
		input wire  s_axis_tlast,
		input wire  s_axis_tvalid,

		// Ports of Axi Master Bus Interface M_AXIS
		input wire  m_axis_aclk,
		input wire  m_axis_aresetn,
		output wire  m_axis_tvalid,
		output wire [C_M_AXIS_TDATA_WIDTH-1 : 0] m_axis_tdata,
		output wire [(C_M_AXIS_TDATA_WIDTH/8)-1 : 0] m_axis_tstrb,
		output wire  m_axis_tlast,
		input wire  m_axis_tready
	);
	wire start;
// Instantiation of Axi Bus Interface ctr_AXIlite
	axi_stream_loop_v3_0_ctr_AXIlite # ( 
		.C_S_AXI_DATA_WIDTH(C_ctr_AXIlite_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_ctr_AXIlite_ADDR_WIDTH)
	) axi_stream_loop_v3_0_ctr_AXIlite_inst (
		.S_AXI_ACLK(ctr_axilite_aclk),
		.S_AXI_ARESETN(ctr_axilite_aresetn),
		.S_AXI_AWADDR(ctr_axilite_awaddr),
		.S_AXI_AWPROT(ctr_axilite_awprot),
		.S_AXI_AWVALID(ctr_axilite_awvalid),
		.S_AXI_AWREADY(ctr_axilite_awready),
		.S_AXI_WDATA(ctr_axilite_wdata),
		.S_AXI_WSTRB(ctr_axilite_wstrb),
		.S_AXI_WVALID(ctr_axilite_wvalid),
		.S_AXI_WREADY(ctr_axilite_wready),
		.S_AXI_BRESP(ctr_axilite_bresp),
		.S_AXI_BVALID(ctr_axilite_bvalid),
		.S_AXI_BREADY(ctr_axilite_bready),
		.S_AXI_ARADDR(ctr_axilite_araddr),
		.S_AXI_ARPROT(ctr_axilite_arprot),
		.S_AXI_ARVALID(ctr_axilite_arvalid),
		.S_AXI_ARREADY(ctr_axilite_arready),
		.S_AXI_RDATA(ctr_axilite_rdata),
		.S_AXI_RRESP(ctr_axilite_rresp),
		.S_AXI_RVALID(ctr_axilite_rvalid),
		.S_AXI_RREADY(ctr_axilite_rready),
		.start(start)
	);


	localparam bit_num=3;
	wire [C_S_AXIS_TDATA_WIDTH-1 : 0] inner_data;
	wire [bit_num-1:0]write_pointer;
	wire [bit_num-1:0]read_pointer;
	wire inner_data_valid;
// Instantiation of Axi Bus Interface S_AXIS
	axi_stream_loop_v3_0_S_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S_AXIS_TDATA_WIDTH)
	) axi_stream_loop_v3_0_S_AXIS_inst (
		.S_AXIS_ACLK(s_axis_aclk),
		.S_AXIS_ARESETN(s_axis_aresetn),
		.S_AXIS_TREADY(s_axis_tready),
		.S_AXIS_TDATA(s_axis_tdata),
		.S_AXIS_TSTRB(s_axis_tstrb),
		.S_AXIS_TLAST(s_axis_tlast),
		.S_AXIS_TVALID(s_axis_tvalid),
		.inner_data(inner_data),
		.write_pointer(write_pointer),
		.inner_data_valid(inner_data_valid)
	);

// Instantiation of Axi Bus Interface M_AXIS
	axi_stream_loop_v3_0_M_AXIS # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M_AXIS_TDATA_WIDTH),
		.C_M_START_COUNT(C_M_AXIS_START_COUNT)
	) axi_stream_loop_v3_0_M_AXIS_inst (
		.M_AXIS_ACLK(m_axis_aclk),
		.M_AXIS_ARESETN(m_axis_aresetn),
		.M_AXIS_TVALID(m_axis_tvalid),
		.M_AXIS_TDATA(m_axis_tdata),
		.M_AXIS_TSTRB(m_axis_tstrb),
		.M_AXIS_TLAST(m_axis_tlast),
		.M_AXIS_TREADY(m_axis_tready),
		.inner_data(inner_data+10),
		.read_pointer(read_pointer),
		.start(start)
//		.inner_data_valid(inner_data_valid)
	);

	// Add user logic here

	// User logic ends

	endmodule
