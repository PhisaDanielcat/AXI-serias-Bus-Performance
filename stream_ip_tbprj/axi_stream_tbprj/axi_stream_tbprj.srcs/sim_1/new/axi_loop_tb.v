`timescale 1ns / 1ps


module axi_loop_tb();

		parameter integer C_S_AXI_TDATA_WIDTH	= 32;
		// Parameters of Axi Master Bus Interface M_AXI
		parameter integer C_M_AXI_TDATA_WIDTH	= 32;
		parameter integer C_M_AXI_START_COUNT	= 32;

		reg  s_axi_aclk;
		reg  s_axi_aresetn;
		wire  s_axi_tready;
		reg [C_S_AXI_TDATA_WIDTH-1 : 0] s_axi_tdata;
		reg [(C_S_AXI_TDATA_WIDTH/8)-1 : 0] s_axi_tstrb;
		reg  s_axi_tlast;
		reg  s_axi_tvalid;

		// Ports of Axi Master Bus Interface M_AXI
		wire  m_axi_aclk;
		wire  m_axi_aresetn;
		wire  m_axi_tvalid;
		wire [C_M_AXI_TDATA_WIDTH-1 : 0] m_axi_tdata;
		wire [(C_M_AXI_TDATA_WIDTH/8)-1 : 0] m_axi_tstrb;
		wire  m_axi_tlast;
		wire  m_axi_tready;
        reg start;
axi_stream_loop_v1_0 dut
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S_AXI
		. s_axi_aclk(s_axi_aclk),
		. s_axi_aresetn(s_axi_aresetn),
		.  s_axi_tready(s_axi_tready),
		.s_axi_tdata(s_axi_tdata),
		.s_axi_tstrb(s_axi_tstrb),
		. s_axi_tlast(s_axi_tlast),
		. s_axi_tvalid(s_axi_tvalid),

		// Ports of Axi Master Bus Interface M_AXI
		.m_axi_aclk(m_axi_aclk),
		.m_axi_aresetn(m_axi_aresetn),
		.m_axi_tvalid(m_axi_tvalid),
		.m_axi_tdata(m_axi_tdata),
		.m_axi_tstrb(m_axi_tstrb),
		.m_axi_tlast(m_axi_tlast),
		.m_axi_tready(m_axi_tready),
		.start(start)
	);

	initial s_axi_aclk=1;
	always#10 s_axi_aclk=~s_axi_aclk;
	
	assign m_axi_aclk = s_axi_aclk;
	assign m_axi_aresetn = s_axi_aresetn;
	assign m_axi_tready = 1;
	initial begin
	s_axi_aresetn=0;
	s_axi_tdata=0;
	s_axi_tstrb=1;
	s_axi_tlast=0;
	s_axi_tvalid=0;
	#30;
	s_axi_aresetn=1;
	#20;
	s_axi_tvalid=1;
	start=1;
	repeat(7)begin
        #20;
        s_axi_tdata=s_axi_tdata+1;
	end
	s_axi_tlast=1;
	#20;
	s_axi_tlast=0;
	s_axi_tvalid=0;
	s_axi_tdata=0;
	#40;
	$stop;
	
	end

endmodule
