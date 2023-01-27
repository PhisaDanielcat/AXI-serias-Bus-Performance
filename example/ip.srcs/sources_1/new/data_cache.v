`timescale 1ns / 1ps

module data_cache
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
        input               wire[31:0]                          lr_B0                       ,
        input               wire[31:0]                          lr_G0                       ,
        input               wire[31:0]                          lr_R0                       ,
        input               wire[31:0]                          lr_B1                       ,
        input               wire[31:0]                          lr_G1                       ,
        input               wire[31:0]                          lr_R1                       ,
        input               wire[31:0]                          lr_B2                       ,
        input               wire[31:0]                          lr_G2                       ,
        input               wire[31:0]                          lr_R2                       ,
        input               wire[31:0]                          lr_B3                       ,
        input               wire[31:0]                          lr_G3                       ,
        input               wire[31:0]                          lr_R3                       ,
        output              reg [ 3:0]                          cycle                       ,
        output              reg                                 over                        ,
        output              wire                                isHD                        ,
        output              wire                                isEND0                      ,
        output              wire                                isEND1                      ,
        output              reg                                 download_req                ,
        output              wire[ 1:0]                          lr_bram_sel                 ,
        output              wire[271:0]                         weight0_0                   ,
        output              wire[271:0]                         weight0_1                   ,
        output              wire[271:0]                         weight0_2                   ,
        output              wire[271:0]                         weight0_3                   ,
        output              wire[271:0]                         weight1_0                   ,
        output              wire[271:0]                         weight1_1                   ,
        output              wire[271:0]                         weight1_2                   ,
        output              wire[271:0]                         weight1_3                   ,
        output              wire[271:0]                         weight2_0                   ,
        output              wire[271:0]                         weight2_1                   ,
        output              wire[271:0]                         weight2_2                   ,
        output              wire[271:0]                         weight2_3                   ,
        output              wire[271:0]                         weight3_0                   ,
        output              wire[271:0]                         weight3_1                   ,
        output              wire[271:0]                         weight3_2                   ,
        output              wire[271:0]                         weight3_3                   ,
        output              reg [ 6:0]                          lr_bram_wr_addr0            ,
        output              reg [ 6:0]                          lr_bram_wr_addr1            ,
        output              reg [ 6:0]                          lr_bram_wr_addr2            ,
        output              wire[ 7:0]                          lr_bram_wr_en_B             ,
        output              wire[ 7:0]                          lr_bram_wr_en_G             ,
        output              wire[ 7:0]                          lr_bram_wr_en_R             ,
        output              reg [ 6:0]                          lr_bram_rd_addr             ,
        output              reg [ 1:0]                          lr_bram_rd_en               ,
        output              reg [31:0]                          lr_B0_r0                    ,
        output              reg [31:0]                          lr_G0_r0                    ,
        output              reg [31:0]                          lr_R0_r0                    ,
        output              reg [31:0]                          lr_B1_r0                    ,
        output              reg [31:0]                          lr_G1_r0                    ,
        output              reg [31:0]                          lr_R1_r0                    ,
        output              reg [31:0]                          lr_B2_r0                    ,
        output              reg [31:0]                          lr_G2_r0                    ,
        output              reg [31:0]                          lr_R2_r0                    ,
        output              reg [31:0]                          lr_B3_r0                    ,
        output              reg [31:0]                          lr_G3_r0                    ,
        output              reg [31:0]                          lr_R3_r0                    ,
        output              reg [31:0]                          lr_B0_r1                    ,
        output              reg [31:0]                          lr_G0_r1                    ,
        output              reg [31:0]                          lr_R0_r1                    ,
        output              reg [31:0]                          lr_B1_r1                    ,
        output              reg [31:0]                          lr_G1_r1                    ,
        output              reg [31:0]                          lr_R1_r1                    ,
        output              reg [31:0]                          lr_B2_r1                    ,
        output              reg [31:0]                          lr_G2_r1                    ,
        output              reg [31:0]                          lr_R2_r1                    ,
        output              reg [31:0]                          lr_B3_r1                    ,
        output              reg [31:0]                          lr_G3_r1                    ,
        output              reg [31:0]                          lr_R3_r1                    
    );


        localparam          S_IDLE              =               4'b0001                     ;
        localparam          S_WEIGHT            =               4'b0011                     ;
        localparam          S_WAIT1             =               4'b0010                     ;
        localparam          S_LOAD              =               4'b0110                     ;
        localparam          S_WAIT2             =               4'b0111                     ;
        localparam          S_WAIT3             =               4'b0101                     ;
        localparam          S_WAIT4             =               4'b0100                     ;
        localparam          S_HD                =               4'b1100                     ;
        localparam          S_MID               =               4'b1101                     ;
        localparam          S_END0              =               4'b1111                     ;
        localparam          S_END1              =               4'b1011                     ;
        localparam          S_WAIT5             =               4'b1001                     ;

        
        reg [ 3:0]                                              state                       ;
        reg [ 3:0]                                              next_state                  ;
        reg                                                     Rlast_signal                ;
        reg [ 2:0]                                              choose_cnt                  ;
        reg [ 9:0]                                              lr_row_cnt                  ;
        reg [135:0]                                             weight0                     ;
        reg [135:0]                                             weight1                     ;
        reg [135:0]                                             weight2                     ;
        reg [135:0]                                             weight3                     ;
        reg [135:0]                                             weight4                     ;
        reg [135:0]                                             weight5                     ;
        reg [135:0]                                             weight6                     ;
        reg [135:0]                                             weight7                     ;
        

        assign              lr_bram_sel       =                 lr_row_cnt[1:0]             ;
        assign              lr_bram_wr_en_B[0]=                 choose_cnt[0]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_G[0]=                 choose_cnt[0]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_R[0]=                 choose_cnt[0]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_B[1]=                 choose_cnt[0]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_G[1]=                 choose_cnt[0]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_R[1]=                 choose_cnt[0]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_B[2]=                 choose_cnt[0]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_G[2]=                 choose_cnt[0]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_R[2]=                 choose_cnt[1]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_B[3]=                 choose_cnt[1]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_G[3]=                 choose_cnt[1]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_R[3]=                 choose_cnt[1]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_B[4]=                 choose_cnt[1]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_G[4]=                 choose_cnt[1]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_R[4]=                 choose_cnt[1]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_B[5]=                 choose_cnt[1]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_G[5]=                 choose_cnt[2]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_R[5]=                 choose_cnt[2]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_B[6]=                 choose_cnt[2]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_G[6]=                 choose_cnt[2]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_R[6]=                 choose_cnt[2]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_B[7]=                 choose_cnt[2]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_G[7]=                 choose_cnt[2]&M_AXI_RREADY&M_AXI_RVALID;
        assign              lr_bram_wr_en_R[7]=                 choose_cnt[2]&M_AXI_RREADY&M_AXI_RVALID;
        assign              isHD              =                 (state==S_HD)?1'b1:1'b0     ;
        assign              isEND0            =                 (state==S_END0)?1'b1:1'b0   ;
        assign              isEND1            =                 (state==S_END1)?1'b1:1'b0   ;
        assign              weight0_0         =                 {weight0[16: 0],weight0[33:17],weight0[50:34],weight0[67:51],weight0[84:68],weight0[101:85],weight0[118:102],weight0[135:119],weight0};
        assign              weight0_1         =                 {weight1[16: 0],weight1[33:17],weight1[50:34],weight1[67:51],weight1[84:68],weight1[101:85],weight1[118:102],weight1[135:119],weight1};
        assign              weight0_2         =                 {weight2[16: 0],weight2[33:17],weight2[50:34],weight2[67:51],weight2[84:68],weight2[101:85],weight2[118:102],weight2[135:119],weight2};
        assign              weight0_3         =                 {weight3[16: 0],weight3[33:17],weight3[50:34],weight3[67:51],weight3[84:68],weight3[101:85],weight3[118:102],weight3[135:119],weight3};
        assign              weight1_0         =                 {weight4[16: 0],weight4[33:17],weight4[50:34],weight4[67:51],weight4[84:68],weight4[101:85],weight4[118:102],weight4[135:119],weight4};
        assign              weight1_1         =                 {weight5[16: 0],weight5[33:17],weight5[50:34],weight5[67:51],weight5[84:68],weight5[101:85],weight5[118:102],weight5[135:119],weight5};
        assign              weight1_2         =                 {weight6[16: 0],weight6[33:17],weight6[50:34],weight6[67:51],weight6[84:68],weight6[101:85],weight6[118:102],weight6[135:119],weight6};
        assign              weight1_3         =                 {weight7[16: 0],weight7[33:17],weight7[50:34],weight7[67:51],weight7[84:68],weight7[101:85],weight7[118:102],weight7[135:119],weight7};
        assign              weight2_0         =                 {weight7[16: 0],weight7[33:17],weight7[50:34],weight7[67:51],weight7[84:68],weight7[101:85],weight7[118:102],weight7[135:119],weight7};
        assign              weight2_1         =                 {weight6[16: 0],weight6[33:17],weight6[50:34],weight6[67:51],weight6[84:68],weight6[101:85],weight6[118:102],weight6[135:119],weight6};
        assign              weight2_2         =                 {weight5[16: 0],weight5[33:17],weight5[50:34],weight5[67:51],weight5[84:68],weight5[101:85],weight5[118:102],weight5[135:119],weight5};
        assign              weight2_3         =                 {weight4[16: 0],weight4[33:17],weight4[50:34],weight4[67:51],weight4[84:68],weight4[101:85],weight4[118:102],weight4[135:119],weight4};
        assign              weight3_0         =                 {weight3[16: 0],weight3[33:17],weight3[50:34],weight3[67:51],weight3[84:68],weight3[101:85],weight3[118:102],weight3[135:119],weight3};
        assign              weight3_1         =                 {weight2[16: 0],weight2[33:17],weight2[50:34],weight2[67:51],weight2[84:68],weight2[101:85],weight2[118:102],weight2[135:119],weight2};
        assign              weight3_2         =                 {weight1[16: 0],weight1[33:17],weight1[50:34],weight1[67:51],weight1[84:68],weight1[101:85],weight1[118:102],weight1[135:119],weight1};
        assign              weight3_3         =                 {weight0[16: 0],weight0[33:17],weight0[50:34],weight0[67:51],weight0[84:68],weight0[101:85],weight0[118:102],weight0[135:119],weight0};



        always@(posedge clk or negedge rst_n) 
        begin
            if(!rst_n)
                            state               <=              S_IDLE                      ;
            else
                            state               <=              next_state                  ;
        end

        always@(*)
        begin
            case(state)
                S_IDLE:
                    if(ip_start)
                            next_state          =               S_WEIGHT                    ;
                    else
                            next_state          =               S_IDLE                      ;
                S_WEIGHT:
                            next_state          =               S_WAIT1                     ;
                S_WAIT1:
                    if(M_AXI_RLAST&lr_row_cnt[1]&Rlast_signal)
                            next_state          =               S_LOAD                      ;
                    else
                            next_state          =               S_WAIT1                     ;
                S_LOAD:
                    if(M_AXI_RLAST&Rlast_signal)
                            next_state          =               S_WAIT2                     ;
                    else
                            next_state          =               S_LOAD                      ;
                S_WAIT2:
                            next_state          =               S_WAIT3                     ;
                S_WAIT3:
                            next_state          =               S_WAIT4                     ;
                S_WAIT4:
                            next_state          =               S_HD                        ;
                S_HD:
                    if(cycle == 4'd15)
                            next_state          =               S_MID                       ;
                    else
                            next_state          =               S_HD                        ;
                S_MID:
                    if((lr_bram_rd_addr==7'd119)&&lr_bram_rd_en[1])
                            next_state          =               S_END0                      ;
                    else 
                            next_state          =               S_MID                       ;
                S_END0:
                    if(cycle==4'd15)
                            next_state          =               S_END1                      ;
                    else
                            next_state          =               S_END0                      ;
                S_END1:
                    if(cycle==4'd15)
                            next_state          =               S_WAIT5                     ;
                    else
                            next_state          =               S_END1                      ;
                S_WAIT5:
                begin
                    if(complete|finish)
                        if(lr_row_cnt==10'd542)
                            next_state          =               S_IDLE                      ;
                        else
                            next_state          =               S_LOAD                      ;
                    else
                            next_state          =               S_WAIT5                     ;
                end
                default:
                            next_state          =               S_IDLE                      ;
            endcase
        end

        always@(posedge clk or negedge rst_n)
        begin
            if(!rst_n)
            begin
                            Rlast_signal        <=              0                           ;
                            lr_row_cnt          <=              0                           ;
                            choose_cnt          <=              1                           ;
                            lr_bram_wr_addr0    <=              0                           ;
                            lr_bram_wr_addr1    <=              0                           ;
                            lr_bram_wr_addr2    <=              0                           ;
                            lr_bram_rd_addr     <=              0                           ;
                            download_req        <=              0                           ;
                            over                <=              0                           ;
            end
            else begin
                case(state)
                    S_IDLE:
                    begin
                            over                <=              1'b0                        ;
                        if(ip_start)
                            download_req        <=              1'b1                        ;
                        else
                            download_req        <=              1'b0                        ;
                    end
                    S_WEIGHT:
                    begin
                            weight0             <=              136'b0000000010010000011111100001010110111110010100100100000000011111100000000000000100100111111101111101101111011101010001000000000101000100;
                            weight1             <=              136'b1111100001001000000110100100101011010111000010010011111001001111110011111111000010010000011011111110110111011100101000111110111010100010;
                            weight2             <=              136'b1111111100011000000000110001011001000010101101000111111111001101010011111111111000110000000011010010010000110111111101111111110111110110;
                            weight3             <=              136'b0000000000010000011111111100100110111111110100000100000000000011100000000000000000100111111111110001101111111100001001000000000000100100;
                            weight4             <=              136'b0000000011100000011111010000010100111101011000111000000000110001000000000000000111000111111100110101001111001001111110000000000111111000;
                            weight5             <=              136'b1111101000001000000101000101010011010001110100000011111010110001110011111111010000010000010101101000110101110000100100111111001010010010;
                            weight6             <=              136'b1111110010011000000010111001101001001010001010100111111101000001010011111111100100110000001100010110010011010010010101111111100001010110;
                            weight7             <=              136'b0000000010000000011111100100110000111110100000100000000000011100000000000000000100000111111110001100001111100001001000000000000100100000;
                    end
                    S_WAIT1:
                    begin
                        if(M_AXI_RLAST&Rlast_signal)
                            download_req        <=              1'b1                        ;
                        else if(M_AXI_RVALID)
                            download_req        <=              1'b0                        ;
                        if(M_AXI_RLAST)
                            Rlast_signal        <=              ~Rlast_signal               ;
                        if(M_AXI_RLAST&Rlast_signal)
                            lr_row_cnt          <=              lr_row_cnt + 1'b1           ;
                        if(M_AXI_RREADY&M_AXI_RVALID&choose_cnt[2])
                            choose_cnt          <=              3'b1                        ;
                        else if(M_AXI_RREADY&M_AXI_RVALID)
                            choose_cnt          <=              choose_cnt << 1             ;
                        if(M_AXI_RLAST&Rlast_signal)
                        begin
                            lr_bram_wr_addr0    <=              7'd0                        ;
                            lr_bram_wr_addr1    <=              7'd0                        ;
                            lr_bram_wr_addr2    <=              7'd0                        ;
                        end
                        else if(M_AXI_RREADY&M_AXI_RVALID)
                        case(choose_cnt)
                            3'b001:
                                lr_bram_wr_addr0<=              lr_bram_wr_addr0 + 1'b1     ;
                            3'b010:
                                lr_bram_wr_addr1<=              lr_bram_wr_addr1 + 1'b1     ;
                            3'b100:
                                lr_bram_wr_addr2<=              lr_bram_wr_addr2 + 1'b1     ;
                            default:;
                        endcase
                    end
                    S_LOAD:
                    begin
                        if(M_AXI_RVALID)
                            download_req        <=              1'b0                        ;
                        if(M_AXI_RLAST)
                            Rlast_signal        <=              ~Rlast_signal               ;
                        if(M_AXI_RLAST&Rlast_signal)
                            lr_row_cnt          <=              lr_row_cnt + 1'b1           ;
                        if(M_AXI_RREADY&M_AXI_RVALID&choose_cnt[2])
                            choose_cnt          <=              3'b1                        ;
                        else if(M_AXI_RREADY&M_AXI_RVALID)
                            choose_cnt          <=              choose_cnt << 1             ;
                        if(M_AXI_RLAST&Rlast_signal)
                        begin
                            lr_bram_wr_addr0    <=              7'd0                        ;
                            lr_bram_wr_addr1    <=              7'd0                        ;
                            lr_bram_wr_addr2    <=              7'd0                        ;
                        end
                        else if(M_AXI_RREADY&M_AXI_RVALID)
                        case(choose_cnt)
                            3'b001:
                                lr_bram_wr_addr0<=              lr_bram_wr_addr0 + 1'b1     ;
                            3'b010:
                                lr_bram_wr_addr1<=              lr_bram_wr_addr1 + 1'b1     ;
                            3'b100:
                                lr_bram_wr_addr2<=              lr_bram_wr_addr2 + 1'b1     ;
                            default:;
                        endcase
                    end
                    S_WAIT2:
                    begin
                        lr_bram_rd_en           <=              2'b01                       ;
                        lr_bram_rd_addr         <=              7'd0                        ;
                    end
                    S_WAIT3:
                    begin
                        lr_bram_rd_en           <=              ~lr_bram_rd_en              ;
                    end
                    S_WAIT4:
                    begin
                        cycle                   <=              2'b0                        ;
                        lr_B0_r0                <=              lr_B0                       ;
                        lr_G0_r0                <=              lr_G0                       ;
                        lr_R0_r0                <=              lr_R0                       ;
                        lr_B1_r0                <=              lr_B1                       ;
                        lr_G1_r0                <=              lr_G1                       ;
                        lr_R1_r0                <=              lr_R1                       ;
                        lr_B2_r0                <=              lr_B2                       ;
                        lr_G2_r0                <=              lr_G2                       ;
                        lr_R2_r0                <=              lr_R2                       ;
                        lr_B3_r0                <=              lr_B3                       ;
                        lr_G3_r0                <=              lr_G3                       ;
                        lr_R3_r0                <=              lr_R3                       ;
                    end
                    S_HD:
                    begin
                        cycle                   <=              cycle + 1'b1                ;
                        if(cycle==4'd14)
                        begin
                            lr_bram_rd_en       <=              ~lr_bram_rd_en              ;
                            lr_bram_rd_addr     <=              lr_bram_rd_addr + 1'b1      ;
                        end
                        if(cycle==4'd15)
                        begin
                            lr_B0_r0            <=              lr_B0                       ;
                            lr_G0_r0            <=              lr_G0                       ;
                            lr_R0_r0            <=              lr_R0                       ;
                            lr_B1_r0            <=              lr_B1                       ;
                            lr_G1_r0            <=              lr_G1                       ;
                            lr_R1_r0            <=              lr_R1                       ;
                            lr_B2_r0            <=              lr_B2                       ;
                            lr_G2_r0            <=              lr_G2                       ;
                            lr_R2_r0            <=              lr_R2                       ;
                            lr_B3_r0            <=              lr_B3                       ;
                            lr_G3_r0            <=              lr_G3                       ;
                            lr_R3_r0            <=              lr_R3                       ;
                            lr_B0_r1            <=              lr_B0_r0                    ;
                            lr_G0_r1            <=              lr_G0_r0                    ;
                            lr_R0_r1            <=              lr_R0_r0                    ;
                            lr_B1_r1            <=              lr_B1_r0                    ;
                            lr_G1_r1            <=              lr_G1_r0                    ;
                            lr_R1_r1            <=              lr_R1_r0                    ;
                            lr_B2_r1            <=              lr_B2_r0                    ;
                            lr_G2_r1            <=              lr_G2_r0                    ;
                            lr_R2_r1            <=              lr_R2_r0                    ;
                            lr_B3_r1            <=              lr_B3_r0                    ;
                            lr_G3_r1            <=              lr_G3_r0                    ;
                            lr_R3_r1            <=              lr_R3_r0                    ;
                        end
                    end
                    S_MID:
                    begin
                        cycle                   <=              cycle + 1'b1                ;
                        if(cycle==4'd15)
                        begin
                            lr_B0_r0            <=              lr_B0                       ;
                            lr_G0_r0            <=              lr_G0                       ;
                            lr_R0_r0            <=              lr_R0                       ;
                            lr_B1_r0            <=              lr_B1                       ;
                            lr_G1_r0            <=              lr_G1                       ;
                            lr_R1_r0            <=              lr_R1                       ;
                            lr_B2_r0            <=              lr_B2                       ;
                            lr_G2_r0            <=              lr_G2                       ;
                            lr_R2_r0            <=              lr_R2                       ;
                            lr_B3_r0            <=              lr_B3                       ;
                            lr_G3_r0            <=              lr_G3                       ;
                            lr_R3_r0            <=              lr_R3                       ;
                            lr_B0_r1            <=              lr_B0_r0                    ;
                            lr_G0_r1            <=              lr_G0_r0                    ;
                            lr_R0_r1            <=              lr_R0_r0                    ;
                            lr_B1_r1            <=              lr_B1_r0                    ;
                            lr_G1_r1            <=              lr_G1_r0                    ;
                            lr_R1_r1            <=              lr_R1_r0                    ;
                            lr_B2_r1            <=              lr_B2_r0                    ;
                            lr_G2_r1            <=              lr_G2_r0                    ;
                            lr_R2_r1            <=              lr_R2_r0                    ;
                            lr_B3_r1            <=              lr_B3_r0                    ;
                            lr_G3_r1            <=              lr_G3_r0                    ;
                            lr_R3_r1            <=              lr_R3_r0                    ;
                        end
                        if(cycle==4'd14)
                            lr_bram_rd_en       <=              ~lr_bram_rd_en              ;
                        if(lr_bram_rd_addr==7'd119)
                            lr_bram_rd_addr     <=              lr_bram_rd_addr             ;
                        else if(~lr_bram_rd_en[0]&cycle==4'd14)
                            lr_bram_rd_addr     <=              lr_bram_rd_addr + 1'b1      ;
                    end
                    S_END0:
                        cycle                   <=              cycle + 1'b1                ;
                    S_END1:
                        cycle                   <=              cycle + 1'b1                ;
                    S_WAIT5:
                    begin
                        if(finish|complete)
                        begin
                            if(lr_row_cnt==10'd542)
                            begin
                                download_req     <=              1'b0                       ;
                                lr_row_cnt       <=              10'd0                      ;
                                over             <=              1'b1                       ;
                            end
                            else
                                 download_req   <=               1'b1                       ;
                        end
                    end
                    default:;
                endcase
            end
        end

endmodule
