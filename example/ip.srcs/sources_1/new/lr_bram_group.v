`timescale 1ns / 1ps

module lr_bram_group(
        input               wire                                clk                         ,
        input               wire                                rst_n                       ,
        input               wire[ 6:0]                          lr_bram_wr_addr0            ,
        input               wire[ 6:0]                          lr_bram_wr_addr1            ,
        input               wire[ 6:0]                          lr_bram_wr_addr2            ,
        input               wire[ 7:0]                          lr_bram_wr_en_B             ,
        input               wire[ 7:0]                          lr_bram_wr_en_G             ,
        input               wire[ 7:0]                          lr_bram_wr_en_R             ,
        input               wire[ 6:0]                          lr_bram_rd_addr             ,
        input               wire[ 1:0]                          lr_bram_rd_en               ,
        input               wire[63:0]                          M_AXI_RDATA                 ,
        output              wire[ 7:0]                          lr_B0                       ,
        output              wire[ 7:0]                          lr_G0                       ,
        output              wire[ 7:0]                          lr_R0                       ,
        output              wire[ 7:0]                          lr_B1                       ,
        output              wire[ 7:0]                          lr_G1                       ,
        output              wire[ 7:0]                          lr_R1                       ,
        output              wire[ 7:0]                          lr_B2                       ,
        output              wire[ 7:0]                          lr_G2                       ,
        output              wire[ 7:0]                          lr_R2                       ,
        output              wire[ 7:0]                          lr_B3                       ,
        output              wire[ 7:0]                          lr_G3                       ,
        output              wire[ 7:0]                          lr_R3                       ,
        output              wire[ 7:0]                          lr_B4                       ,
        output              wire[ 7:0]                          lr_G4                       ,
        output              wire[ 7:0]                          lr_R4                       ,
        output              wire[ 7:0]                          lr_B5                       ,
        output              wire[ 7:0]                          lr_G5                       ,
        output              wire[ 7:0]                          lr_R5                       ,
        output              wire[ 7:0]                          lr_B6                       ,
        output              wire[ 7:0]                          lr_G6                       ,
        output              wire[ 7:0]                          lr_R6                       ,
        output              wire[ 7:0]                          lr_B7                       ,
        output              wire[ 7:0]                          lr_G7                       ,
        output              wire[ 7:0]                          lr_R7                       
    );
    
    lr_bram B0(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_B[0]        ),
        .wr_addr                                                (lr_bram_wr_addr0          ),
        .din                                                    (M_AXI_RDATA[7:0]          ),
        .rd_en                                                  (lr_bram_rd_en[0]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_B0                     )
    );
    lr_bram B1(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_B[1]        ),
        .wr_addr                                                (lr_bram_wr_addr0          ),
        .din                                                    (M_AXI_RDATA[31:24]        ),
        .rd_en                                                  (lr_bram_rd_en[0]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_B1                     )
    );
    lr_bram B2(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_B[2]        ),
        .wr_addr                                                (lr_bram_wr_addr0          ),
        .din                                                    (M_AXI_RDATA[55:48]        ),
        .rd_en                                                  (lr_bram_rd_en[0]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_B2                     )
    );
    lr_bram B3(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_B[3]        ),
        .wr_addr                                                (lr_bram_wr_addr1          ),
        .din                                                    (M_AXI_RDATA[15:8]         ),
        .rd_en                                                  (lr_bram_rd_en[0]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_B3                     )
    );
    lr_bram B4(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_B[4]        ),
        .wr_addr                                                (lr_bram_wr_addr1          ),
        .din                                                    (M_AXI_RDATA[39:32]        ),
        .rd_en                                                  (lr_bram_rd_en[1]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_B4                     )
    );
    lr_bram B5(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_B[5]        ),
        .wr_addr                                                (lr_bram_wr_addr1          ),
        .din                                                    (M_AXI_RDATA[63:56]        ),
        .rd_en                                                  (lr_bram_rd_en[1]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_B5                     )
    );
    lr_bram B6(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_B[6]        ),
        .wr_addr                                                (lr_bram_wr_addr2          ),
        .din                                                    (M_AXI_RDATA[23:16]        ),
        .rd_en                                                  (lr_bram_rd_en[1]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_B6                     )
    );
    lr_bram B7(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_B[7]        ),
        .wr_addr                                                (lr_bram_wr_addr2          ),
        .din                                                    (M_AXI_RDATA[47:40]        ),
        .rd_en                                                  (lr_bram_rd_en[1]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_B7                     )
    );


    
    lr_bram G0(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_G[0]        ),
        .wr_addr                                                (lr_bram_wr_addr0          ),
        .din                                                    (M_AXI_RDATA[15:8]         ),
        .rd_en                                                  (lr_bram_rd_en[0]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_G0                     )
    );
    lr_bram G1(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_G[1]        ),
        .wr_addr                                                (lr_bram_wr_addr0          ),
        .din                                                    (M_AXI_RDATA[39:32]        ),
        .rd_en                                                  (lr_bram_rd_en[0]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_G1                     )
    );
    lr_bram G2(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_G[2]        ),
        .wr_addr                                                (lr_bram_wr_addr0          ),
        .din                                                    (M_AXI_RDATA[63:56]        ),
        .rd_en                                                  (lr_bram_rd_en[0]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_G2                     )
    );
    lr_bram G3(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_G[3]        ),
        .wr_addr                                                (lr_bram_wr_addr1          ),
        .din                                                    (M_AXI_RDATA[23:16]        ),
        .rd_en                                                  (lr_bram_rd_en[0]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_G3                     )
    );
    lr_bram G4(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_G[4]        ),
        .wr_addr                                                (lr_bram_wr_addr1          ),
        .din                                                    (M_AXI_RDATA[47:40]        ),
        .rd_en                                                  (lr_bram_rd_en[1]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_G4                     )
    );
    lr_bram G5(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_G[5]        ),
        .wr_addr                                                (lr_bram_wr_addr2          ),
        .din                                                    (M_AXI_RDATA[7:0]          ),
        .rd_en                                                  (lr_bram_rd_en[1]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_G5                     )
    );
    lr_bram G6(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_G[6]        ),
        .wr_addr                                                (lr_bram_wr_addr2          ),
        .din                                                    (M_AXI_RDATA[31:24]         ),
        .rd_en                                                  (lr_bram_rd_en[1]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_G6                     )
    );
    lr_bram G7(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_G[7]        ),
        .wr_addr                                                (lr_bram_wr_addr2          ),
        .din                                                    (M_AXI_RDATA[55:48]        ),
        .rd_en                                                  (lr_bram_rd_en[1]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_G7                     )
    );


    
    lr_bram R0(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_R[0]        ),
        .wr_addr                                                (lr_bram_wr_addr0          ),
        .din                                                    (M_AXI_RDATA[23:16]        ),
        .rd_en                                                  (lr_bram_rd_en[0]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_R0                     )
    );
    lr_bram R1(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_R[1]        ),
        .wr_addr                                                (lr_bram_wr_addr0          ),
        .din                                                    (M_AXI_RDATA[47:40]        ),
        .rd_en                                                  (lr_bram_rd_en[0]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_R1                     )
    );
    lr_bram R2(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_R[2]        ),
        .wr_addr                                                (lr_bram_wr_addr1          ),
        .din                                                    (M_AXI_RDATA[7:0]          ),
        .rd_en                                                  (lr_bram_rd_en[0]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_R2                     )
    );
    lr_bram R3(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_R[3]        ),
        .wr_addr                                                (lr_bram_wr_addr1          ),
        .din                                                    (M_AXI_RDATA[31:24]        ),
        .rd_en                                                  (lr_bram_rd_en[0]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_R3                     )
    );
    lr_bram R4(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_R[4]        ),
        .wr_addr                                                (lr_bram_wr_addr1          ),
        .din                                                    (M_AXI_RDATA[55:48]        ),
        .rd_en                                                  (lr_bram_rd_en[1]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_R4                     )
    );
    lr_bram R5(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_R[5]        ),
        .wr_addr                                                (lr_bram_wr_addr2          ),
        .din                                                    (M_AXI_RDATA[15:8]         ),
        .rd_en                                                  (lr_bram_rd_en[1]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_R5                     )
    );
    lr_bram R6(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_R[6]        ),
        .wr_addr                                                (lr_bram_wr_addr2          ),
        .din                                                    (M_AXI_RDATA[39:32]        ),
        .rd_en                                                  (lr_bram_rd_en[1]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_R6                     )
    );
    lr_bram R7(
        .clk                                                    (clk                       ),
        .wr_en                                                  (lr_bram_wr_en_R[7]        ),
        .wr_addr                                                (lr_bram_wr_addr2          ),
        .din                                                    (M_AXI_RDATA[63:56]        ),
        .rd_en                                                  (lr_bram_rd_en[1]          ),
        .rd_addr                                                (lr_bram_rd_addr           ),
        .dout                                                   (lr_R7                     )
    );

endmodule
