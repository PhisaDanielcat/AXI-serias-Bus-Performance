`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/17 09:20:44
// Design Name: 
// Module Name: hw_ip_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hw_ip_top
#(
        parameter           C_M_AXI_ADDR_WIDTH      =               32                  ,
        parameter           C_M_AXI_DATA_WIDTH      =               64                  ,
        parameter           C_M_AXI_ID_WIDTH        =               4                   ,
        parameter           C_S_AXI_DATA_WIDTH      =               32                  ,
        parameter           C_S_AXI_ADDR_WIDTH      =               16                   
)
(
        input               wire                                    ACLK                ,
        input               wire                                    ARESETN             ,
        output              wire                                    download_req        ,       
        output              wire                                    upload_req          ,
        output              wire                                    over                ,
        //AR channel
        output              [C_M_AXI_ID_WIDTH-1 : 0]                M_AXI_ARID          ,
        output              [C_M_AXI_ADDR_WIDTH-1 : 0]              M_AXI_ARADDR        ,
        output              [7 : 0]                                 M_AXI_ARLEN         ,
        output              [2 : 0]                                 M_AXI_ARSIZE        ,//=clogb2((`AXI_DATA_WIDTH/8)-1);
        output              [1 : 0]                                 M_AXI_ARBURST       ,//=2'b01;
        output                                                      M_AXI_ARLOCK        ,//=1'b0;
        output              [3 : 0]                                 M_AXI_ARCACHE       ,//=4'b0010;
        output              [2 : 0]                                 M_AXI_ARPROT        ,//=3'h0;
        output              [3 : 0]                                 M_AXI_ARQOS         ,//=4'h0;
        output                                                      M_AXI_ARVALID       ,
        input                                                       M_AXI_ARREADY       ,
        
        //Rd channel
        input               [C_M_AXI_ID_WIDTH-1 : 0]                M_AXI_RID           ,
        input               [C_M_AXI_DATA_WIDTH-1 : 0]              M_AXI_RDATA         ,
        input               [1 : 0]                                 M_AXI_RRESP         ,//ignore
        input                                                       M_AXI_RLAST         ,
        input                                                       M_AXI_RVALID        ,
        output                                                      M_AXI_RREADY        ,
        
        //AW channel
        output              [C_M_AXI_ID_WIDTH-1 : 0]                M_AXI_AWID          ,
        output              [C_M_AXI_ADDR_WIDTH-1 : 0]              M_AXI_AWADDR        ,
        output              [7 : 0]                                 M_AXI_AWLEN         ,
        output              [2 : 0]                                 M_AXI_AWSIZE        ,//=clogb2((`AXI_DATA_WIDTH/8)-1);
        output              [1 : 0]                                 M_AXI_AWBURST       ,//=2'b01;
        output                                                      M_AXI_AWLOCK        ,//1'b0;
        output              [3 : 0]                                 M_AXI_AWCACHE       ,//=4'b0010
        output              [2 : 0]                                 M_AXI_AWPROT        ,//=3'h0;
        output              [3 : 0]                                 M_AXI_AWQOS         ,//=4'h0;
        output                                                      M_AXI_AWVALID       ,
        input                                                       M_AXI_AWREADY       ,
        
        //Wr channel
        output              [C_M_AXI_DATA_WIDTH-1 : 0]              M_AXI_WDATA         ,
        output              [C_M_AXI_DATA_WIDTH/8-1 : 0]            M_AXI_WSTRB         ,
        output                                                      M_AXI_WLAST         ,
        output                                                      M_AXI_WVALID        ,
        input                                                       M_AXI_WREADY        ,
        
        //Resp channel
        input               [C_M_AXI_ID_WIDTH-1 : 0]                M_AXI_BID           ,//ignore
        input               [1 : 0]                                 M_AXI_BRESP         ,//ignore
        input                                                       M_AXI_BVALID        ,//Bvalid and Bread means a a write response.
        output                                                      M_AXI_BREADY        , //Bvalid and Bread means a a write response.

        input                                                       S_AXI_ARVALID       ,
        output                                                      S_AXI_ARREADY       ,
        input               [C_S_AXI_ADDR_WIDTH-1:0]                S_AXI_ARADDR        ,
        input               [2:0]                                   S_AXI_ARPROT        , //ignore
        
        //Rd channel
        output              [C_S_AXI_DATA_WIDTH-1:0]                S_AXI_RDATA         ,
        output              [1:0]                                   S_AXI_RRESP         ,
        output                                                      S_AXI_RVALID        ,
        input                                                       S_AXI_RREADY        ,
        
        //AW channel
        input                                                       S_AXI_AWVALID       ,
        output                                                      S_AXI_AWREADY       ,
        input               [C_S_AXI_ADDR_WIDTH-1:0]                S_AXI_AWADDR        ,
        input               [2:0]                                   S_AXI_AWPROT        , //ignore
        
        //Wr channel
        input               [C_S_AXI_DATA_WIDTH-1:0]                S_AXI_WDATA         ,
        input                                                       S_AXI_WVALID        ,
        output                                                      S_AXI_WREADY        ,
        input               [(C_S_AXI_DATA_WIDTH/8)-1:0]            S_AXI_WSTRB         ,
        
        //Wr Resp
        output              [1:0]                                   S_AXI_BRESP         ,   
        output                                                      S_AXI_BVALID        ,
        input                                                       S_AXI_BREADY        
    );

    
        wire[C_M_AXI_DATA_WIDTH-1:0]                                ip_wdata            ;
        wire[C_M_AXI_ADDR_WIDTH-1:0]                                src_addr            ;
        wire[C_M_AXI_ADDR_WIDTH-1:0]                                dst_addr            ;
        wire[1:0]                                                   input_signal        ;
        wire[15:0]                                                  wr_size             ;
        wire[15:0]                                                  rd_size             ;
        wire                                                        ip_start            ;


dma_config
#(
        .C_S_AXI_DATA_WIDTH                                         (C_S_AXI_DATA_WIDTH),
        .C_S_AXI_ADDR_WIDTH                                         (C_S_AXI_ADDR_WIDTH)    
)
dma_config_inst
(
    .ACLK                                                           (ACLK              ),
    .ARESETN                                                        (ARESETN           ),
    .S_AXI_ARVALID                                                  (S_AXI_ARVALID     ),
    .S_AXI_ARREADY                                                  (S_AXI_ARREADY     ),
    .S_AXI_ARADDR                                                   (S_AXI_ARADDR      ),
    .S_AXI_ARPROT                                                   (S_AXI_ARPROT      ), //ignore
    .S_AXI_RDATA                                                    (S_AXI_RDATA       ),
    .S_AXI_RRESP                                                    (S_AXI_RRESP       ),
    .S_AXI_RVALID                                                   (S_AXI_RVALID      ),
    .S_AXI_RREADY                                                   (S_AXI_RREADY      ),
    .S_AXI_AWVALID                                                  (S_AXI_AWVALID     ),
    .S_AXI_AWREADY                                                  (S_AXI_AWREADY     ),
    .S_AXI_AWADDR                                                   (S_AXI_AWADDR      ),
    .S_AXI_AWPROT                                                   (S_AXI_AWPROT      ), //ignore
    .S_AXI_WDATA                                                    (S_AXI_WDATA       ),
    .S_AXI_WVALID                                                   (S_AXI_WVALID      ),
    .S_AXI_WREADY                                                   (S_AXI_WREADY      ),
    .S_AXI_WSTRB                                                    (S_AXI_WSTRB       ),
    .S_AXI_BRESP                                                    (S_AXI_BRESP       ),   
    .S_AXI_BVALID                                                   (S_AXI_BVALID      ),
    .S_AXI_BREADY                                                   (S_AXI_BREADY      ),
    .ip_signal                                                      ({upload_req, download_req}),
    .ip_start                                                       (ip_start          ),
    .input_signal                                                   (input_signal      ),
    .src_addr                                                       (src_addr          ),
    .dst_addr                                                       (dst_addr          ),
    .rd_size                                                        (rd_size           ),
    .wr_size                                                        (wr_size           )
    );
    
dma
#(
        .C_M_AXI_ADDR_WIDTH                                         (C_M_AXI_ADDR_WIDTH),
        .C_M_AXI_DATA_WIDTH                                         (C_M_AXI_DATA_WIDTH),
        .C_M_AXI_ID_WIDTH                                           (C_M_AXI_ID_WIDTH  )
)
dma_inst
(
        .ACLK                                                       (ACLK              ),
        .ARESETN                                                    (ARESETN           ),
        .ip_wdata                                                   (ip_wdata          ),
        .src_addr                                                   (src_addr          ),
        .dst_addr                                                   (dst_addr          ),
        .input_signal                                               (input_signal      ),
        .rd_size                                                    (rd_size           ),
        .wr_size                                                    (wr_size           ),
        .M_AXI_ARID                                                 (M_AXI_ARID        ),
        .M_AXI_ARADDR                                               (M_AXI_ARADDR      ),
        .M_AXI_ARLEN                                                (M_AXI_ARLEN       ),
        .M_AXI_ARSIZE                                               (M_AXI_ARSIZE      ),//=clogb2((`AXI_DATA_WIDTH/8)-1);
        .M_AXI_ARBURST                                              (M_AXI_ARBURST     ),//=2'b01;
        .M_AXI_ARLOCK                                               (M_AXI_ARLOCK      ),//=1'b0;
        .M_AXI_ARCACHE                                              (M_AXI_ARCACHE     ),//=4'b0010;
        .M_AXI_ARPROT                                               (M_AXI_ARPROT      ),//=3'h0;
        .M_AXI_ARQOS                                                (M_AXI_ARQOS       ),//=4'h0;
        .M_AXI_ARVALID                                              (M_AXI_ARVALID     ),
        .M_AXI_ARREADY                                              (M_AXI_ARREADY     ),
        .M_AXI_RID                                                  (M_AXI_RID         ),
        .M_AXI_RDATA                                                (M_AXI_RDATA       ),
        .M_AXI_RRESP                                                (M_AXI_RRESP       ),//ignore
        .M_AXI_RLAST                                                (M_AXI_RLAST       ),
        .M_AXI_RVALID                                               (M_AXI_RVALID      ),
        .M_AXI_RREADY                                               (M_AXI_RREADY      ),
        .M_AXI_AWID                                                 (M_AXI_AWID        ),
        .M_AXI_AWADDR                                               (M_AXI_AWADDR      ),
        .M_AXI_AWLEN                                                (M_AXI_AWLEN       ),
        .M_AXI_AWSIZE                                               (M_AXI_AWSIZE      ),//=clogb2((`AXI_DATA_WIDTH/8)-1);
        .M_AXI_AWBURST                                              (M_AXI_AWBURST     ),//=2'b01;
        .M_AXI_AWLOCK                                               (M_AXI_AWLOCK      ),//1'b0;
        .M_AXI_AWCACHE                                              (M_AXI_AWCACHE     ),//=4'b0010
        .M_AXI_AWPROT                                               (M_AXI_AWPROT      ),//=3'h0;
        .M_AXI_AWQOS                                                (M_AXI_AWQOS       ),//=4'h0;
        .M_AXI_AWVALID                                              (M_AXI_AWVALID     ),
        .M_AXI_AWREADY                                              (M_AXI_AWREADY     ),
        .M_AXI_WDATA                                                (M_AXI_WDATA       ),
        .M_AXI_WSTRB                                                (M_AXI_WSTRB       ),
        .M_AXI_WLAST                                                (M_AXI_WLAST       ),
        .M_AXI_WVALID                                               (M_AXI_WVALID      ),
        .M_AXI_WREADY                                               (M_AXI_WREADY      ),
        .M_AXI_BID                                                  (M_AXI_BID         ),//ignore
        .M_AXI_BRESP                                                (M_AXI_BRESP       ),//ignore
        .M_AXI_BVALID                                               (M_AXI_BVALID      ),//Bvalid and Bread means a a write response.
        .M_AXI_BREADY                                               (M_AXI_BREADY      ) //Bvalid and Bread means a a write response.
    );



    ip_top u1(
        .clk                                                        (ACLK              ),
        .rst_n                                                      (ARESETN           ),
        .ip_start                                                   (ip_start          ),
        .over                                                       (over              ),
        .M_AXI_WVALID                                               (M_AXI_WVALID      ),
        .M_AXI_WREADY                                               (M_AXI_WREADY      ),
        .M_AXI_RVALID                                               (M_AXI_RVALID      ),
        .M_AXI_RREADY                                               (M_AXI_RREADY      ),
        .M_AXI_RLAST                                                (M_AXI_RLAST       ),
        .M_AXI_RDATA                                                (M_AXI_RDATA       ),
        .download_req                                               (download_req      ),
        .upload_req                                                 (upload_req        ),
        .rd_data                                                    (ip_wdata          )
    );
    
endmodule
