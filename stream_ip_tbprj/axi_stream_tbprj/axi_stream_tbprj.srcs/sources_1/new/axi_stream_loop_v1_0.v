
`timescale 1 ns / 1 ps

	module axi_stream_loop_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S_AXI
		parameter integer C_S_AXI_TDATA_WIDTH	= 32,

		// Parameters of Axi Master Bus Interface M_AXI
		parameter integer C_M_AXI_TDATA_WIDTH	= 32,
		parameter integer C_M_AXI_START_COUNT	= 32
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S_AXI
		input wire  s_axi_aclk,
		input wire  s_axi_aresetn,
		output wire  s_axi_tready,
		input wire [C_S_AXI_TDATA_WIDTH-1 : 0] s_axi_tdata,
		input wire [(C_S_AXI_TDATA_WIDTH/8)-1 : 0] s_axi_tstrb,
		input wire  s_axi_tlast,
		input wire  s_axi_tvalid,

		// Ports of Axi Master Bus Interface M_AXI
		input wire  m_axi_aclk,
		input wire  m_axi_aresetn,
		output wire  m_axi_tvalid,
		output wire [C_M_AXI_TDATA_WIDTH-1 : 0] m_axi_tdata,
		output wire [(C_M_AXI_TDATA_WIDTH/8)-1 : 0] m_axi_tstrb,
		output wire  m_axi_tlast,
		input wire  m_axi_tready,
		
		input start
	);
	
	localparam bit_num=3;
	wire [C_S_AXI_TDATA_WIDTH-1 : 0] inner_data;
	wire [bit_num-1:0]write_pointer;
	wire [bit_num-1:0]read_pointer;
	wire inner_data_valid;
// Instantiation of Axi Bus Interface S_AXI
	axi_stream_loop_v1_0_S_AXI # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S_AXI_TDATA_WIDTH)
	) axi_stream_loop_v1_0_S_AXI_inst (
		.S_AXIS_ACLK(s_axi_aclk),
		.S_AXIS_ARESETN(s_axi_aresetn),
		.S_AXIS_TREADY(s_axi_tready),//output
		.S_AXIS_TDATA(s_axi_tdata),//input
		.S_AXIS_TSTRB(s_axi_tstrb),//input
		.S_AXIS_TLAST(s_axi_tlast),//input
		.S_AXIS_TVALID(s_axi_tvalid),//input
		.inner_data(inner_data),
		.write_pointer(write_pointer),
		.inner_data_valid(inner_data_valid)
	);
	
	
    assign read_pointer=write_pointer;
// Instantiation of Axi Bus Interface M_AXI
	axi_stream_loop_v1_0_M_AXI # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M_AXI_TDATA_WIDTH),
		.C_M_START_COUNT(C_M_AXI_START_COUNT)
	) axi_stream_loop_v1_0_M_AXI_inst (
		.M_AXIS_ACLK(m_axi_aclk),
		.M_AXIS_ARESETN(m_axi_aresetn),
		.M_AXIS_TVALID(m_axi_tvalid),//output
		.M_AXIS_TDATA(m_axi_tdata),//output
		.M_AXIS_TSTRB(m_axi_tstrb),//output
		.M_AXIS_TLAST(m_axi_tlast),//output
		.M_AXIS_TREADY(inner_data_valid),//input
		.inner_data(inner_data+10),
		.read_pointer(read_pointer),
		.start(start)
//		.inner_data_valid(inner_data_valid)
	);

	// Add user logic here
//    assign m_axi_tvalid = s_axi_tvalid;
//    assign m_axi_tdata = s_axi_tdata;
//    assign m_axi_tstrb = s_axi_tstrb;
//    assign m_axi_tlast = s_axi_tlast;
//    assign m_axi_tready = s_axi_tready;
	// User logic ends

	endmodule
