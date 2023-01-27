`timescale 1ns / 1ps


module axi_slave_tb();

parameter C_S_AXIS_TDATA_WIDTH	= 32;

		reg  S_AXIS_ACLK;
		// AXI4Stream sink: Reset
		reg  S_AXIS_ARESETN;
		// Ready to accept data in
		wire  S_AXIS_TREADY;
		// Data in
		reg [C_S_AXIS_TDATA_WIDTH-1 : 0] S_AXIS_TDATA;
		// Byte qualifier
		reg [(C_S_AXIS_TDATA_WIDTH/8)-1 : 0] S_AXIS_TSTRB;
		// Indicates boundary of last packet
		reg  S_AXIS_TLAST;
		// Data is in valid
		reg  S_AXIS_TVALID;

	initial S_AXIS_ACLK=0;
	always#10 S_AXIS_ACLK=~S_AXIS_ACLK;
	
	initial begin
	S_AXIS_ARESETN=0;
	S_AXIS_TDATA=0;
	S_AXIS_TSTRB=0;
	S_AXIS_TLAST=0;
	S_AXIS_TVALID=0;
	#30;
	S_AXIS_ARESETN=1;
	#20;
	S_AXIS_TVALID=1;
	#20;
	repeat(8)begin
        #20;
        S_AXIS_TDATA=S_AXIS_TDATA+1;
	end
	S_AXIS_TLAST=1;
	S_AXIS_TDATA=15;
	#20;
	S_AXIS_TLAST=0;
	S_AXIS_TVALID=0;
	S_AXIS_TDATA=0;
	#40;
	$stop;
	
	end
axi_stream_loop_v1_0_S_AXI dut
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line

		// AXI4Stream sink: Clock
		.S_AXIS_ACLK(S_AXIS_ACLK),
		// AXI4Stream sink: Reset
		.S_AXIS_ARESETN(S_AXIS_ARESETN),
		// Ready to accept data in
		.S_AXIS_TREADY(S_AXIS_TREADY),
		// Data in
		.S_AXIS_TDATA(S_AXIS_TDATA),
		// Byte qualifier
		.S_AXIS_TSTRB(S_AXIS_TSTRB),
		// Indicates boundary of last packet
		.S_AXIS_TLAST(S_AXIS_TLAST),
		// Data is in valid
		.S_AXIS_TVALID(S_AXIS_TVALID)
	);
endmodule
