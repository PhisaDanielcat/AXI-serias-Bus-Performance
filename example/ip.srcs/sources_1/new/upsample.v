`timescale 1ns / 1ps

module upsample
(
        input               wire                                clk                         ,
        input               wire                                rst_n                       ,
        input               wire                                ip_start                    ,
        input               wire                                complete                    ,
        input               wire                                finish                      ,
        input               wire                                M_AXI_RVALID                ,
        input               wire                                M_AXI_RREADY                ,
        input               wire[63:0]                          M_AXI_RDATA                 ,
        input               wire                                M_AXI_RLAST                 ,
        output              wire                                download_req                ,
        output              wire[ 7:0]                          add_outB_0_0_rp             ,
        output              wire[ 7:0]                          add_outB_0_1_rp             ,
        output              wire[ 7:0]                          add_outB_0_2_rp             ,
        output              wire[ 7:0]                          add_outB_0_3_rp             ,
        output              wire[ 7:0]                          add_outB_1_0_rp             ,
        output              wire[ 7:0]                          add_outB_1_1_rp             ,
        output              wire[ 7:0]                          add_outB_1_2_rp             ,
        output              wire[ 7:0]                          add_outB_1_3_rp             ,
        output              wire[ 7:0]                          add_outB_2_0_rp             ,
        output              wire[ 7:0]                          add_outB_2_1_rp             ,
        output              wire[ 7:0]                          add_outB_2_2_rp             ,
        output              wire[ 7:0]                          add_outB_2_3_rp             ,
        output              wire[ 7:0]                          add_outB_3_0_rp             ,
        output              wire[ 7:0]                          add_outB_3_1_rp             ,
        output              wire[ 7:0]                          add_outB_3_2_rp             ,
        output              wire[ 7:0]                          add_outB_3_3_rp             ,
        output              wire[ 7:0]                          add_outG_0_0_rp             ,
        output              wire[ 7:0]                          add_outG_0_1_rp             ,
        output              wire[ 7:0]                          add_outG_0_2_rp             ,
        output              wire[ 7:0]                          add_outG_0_3_rp             ,
        output              wire[ 7:0]                          add_outG_1_0_rp             ,
        output              wire[ 7:0]                          add_outG_1_1_rp             ,
        output              wire[ 7:0]                          add_outG_1_2_rp             ,
        output              wire[ 7:0]                          add_outG_1_3_rp             ,
        output              wire[ 7:0]                          add_outG_2_0_rp             ,
        output              wire[ 7:0]                          add_outG_2_1_rp             ,
        output              wire[ 7:0]                          add_outG_2_2_rp             ,
        output              wire[ 7:0]                          add_outG_2_3_rp             ,
        output              wire[ 7:0]                          add_outG_3_0_rp             ,
        output              wire[ 7:0]                          add_outG_3_1_rp             ,
        output              wire[ 7:0]                          add_outG_3_2_rp             ,
        output              wire[ 7:0]                          add_outG_3_3_rp             ,
        output              wire[ 7:0]                          add_outR_0_0_rp             ,
        output              wire[ 7:0]                          add_outR_0_1_rp             ,
        output              wire[ 7:0]                          add_outR_0_2_rp             ,
        output              wire[ 7:0]                          add_outR_0_3_rp             ,
        output              wire[ 7:0]                          add_outR_1_0_rp             ,
        output              wire[ 7:0]                          add_outR_1_1_rp             ,
        output              wire[ 7:0]                          add_outR_1_2_rp             ,
        output              wire[ 7:0]                          add_outR_1_3_rp             ,
        output              wire[ 7:0]                          add_outR_2_0_rp             ,
        output              wire[ 7:0]                          add_outR_2_1_rp             ,
        output              wire[ 7:0]                          add_outR_2_2_rp             ,
        output              wire[ 7:0]                          add_outR_2_3_rp             ,
        output              wire[ 7:0]                          add_outR_3_0_rp             ,
        output              wire[ 7:0]                          add_outR_3_1_rp             ,
        output              wire[ 7:0]                          add_outR_3_2_rp             ,
        output              wire[ 7:0]                          add_outR_3_3_rp             ,
        output              wire                                upsample_vld                ,
        output              wire                                over                            

    );
        wire[31:0]                                              lr_B0_r0                    ;
        wire[31:0]                                              lr_G0_r0                    ;
        wire[31:0]                                              lr_R0_r0                    ;
        wire[31:0]                                              lr_B1_r0                    ;
        wire[31:0]                                              lr_G1_r0                    ;
        wire[31:0]                                              lr_R1_r0                    ;
        wire[31:0]                                              lr_B2_r0                    ;
        wire[31:0]                                              lr_G2_r0                    ;
        wire[31:0]                                              lr_R2_r0                    ;
        wire[31:0]                                              lr_B3_r0                    ;
        wire[31:0]                                              lr_G3_r0                    ;
        wire[31:0]                                              lr_R3_r0                    ;
        wire[31:0]                                              lr_B0_r1                    ;
        wire[31:0]                                              lr_G0_r1                    ;
        wire[31:0]                                              lr_R0_r1                    ;
        wire[31:0]                                              lr_B1_r1                    ;
        wire[31:0]                                              lr_G1_r1                    ;
        wire[31:0]                                              lr_R1_r1                    ;
        wire[31:0]                                              lr_B2_r1                    ;
        wire[31:0]                                              lr_G2_r1                    ;
        wire[31:0]                                              lr_R2_r1                    ;
        wire[31:0]                                              lr_B3_r1                    ;
        wire[31:0]                                              lr_G3_r1                    ;
        wire[31:0]                                              lr_R3_r1                    ;
        wire[ 7:0]                                              lr_B0_0                     ;
        wire[ 7:0]                                              lr_G0_0                     ;
        wire[ 7:0]                                              lr_R0_0                     ;
        wire[ 7:0]                                              lr_B0_1                     ;
        wire[ 7:0]                                              lr_G0_1                     ;
        wire[ 7:0]                                              lr_R0_1                     ;
        wire[ 7:0]                                              lr_B0_2                     ;
        wire[ 7:0]                                              lr_G0_2                     ;
        wire[ 7:0]                                              lr_R0_2                     ;
        wire[ 7:0]                                              lr_B0_3                     ;
        wire[ 7:0]                                              lr_G0_3                     ;
        wire[ 7:0]                                              lr_R0_3                     ;
        wire[ 7:0]                                              lr_B0_4                     ;
        wire[ 7:0]                                              lr_G0_4                     ;
        wire[ 7:0]                                              lr_R0_4                     ;
        wire[ 7:0]                                              lr_B0_5                     ;
        wire[ 7:0]                                              lr_G0_5                     ;
        wire[ 7:0]                                              lr_R0_5                     ;
        wire[ 7:0]                                              lr_B0_6                     ;
        wire[ 7:0]                                              lr_G0_6                     ;
        wire[ 7:0]                                              lr_R0_6                     ;
        wire[ 7:0]                                              lr_B0_7                     ;
        wire[ 7:0]                                              lr_G0_7                     ;
        wire[ 7:0]                                              lr_R0_7                     ;
        wire[ 7:0]                                              lr_B1_0                     ;
        wire[ 7:0]                                              lr_G1_0                     ;
        wire[ 7:0]                                              lr_R1_0                     ;
        wire[ 7:0]                                              lr_B1_1                     ;
        wire[ 7:0]                                              lr_G1_1                     ;
        wire[ 7:0]                                              lr_R1_1                     ;
        wire[ 7:0]                                              lr_B1_2                     ;
        wire[ 7:0]                                              lr_G1_2                     ;
        wire[ 7:0]                                              lr_R1_2                     ;
        wire[ 7:0]                                              lr_B1_3                     ;
        wire[ 7:0]                                              lr_G1_3                     ;
        wire[ 7:0]                                              lr_R1_3                     ;
        wire[ 7:0]                                              lr_B1_4                     ;
        wire[ 7:0]                                              lr_G1_4                     ;
        wire[ 7:0]                                              lr_R1_4                     ;
        wire[ 7:0]                                              lr_B1_5                     ;
        wire[ 7:0]                                              lr_G1_5                     ;
        wire[ 7:0]                                              lr_R1_5                     ;
        wire[ 7:0]                                              lr_B1_6                     ;
        wire[ 7:0]                                              lr_G1_6                     ;
        wire[ 7:0]                                              lr_R1_6                     ;
        wire[ 7:0]                                              lr_B1_7                     ;
        wire[ 7:0]                                              lr_G1_7                     ;
        wire[ 7:0]                                              lr_R1_7                     ;
        wire[ 7:0]                                              lr_B2_0                     ;
        wire[ 7:0]                                              lr_G2_0                     ;
        wire[ 7:0]                                              lr_R2_0                     ;
        wire[ 7:0]                                              lr_B2_1                     ;
        wire[ 7:0]                                              lr_G2_1                     ;
        wire[ 7:0]                                              lr_R2_1                     ;
        wire[ 7:0]                                              lr_B2_2                     ;
        wire[ 7:0]                                              lr_G2_2                     ;
        wire[ 7:0]                                              lr_R2_2                     ;
        wire[ 7:0]                                              lr_B2_3                     ;
        wire[ 7:0]                                              lr_G2_3                     ;
        wire[ 7:0]                                              lr_R2_3                     ;
        wire[ 7:0]                                              lr_B2_4                     ;
        wire[ 7:0]                                              lr_G2_4                     ;
        wire[ 7:0]                                              lr_R2_4                     ;
        wire[ 7:0]                                              lr_B2_5                     ;
        wire[ 7:0]                                              lr_G2_5                     ;
        wire[ 7:0]                                              lr_R2_5                     ;
        wire[ 7:0]                                              lr_B2_6                     ;
        wire[ 7:0]                                              lr_G2_6                     ;
        wire[ 7:0]                                              lr_R2_6                     ;
        wire[ 7:0]                                              lr_B2_7                     ;
        wire[ 7:0]                                              lr_G2_7                     ;
        wire[ 7:0]                                              lr_R2_7                     ;
        wire[ 7:0]                                              lr_B3_0                     ;
        wire[ 7:0]                                              lr_G3_0                     ;
        wire[ 7:0]                                              lr_R3_0                     ;
        wire[ 7:0]                                              lr_B3_1                     ;
        wire[ 7:0]                                              lr_G3_1                     ;
        wire[ 7:0]                                              lr_R3_1                     ;
        wire[ 7:0]                                              lr_B3_2                     ;
        wire[ 7:0]                                              lr_G3_2                     ;
        wire[ 7:0]                                              lr_R3_2                     ;
        wire[ 7:0]                                              lr_B3_3                     ;
        wire[ 7:0]                                              lr_G3_3                     ;
        wire[ 7:0]                                              lr_R3_3                     ;
        wire[ 7:0]                                              lr_B3_4                     ;
        wire[ 7:0]                                              lr_G3_4                     ;
        wire[ 7:0]                                              lr_R3_4                     ;
        wire[ 7:0]                                              lr_B3_5                     ;
        wire[ 7:0]                                              lr_G3_5                     ;
        wire[ 7:0]                                              lr_R3_5                     ;
        wire[ 7:0]                                              lr_B3_6                     ;
        wire[ 7:0]                                              lr_G3_6                     ;
        wire[ 7:0]                                              lr_R3_6                     ;
        wire[ 7:0]                                              lr_B3_7                     ;
        wire[ 7:0]                                              lr_G3_7                     ;
        wire[ 7:0]                                              lr_R3_7                     ;
        wire[31:0]                                              lr_B0                       ;
        wire[31:0]                                              lr_G0                       ;
        wire[31:0]                                              lr_R0                       ;
        wire[31:0]                                              lr_B1                       ;
        wire[31:0]                                              lr_G1                       ;
        wire[31:0]                                              lr_R1                       ;
        wire[31:0]                                              lr_B2                       ;
        wire[31:0]                                              lr_G2                       ;
        wire[31:0]                                              lr_R2                       ;
        wire[31:0]                                              lr_B3                       ;
        wire[31:0]                                              lr_G3                       ;
        wire[31:0]                                              lr_R3                       ;
        wire[ 1:0]                                              lr_bram_sel                 ;
        wire[ 3:0]                                              cycle                       ;
        wire[ 1:0]                                              cycle_r                     ;
        wire[271:0]                                             weight0_0                   ;
        wire[271:0]                                             weight0_1                   ;
        wire[271:0]                                             weight0_2                   ;
        wire[271:0]                                             weight0_3                   ;
        wire[271:0]                                             weight1_0                   ;
        wire[271:0]                                             weight1_1                   ;
        wire[271:0]                                             weight1_2                   ;
        wire[271:0]                                             weight1_3                   ;
        wire[271:0]                                             weight2_0                   ;
        wire[271:0]                                             weight2_1                   ;
        wire[271:0]                                             weight2_2                   ;
        wire[271:0]                                             weight2_3                   ;
        wire[271:0]                                             weight3_0                   ;
        wire[271:0]                                             weight3_1                   ;
        wire[271:0]                                             weight3_2                   ;
        wire[271:0]                                             weight3_3                   ;
        wire[ 6:0]                                              lr_bram_wr_addr0            ;
        wire[ 6:0]                                              lr_bram_wr_addr1            ;
        wire[ 6:0]                                              lr_bram_wr_addr2            ;
        wire[ 7:0]                                              lr_bram_wr_en_B             ;
        wire[ 7:0]                                              lr_bram_wr_en_G             ;
        wire[ 7:0]                                              lr_bram_wr_en_R             ;
        wire[ 7:0]                                              lr_bram_wr_en_B0            ;
        wire[ 7:0]                                              lr_bram_wr_en_G0            ;
        wire[ 7:0]                                              lr_bram_wr_en_R0            ;
        wire[ 7:0]                                              lr_bram_wr_en_B1            ;
        wire[ 7:0]                                              lr_bram_wr_en_G1            ;
        wire[ 7:0]                                              lr_bram_wr_en_R1            ;
        wire[ 7:0]                                              lr_bram_wr_en_B2            ;
        wire[ 7:0]                                              lr_bram_wr_en_G2            ;
        wire[ 7:0]                                              lr_bram_wr_en_R2            ;
        wire[ 7:0]                                              lr_bram_wr_en_B3            ;
        wire[ 7:0]                                              lr_bram_wr_en_G3            ;
        wire[ 7:0]                                              lr_bram_wr_en_R3            ;
        wire[ 6:0]                                              lr_bram_rd_addr             ;
        wire[ 1:0]                                              lr_bram_rd_en               ;
        wire                                                    isHD                        ;
        wire                                                    isEND0                      ;
        wire                                                    isEND1                      ;
        wire[31:0]                                              mul_in_B                    ;
        wire[31:0]                                              mul_in_G                    ;
        wire[31:0]                                              mul_in_R                    ;

    data_cache  data_cache_inst                
    (                   
            .clk                                                (clk                        ),
            .rst_n                                              (rst_n                      ),
            .ip_start                                           (ip_start                   ),
            .complete                                           (complete                   ),
            .finish                                             (finish                     ),
            .M_AXI_RVALID                                       (M_AXI_RVALID               ),
            .M_AXI_RREADY                                       (M_AXI_RREADY               ),
            .M_AXI_RDATA                                        (M_AXI_RDATA                ),
            .M_AXI_RLAST                                        (M_AXI_RLAST                ),
            .over                                               (over                       ),
            .download_req                                       (download_req               ),
            .isHD                                               (isHD                       ),
            .isEND0                                             (isEND0                     ),
            .isEND1                                             (isEND1                     ),
            .lr_B0                                              (lr_B0                      ),
            .lr_G0                                              (lr_G0                      ),
            .lr_R0                                              (lr_R0                      ),
            .lr_B1                                              (lr_B1                      ),
            .lr_G1                                              (lr_G1                      ),
            .lr_R1                                              (lr_R1                      ),
            .lr_B2                                              (lr_B2                      ),
            .lr_G2                                              (lr_G2                      ),
            .lr_R2                                              (lr_R2                      ),
            .lr_B3                                              (lr_B3                      ),
            .lr_G3                                              (lr_G3                      ),
            .lr_R3                                              (lr_R3                      ),
            .lr_bram_sel                                        (lr_bram_sel                ),
            .cycle                                              (cycle                      ),
            .weight0_0                                          (weight0_0                  ),
            .weight0_1                                          (weight0_1                  ),
            .weight0_2                                          (weight0_2                  ),
            .weight0_3                                          (weight0_3                  ),
            .weight1_0                                          (weight1_0                  ),
            .weight1_1                                          (weight1_1                  ),
            .weight1_2                                          (weight1_2                  ),
            .weight1_3                                          (weight1_3                  ),
            .weight2_0                                          (weight2_0                  ),
            .weight2_1                                          (weight2_1                  ),
            .weight2_2                                          (weight2_2                  ),
            .weight2_3                                          (weight2_3                  ),
            .weight3_0                                          (weight3_0                  ),
            .weight3_1                                          (weight3_1                  ),
            .weight3_2                                          (weight3_2                  ),
            .weight3_3                                          (weight3_3                  ),
            .lr_bram_wr_addr0                                   (lr_bram_wr_addr0           ),
            .lr_bram_wr_addr1                                   (lr_bram_wr_addr1           ),
            .lr_bram_wr_addr2                                   (lr_bram_wr_addr2           ),
            .lr_bram_wr_en_B                                    (lr_bram_wr_en_B            ),
            .lr_bram_wr_en_G                                    (lr_bram_wr_en_G            ),
            .lr_bram_wr_en_R                                    (lr_bram_wr_en_R            ),
            .lr_bram_rd_addr                                    (lr_bram_rd_addr            ),
            .lr_bram_rd_en                                      (lr_bram_rd_en              ),
            .lr_B0_r0                                           (lr_B0_r0                   ),
            .lr_G0_r0                                           (lr_G0_r0                   ),
            .lr_R0_r0                                           (lr_R0_r0                   ),
            .lr_B1_r0                                           (lr_B1_r0                   ),
            .lr_G1_r0                                           (lr_G1_r0                   ),
            .lr_R1_r0                                           (lr_R1_r0                   ),
            .lr_B2_r0                                           (lr_B2_r0                   ),
            .lr_G2_r0                                           (lr_G2_r0                   ),
            .lr_R2_r0                                           (lr_R2_r0                   ),
            .lr_B3_r0                                           (lr_B3_r0                   ),
            .lr_G3_r0                                           (lr_G3_r0                   ),
            .lr_R3_r0                                           (lr_R3_r0                   ),
            .lr_B0_r1                                           (lr_B0_r1                   ),
            .lr_G0_r1                                           (lr_G0_r1                   ),
            .lr_R0_r1                                           (lr_R0_r1                   ),
            .lr_B1_r1                                           (lr_B1_r1                   ),
            .lr_G1_r1                                           (lr_G1_r1                   ),
            .lr_R1_r1                                           (lr_R1_r1                   ),
            .lr_B2_r1                                           (lr_B2_r1                   ),
            .lr_G2_r1                                           (lr_G2_r1                   ),
            .lr_R2_r1                                           (lr_R2_r1                   ),
            .lr_B3_r1                                           (lr_B3_r1                   ),
            .lr_G3_r1                                           (lr_G3_r1                   ),
            .lr_R3_r1                                           (lr_R3_r1                   ) 
        );
    

    data_reshape1 data_reshape1_inst(
            .clk                                                (clk                        ),
            .lr_bram_rd_en                                      (lr_bram_rd_en              ),
            .lr_bram_wr_en_B                                    (lr_bram_wr_en_B            ),
            .lr_bram_wr_en_G                                    (lr_bram_wr_en_G            ),
            .lr_bram_wr_en_R                                    (lr_bram_wr_en_R            ),
            .lr_bram_sel                                        (lr_bram_sel                ),
            .lr_B0_0                                            (lr_B0_0                    ),
            .lr_G0_0                                            (lr_G0_0                    ),
            .lr_R0_0                                            (lr_R0_0                    ),
            .lr_B0_1                                            (lr_B0_1                    ),
            .lr_G0_1                                            (lr_G0_1                    ),
            .lr_R0_1                                            (lr_R0_1                    ),
            .lr_B0_2                                            (lr_B0_2                    ),
            .lr_G0_2                                            (lr_G0_2                    ),
            .lr_R0_2                                            (lr_R0_2                    ),
            .lr_B0_3                                            (lr_B0_3                    ),
            .lr_G0_3                                            (lr_G0_3                    ),
            .lr_R0_3                                            (lr_R0_3                    ),
            .lr_B0_4                                            (lr_B0_4                    ),
            .lr_G0_4                                            (lr_G0_4                    ),
            .lr_R0_4                                            (lr_R0_4                    ),
            .lr_B0_5                                            (lr_B0_5                    ),
            .lr_G0_5                                            (lr_G0_5                    ),
            .lr_R0_5                                            (lr_R0_5                    ),
            .lr_B0_6                                            (lr_B0_6                    ),
            .lr_G0_6                                            (lr_G0_6                    ),
            .lr_R0_6                                            (lr_R0_6                    ),
            .lr_B0_7                                            (lr_B0_7                    ),
            .lr_G0_7                                            (lr_G0_7                    ),
            .lr_R0_7                                            (lr_R0_7                    ),
            .lr_B1_0                                            (lr_B1_0                    ),
            .lr_G1_0                                            (lr_G1_0                    ),
            .lr_R1_0                                            (lr_R1_0                    ),
            .lr_B1_1                                            (lr_B1_1                    ),
            .lr_G1_1                                            (lr_G1_1                    ),
            .lr_R1_1                                            (lr_R1_1                    ),
            .lr_B1_2                                            (lr_B1_2                    ),
            .lr_G1_2                                            (lr_G1_2                    ),
            .lr_R1_2                                            (lr_R1_2                    ),
            .lr_B1_3                                            (lr_B1_3                    ),
            .lr_G1_3                                            (lr_G1_3                    ),
            .lr_R1_3                                            (lr_R1_3                    ),
            .lr_B1_4                                            (lr_B1_4                    ),
            .lr_G1_4                                            (lr_G1_4                    ),
            .lr_R1_4                                            (lr_R1_4                    ),
            .lr_B1_5                                            (lr_B1_5                    ),
            .lr_G1_5                                            (lr_G1_5                    ),
            .lr_R1_5                                            (lr_R1_5                    ),
            .lr_B1_6                                            (lr_B1_6                    ),
            .lr_G1_6                                            (lr_G1_6                    ),
            .lr_R1_6                                            (lr_R1_6                    ),
            .lr_B1_7                                            (lr_B1_7                    ),
            .lr_G1_7                                            (lr_G1_7                    ),
            .lr_R1_7                                            (lr_R1_7                    ),
            .lr_B2_0                                            (lr_B2_0                    ),
            .lr_G2_0                                            (lr_G2_0                    ),
            .lr_R2_0                                            (lr_R2_0                    ),
            .lr_B2_1                                            (lr_B2_1                    ),
            .lr_G2_1                                            (lr_G2_1                    ),
            .lr_R2_1                                            (lr_R2_1                    ),
            .lr_B2_2                                            (lr_B2_2                    ),
            .lr_G2_2                                            (lr_G2_2                    ),
            .lr_R2_2                                            (lr_R2_2                    ),
            .lr_B2_3                                            (lr_B2_3                    ),
            .lr_G2_3                                            (lr_G2_3                    ),
            .lr_R2_3                                            (lr_R2_3                    ),
            .lr_B2_4                                            (lr_B2_4                    ),
            .lr_G2_4                                            (lr_G2_4                    ),
            .lr_R2_4                                            (lr_R2_4                    ),
            .lr_B2_5                                            (lr_B2_5                    ),
            .lr_G2_5                                            (lr_G2_5                    ),
            .lr_R2_5                                            (lr_R2_5                    ),
            .lr_B2_6                                            (lr_B2_6                    ),
            .lr_G2_6                                            (lr_G2_6                    ),
            .lr_R2_6                                            (lr_R2_6                    ),
            .lr_B2_7                                            (lr_B2_7                    ),
            .lr_G2_7                                            (lr_G2_7                    ),
            .lr_R2_7                                            (lr_R2_7                    ),
            .lr_B3_0                                            (lr_B3_0                    ),
            .lr_G3_0                                            (lr_G3_0                    ),
            .lr_R3_0                                            (lr_R3_0                    ),
            .lr_B3_1                                            (lr_B3_1                    ),
            .lr_G3_1                                            (lr_G3_1                    ),
            .lr_R3_1                                            (lr_R3_1                    ),
            .lr_B3_2                                            (lr_B3_2                    ),
            .lr_G3_2                                            (lr_G3_2                    ),
            .lr_R3_2                                            (lr_R3_2                    ),
            .lr_B3_3                                            (lr_B3_3                    ),
            .lr_G3_3                                            (lr_G3_3                    ),
            .lr_R3_3                                            (lr_R3_3                    ),
            .lr_B3_4                                            (lr_B3_4                    ),
            .lr_G3_4                                            (lr_G3_4                    ),
            .lr_R3_4                                            (lr_R3_4                    ),
            .lr_B3_5                                            (lr_B3_5                    ),
            .lr_G3_5                                            (lr_G3_5                    ),
            .lr_R3_5                                            (lr_R3_5                    ),
            .lr_B3_6                                            (lr_B3_6                    ),
            .lr_G3_6                                            (lr_G3_6                    ),
            .lr_R3_6                                            (lr_R3_6                    ),
            .lr_B3_7                                            (lr_B3_7                    ),
            .lr_G3_7                                            (lr_G3_7                    ),
            .lr_R3_7                                            (lr_R3_7                    ),
            .lr_B0                                              (lr_B0                      ),
            .lr_G0                                              (lr_G0                      ),
            .lr_R0                                              (lr_R0                      ),
            .lr_B1                                              (lr_B1                      ),
            .lr_G1                                              (lr_G1                      ),
            .lr_R1                                              (lr_R1                      ),
            .lr_B2                                              (lr_B2                      ),
            .lr_G2                                              (lr_G2                      ),
            .lr_R2                                              (lr_R2                      ),
            .lr_B3                                              (lr_B3                      ),
            .lr_G3                                              (lr_G3                      ),
            .lr_R3                                              (lr_R3                      ),
            .lr_bram_wr_en_B0                                   (lr_bram_wr_en_B0           ),
            .lr_bram_wr_en_G0                                   (lr_bram_wr_en_G0           ),
            .lr_bram_wr_en_R0                                   (lr_bram_wr_en_R0           ),
            .lr_bram_wr_en_B1                                   (lr_bram_wr_en_B1           ),
            .lr_bram_wr_en_G1                                   (lr_bram_wr_en_G1           ),
            .lr_bram_wr_en_R1                                   (lr_bram_wr_en_R1           ),
            .lr_bram_wr_en_B2                                   (lr_bram_wr_en_B2           ),
            .lr_bram_wr_en_G2                                   (lr_bram_wr_en_G2           ),
            .lr_bram_wr_en_R2                                   (lr_bram_wr_en_R2           ),
            .lr_bram_wr_en_B3                                   (lr_bram_wr_en_B3           ),
            .lr_bram_wr_en_G3                                   (lr_bram_wr_en_G3           ),
            .lr_bram_wr_en_R3                                   (lr_bram_wr_en_R3           )
    );

    data_reshape2 data_reshape2_inst(
            .clk                                                (clk                       ),
            .isEND0                                             (isEND0                    ),
            .isEND1                                             (isEND1                    ),
            .isHD                                               (isHD                      ),
            .cycle                                              (cycle                     ),
            .lr_B0                                              (lr_B0                     ),
            .lr_G0                                              (lr_G0                     ),
            .lr_R0                                              (lr_R0                     ),
            .lr_B1                                              (lr_B1                     ),
            .lr_G1                                              (lr_G1                     ),
            .lr_R1                                              (lr_R1                     ),
            .lr_B2                                              (lr_B2                     ),
            .lr_G2                                              (lr_G2                     ),
            .lr_R2                                              (lr_R2                     ),
            .lr_B3                                              (lr_B3                     ),
            .lr_G3                                              (lr_G3                     ),
            .lr_R3                                              (lr_R3                     ),
            .lr_B0_r0                                           (lr_B0_r0                  ),
            .lr_G0_r0                                           (lr_G0_r0                  ),
            .lr_R0_r0                                           (lr_R0_r0                  ),
            .lr_B1_r0                                           (lr_B1_r0                  ),
            .lr_G1_r0                                           (lr_G1_r0                  ),
            .lr_R1_r0                                           (lr_R1_r0                  ),
            .lr_B2_r0                                           (lr_B2_r0                  ),
            .lr_G2_r0                                           (lr_G2_r0                  ),
            .lr_R2_r0                                           (lr_R2_r0                  ),
            .lr_B3_r0                                           (lr_B3_r0                  ),
            .lr_G3_r0                                           (lr_G3_r0                  ),
            .lr_R3_r0                                           (lr_R3_r0                  ),
            .lr_B0_r1                                           (lr_B0_r1                  ),
            .lr_G0_r1                                           (lr_G0_r1                  ),
            .lr_R0_r1                                           (lr_R0_r1                  ),
            .lr_B1_r1                                           (lr_B1_r1                  ),
            .lr_G1_r1                                           (lr_G1_r1                  ),
            .lr_R1_r1                                           (lr_R1_r1                  ),
            .lr_B2_r1                                           (lr_B2_r1                  ),
            .lr_G2_r1                                           (lr_G2_r1                  ),
            .lr_R2_r1                                           (lr_R2_r1                  ),
            .lr_B3_r1                                           (lr_B3_r1                  ),
            .lr_G3_r1                                           (lr_G3_r1                  ),
            .lr_R3_r1                                           (lr_R3_r1                  ),
            .mul_in_B                                           (mul_in_B                  ),
            .mul_in_G                                           (mul_in_G                  ),
            .mul_in_R                                           (mul_in_R                  )
    );

lr_bram_group lr_bram_group_inst0(
        .clk                                                    (clk                        ),
        .rst_n                                                  (rst_n                      ),
        .lr_bram_wr_addr0                                       (lr_bram_wr_addr0           ),
        .lr_bram_wr_addr1                                       (lr_bram_wr_addr1           ),
        .lr_bram_wr_addr2                                       (lr_bram_wr_addr2           ),
        .lr_bram_wr_en_B                                        (lr_bram_wr_en_B0           ),
        .lr_bram_wr_en_G                                        (lr_bram_wr_en_G0           ),
        .lr_bram_wr_en_R                                        (lr_bram_wr_en_R0           ),
        .lr_bram_rd_addr                                        (lr_bram_rd_addr            ),
        .lr_bram_rd_en                                          (lr_bram_rd_en              ),
        .M_AXI_RDATA                                            (M_AXI_RDATA                ),
        .lr_B0                                                  (lr_B0_0                    ),
        .lr_G0                                                  (lr_G0_0                    ),
        .lr_R0                                                  (lr_R0_0                    ),
        .lr_B1                                                  (lr_B0_1                    ),
        .lr_G1                                                  (lr_G0_1                    ),
        .lr_R1                                                  (lr_R0_1                    ),
        .lr_B2                                                  (lr_B0_2                    ),
        .lr_G2                                                  (lr_G0_2                    ),
        .lr_R2                                                  (lr_R0_2                    ),
        .lr_B3                                                  (lr_B0_3                    ),
        .lr_G3                                                  (lr_G0_3                    ),
        .lr_R3                                                  (lr_R0_3                    ),
        .lr_B4                                                  (lr_B0_4                    ),
        .lr_G4                                                  (lr_G0_4                    ),
        .lr_R4                                                  (lr_R0_4                    ),
        .lr_B5                                                  (lr_B0_5                    ),
        .lr_G5                                                  (lr_G0_5                    ),
        .lr_R5                                                  (lr_R0_5                    ),
        .lr_B6                                                  (lr_B0_6                    ),
        .lr_G6                                                  (lr_G0_6                    ),
        .lr_R6                                                  (lr_R0_6                    ),
        .lr_B7                                                  (lr_B0_7                    ),
        .lr_G7                                                  (lr_G0_7                    ),
        .lr_R7                                                  (lr_R0_7                    )
    );


lr_bram_group lr_bram_group_inst1(
        .clk                                                    (clk                        ),
        .rst_n                                                  (rst_n                      ),
        .lr_bram_wr_addr0                                       (lr_bram_wr_addr0           ),
        .lr_bram_wr_addr1                                       (lr_bram_wr_addr1           ),
        .lr_bram_wr_addr2                                       (lr_bram_wr_addr2           ),
        .lr_bram_wr_en_B                                        (lr_bram_wr_en_B1           ),
        .lr_bram_wr_en_G                                        (lr_bram_wr_en_G1           ),
        .lr_bram_wr_en_R                                        (lr_bram_wr_en_R1           ),
        .lr_bram_rd_addr                                        (lr_bram_rd_addr            ),
        .lr_bram_rd_en                                          (lr_bram_rd_en              ),
        .M_AXI_RDATA                                            (M_AXI_RDATA                ),
        .lr_B0                                                  (lr_B1_0                    ),
        .lr_G0                                                  (lr_G1_0                    ),
        .lr_R0                                                  (lr_R1_0                    ),
        .lr_B1                                                  (lr_B1_1                    ),
        .lr_G1                                                  (lr_G1_1                    ),
        .lr_R1                                                  (lr_R1_1                    ),
        .lr_B2                                                  (lr_B1_2                    ),
        .lr_G2                                                  (lr_G1_2                    ),
        .lr_R2                                                  (lr_R1_2                    ),
        .lr_B3                                                  (lr_B1_3                    ),
        .lr_G3                                                  (lr_G1_3                    ),
        .lr_R3                                                  (lr_R1_3                    ),
        .lr_B4                                                  (lr_B1_4                    ),
        .lr_G4                                                  (lr_G1_4                    ),
        .lr_R4                                                  (lr_R1_4                    ),
        .lr_B5                                                  (lr_B1_5                    ),
        .lr_G5                                                  (lr_G1_5                    ),
        .lr_R5                                                  (lr_R1_5                    ),
        .lr_B6                                                  (lr_B1_6                    ),
        .lr_G6                                                  (lr_G1_6                    ),
        .lr_R6                                                  (lr_R1_6                    ),
        .lr_B7                                                  (lr_B1_7                    ),
        .lr_G7                                                  (lr_G1_7                    ),
        .lr_R7                                                  (lr_R1_7                    )
    );


lr_bram_group lr_bram_group_inst2(
        .clk                                                    (clk                        ),
        .rst_n                                                  (rst_n                      ),
        .lr_bram_wr_addr0                                       (lr_bram_wr_addr0           ),
        .lr_bram_wr_addr1                                       (lr_bram_wr_addr1           ),
        .lr_bram_wr_addr2                                       (lr_bram_wr_addr2           ),
        .lr_bram_wr_en_B                                        (lr_bram_wr_en_B2           ),
        .lr_bram_wr_en_G                                        (lr_bram_wr_en_G2           ),
        .lr_bram_wr_en_R                                        (lr_bram_wr_en_R2           ),
        .lr_bram_rd_addr                                        (lr_bram_rd_addr            ),
        .lr_bram_rd_en                                          (lr_bram_rd_en              ),
        .M_AXI_RDATA                                            (M_AXI_RDATA                ),
        .lr_B0                                                  (lr_B2_0                    ),
        .lr_G0                                                  (lr_G2_0                    ),
        .lr_R0                                                  (lr_R2_0                    ),
        .lr_B1                                                  (lr_B2_1                    ),
        .lr_G1                                                  (lr_G2_1                    ),
        .lr_R1                                                  (lr_R2_1                    ),
        .lr_B2                                                  (lr_B2_2                    ),
        .lr_G2                                                  (lr_G2_2                    ),
        .lr_R2                                                  (lr_R2_2                    ),
        .lr_B3                                                  (lr_B2_3                    ),
        .lr_G3                                                  (lr_G2_3                    ),
        .lr_R3                                                  (lr_R2_3                    ),
        .lr_B4                                                  (lr_B2_4                    ),
        .lr_G4                                                  (lr_G2_4                    ),
        .lr_R4                                                  (lr_R2_4                    ),
        .lr_B5                                                  (lr_B2_5                    ),
        .lr_G5                                                  (lr_G2_5                    ),
        .lr_R5                                                  (lr_R2_5                    ),
        .lr_B6                                                  (lr_B2_6                    ),
        .lr_G6                                                  (lr_G2_6                    ),
        .lr_R6                                                  (lr_R2_6                    ),
        .lr_B7                                                  (lr_B2_7                    ),
        .lr_G7                                                  (lr_G2_7                    ),
        .lr_R7                                                  (lr_R2_7                    )
    );


lr_bram_group lr_bram_group_inst3(
        .clk                                                    (clk                        ),
        .rst_n                                                  (rst_n                      ),
        .lr_bram_wr_addr0                                       (lr_bram_wr_addr0           ),
        .lr_bram_wr_addr1                                       (lr_bram_wr_addr1           ),
        .lr_bram_wr_addr2                                       (lr_bram_wr_addr2           ),
        .lr_bram_wr_en_B                                        (lr_bram_wr_en_B3           ),
        .lr_bram_wr_en_G                                        (lr_bram_wr_en_G3           ),
        .lr_bram_wr_en_R                                        (lr_bram_wr_en_R3           ),
        .lr_bram_rd_addr                                        (lr_bram_rd_addr            ),
        .lr_bram_rd_en                                          (lr_bram_rd_en              ),
        .M_AXI_RDATA                                            (M_AXI_RDATA                ),
        .lr_B0                                                  (lr_B3_0                    ),
        .lr_G0                                                  (lr_G3_0                    ),
        .lr_R0                                                  (lr_R3_0                    ),
        .lr_B1                                                  (lr_B3_1                    ),
        .lr_G1                                                  (lr_G3_1                    ),
        .lr_R1                                                  (lr_R3_1                    ),
        .lr_B2                                                  (lr_B3_2                    ),
        .lr_G2                                                  (lr_G3_2                    ),
        .lr_R2                                                  (lr_R3_2                    ),
        .lr_B3                                                  (lr_B3_3                    ),
        .lr_G3                                                  (lr_G3_3                    ),
        .lr_R3                                                  (lr_R3_3                    ),
        .lr_B4                                                  (lr_B3_4                    ),
        .lr_G4                                                  (lr_G3_4                    ),
        .lr_R4                                                  (lr_R3_4                    ),
        .lr_B5                                                  (lr_B3_5                    ),
        .lr_G5                                                  (lr_G3_5                    ),
        .lr_R5                                                  (lr_R3_5                    ),
        .lr_B6                                                  (lr_B3_6                    ),
        .lr_G6                                                  (lr_G3_6                    ),
        .lr_R6                                                  (lr_R3_6                    ),
        .lr_B7                                                  (lr_B3_7                    ),
        .lr_G7                                                  (lr_G3_7                    ),
        .lr_R7                                                  (lr_R3_7                    )
    );

data_compute data_compute_inst(
        .clk                                                    (clk                        ),
        .cycle                                                  (cycle_r                    ),
        .mul_in_B                                               (mul_in_B                   ),
        .mul_in_G                                               (mul_in_G                   ),
        .mul_in_R                                               (mul_in_R                   ),
        .weight0_0                                              (weight0_0                  ),
        .weight0_1                                              (weight0_1                  ),
        .weight0_2                                              (weight0_2                  ),
        .weight0_3                                              (weight0_3                  ),
        .weight1_0                                              (weight1_0                  ),
        .weight1_1                                              (weight1_1                  ),
        .weight1_2                                              (weight1_2                  ),
        .weight1_3                                              (weight1_3                  ),
        .weight2_0                                              (weight2_0                  ),
        .weight2_1                                              (weight2_1                  ),
        .weight2_2                                              (weight2_2                  ),
        .weight2_3                                              (weight2_3                  ),
        .weight3_0                                              (weight3_0                  ),
        .weight3_1                                              (weight3_1                  ),
        .weight3_2                                              (weight3_2                  ),
        .weight3_3                                              (weight3_3                  ),
        .add_outB_0_0_rp                                        (add_outB_0_0_rp            ),
        .add_outB_0_1_rp                                        (add_outB_0_1_rp            ),
        .add_outB_0_2_rp                                        (add_outB_0_2_rp            ),
        .add_outB_0_3_rp                                        (add_outB_0_3_rp            ),
        .add_outB_1_0_rp                                        (add_outB_1_0_rp            ),
        .add_outB_1_1_rp                                        (add_outB_1_1_rp            ),
        .add_outB_1_2_rp                                        (add_outB_1_2_rp            ),
        .add_outB_1_3_rp                                        (add_outB_1_3_rp            ),
        .add_outB_2_0_rp                                        (add_outB_2_0_rp            ),
        .add_outB_2_1_rp                                        (add_outB_2_1_rp            ),
        .add_outB_2_2_rp                                        (add_outB_2_2_rp            ),
        .add_outB_2_3_rp                                        (add_outB_2_3_rp            ),
        .add_outB_3_0_rp                                        (add_outB_3_0_rp            ),
        .add_outB_3_1_rp                                        (add_outB_3_1_rp            ),
        .add_outB_3_2_rp                                        (add_outB_3_2_rp            ),
        .add_outB_3_3_rp                                        (add_outB_3_3_rp            ),
        .add_outG_0_0_rp                                        (add_outG_0_0_rp            ),
        .add_outG_0_1_rp                                        (add_outG_0_1_rp            ),
        .add_outG_0_2_rp                                        (add_outG_0_2_rp            ),
        .add_outG_0_3_rp                                        (add_outG_0_3_rp            ),
        .add_outG_1_0_rp                                        (add_outG_1_0_rp            ),
        .add_outG_1_1_rp                                        (add_outG_1_1_rp            ),
        .add_outG_1_2_rp                                        (add_outG_1_2_rp            ),
        .add_outG_1_3_rp                                        (add_outG_1_3_rp            ),
        .add_outG_2_0_rp                                        (add_outG_2_0_rp            ),
        .add_outG_2_1_rp                                        (add_outG_2_1_rp            ),
        .add_outG_2_2_rp                                        (add_outG_2_2_rp            ),
        .add_outG_2_3_rp                                        (add_outG_2_3_rp            ),
        .add_outG_3_0_rp                                        (add_outG_3_0_rp            ),
        .add_outG_3_1_rp                                        (add_outG_3_1_rp            ),
        .add_outG_3_2_rp                                        (add_outG_3_2_rp            ),
        .add_outG_3_3_rp                                        (add_outG_3_3_rp            ),
        .add_outR_0_0_rp                                        (add_outR_0_0_rp            ),
        .add_outR_0_1_rp                                        (add_outR_0_1_rp            ),
        .add_outR_0_2_rp                                        (add_outR_0_2_rp            ),
        .add_outR_0_3_rp                                        (add_outR_0_3_rp            ),
        .add_outR_1_0_rp                                        (add_outR_1_0_rp            ),
        .add_outR_1_1_rp                                        (add_outR_1_1_rp            ),
        .add_outR_1_2_rp                                        (add_outR_1_2_rp            ),
        .add_outR_1_3_rp                                        (add_outR_1_3_rp            ),
        .add_outR_2_0_rp                                        (add_outR_2_0_rp            ),
        .add_outR_2_1_rp                                        (add_outR_2_1_rp            ),
        .add_outR_2_2_rp                                        (add_outR_2_2_rp            ),
        .add_outR_2_3_rp                                        (add_outR_2_3_rp            ),
        .add_outR_3_0_rp                                        (add_outR_3_0_rp            ),
        .add_outR_3_1_rp                                        (add_outR_3_1_rp            ),
        .add_outR_3_2_rp                                        (add_outR_3_2_rp            ),
        .add_outR_3_3_rp                                        (add_outR_3_3_rp            )
    );


upsample_ctrl upsample_ctrl_inst(
        .clk                                                    (clk                        ),
        .rst_n                                                  (rst_n                      ),
        .isHD                                                   (isHD                       ),
        .cycle                                                  (cycle[1:0]                   ),
        .cycle_r                                                (cycle_r                    ),
        .download_req                                           (download_req               ),
        .upsample_vld                                           (upsample_vld               )
    );

endmodule
