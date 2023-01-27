`timescale 1ns / 1ps

module ip_top(
        input               wire                                clk                         ,
        input               wire                                rst_n                       ,
        input               wire                                ip_start                    ,
        input               wire                                M_AXI_WVALID                ,
        input               wire                                M_AXI_WREADY                ,
        input               wire                                M_AXI_RVALID                ,
        input               wire                                M_AXI_RREADY                ,
        input               wire[63:0]                          M_AXI_RDATA                 ,
        input               wire                                M_AXI_RLAST                 ,
        output              wire                                download_req                ,
        output              wire                                upload_req                  ,
        output              wire[63:0]                          rd_data                     ,
        output              wire                                over                        
    );


wire[ 7:0]                              add_outB_0_0_rp             ;
wire[ 7:0]                              add_outB_0_1_rp             ;
wire[ 7:0]                              add_outB_0_2_rp             ;
wire[ 7:0]                              add_outB_0_3_rp             ;
wire[ 7:0]                              add_outB_1_0_rp             ;
wire[ 7:0]                              add_outB_1_1_rp             ;
wire[ 7:0]                              add_outB_1_2_rp             ;
wire[ 7:0]                              add_outB_1_3_rp             ;
wire[ 7:0]                              add_outB_2_0_rp             ;
wire[ 7:0]                              add_outB_2_1_rp             ;
wire[ 7:0]                              add_outB_2_2_rp             ;
wire[ 7:0]                              add_outB_2_3_rp             ;
wire[ 7:0]                              add_outB_3_0_rp             ;
wire[ 7:0]                              add_outB_3_1_rp             ;
wire[ 7:0]                              add_outB_3_2_rp             ;
wire[ 7:0]                              add_outB_3_3_rp             ;
wire[ 7:0]                              add_outG_0_0_rp             ;
wire[ 7:0]                              add_outG_0_1_rp             ;
wire[ 7:0]                              add_outG_0_2_rp             ;
wire[ 7:0]                              add_outG_0_3_rp             ;
wire[ 7:0]                              add_outG_1_0_rp             ;
wire[ 7:0]                              add_outG_1_1_rp             ;
wire[ 7:0]                              add_outG_1_2_rp             ;
wire[ 7:0]                              add_outG_1_3_rp             ;
wire[ 7:0]                              add_outG_2_0_rp             ;
wire[ 7:0]                              add_outG_2_1_rp             ;
wire[ 7:0]                              add_outG_2_2_rp             ;
wire[ 7:0]                              add_outG_2_3_rp             ;
wire[ 7:0]                              add_outG_3_0_rp             ;
wire[ 7:0]                              add_outG_3_1_rp             ;
wire[ 7:0]                              add_outG_3_2_rp             ;
wire[ 7:0]                              add_outG_3_3_rp             ;
wire[ 7:0]                              add_outR_0_0_rp             ;
wire[ 7:0]                              add_outR_0_1_rp             ;
wire[ 7:0]                              add_outR_0_2_rp             ;
wire[ 7:0]                              add_outR_0_3_rp             ;
wire[ 7:0]                              add_outR_1_0_rp             ;
wire[ 7:0]                              add_outR_1_1_rp             ;
wire[ 7:0]                              add_outR_1_2_rp             ;
wire[ 7:0]                              add_outR_1_3_rp             ;
wire[ 7:0]                              add_outR_2_0_rp             ;
wire[ 7:0]                              add_outR_2_1_rp             ;
wire[ 7:0]                              add_outR_2_2_rp             ;
wire[ 7:0]                              add_outR_2_3_rp             ;
wire[ 7:0]                              add_outR_3_0_rp             ;
wire[ 7:0]                              add_outR_3_1_rp             ;
wire[ 7:0]                              add_outR_3_2_rp             ;
wire[ 7:0]                              add_outR_3_3_rp             ;
wire                                    upsample_vld                ;
wire                                    wr_ctrl_vld                 ;
wire                                    finish                      ;

wire[31:0]                              sp_dataB0                   ;
wire[31:0]                              sp_dataB1                   ;
wire[31:0]                              sp_dataB2                   ;
wire[31:0]                              sp_dataB3                   ;
wire[31:0]                              sp_dataG0                   ;
wire[31:0]                              sp_dataG1                   ;
wire[31:0]                              sp_dataG2                   ;
wire[31:0]                              sp_dataG3                   ;
wire[31:0]                              sp_dataR0                   ;
wire[31:0]                              sp_dataR1                   ;
wire[31:0]                              sp_dataR2                   ;
wire[31:0]                              sp_dataR3                   ;
wire[31:0]                              sp_dataB0_r                 ;
wire[31:0]                              sp_dataB1_r                 ;
wire[31:0]                              sp_dataB2_r                 ;
wire[31:0]                              sp_dataB3_r                 ;
wire[31:0]                              sp_dataG0_r                 ;
wire[31:0]                              sp_dataG1_r                 ;
wire[31:0]                              sp_dataG2_r                 ;
wire[31:0]                              sp_dataG3_r                 ;
wire[31:0]                              sp_dataR0_r                 ;
wire[31:0]                              sp_dataR1_r                 ;
wire[31:0]                              sp_dataR2_r                 ;
wire[31:0]                              sp_dataR3_r                 ;
wire                                    wr_ctrl                     ;
wire                                    sp_vld                      ;
wire                                    complete                    ;

wire                                    wr_en                       ;
wire[10:0]                              wr_addr                     ;
wire[63:0]                              wr_data0                    ;
wire[63:0]                              wr_data1                    ;
wire[63:0]                              wr_data2                    ;
wire[63:0]                              wr_data3                    ;
wire[10:0]                              rd_addr                     ;
wire[63:0]                              rd_data0                    ;
wire[63:0]                              rd_data1                    ;
wire[63:0]                              rd_data2                    ;
wire[63:0]                              rd_data3                    ;

    
upsample upsample_inst
(
        .clk                            (clk                        ),
        .rst_n                          (rst_n                      ),
        .ip_start                       (ip_start                   ),
        .complete                       (complete                   ),
        .finish                         (finish                     ),
        .M_AXI_RVALID                   (M_AXI_RVALID               ),
        .M_AXI_RREADY                   (M_AXI_RREADY               ),
        .M_AXI_RDATA                    (M_AXI_RDATA                ),
        .M_AXI_RLAST                    (M_AXI_RLAST                ),
        .download_req                   (download_req               ),
        .over                           (over                       ),
        .add_outB_0_0_rp                (add_outB_0_0_rp            ),
        .add_outB_0_1_rp                (add_outB_0_1_rp            ),
        .add_outB_0_2_rp                (add_outB_0_2_rp            ),
        .add_outB_0_3_rp                (add_outB_0_3_rp            ),
        .add_outB_1_0_rp                (add_outB_1_0_rp            ),
        .add_outB_1_1_rp                (add_outB_1_1_rp            ),
        .add_outB_1_2_rp                (add_outB_1_2_rp            ),
        .add_outB_1_3_rp                (add_outB_1_3_rp            ),
        .add_outB_2_0_rp                (add_outB_2_0_rp            ),
        .add_outB_2_1_rp                (add_outB_2_1_rp            ),
        .add_outB_2_2_rp                (add_outB_2_2_rp            ),
        .add_outB_2_3_rp                (add_outB_2_3_rp            ),
        .add_outB_3_0_rp                (add_outB_3_0_rp            ),
        .add_outB_3_1_rp                (add_outB_3_1_rp            ),
        .add_outB_3_2_rp                (add_outB_3_2_rp            ),
        .add_outB_3_3_rp                (add_outB_3_3_rp            ),
        .add_outG_0_0_rp                (add_outG_0_0_rp            ),
        .add_outG_0_1_rp                (add_outG_0_1_rp            ),
        .add_outG_0_2_rp                (add_outG_0_2_rp            ),
        .add_outG_0_3_rp                (add_outG_0_3_rp            ),
        .add_outG_1_0_rp                (add_outG_1_0_rp            ),
        .add_outG_1_1_rp                (add_outG_1_1_rp            ),
        .add_outG_1_2_rp                (add_outG_1_2_rp            ),
        .add_outG_1_3_rp                (add_outG_1_3_rp            ),
        .add_outG_2_0_rp                (add_outG_2_0_rp            ),
        .add_outG_2_1_rp                (add_outG_2_1_rp            ),
        .add_outG_2_2_rp                (add_outG_2_2_rp            ),
        .add_outG_2_3_rp                (add_outG_2_3_rp            ),
        .add_outG_3_0_rp                (add_outG_3_0_rp            ),
        .add_outG_3_1_rp                (add_outG_3_1_rp            ),
        .add_outG_3_2_rp                (add_outG_3_2_rp            ),
        .add_outG_3_3_rp                (add_outG_3_3_rp            ),
        .add_outR_0_0_rp                (add_outR_0_0_rp            ),
        .add_outR_0_1_rp                (add_outR_0_1_rp            ),
        .add_outR_0_2_rp                (add_outR_0_2_rp            ),
        .add_outR_0_3_rp                (add_outR_0_3_rp            ),
        .add_outR_1_0_rp                (add_outR_1_0_rp            ),
        .add_outR_1_1_rp                (add_outR_1_1_rp            ),
        .add_outR_1_2_rp                (add_outR_1_2_rp            ),
        .add_outR_1_3_rp                (add_outR_1_3_rp            ),
        .add_outR_2_0_rp                (add_outR_2_0_rp            ),
        .add_outR_2_1_rp                (add_outR_2_1_rp            ),
        .add_outR_2_2_rp                (add_outR_2_2_rp            ),
        .add_outR_2_3_rp                (add_outR_2_3_rp            ),
        .add_outR_3_0_rp                (add_outR_3_0_rp            ),
        .add_outR_3_1_rp                (add_outR_3_1_rp            ),
        .add_outR_3_2_rp                (add_outR_3_2_rp            ),
        .add_outR_3_3_rp                (add_outR_3_3_rp            ),
        .upsample_vld                   (upsample_vld               )
    );


sharpen sharpen_inst
(
        .clk                            (clk                        ),
        .rst_n                          (rst_n                      ),
        .add_outB_0_0_rp                (add_outB_0_0_rp            ),
        .add_outB_0_1_rp                (add_outB_0_1_rp            ),
        .add_outB_0_2_rp                (add_outB_0_2_rp            ),
        .add_outB_0_3_rp                (add_outB_0_3_rp            ),
        .add_outB_1_0_rp                (add_outB_1_0_rp            ),
        .add_outB_1_1_rp                (add_outB_1_1_rp            ),
        .add_outB_1_2_rp                (add_outB_1_2_rp            ),
        .add_outB_1_3_rp                (add_outB_1_3_rp            ),
        .add_outB_2_0_rp                (add_outB_2_0_rp            ),
        .add_outB_2_1_rp                (add_outB_2_1_rp            ),
        .add_outB_2_2_rp                (add_outB_2_2_rp            ),
        .add_outB_2_3_rp                (add_outB_2_3_rp            ),
        .add_outB_3_0_rp                (add_outB_3_0_rp            ),
        .add_outB_3_1_rp                (add_outB_3_1_rp            ),
        .add_outB_3_2_rp                (add_outB_3_2_rp            ),
        .add_outB_3_3_rp                (add_outB_3_3_rp            ),
        .add_outG_0_0_rp                (add_outG_0_0_rp            ),
        .add_outG_0_1_rp                (add_outG_0_1_rp            ),
        .add_outG_0_2_rp                (add_outG_0_2_rp            ),
        .add_outG_0_3_rp                (add_outG_0_3_rp            ),
        .add_outG_1_0_rp                (add_outG_1_0_rp            ),
        .add_outG_1_1_rp                (add_outG_1_1_rp            ),
        .add_outG_1_2_rp                (add_outG_1_2_rp            ),
        .add_outG_1_3_rp                (add_outG_1_3_rp            ),
        .add_outG_2_0_rp                (add_outG_2_0_rp            ),
        .add_outG_2_1_rp                (add_outG_2_1_rp            ),
        .add_outG_2_2_rp                (add_outG_2_2_rp            ),
        .add_outG_2_3_rp                (add_outG_2_3_rp            ),
        .add_outG_3_0_rp                (add_outG_3_0_rp            ),
        .add_outG_3_1_rp                (add_outG_3_1_rp            ),
        .add_outG_3_2_rp                (add_outG_3_2_rp            ),
        .add_outG_3_3_rp                (add_outG_3_3_rp            ),
        .add_outR_0_0_rp                (add_outR_0_0_rp            ),
        .add_outR_0_1_rp                (add_outR_0_1_rp            ),
        .add_outR_0_2_rp                (add_outR_0_2_rp            ),
        .add_outR_0_3_rp                (add_outR_0_3_rp            ),
        .add_outR_1_0_rp                (add_outR_1_0_rp            ),
        .add_outR_1_1_rp                (add_outR_1_1_rp            ),
        .add_outR_1_2_rp                (add_outR_1_2_rp            ),
        .add_outR_1_3_rp                (add_outR_1_3_rp            ),
        .add_outR_2_0_rp                (add_outR_2_0_rp            ),
        .add_outR_2_1_rp                (add_outR_2_1_rp            ),
        .add_outR_2_2_rp                (add_outR_2_2_rp            ),
        .add_outR_2_3_rp                (add_outR_2_3_rp            ),
        .add_outR_3_0_rp                (add_outR_3_0_rp            ),
        .add_outR_3_1_rp                (add_outR_3_1_rp            ),
        .add_outR_3_2_rp                (add_outR_3_2_rp            ),
        .add_outR_3_3_rp                (add_outR_3_3_rp            ),
        .upsample_vld                   (upsample_vld               ),
        .complete                       (complete                   ),
        .finish                         (finish                     ),
        .sp_dataB0                      (sp_dataB0                  ),
        .sp_dataB1                      (sp_dataB1                  ),
        .sp_dataB2                      (sp_dataB2                  ),
        .sp_dataB3                      (sp_dataB3                  ),
        .sp_dataG0                      (sp_dataG0                  ),
        .sp_dataG1                      (sp_dataG1                  ),
        .sp_dataG2                      (sp_dataG2                  ),
        .sp_dataG3                      (sp_dataG3                  ),
        .sp_dataR0                      (sp_dataR0                  ),
        .sp_dataR1                      (sp_dataR1                  ),
        .sp_dataR2                      (sp_dataR2                  ),
        .sp_dataR3                      (sp_dataR3                  ),
        .sp_dataB0_r                    (sp_dataB0_r                ),
        .sp_dataB1_r                    (sp_dataB1_r                ),
        .sp_dataB2_r                    (sp_dataB2_r                ),
        .sp_dataB3_r                    (sp_dataB3_r                ),
        .sp_dataG0_r                    (sp_dataG0_r                ),
        .sp_dataG1_r                    (sp_dataG1_r                ),
        .sp_dataG2_r                    (sp_dataG2_r                ),
        .sp_dataG3_r                    (sp_dataG3_r                ),
        .sp_dataR0_r                    (sp_dataR0_r                ),
        .sp_dataR1_r                    (sp_dataR1_r                ),
        .sp_dataR2_r                    (sp_dataR2_r                ),
        .sp_dataR3_r                    (sp_dataR3_r                ),
        .wr_ctrl                        (wr_ctrl                    ),
        .wr_ctrl_vld                    (wr_ctrl_vld                ),
        .sp_vld                         (sp_vld                     )
);

upload_ctrl upload_ctrl_inst(
        .clk                            (clk                        ),
        .rst_n                          (rst_n                      ),
        .wr_ctrl                        (wr_ctrl                    ),
        .wr_ctrl_vld                    (wr_ctrl_vld                ),
        .complete                       (complete                   ),
        .M_AXI_WVALID                   (M_AXI_WVALID               ),
        .M_AXI_WREADY                   (M_AXI_WREADY               ),
        .sp_vld                         (sp_vld                     ),
        .sp_dataB0                      (sp_dataB0                  ),
        .sp_dataB1                      (sp_dataB1                  ),
        .sp_dataB2                      (sp_dataB2                  ),
        .sp_dataB3                      (sp_dataB3                  ),
        .sp_dataG0                      (sp_dataG0                  ),
        .sp_dataG1                      (sp_dataG1                  ),
        .sp_dataG2                      (sp_dataG2                  ),
        .sp_dataG3                      (sp_dataG3                  ),
        .sp_dataR0                      (sp_dataR0                  ),
        .sp_dataR1                      (sp_dataR1                  ),
        .sp_dataR2                      (sp_dataR2                  ),
        .sp_dataR3                      (sp_dataR3                  ),
        .sp_dataB0_r                    (sp_dataB0_r                ),
        .sp_dataB1_r                    (sp_dataB1_r                ),
        .sp_dataB2_r                    (sp_dataB2_r                ),
        .sp_dataB3_r                    (sp_dataB3_r                ),
        .sp_dataG0_r                    (sp_dataG0_r                ),
        .sp_dataG1_r                    (sp_dataG1_r                ),
        .sp_dataG2_r                    (sp_dataG2_r                ),
        .sp_dataG3_r                    (sp_dataG3_r                ),
        .sp_dataR0_r                    (sp_dataR0_r                ),
        .sp_dataR1_r                    (sp_dataR1_r                ),
        .sp_dataR2_r                    (sp_dataR2_r                ),
        .sp_dataR3_r                    (sp_dataR3_r                ),
        .rd_data0                       (rd_data0                   ),
        .rd_data1                       (rd_data1                   ),
        .rd_data2                       (rd_data2                   ),
        .rd_data3                       (rd_data3                   ),
        .upload_req                     (upload_req                 ),
        .rd_data                        (rd_data                    ),
        .rd_addr                        (rd_addr                    ),
        .wr_en                          (wr_en                      ),
        .wr_addr                        (wr_addr                    ),
        .wd0                            (wr_data0                   ),
        .wd1                            (wr_data1                   ),
        .wd2                            (wr_data2                   ),
        .wd3                            (wr_data3                   )
    );

upload_bram upload_bram_inst0
(
        .clk                            (clk                       ),
        .wr_en                          (wr_en                     ),
        .wr_addr                        (wr_addr                   ),
        .din                            (wr_data0                  ),
        .rd_en                          (1'b1                      ),
        .rd_addr                        (rd_addr                   ),
        .dout                           (rd_data0                  )
    );

    
upload_bram upload_bram_inst1
(
        .clk                            (clk                       ),
        .wr_en                          (wr_en                     ),
        .wr_addr                        (wr_addr                   ),
        .din                            (wr_data1                  ),
        .rd_en                          (1'b1                      ),
        .rd_addr                        (rd_addr                   ),
        .dout                           (rd_data1                  )
    );

    
upload_bram upload_bram_inst2
(
        .clk                            (clk                       ),
        .wr_en                          (wr_en                     ),
        .wr_addr                        (wr_addr                   ),
        .din                            (wr_data2                  ),
        .rd_en                          (1'b1                      ),
        .rd_addr                        (rd_addr                   ),
        .dout                           (rd_data2                  )
    );

    
upload_bram upload_bram_inst3
(
        .clk                            (clk                       ),
        .wr_en                          (wr_en                     ),
        .wr_addr                        (wr_addr                   ),
        .din                            (wr_data3                  ),
        .rd_en                          (1'b1                      ),
        .rd_addr                        (rd_addr                   ),
        .dout                           (rd_data3                  )
    );

endmodule
