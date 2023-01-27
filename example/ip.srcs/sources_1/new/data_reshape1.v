`timescale 1ns / 1ps

module data_reshape1(
        input   wire                                            clk                         ,
        input   wire[ 1:0]                                      lr_bram_rd_en               ,
        input   wire[ 7:0]                                      lr_bram_wr_en_B             ,
        input   wire[ 7:0]                                      lr_bram_wr_en_G             ,
        input   wire[ 7:0]                                      lr_bram_wr_en_R             ,
        input   wire[ 1:0]                                      lr_bram_sel                 ,
        input   wire[ 7:0]                                      lr_B0_0                     ,
        input   wire[ 7:0]                                      lr_G0_0                     ,
        input   wire[ 7:0]                                      lr_R0_0                     ,
        input   wire[ 7:0]                                      lr_B0_1                     ,
        input   wire[ 7:0]                                      lr_G0_1                     ,
        input   wire[ 7:0]                                      lr_R0_1                     ,
        input   wire[ 7:0]                                      lr_B0_2                     ,
        input   wire[ 7:0]                                      lr_G0_2                     ,
        input   wire[ 7:0]                                      lr_R0_2                     ,
        input   wire[ 7:0]                                      lr_B0_3                     ,
        input   wire[ 7:0]                                      lr_G0_3                     ,
        input   wire[ 7:0]                                      lr_R0_3                     ,
        input   wire[ 7:0]                                      lr_B0_4                     ,
        input   wire[ 7:0]                                      lr_G0_4                     ,
        input   wire[ 7:0]                                      lr_R0_4                     ,
        input   wire[ 7:0]                                      lr_B0_5                     ,
        input   wire[ 7:0]                                      lr_G0_5                     ,
        input   wire[ 7:0]                                      lr_R0_5                     ,
        input   wire[ 7:0]                                      lr_B0_6                     ,
        input   wire[ 7:0]                                      lr_G0_6                     ,
        input   wire[ 7:0]                                      lr_R0_6                     ,
        input   wire[ 7:0]                                      lr_B0_7                     ,
        input   wire[ 7:0]                                      lr_G0_7                     ,
        input   wire[ 7:0]                                      lr_R0_7                     ,
        input   wire[ 7:0]                                      lr_B1_0                     ,
        input   wire[ 7:0]                                      lr_G1_0                     ,
        input   wire[ 7:0]                                      lr_R1_0                     ,
        input   wire[ 7:0]                                      lr_B1_1                     ,
        input   wire[ 7:0]                                      lr_G1_1                     ,
        input   wire[ 7:0]                                      lr_R1_1                     ,
        input   wire[ 7:0]                                      lr_B1_2                     ,
        input   wire[ 7:0]                                      lr_G1_2                     ,
        input   wire[ 7:0]                                      lr_R1_2                     ,
        input   wire[ 7:0]                                      lr_B1_3                     ,
        input   wire[ 7:0]                                      lr_G1_3                     ,
        input   wire[ 7:0]                                      lr_R1_3                     ,
        input   wire[ 7:0]                                      lr_B1_4                     ,
        input   wire[ 7:0]                                      lr_G1_4                     ,
        input   wire[ 7:0]                                      lr_R1_4                     ,
        input   wire[ 7:0]                                      lr_B1_5                     ,
        input   wire[ 7:0]                                      lr_G1_5                     ,
        input   wire[ 7:0]                                      lr_R1_5                     ,
        input   wire[ 7:0]                                      lr_B1_6                     ,
        input   wire[ 7:0]                                      lr_G1_6                     ,
        input   wire[ 7:0]                                      lr_R1_6                     ,
        input   wire[ 7:0]                                      lr_B1_7                     ,
        input   wire[ 7:0]                                      lr_G1_7                     ,
        input   wire[ 7:0]                                      lr_R1_7                     ,
        input   wire[ 7:0]                                      lr_B2_0                     ,
        input   wire[ 7:0]                                      lr_G2_0                     ,
        input   wire[ 7:0]                                      lr_R2_0                     ,
        input   wire[ 7:0]                                      lr_B2_1                     ,
        input   wire[ 7:0]                                      lr_G2_1                     ,
        input   wire[ 7:0]                                      lr_R2_1                     ,
        input   wire[ 7:0]                                      lr_B2_2                     ,
        input   wire[ 7:0]                                      lr_G2_2                     ,
        input   wire[ 7:0]                                      lr_R2_2                     ,
        input   wire[ 7:0]                                      lr_B2_3                     ,
        input   wire[ 7:0]                                      lr_G2_3                     ,
        input   wire[ 7:0]                                      lr_R2_3                     ,
        input   wire[ 7:0]                                      lr_B2_4                     ,
        input   wire[ 7:0]                                      lr_G2_4                     ,
        input   wire[ 7:0]                                      lr_R2_4                     ,
        input   wire[ 7:0]                                      lr_B2_5                     ,
        input   wire[ 7:0]                                      lr_G2_5                     ,
        input   wire[ 7:0]                                      lr_R2_5                     ,
        input   wire[ 7:0]                                      lr_B2_6                     ,
        input   wire[ 7:0]                                      lr_G2_6                     ,
        input   wire[ 7:0]                                      lr_R2_6                     ,
        input   wire[ 7:0]                                      lr_B2_7                     ,
        input   wire[ 7:0]                                      lr_G2_7                     ,
        input   wire[ 7:0]                                      lr_R2_7                     ,
        input   wire[ 7:0]                                      lr_B3_0                     ,
        input   wire[ 7:0]                                      lr_G3_0                     ,
        input   wire[ 7:0]                                      lr_R3_0                     ,
        input   wire[ 7:0]                                      lr_B3_1                     ,
        input   wire[ 7:0]                                      lr_G3_1                     ,
        input   wire[ 7:0]                                      lr_R3_1                     ,
        input   wire[ 7:0]                                      lr_B3_2                     ,
        input   wire[ 7:0]                                      lr_G3_2                     ,
        input   wire[ 7:0]                                      lr_R3_2                     ,
        input   wire[ 7:0]                                      lr_B3_3                     ,
        input   wire[ 7:0]                                      lr_G3_3                     ,
        input   wire[ 7:0]                                      lr_R3_3                     ,
        input   wire[ 7:0]                                      lr_B3_4                     ,
        input   wire[ 7:0]                                      lr_G3_4                     ,
        input   wire[ 7:0]                                      lr_R3_4                     ,
        input   wire[ 7:0]                                      lr_B3_5                     ,
        input   wire[ 7:0]                                      lr_G3_5                     ,
        input   wire[ 7:0]                                      lr_R3_5                     ,
        input   wire[ 7:0]                                      lr_B3_6                     ,
        input   wire[ 7:0]                                      lr_G3_6                     ,
        input   wire[ 7:0]                                      lr_R3_6                     ,
        input   wire[ 7:0]                                      lr_B3_7                     ,
        input   wire[ 7:0]                                      lr_G3_7                     ,
        input   wire[ 7:0]                                      lr_R3_7                     ,
        output  wire[31:0]                                      lr_B0                       ,
        output  wire[31:0]                                      lr_G0                       ,
        output  wire[31:0]                                      lr_R0                       ,
        output  wire[31:0]                                      lr_B1                       ,
        output  wire[31:0]                                      lr_G1                       ,
        output  wire[31:0]                                      lr_R1                       ,
        output  wire[31:0]                                      lr_B2                       ,
        output  wire[31:0]                                      lr_G2                       ,
        output  wire[31:0]                                      lr_R2                       ,
        output  wire[31:0]                                      lr_B3                       ,
        output  wire[31:0]                                      lr_G3                       ,
        output  wire[31:0]                                      lr_R3                       ,
        output  reg [ 7:0]                                      lr_bram_wr_en_B0            ,
        output  reg [ 7:0]                                      lr_bram_wr_en_G0            ,
        output  reg [ 7:0]                                      lr_bram_wr_en_R0            ,
        output  reg [ 7:0]                                      lr_bram_wr_en_B1            ,
        output  reg [ 7:0]                                      lr_bram_wr_en_G1            ,
        output  reg [ 7:0]                                      lr_bram_wr_en_R1            ,
        output  reg [ 7:0]                                      lr_bram_wr_en_B2            ,
        output  reg [ 7:0]                                      lr_bram_wr_en_G2            ,
        output  reg [ 7:0]                                      lr_bram_wr_en_R2            ,
        output  reg [ 7:0]                                      lr_bram_wr_en_B3            ,
        output  reg [ 7:0]                                      lr_bram_wr_en_G3            ,
        output  reg [ 7:0]                                      lr_bram_wr_en_R3            
    );

        reg [ 7:0]                                              lr_B0_0_rp                     ;
        reg [ 7:0]                                              lr_G0_0_rp                     ;
        reg [ 7:0]                                              lr_R0_0_rp                     ;
        reg [ 7:0]                                              lr_B0_1_rp                     ;
        reg [ 7:0]                                              lr_G0_1_rp                     ;
        reg [ 7:0]                                              lr_R0_1_rp                     ;
        reg [ 7:0]                                              lr_B0_2_rp                     ;
        reg [ 7:0]                                              lr_G0_2_rp                     ;
        reg [ 7:0]                                              lr_R0_2_rp                     ;
        reg [ 7:0]                                              lr_B0_3_rp                     ;
        reg [ 7:0]                                              lr_G0_3_rp                     ;
        reg [ 7:0]                                              lr_R0_3_rp                     ;
        reg [ 7:0]                                              lr_B0_4_rp                     ;
        reg [ 7:0]                                              lr_G0_4_rp                     ;
        reg [ 7:0]                                              lr_R0_4_rp                     ;
        reg [ 7:0]                                              lr_B0_5_rp                     ;
        reg [ 7:0]                                              lr_G0_5_rp                     ;
        reg [ 7:0]                                              lr_R0_5_rp                     ;
        reg [ 7:0]                                              lr_B0_6_rp                     ;
        reg [ 7:0]                                              lr_G0_6_rp                     ;
        reg [ 7:0]                                              lr_R0_6_rp                     ;
        reg [ 7:0]                                              lr_B0_7_rp                     ;
        reg [ 7:0]                                              lr_G0_7_rp                     ;
        reg [ 7:0]                                              lr_R0_7_rp                     ;
        reg [ 7:0]                                              lr_B1_0_rp                     ;
        reg [ 7:0]                                              lr_G1_0_rp                     ;
        reg [ 7:0]                                              lr_R1_0_rp                     ;
        reg [ 7:0]                                              lr_B1_1_rp                     ;
        reg [ 7:0]                                              lr_G1_1_rp                     ;
        reg [ 7:0]                                              lr_R1_1_rp                     ;
        reg [ 7:0]                                              lr_B1_2_rp                     ;
        reg [ 7:0]                                              lr_G1_2_rp                     ;
        reg [ 7:0]                                              lr_R1_2_rp                     ;
        reg [ 7:0]                                              lr_B1_3_rp                     ;
        reg [ 7:0]                                              lr_G1_3_rp                     ;
        reg [ 7:0]                                              lr_R1_3_rp                     ;
        reg [ 7:0]                                              lr_B1_4_rp                     ;
        reg [ 7:0]                                              lr_G1_4_rp                     ;
        reg [ 7:0]                                              lr_R1_4_rp                     ;
        reg [ 7:0]                                              lr_B1_5_rp                     ;
        reg [ 7:0]                                              lr_G1_5_rp                     ;
        reg [ 7:0]                                              lr_R1_5_rp                     ;
        reg [ 7:0]                                              lr_B1_6_rp                     ;
        reg [ 7:0]                                              lr_G1_6_rp                     ;
        reg [ 7:0]                                              lr_R1_6_rp                     ;
        reg [ 7:0]                                              lr_B1_7_rp                     ;
        reg [ 7:0]                                              lr_G1_7_rp                     ;
        reg [ 7:0]                                              lr_R1_7_rp                     ;
        reg [ 7:0]                                              lr_B2_0_rp                     ;
        reg [ 7:0]                                              lr_G2_0_rp                     ;
        reg [ 7:0]                                              lr_R2_0_rp                     ;
        reg [ 7:0]                                              lr_B2_1_rp                     ;
        reg [ 7:0]                                              lr_G2_1_rp                     ;
        reg [ 7:0]                                              lr_R2_1_rp                     ;
        reg [ 7:0]                                              lr_B2_2_rp                     ;
        reg [ 7:0]                                              lr_G2_2_rp                     ;
        reg [ 7:0]                                              lr_R2_2_rp                     ;
        reg [ 7:0]                                              lr_B2_3_rp                     ;
        reg [ 7:0]                                              lr_G2_3_rp                     ;
        reg [ 7:0]                                              lr_R2_3_rp                     ;
        reg [ 7:0]                                              lr_B2_4_rp                     ;
        reg [ 7:0]                                              lr_G2_4_rp                     ;
        reg [ 7:0]                                              lr_R2_4_rp                     ;
        reg [ 7:0]                                              lr_B2_5_rp                     ;
        reg [ 7:0]                                              lr_G2_5_rp                     ;
        reg [ 7:0]                                              lr_R2_5_rp                     ;
        reg [ 7:0]                                              lr_B2_6_rp                     ;
        reg [ 7:0]                                              lr_G2_6_rp                     ;
        reg [ 7:0]                                              lr_R2_6_rp                     ;
        reg [ 7:0]                                              lr_B2_7_rp                     ;
        reg [ 7:0]                                              lr_G2_7_rp                     ;
        reg [ 7:0]                                              lr_R2_7_rp                     ;
        reg [ 7:0]                                              lr_B3_0_rp                     ;
        reg [ 7:0]                                              lr_G3_0_rp                     ;
        reg [ 7:0]                                              lr_R3_0_rp                     ;
        reg [ 7:0]                                              lr_B3_1_rp                     ;
        reg [ 7:0]                                              lr_G3_1_rp                     ;
        reg [ 7:0]                                              lr_R3_1_rp                     ;
        reg [ 7:0]                                              lr_B3_2_rp                     ;
        reg [ 7:0]                                              lr_G3_2_rp                     ;
        reg [ 7:0]                                              lr_R3_2_rp                     ;
        reg [ 7:0]                                              lr_B3_3_rp                     ;
        reg [ 7:0]                                              lr_G3_3_rp                     ;
        reg [ 7:0]                                              lr_R3_3_rp                     ;
        reg [ 7:0]                                              lr_B3_4_rp                     ;
        reg [ 7:0]                                              lr_G3_4_rp                     ;
        reg [ 7:0]                                              lr_R3_4_rp                     ;
        reg [ 7:0]                                              lr_B3_5_rp                     ;
        reg [ 7:0]                                              lr_G3_5_rp                     ;
        reg [ 7:0]                                              lr_R3_5_rp                     ;
        reg [ 7:0]                                              lr_B3_6_rp                     ;
        reg [ 7:0]                                              lr_G3_6_rp                     ;
        reg [ 7:0]                                              lr_R3_6_rp                     ;
        reg [ 7:0]                                              lr_B3_7_rp                     ;
        reg [ 7:0]                                              lr_G3_7_rp                     ;
        reg [ 7:0]                                              lr_R3_7_rp                     ;

        reg [ 1:0]                                              lr_bram_rd_en_r             ;

        assign      lr_B0           =                           lr_bram_rd_en_r[1]?
                                                                {lr_B0_7_rp,lr_B0_6_rp,lr_B0_5_rp,lr_B0_4_rp}:
                                                                {lr_B0_3_rp,lr_B0_2_rp,lr_B0_1_rp,lr_B0_0_rp};
        assign      lr_G0           =                           lr_bram_rd_en_r[1]?
                                                                {lr_G0_7_rp,lr_G0_6_rp,lr_G0_5_rp,lr_G0_4_rp}:
                                                                {lr_G0_3_rp,lr_G0_2_rp,lr_G0_1_rp,lr_G0_0_rp};
        assign      lr_R0           =                           lr_bram_rd_en_r[1]?
                                                                {lr_R0_7_rp,lr_R0_6_rp,lr_R0_5_rp,lr_R0_4_rp}:
                                                                {lr_R0_3_rp,lr_R0_2_rp,lr_R0_1_rp,lr_R0_0_rp};
        assign      lr_B1           =                           lr_bram_rd_en_r[1]?
                                                                {lr_B1_7_rp,lr_B1_6_rp,lr_B1_5_rp,lr_B1_4_rp}:
                                                                {lr_B1_3_rp,lr_B1_2_rp,lr_B1_1_rp,lr_B1_0_rp};
        assign      lr_G1           =                           lr_bram_rd_en_r[1]?
                                                                {lr_G1_7_rp,lr_G1_6_rp,lr_G1_5_rp,lr_G1_4_rp}:
                                                                {lr_G1_3_rp,lr_G1_2_rp,lr_G1_1_rp,lr_G1_0_rp};
        assign      lr_R1           =                           lr_bram_rd_en_r[1]?
                                                                {lr_R1_7_rp,lr_R1_6_rp,lr_R1_5_rp,lr_R1_4_rp}:
                                                                {lr_R1_3_rp,lr_R1_2_rp,lr_R1_1_rp,lr_R1_0_rp};
        assign      lr_B2           =                           lr_bram_rd_en_r[1]?
                                                                {lr_B2_7_rp,lr_B2_6_rp,lr_B2_5_rp,lr_B2_4_rp}:
                                                                {lr_B2_3_rp,lr_B2_2_rp,lr_B2_1_rp,lr_B2_0_rp};
        assign      lr_G2           =                           lr_bram_rd_en_r[1]?
                                                                {lr_G2_7_rp,lr_G2_6_rp,lr_G2_5_rp,lr_G2_4_rp}:
                                                                {lr_G2_3_rp,lr_G2_2_rp,lr_G2_1_rp,lr_G2_0_rp};
        assign      lr_R2           =                           lr_bram_rd_en_r[1]?
                                                                {lr_R2_7_rp,lr_R2_6_rp,lr_R2_5_rp,lr_R2_4_rp}:
                                                                {lr_R2_3_rp,lr_R2_2_rp,lr_R2_1_rp,lr_R2_0_rp};
        assign      lr_B3           =                           lr_bram_rd_en_r[1]?
                                                                {lr_B3_7_rp,lr_B3_6_rp,lr_B3_5_rp,lr_B3_4_rp}:
                                                                {lr_B3_3_rp,lr_B3_2_rp,lr_B3_1_rp,lr_B3_0_rp};
        assign      lr_G3           =                           lr_bram_rd_en_r[1]?
                                                                {lr_G3_7_rp,lr_G3_6_rp,lr_G3_5_rp,lr_G3_4_rp}:
                                                                {lr_G3_3_rp,lr_G3_2_rp,lr_G3_1_rp,lr_G3_0_rp};
        assign      lr_R3           =                           lr_bram_rd_en_r[1]?
                                                                {lr_R3_7_rp,lr_R3_6_rp,lr_R3_5_rp,lr_R3_4_rp}:
                                                                {lr_R3_3_rp,lr_R3_2_rp,lr_R3_1_rp,lr_R3_0_rp};

        always@(posedge clk)
        begin
                    lr_bram_rd_en_r         <=                  lr_bram_rd_en                    ;
        end

        always@(*)
        begin
            case(lr_bram_sel)
                2'b00:
                begin
                    lr_bram_wr_en_B0        =                   lr_bram_wr_en_B                 ;
                    lr_bram_wr_en_G0        =                   lr_bram_wr_en_G                 ;
                    lr_bram_wr_en_R0        =                   lr_bram_wr_en_R                 ;
                    lr_bram_wr_en_B1        =                   8'b0                            ;
                    lr_bram_wr_en_G1        =                   8'b0                            ;
                    lr_bram_wr_en_R1        =                   8'b0                            ;
                    lr_bram_wr_en_B2        =                   8'b0                            ;
                    lr_bram_wr_en_G2        =                   8'b0                            ;
                    lr_bram_wr_en_R2        =                   8'b0                            ;
                    lr_bram_wr_en_B3        =                   8'b0                            ;
                    lr_bram_wr_en_G3        =                   8'b0                            ;
                    lr_bram_wr_en_R3        =                   8'b0                            ;
                    lr_B0_0_rp              =                   lr_B0_0                         ;
                    lr_G0_0_rp              =                   lr_G0_0                         ;
                    lr_R0_0_rp              =                   lr_R0_0                         ;
                    lr_B0_1_rp              =                   lr_B0_1                         ;
                    lr_G0_1_rp              =                   lr_G0_1                         ;
                    lr_R0_1_rp              =                   lr_R0_1                         ;
                    lr_B0_2_rp              =                   lr_B0_2                         ;
                    lr_G0_2_rp              =                   lr_G0_2                         ;
                    lr_R0_2_rp              =                   lr_R0_2                         ;
                    lr_B0_3_rp              =                   lr_B0_3                         ;
                    lr_G0_3_rp              =                   lr_G0_3                         ;
                    lr_R0_3_rp              =                   lr_R0_3                         ;
                    lr_B0_4_rp              =                   lr_B0_4                         ;
                    lr_G0_4_rp              =                   lr_G0_4                         ;
                    lr_R0_4_rp              =                   lr_R0_4                         ;
                    lr_B0_5_rp              =                   lr_B0_5                         ;
                    lr_G0_5_rp              =                   lr_G0_5                         ;
                    lr_R0_5_rp              =                   lr_R0_5                         ;
                    lr_B0_6_rp              =                   lr_B0_6                         ;
                    lr_G0_6_rp              =                   lr_G0_6                         ;
                    lr_R0_6_rp              =                   lr_R0_6                         ;
                    lr_B0_7_rp              =                   lr_B0_7                         ;
                    lr_G0_7_rp              =                   lr_G0_7                         ;
                    lr_R0_7_rp              =                   lr_R0_7                         ;
                    lr_B1_0_rp              =                   lr_B1_0                         ;
                    lr_G1_0_rp              =                   lr_G1_0                         ;
                    lr_R1_0_rp              =                   lr_R1_0                         ;
                    lr_B1_1_rp              =                   lr_B1_1                         ;
                    lr_G1_1_rp              =                   lr_G1_1                         ;
                    lr_R1_1_rp              =                   lr_R1_1                         ;
                    lr_B1_2_rp              =                   lr_B1_2                         ;
                    lr_G1_2_rp              =                   lr_G1_2                         ;
                    lr_R1_2_rp              =                   lr_R1_2                         ;
                    lr_B1_3_rp              =                   lr_B1_3                         ;
                    lr_G1_3_rp              =                   lr_G1_3                         ;
                    lr_R1_3_rp              =                   lr_R1_3                         ;
                    lr_B1_4_rp              =                   lr_B1_4                         ;
                    lr_G1_4_rp              =                   lr_G1_4                         ;
                    lr_R1_4_rp              =                   lr_R1_4                         ;
                    lr_B1_5_rp              =                   lr_B1_5                         ;
                    lr_G1_5_rp              =                   lr_G1_5                         ;
                    lr_R1_5_rp              =                   lr_R1_5                         ;
                    lr_B1_6_rp              =                   lr_B1_6                         ;
                    lr_G1_6_rp              =                   lr_G1_6                         ;
                    lr_R1_6_rp              =                   lr_R1_6                         ;
                    lr_B1_7_rp              =                   lr_B1_7                         ;
                    lr_G1_7_rp              =                   lr_G1_7                         ;
                    lr_R1_7_rp              =                   lr_R1_7                         ;
                    lr_B2_0_rp              =                   lr_B2_0                         ;
                    lr_G2_0_rp              =                   lr_G2_0                         ;
                    lr_R2_0_rp              =                   lr_R2_0                         ;
                    lr_B2_1_rp              =                   lr_B2_1                         ;
                    lr_G2_1_rp              =                   lr_G2_1                         ;
                    lr_R2_1_rp              =                   lr_R2_1                         ;
                    lr_B2_2_rp              =                   lr_B2_2                         ;
                    lr_G2_2_rp              =                   lr_G2_2                         ;
                    lr_R2_2_rp              =                   lr_R2_2                         ;
                    lr_B2_3_rp              =                   lr_B2_3                         ;
                    lr_G2_3_rp              =                   lr_G2_3                         ;
                    lr_R2_3_rp              =                   lr_R2_3                         ;
                    lr_B2_4_rp              =                   lr_B2_4                         ;
                    lr_G2_4_rp              =                   lr_G2_4                         ;
                    lr_R2_4_rp              =                   lr_R2_4                         ;
                    lr_B2_5_rp              =                   lr_B2_5                         ;
                    lr_G2_5_rp              =                   lr_G2_5                         ;
                    lr_R2_5_rp              =                   lr_R2_5                         ;
                    lr_B2_6_rp              =                   lr_B2_6                         ;
                    lr_G2_6_rp              =                   lr_G2_6                         ;
                    lr_R2_6_rp              =                   lr_R2_6                         ;
                    lr_B2_7_rp              =                   lr_B2_7                         ;
                    lr_G2_7_rp              =                   lr_G2_7                         ;
                    lr_R2_7_rp              =                   lr_R2_7                         ;
                    lr_B3_0_rp              =                   lr_B3_0                         ;
                    lr_G3_0_rp              =                   lr_G3_0                         ;
                    lr_R3_0_rp              =                   lr_R3_0                         ;
                    lr_B3_1_rp              =                   lr_B3_1                         ;
                    lr_G3_1_rp              =                   lr_G3_1                         ;
                    lr_R3_1_rp              =                   lr_R3_1                         ;
                    lr_B3_2_rp              =                   lr_B3_2                         ;
                    lr_G3_2_rp              =                   lr_G3_2                         ;
                    lr_R3_2_rp              =                   lr_R3_2                         ;
                    lr_B3_3_rp              =                   lr_B3_3                         ;
                    lr_G3_3_rp              =                   lr_G3_3                         ;
                    lr_R3_3_rp              =                   lr_R3_3                         ;
                    lr_B3_4_rp              =                   lr_B3_4                         ;
                    lr_G3_4_rp              =                   lr_G3_4                         ;
                    lr_R3_4_rp              =                   lr_R3_4                         ;
                    lr_B3_5_rp              =                   lr_B3_5                         ;
                    lr_G3_5_rp              =                   lr_G3_5                         ;
                    lr_R3_5_rp              =                   lr_R3_5                         ;
                    lr_B3_6_rp              =                   lr_B3_6                         ;
                    lr_G3_6_rp              =                   lr_G3_6                         ;
                    lr_R3_6_rp              =                   lr_R3_6                         ;
                    lr_B3_7_rp              =                   lr_B3_7                         ;
                    lr_G3_7_rp              =                   lr_G3_7                         ;
                    lr_R3_7_rp              =                   lr_R3_7                         ;
                end
                2'b01:
                begin
                    lr_bram_wr_en_B0        =                   8'b0                            ;
                    lr_bram_wr_en_G0        =                   8'b0                            ;
                    lr_bram_wr_en_R0        =                   8'b0                            ;
                    lr_bram_wr_en_B1        =                   lr_bram_wr_en_B                 ;
                    lr_bram_wr_en_G1        =                   lr_bram_wr_en_G                 ;
                    lr_bram_wr_en_R1        =                   lr_bram_wr_en_R                 ;
                    lr_bram_wr_en_B2        =                   8'b0                            ;
                    lr_bram_wr_en_G2        =                   8'b0                            ;
                    lr_bram_wr_en_R2        =                   8'b0                            ;
                    lr_bram_wr_en_B3        =                   8'b0                            ;
                    lr_bram_wr_en_G3        =                   8'b0                            ;
                    lr_bram_wr_en_R3        =                   8'b0                            ;
                    lr_B0_0_rp              =                   lr_B1_0                         ;
                    lr_G0_0_rp              =                   lr_G1_0                         ;
                    lr_R0_0_rp              =                   lr_R1_0                         ;
                    lr_B0_1_rp              =                   lr_B1_1                         ;
                    lr_G0_1_rp              =                   lr_G1_1                         ;
                    lr_R0_1_rp              =                   lr_R1_1                         ;
                    lr_B0_2_rp              =                   lr_B1_2                         ;
                    lr_G0_2_rp              =                   lr_G1_2                         ;
                    lr_R0_2_rp              =                   lr_R1_2                         ;
                    lr_B0_3_rp              =                   lr_B1_3                         ;
                    lr_G0_3_rp              =                   lr_G1_3                         ;
                    lr_R0_3_rp              =                   lr_R1_3                         ;
                    lr_B0_4_rp              =                   lr_B1_4                         ;
                    lr_G0_4_rp              =                   lr_G1_4                         ;
                    lr_R0_4_rp              =                   lr_R1_4                         ;
                    lr_B0_5_rp              =                   lr_B1_5                         ;
                    lr_G0_5_rp              =                   lr_G1_5                         ;
                    lr_R0_5_rp              =                   lr_R1_5                         ;
                    lr_B0_6_rp              =                   lr_B1_6                         ;
                    lr_G0_6_rp              =                   lr_G1_6                         ;
                    lr_R0_6_rp              =                   lr_R1_6                         ;
                    lr_B0_7_rp              =                   lr_B1_7                         ;
                    lr_G0_7_rp              =                   lr_G1_7                         ;
                    lr_R0_7_rp              =                   lr_R1_7                         ;
                    lr_B1_0_rp              =                   lr_B2_0                         ;
                    lr_G1_0_rp              =                   lr_G2_0                         ;
                    lr_R1_0_rp              =                   lr_R2_0                         ;
                    lr_B1_1_rp              =                   lr_B2_1                         ;
                    lr_G1_1_rp              =                   lr_G2_1                         ;
                    lr_R1_1_rp              =                   lr_R2_1                         ;
                    lr_B1_2_rp              =                   lr_B2_2                         ;
                    lr_G1_2_rp              =                   lr_G2_2                         ;
                    lr_R1_2_rp              =                   lr_R2_2                         ;
                    lr_B1_3_rp              =                   lr_B2_3                         ;
                    lr_G1_3_rp              =                   lr_G2_3                         ;
                    lr_R1_3_rp              =                   lr_R2_3                         ;
                    lr_B1_4_rp              =                   lr_B2_4                         ;
                    lr_G1_4_rp              =                   lr_G2_4                         ;
                    lr_R1_4_rp              =                   lr_R2_4                         ;
                    lr_B1_5_rp              =                   lr_B2_5                         ;
                    lr_G1_5_rp              =                   lr_G2_5                         ;
                    lr_R1_5_rp              =                   lr_R2_5                         ;
                    lr_B1_6_rp              =                   lr_B2_6                         ;
                    lr_G1_6_rp              =                   lr_G2_6                         ;
                    lr_R1_6_rp              =                   lr_R2_6                         ;
                    lr_B1_7_rp              =                   lr_B2_7                         ;
                    lr_G1_7_rp              =                   lr_G2_7                         ;
                    lr_R1_7_rp              =                   lr_R2_7                         ;
                    lr_B2_0_rp              =                   lr_B3_0                         ;
                    lr_G2_0_rp              =                   lr_G3_0                         ;
                    lr_R2_0_rp              =                   lr_R3_0                         ;
                    lr_B2_1_rp              =                   lr_B3_1                         ;
                    lr_G2_1_rp              =                   lr_G3_1                         ;
                    lr_R2_1_rp              =                   lr_R3_1                         ;
                    lr_B2_2_rp              =                   lr_B3_2                         ;
                    lr_G2_2_rp              =                   lr_G3_2                         ;
                    lr_R2_2_rp              =                   lr_R3_2                         ;
                    lr_B2_3_rp              =                   lr_B3_3                         ;
                    lr_G2_3_rp              =                   lr_G3_3                         ;
                    lr_R2_3_rp              =                   lr_R3_3                         ;
                    lr_B2_4_rp              =                   lr_B3_4                         ;
                    lr_G2_4_rp              =                   lr_G3_4                         ;
                    lr_R2_4_rp              =                   lr_R3_4                         ;
                    lr_B2_5_rp              =                   lr_B3_5                         ;
                    lr_G2_5_rp              =                   lr_G3_5                         ;
                    lr_R2_5_rp              =                   lr_R3_5                         ;
                    lr_B2_6_rp              =                   lr_B3_6                         ;
                    lr_G2_6_rp              =                   lr_G3_6                         ;
                    lr_R2_6_rp              =                   lr_R3_6                         ;
                    lr_B2_7_rp              =                   lr_B3_7                         ;
                    lr_G2_7_rp              =                   lr_G3_7                         ;
                    lr_R2_7_rp              =                   lr_R3_7                         ;
                    lr_B3_0_rp              =                   lr_B0_0                         ;
                    lr_G3_0_rp              =                   lr_G0_0                         ;
                    lr_R3_0_rp              =                   lr_R0_0                         ;
                    lr_B3_1_rp              =                   lr_B0_1                         ;
                    lr_G3_1_rp              =                   lr_G0_1                         ;
                    lr_R3_1_rp              =                   lr_R0_1                         ;
                    lr_B3_2_rp              =                   lr_B0_2                         ;
                    lr_G3_2_rp              =                   lr_G0_2                         ;
                    lr_R3_2_rp              =                   lr_R0_2                         ;
                    lr_B3_3_rp              =                   lr_B0_3                         ;
                    lr_G3_3_rp              =                   lr_G0_3                         ;
                    lr_R3_3_rp              =                   lr_R0_3                         ;
                    lr_B3_4_rp              =                   lr_B0_4                         ;
                    lr_G3_4_rp              =                   lr_G0_4                         ;
                    lr_R3_4_rp              =                   lr_R0_4                         ;
                    lr_B3_5_rp              =                   lr_B0_5                         ;
                    lr_G3_5_rp              =                   lr_G0_5                         ;
                    lr_R3_5_rp              =                   lr_R0_5                         ;
                    lr_B3_6_rp              =                   lr_B0_6                         ;
                    lr_G3_6_rp              =                   lr_G0_6                         ;
                    lr_R3_6_rp              =                   lr_R0_6                         ;
                    lr_B3_7_rp              =                   lr_B0_7                         ;
                    lr_G3_7_rp              =                   lr_G0_7                         ;
                    lr_R3_7_rp              =                   lr_R0_7                         ;
                end
                2'b10:
                begin
                    lr_bram_wr_en_B0        =                   8'b0                            ;
                    lr_bram_wr_en_G0        =                   8'b0                            ;
                    lr_bram_wr_en_R0        =                   8'b0                            ;
                    lr_bram_wr_en_B1        =                   8'b0                            ;
                    lr_bram_wr_en_G1        =                   8'b0                            ;
                    lr_bram_wr_en_R1        =                   8'b0                            ;
                    lr_bram_wr_en_B2        =                   lr_bram_wr_en_B                 ;
                    lr_bram_wr_en_G2        =                   lr_bram_wr_en_G                 ;
                    lr_bram_wr_en_R2        =                   lr_bram_wr_en_R                 ;
                    lr_bram_wr_en_B3        =                   8'b0                            ;
                    lr_bram_wr_en_G3        =                   8'b0                            ;
                    lr_bram_wr_en_R3        =                   8'b0                            ;
                    lr_B0_0_rp              =                   lr_B2_0                         ;
                    lr_G0_0_rp              =                   lr_G2_0                         ;
                    lr_R0_0_rp              =                   lr_R2_0                         ;
                    lr_B0_1_rp              =                   lr_B2_1                         ;
                    lr_G0_1_rp              =                   lr_G2_1                         ;
                    lr_R0_1_rp              =                   lr_R2_1                         ;
                    lr_B0_2_rp              =                   lr_B2_2                         ;
                    lr_G0_2_rp              =                   lr_G2_2                         ;
                    lr_R0_2_rp              =                   lr_R2_2                         ;
                    lr_B0_3_rp              =                   lr_B2_3                         ;
                    lr_G0_3_rp              =                   lr_G2_3                         ;
                    lr_R0_3_rp              =                   lr_R2_3                         ;
                    lr_B0_4_rp              =                   lr_B2_4                         ;
                    lr_G0_4_rp              =                   lr_G2_4                         ;
                    lr_R0_4_rp              =                   lr_R2_4                         ;
                    lr_B0_5_rp              =                   lr_B2_5                         ;
                    lr_G0_5_rp              =                   lr_G2_5                         ;
                    lr_R0_5_rp              =                   lr_R2_5                         ;
                    lr_B0_6_rp              =                   lr_B2_6                         ;
                    lr_G0_6_rp              =                   lr_G2_6                         ;
                    lr_R0_6_rp              =                   lr_R2_6                         ;
                    lr_B0_7_rp              =                   lr_B2_7                         ;
                    lr_G0_7_rp              =                   lr_G2_7                         ;
                    lr_R0_7_rp              =                   lr_R2_7                         ;
                    lr_B1_0_rp              =                   lr_B3_0                         ;
                    lr_G1_0_rp              =                   lr_G3_0                         ;
                    lr_R1_0_rp              =                   lr_R3_0                         ;
                    lr_B1_1_rp              =                   lr_B3_1                         ;
                    lr_G1_1_rp              =                   lr_G3_1                         ;
                    lr_R1_1_rp              =                   lr_R3_1                         ;
                    lr_B1_2_rp              =                   lr_B3_2                         ;
                    lr_G1_2_rp              =                   lr_G3_2                         ;
                    lr_R1_2_rp              =                   lr_R3_2                         ;
                    lr_B1_3_rp              =                   lr_B3_3                         ;
                    lr_G1_3_rp              =                   lr_G3_3                         ;
                    lr_R1_3_rp              =                   lr_R3_3                         ;
                    lr_B1_4_rp              =                   lr_B3_4                         ;
                    lr_G1_4_rp              =                   lr_G3_4                         ;
                    lr_R1_4_rp              =                   lr_R3_4                         ;
                    lr_B1_5_rp              =                   lr_B3_5                         ;
                    lr_G1_5_rp              =                   lr_G3_5                         ;
                    lr_R1_5_rp              =                   lr_R3_5                         ;
                    lr_B1_6_rp              =                   lr_B3_6                         ;
                    lr_G1_6_rp              =                   lr_G3_6                         ;
                    lr_R1_6_rp              =                   lr_R3_6                         ;
                    lr_B1_7_rp              =                   lr_B3_7                         ;
                    lr_G1_7_rp              =                   lr_G3_7                         ;
                    lr_R1_7_rp              =                   lr_R3_7                         ;
                    lr_B2_0_rp              =                   lr_B0_0                         ;
                    lr_G2_0_rp              =                   lr_G0_0                         ;
                    lr_R2_0_rp              =                   lr_R0_0                         ;
                    lr_B2_1_rp              =                   lr_B0_1                         ;
                    lr_G2_1_rp              =                   lr_G0_1                         ;
                    lr_R2_1_rp              =                   lr_R0_1                         ;
                    lr_B2_2_rp              =                   lr_B0_2                         ;
                    lr_G2_2_rp              =                   lr_G0_2                         ;
                    lr_R2_2_rp              =                   lr_R0_2                         ;
                    lr_B2_3_rp              =                   lr_B0_3                         ;
                    lr_G2_3_rp              =                   lr_G0_3                         ;
                    lr_R2_3_rp              =                   lr_R0_3                         ;
                    lr_B2_4_rp              =                   lr_B0_4                         ;
                    lr_G2_4_rp              =                   lr_G0_4                         ;
                    lr_R2_4_rp              =                   lr_R0_4                         ;
                    lr_B2_5_rp              =                   lr_B0_5                         ;
                    lr_G2_5_rp              =                   lr_G0_5                         ;
                    lr_R2_5_rp              =                   lr_R0_5                         ;
                    lr_B2_6_rp              =                   lr_B0_6                         ;
                    lr_G2_6_rp              =                   lr_G0_6                         ;
                    lr_R2_6_rp              =                   lr_R0_6                         ;
                    lr_B2_7_rp              =                   lr_B0_7                         ;
                    lr_G2_7_rp              =                   lr_G0_7                         ;
                    lr_R2_7_rp              =                   lr_R0_7                         ;
                    lr_B3_0_rp              =                   lr_B1_0                         ;
                    lr_G3_0_rp              =                   lr_G1_0                         ;
                    lr_R3_0_rp              =                   lr_R1_0                         ;
                    lr_B3_1_rp              =                   lr_B1_1                         ;
                    lr_G3_1_rp              =                   lr_G1_1                         ;
                    lr_R3_1_rp              =                   lr_R1_1                         ;
                    lr_B3_2_rp              =                   lr_B1_2                         ;
                    lr_G3_2_rp              =                   lr_G1_2                         ;
                    lr_R3_2_rp              =                   lr_R1_2                         ;
                    lr_B3_3_rp              =                   lr_B1_3                         ;
                    lr_G3_3_rp              =                   lr_G1_3                         ;
                    lr_R3_3_rp              =                   lr_R1_3                         ;
                    lr_B3_4_rp              =                   lr_B1_4                         ;
                    lr_G3_4_rp              =                   lr_G1_4                         ;
                    lr_R3_4_rp              =                   lr_R1_4                         ;
                    lr_B3_5_rp              =                   lr_B1_5                         ;
                    lr_G3_5_rp              =                   lr_G1_5                         ;
                    lr_R3_5_rp              =                   lr_R1_5                         ;
                    lr_B3_6_rp              =                   lr_B1_6                         ;
                    lr_G3_6_rp              =                   lr_G1_6                         ;
                    lr_R3_6_rp              =                   lr_R1_6                         ;
                    lr_B3_7_rp              =                   lr_B1_7                         ;
                    lr_G3_7_rp              =                   lr_G1_7                         ;
                    lr_R3_7_rp              =                   lr_R1_7                         ;
                end
                2'b11:
                begin
                    lr_bram_wr_en_B0        =                   8'b0                            ;
                    lr_bram_wr_en_G0        =                   8'b0                            ;
                    lr_bram_wr_en_R0        =                   8'b0                            ;
                    lr_bram_wr_en_B1        =                   8'b0                            ;
                    lr_bram_wr_en_G1        =                   8'b0                            ;
                    lr_bram_wr_en_R1        =                   8'b0                            ;
                    lr_bram_wr_en_B2        =                   8'b0                            ;
                    lr_bram_wr_en_G2        =                   8'b0                            ;
                    lr_bram_wr_en_R2        =                   8'b0                            ;
                    lr_bram_wr_en_B3        =                   lr_bram_wr_en_B                 ;
                    lr_bram_wr_en_G3        =                   lr_bram_wr_en_G                 ;
                    lr_bram_wr_en_R3        =                   lr_bram_wr_en_R                 ;
                    lr_B0_0_rp              =                   lr_B3_0                         ;
                    lr_G0_0_rp              =                   lr_G3_0                         ;
                    lr_R0_0_rp              =                   lr_R3_0                         ;
                    lr_B0_1_rp              =                   lr_B3_1                         ;
                    lr_G0_1_rp              =                   lr_G3_1                         ;
                    lr_R0_1_rp              =                   lr_R3_1                         ;
                    lr_B0_2_rp              =                   lr_B3_2                         ;
                    lr_G0_2_rp              =                   lr_G3_2                         ;
                    lr_R0_2_rp              =                   lr_R3_2                         ;
                    lr_B0_3_rp              =                   lr_B3_3                         ;
                    lr_G0_3_rp              =                   lr_G3_3                         ;
                    lr_R0_3_rp              =                   lr_R3_3                         ;
                    lr_B0_4_rp              =                   lr_B3_4                         ;
                    lr_G0_4_rp              =                   lr_G3_4                         ;
                    lr_R0_4_rp              =                   lr_R3_4                         ;
                    lr_B0_5_rp              =                   lr_B3_5                         ;
                    lr_G0_5_rp              =                   lr_G3_5                         ;
                    lr_R0_5_rp              =                   lr_R3_5                         ;
                    lr_B0_6_rp              =                   lr_B3_6                         ;
                    lr_G0_6_rp              =                   lr_G3_6                         ;
                    lr_R0_6_rp              =                   lr_R3_6                         ;
                    lr_B0_7_rp              =                   lr_B3_7                         ;
                    lr_G0_7_rp              =                   lr_G3_7                         ;
                    lr_R0_7_rp              =                   lr_R3_7                         ;
                    lr_B1_0_rp              =                   lr_B0_0                         ;
                    lr_G1_0_rp              =                   lr_G0_0                         ;
                    lr_R1_0_rp              =                   lr_R0_0                         ;
                    lr_B1_1_rp              =                   lr_B0_1                         ;
                    lr_G1_1_rp              =                   lr_G0_1                         ;
                    lr_R1_1_rp              =                   lr_R0_1                         ;
                    lr_B1_2_rp              =                   lr_B0_2                         ;
                    lr_G1_2_rp              =                   lr_G0_2                         ;
                    lr_R1_2_rp              =                   lr_R0_2                         ;
                    lr_B1_3_rp              =                   lr_B0_3                         ;
                    lr_G1_3_rp              =                   lr_G0_3                         ;
                    lr_R1_3_rp              =                   lr_R0_3                         ;
                    lr_B1_4_rp              =                   lr_B0_4                         ;
                    lr_G1_4_rp              =                   lr_G0_4                         ;
                    lr_R1_4_rp              =                   lr_R0_4                         ;
                    lr_B1_5_rp              =                   lr_B0_5                         ;
                    lr_G1_5_rp              =                   lr_G0_5                         ;
                    lr_R1_5_rp              =                   lr_R0_5                         ;
                    lr_B1_6_rp              =                   lr_B0_6                         ;
                    lr_G1_6_rp              =                   lr_G0_6                         ;
                    lr_R1_6_rp              =                   lr_R0_6                         ;
                    lr_B1_7_rp              =                   lr_B0_7                         ;
                    lr_G1_7_rp              =                   lr_G0_7                         ;
                    lr_R1_7_rp              =                   lr_R0_7                         ;
                    lr_B2_0_rp              =                   lr_B1_0                         ;
                    lr_G2_0_rp              =                   lr_G1_0                         ;
                    lr_R2_0_rp              =                   lr_R1_0                         ;
                    lr_B2_1_rp              =                   lr_B1_1                         ;
                    lr_G2_1_rp              =                   lr_G1_1                         ;
                    lr_R2_1_rp              =                   lr_R1_1                         ;
                    lr_B2_2_rp              =                   lr_B1_2                         ;
                    lr_G2_2_rp              =                   lr_G1_2                         ;
                    lr_R2_2_rp              =                   lr_R1_2                         ;
                    lr_B2_3_rp              =                   lr_B1_3                         ;
                    lr_G2_3_rp              =                   lr_G1_3                         ;
                    lr_R2_3_rp              =                   lr_R1_3                         ;
                    lr_B2_4_rp              =                   lr_B1_4                         ;
                    lr_G2_4_rp              =                   lr_G1_4                         ;
                    lr_R2_4_rp              =                   lr_R1_4                         ;
                    lr_B2_5_rp              =                   lr_B1_5                         ;
                    lr_G2_5_rp              =                   lr_G1_5                         ;
                    lr_R2_5_rp              =                   lr_R1_5                         ;
                    lr_B2_6_rp              =                   lr_B1_6                         ;
                    lr_G2_6_rp              =                   lr_G1_6                         ;
                    lr_R2_6_rp              =                   lr_R1_6                         ;
                    lr_B2_7_rp              =                   lr_B1_7                         ;
                    lr_G2_7_rp              =                   lr_G1_7                         ;
                    lr_R2_7_rp              =                   lr_R1_7                         ;
                    lr_B3_0_rp              =                   lr_B2_0                         ;
                    lr_G3_0_rp              =                   lr_G2_0                         ;
                    lr_R3_0_rp              =                   lr_R2_0                         ;
                    lr_B3_1_rp              =                   lr_B2_1                         ;
                    lr_G3_1_rp              =                   lr_G2_1                         ;
                    lr_R3_1_rp              =                   lr_R2_1                         ;
                    lr_B3_2_rp              =                   lr_B2_2                         ;
                    lr_G3_2_rp              =                   lr_G2_2                         ;
                    lr_R3_2_rp              =                   lr_R2_2                         ;
                    lr_B3_3_rp              =                   lr_B2_3                         ;
                    lr_G3_3_rp              =                   lr_G2_3                         ;
                    lr_R3_3_rp              =                   lr_R2_3                         ;
                    lr_B3_4_rp              =                   lr_B2_4                         ;
                    lr_G3_4_rp              =                   lr_G2_4                         ;
                    lr_R3_4_rp              =                   lr_R2_4                         ;
                    lr_B3_5_rp              =                   lr_B2_5                         ;
                    lr_G3_5_rp              =                   lr_G2_5                         ;
                    lr_R3_5_rp              =                   lr_R2_5                         ;
                    lr_B3_6_rp              =                   lr_B2_6                         ;
                    lr_G3_6_rp              =                   lr_G2_6                         ;
                    lr_R3_6_rp              =                   lr_R2_6                         ;
                    lr_B3_7_rp              =                   lr_B2_7                         ;
                    lr_G3_7_rp              =                   lr_G2_7                         ;
                    lr_R3_7_rp              =                   lr_R2_7                         ;
                end
                default:
                begin
                    lr_bram_wr_en_B0        =                   8'b0                            ;
                    lr_bram_wr_en_G0        =                   8'b0                            ;
                    lr_bram_wr_en_R0        =                   8'b0                            ;
                    lr_bram_wr_en_B1        =                   8'b0                            ;
                    lr_bram_wr_en_G1        =                   8'b0                            ;
                    lr_bram_wr_en_R1        =                   8'b0                            ;
                    lr_bram_wr_en_B2        =                   8'b0                            ;
                    lr_bram_wr_en_G2        =                   8'b0                            ;
                    lr_bram_wr_en_R2        =                   8'b0                            ;
                    lr_bram_wr_en_B3        =                   8'b0                            ;
                    lr_bram_wr_en_G3        =                   8'b0                            ;
                    lr_bram_wr_en_R3        =                   8'b0                            ;
                    lr_B0_0_rp              =                   lr_B0_0                         ;
                    lr_G0_0_rp              =                   lr_G0_0                         ;
                    lr_R0_0_rp              =                   lr_R0_0                         ;
                    lr_B0_1_rp              =                   lr_B0_1                         ;
                    lr_G0_1_rp              =                   lr_G0_1                         ;
                    lr_R0_1_rp              =                   lr_R0_1                         ;
                    lr_B0_2_rp              =                   lr_B0_2                         ;
                    lr_G0_2_rp              =                   lr_G0_2                         ;
                    lr_R0_2_rp              =                   lr_R0_2                         ;
                    lr_B0_3_rp              =                   lr_B0_3                         ;
                    lr_G0_3_rp              =                   lr_G0_3                         ;
                    lr_R0_3_rp              =                   lr_R0_3                         ;
                    lr_B0_4_rp              =                   lr_B0_4                         ;
                    lr_G0_4_rp              =                   lr_G0_4                         ;
                    lr_R0_4_rp              =                   lr_R0_4                         ;
                    lr_B0_5_rp              =                   lr_B0_5                         ;
                    lr_G0_5_rp              =                   lr_G0_5                         ;
                    lr_R0_5_rp              =                   lr_R0_5                         ;
                    lr_B0_6_rp              =                   lr_B0_6                         ;
                    lr_G0_6_rp              =                   lr_G0_6                         ;
                    lr_R0_6_rp              =                   lr_R0_6                         ;
                    lr_B0_7_rp              =                   lr_B0_7                         ;
                    lr_G0_7_rp              =                   lr_G0_7                         ;
                    lr_R0_7_rp              =                   lr_R0_7                         ;
                    lr_B1_0_rp              =                   lr_B1_0                         ;
                    lr_G1_0_rp              =                   lr_G1_0                         ;
                    lr_R1_0_rp              =                   lr_R1_0                         ;
                    lr_B1_1_rp              =                   lr_B1_1                         ;
                    lr_G1_1_rp              =                   lr_G1_1                         ;
                    lr_R1_1_rp              =                   lr_R1_1                         ;
                    lr_B1_2_rp              =                   lr_B1_2                         ;
                    lr_G1_2_rp              =                   lr_G1_2                         ;
                    lr_R1_2_rp              =                   lr_R1_2                         ;
                    lr_B1_3_rp              =                   lr_B1_3                         ;
                    lr_G1_3_rp              =                   lr_G1_3                         ;
                    lr_R1_3_rp              =                   lr_R1_3                         ;
                    lr_B1_4_rp              =                   lr_B1_4                         ;
                    lr_G1_4_rp              =                   lr_G1_4                         ;
                    lr_R1_4_rp              =                   lr_R1_4                         ;
                    lr_B1_5_rp              =                   lr_B1_5                         ;
                    lr_G1_5_rp              =                   lr_G1_5                         ;
                    lr_R1_5_rp              =                   lr_R1_5                         ;
                    lr_B1_6_rp              =                   lr_B1_6                         ;
                    lr_G1_6_rp              =                   lr_G1_6                         ;
                    lr_R1_6_rp              =                   lr_R1_6                         ;
                    lr_B1_7_rp              =                   lr_B1_7                         ;
                    lr_G1_7_rp              =                   lr_G1_7                         ;
                    lr_R1_7_rp              =                   lr_R1_7                         ;
                    lr_B2_0_rp              =                   lr_B2_0                         ;
                    lr_G2_0_rp              =                   lr_G2_0                         ;
                    lr_R2_0_rp              =                   lr_R2_0                         ;
                    lr_B2_1_rp              =                   lr_B2_1                         ;
                    lr_G2_1_rp              =                   lr_G2_1                         ;
                    lr_R2_1_rp              =                   lr_R2_1                         ;
                    lr_B2_2_rp              =                   lr_B2_2                         ;
                    lr_G2_2_rp              =                   lr_G2_2                         ;
                    lr_R2_2_rp              =                   lr_R2_2                         ;
                    lr_B2_3_rp              =                   lr_B2_3                         ;
                    lr_G2_3_rp              =                   lr_G2_3                         ;
                    lr_R2_3_rp              =                   lr_R2_3                         ;
                    lr_B2_4_rp              =                   lr_B2_4                         ;
                    lr_G2_4_rp              =                   lr_G2_4                         ;
                    lr_R2_4_rp              =                   lr_R2_4                         ;
                    lr_B2_5_rp              =                   lr_B2_5                         ;
                    lr_G2_5_rp              =                   lr_G2_5                         ;
                    lr_R2_5_rp              =                   lr_R2_5                         ;
                    lr_B2_6_rp              =                   lr_B2_6                         ;
                    lr_G2_6_rp              =                   lr_G2_6                         ;
                    lr_R2_6_rp              =                   lr_R2_6                         ;
                    lr_B2_7_rp              =                   lr_B2_7                         ;
                    lr_G2_7_rp              =                   lr_G2_7                         ;
                    lr_R2_7_rp              =                   lr_R2_7                         ;
                    lr_B3_0_rp              =                   lr_B3_0                         ;
                    lr_G3_0_rp              =                   lr_G3_0                         ;
                    lr_R3_0_rp              =                   lr_R3_0                         ;
                    lr_B3_1_rp              =                   lr_B3_1                         ;
                    lr_G3_1_rp              =                   lr_G3_1                         ;
                    lr_R3_1_rp              =                   lr_R3_1                         ;
                    lr_B3_2_rp              =                   lr_B3_2                         ;
                    lr_G3_2_rp              =                   lr_G3_2                         ;
                    lr_R3_2_rp              =                   lr_R3_2                         ;
                    lr_B3_3_rp              =                   lr_B3_3                         ;
                    lr_G3_3_rp              =                   lr_G3_3                         ;
                    lr_R3_3_rp              =                   lr_R3_3                         ;
                    lr_B3_4_rp              =                   lr_B3_4                         ;
                    lr_G3_4_rp              =                   lr_G3_4                         ;
                    lr_R3_4_rp              =                   lr_R3_4                         ;
                    lr_B3_5_rp              =                   lr_B3_5                         ;
                    lr_G3_5_rp              =                   lr_G3_5                         ;
                    lr_R3_5_rp              =                   lr_R3_5                         ;
                    lr_B3_6_rp              =                   lr_B3_6                         ;
                    lr_G3_6_rp              =                   lr_G3_6                         ;
                    lr_R3_6_rp              =                   lr_R3_6                         ;
                    lr_B3_7_rp              =                   lr_B3_7                         ;
                    lr_G3_7_rp              =                   lr_G3_7                         ;
                    lr_R3_7_rp              =                   lr_R3_7                         ;
                end
            endcase
        end
endmodule
