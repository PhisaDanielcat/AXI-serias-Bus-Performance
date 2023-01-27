
`timescale 1ns / 1ps

module sharpen(
        input               wire                                clk                         ,
        input               wire                                rst_n                       ,
        input               wire[ 7:0]                          add_outB_0_0_rp             ,
        input               wire[ 7:0]                          add_outB_0_1_rp             ,
        input               wire[ 7:0]                          add_outB_0_2_rp             ,
        input               wire[ 7:0]                          add_outB_0_3_rp             ,
        input               wire[ 7:0]                          add_outB_1_0_rp             ,
        input               wire[ 7:0]                          add_outB_1_1_rp             ,
        input               wire[ 7:0]                          add_outB_1_2_rp             ,
        input               wire[ 7:0]                          add_outB_1_3_rp             ,
        input               wire[ 7:0]                          add_outB_2_0_rp             ,
        input               wire[ 7:0]                          add_outB_2_1_rp             ,
        input               wire[ 7:0]                          add_outB_2_2_rp             ,
        input               wire[ 7:0]                          add_outB_2_3_rp             ,
        input               wire[ 7:0]                          add_outB_3_0_rp             ,
        input               wire[ 7:0]                          add_outB_3_1_rp             ,
        input               wire[ 7:0]                          add_outB_3_2_rp             ,
        input               wire[ 7:0]                          add_outB_3_3_rp             ,
        input               wire[ 7:0]                          add_outG_0_0_rp             ,
        input               wire[ 7:0]                          add_outG_0_1_rp             ,
        input               wire[ 7:0]                          add_outG_0_2_rp             ,
        input               wire[ 7:0]                          add_outG_0_3_rp             ,
        input               wire[ 7:0]                          add_outG_1_0_rp             ,
        input               wire[ 7:0]                          add_outG_1_1_rp             ,
        input               wire[ 7:0]                          add_outG_1_2_rp             ,
        input               wire[ 7:0]                          add_outG_1_3_rp             ,
        input               wire[ 7:0]                          add_outG_2_0_rp             ,
        input               wire[ 7:0]                          add_outG_2_1_rp             ,
        input               wire[ 7:0]                          add_outG_2_2_rp             ,
        input               wire[ 7:0]                          add_outG_2_3_rp             ,
        input               wire[ 7:0]                          add_outG_3_0_rp             ,
        input               wire[ 7:0]                          add_outG_3_1_rp             ,
        input               wire[ 7:0]                          add_outG_3_2_rp             ,
        input               wire[ 7:0]                          add_outG_3_3_rp             ,
        input               wire[ 7:0]                          add_outR_0_0_rp             ,
        input               wire[ 7:0]                          add_outR_0_1_rp             ,
        input               wire[ 7:0]                          add_outR_0_2_rp             ,
        input               wire[ 7:0]                          add_outR_0_3_rp             ,
        input               wire[ 7:0]                          add_outR_1_0_rp             ,
        input               wire[ 7:0]                          add_outR_1_1_rp             ,
        input               wire[ 7:0]                          add_outR_1_2_rp             ,
        input               wire[ 7:0]                          add_outR_1_3_rp             ,
        input               wire[ 7:0]                          add_outR_2_0_rp             ,
        input               wire[ 7:0]                          add_outR_2_1_rp             ,
        input               wire[ 7:0]                          add_outR_2_2_rp             ,
        input               wire[ 7:0]                          add_outR_2_3_rp             ,
        input               wire[ 7:0]                          add_outR_3_0_rp             ,
        input               wire[ 7:0]                          add_outR_3_1_rp             ,
        input               wire[ 7:0]                          add_outR_3_2_rp             ,
        input               wire[ 7:0]                          add_outR_3_3_rp             ,
        input               wire                                complete                    ,
        input               wire                                upsample_vld                ,
        output              wire[31:0]                          sp_dataB0                   ,
        output              wire[31:0]                          sp_dataB1                   ,
        output              wire[31:0]                          sp_dataB2                   ,
        output              wire[31:0]                          sp_dataB3                   ,
        output              wire[31:0]                          sp_dataG0                   ,
        output              wire[31:0]                          sp_dataG1                   ,
        output              wire[31:0]                          sp_dataG2                   ,
        output              wire[31:0]                          sp_dataG3                   ,
        output              wire[31:0]                          sp_dataR0                   ,
        output              wire[31:0]                          sp_dataR1                   ,
        output              wire[31:0]                          sp_dataR2                   ,
        output              wire[31:0]                          sp_dataR3                   ,
        output              reg [31:0]                          sp_dataB0_r                 ,
        output              reg [31:0]                          sp_dataB1_r                 ,
        output              reg [31:0]                          sp_dataB2_r                 ,
        output              reg [31:0]                          sp_dataB3_r                 ,
        output              reg [31:0]                          sp_dataG0_r                 ,
        output              reg [31:0]                          sp_dataG1_r                 ,
        output              reg [31:0]                          sp_dataG2_r                 ,
        output              reg [31:0]                          sp_dataG3_r                 ,
        output              reg [31:0]                          sp_dataR0_r                 ,
        output              reg [31:0]                          sp_dataR1_r                 ,
        output              reg [31:0]                          sp_dataR2_r                 ,
        output              reg [31:0]                          sp_dataR3_r                 ,
        output              reg                                 finish                      ,
        output              reg                                 wr_ctrl                     ,
        output              wire                                wr_ctrl_vld                 ,
        output              wire                                sp_vld                      
    );

        parameter           S_IDLE              =               3'b001                      ;
        parameter           S_ONE               =               3'b011                      ;
        parameter           S_TWO               =               3'b010                      ;
        parameter           S_THR               =               3'b110                      ;
        parameter           S_TRANS             =               3'b111                      ;

        reg [2:0]                                               state                       ;
        reg [2:0]                                               next_state                  ;
        reg                                                     signal                      ;
        reg                                                     sel                         ;
        reg [9:0]                                               wr_addr                     ;
        reg [9:0]                                               rd_addr                     ;
        wire[31:0]                                              hr_B0_2                     ;
        wire[31:0]                                              hr_B0_3                     ;
        wire[31:0]                                              hr_G0_2                     ;
        wire[31:0]                                              hr_G0_3                     ;
        wire[31:0]                                              hr_R0_2                     ;
        wire[31:0]                                              hr_R0_3                     ;
        wire[31:0]                                              hr_B1_2                     ;
        wire[31:0]                                              hr_B1_3                     ;
        wire[31:0]                                              hr_G1_2                     ;
        wire[31:0]                                              hr_G1_3                     ;
        wire[31:0]                                              hr_R1_2                     ;
        wire[31:0]                                              hr_R1_3                     ;
        reg [31:0]                                              hr_B_0_r0                   ;
        reg [31:0]                                              hr_B_1_r0                   ;
        reg [31:0]                                              hr_B_2_r0                   ;
        reg [31:0]                                              hr_B_3_r0                   ;
        reg [31:0]                                              hr_G_0_r0                   ;
        reg [31:0]                                              hr_G_1_r0                   ;
        reg [31:0]                                              hr_G_2_r0                   ;
        reg [31:0]                                              hr_G_3_r0                   ;
        reg [31:0]                                              hr_R_0_r0                   ;
        reg [31:0]                                              hr_R_1_r0                   ;
        reg [31:0]                                              hr_R_2_r0                   ;
        reg [31:0]                                              hr_R_3_r0                   ;
        reg [31:0]                                              hr_B_0_r1                   ;
        reg [31:0]                                              hr_B_1_r1                   ;
        reg [31:0]                                              hr_B_2_r1                   ;
        reg [31:0]                                              hr_B_3_r1                   ;
        reg [31:0]                                              hr_G_0_r1                   ;
        reg [31:0]                                              hr_G_1_r1                   ;
        reg [31:0]                                              hr_G_2_r1                   ;
        reg [31:0]                                              hr_G_3_r1                   ;
        reg [31:0]                                              hr_R_0_r1                   ;
        reg [31:0]                                              hr_R_1_r1                   ;
        reg [31:0]                                              hr_R_2_r1                   ;
        reg [31:0]                                              hr_R_3_r1                   ;
        reg [31:0]                                              bram_hr_B_2_r0              ;
        reg [31:0]                                              bram_hr_B_3_r0              ;
        reg [31:0]                                              bram_hr_G_2_r0              ;
        reg [31:0]                                              bram_hr_G_3_r0              ;
        reg [31:0]                                              bram_hr_R_2_r0              ;
        reg [31:0]                                              bram_hr_R_3_r0              ;
        reg [31:0]                                              bram_hr_B_2_r1              ;
        reg [31:0]                                              bram_hr_B_3_r1              ;
        reg [31:0]                                              bram_hr_G_2_r1              ;
        reg [31:0]                                              bram_hr_G_3_r1              ;
        reg [31:0]                                              bram_hr_R_2_r1              ;
        reg [31:0]                                              bram_hr_R_3_r1              ;
        reg                                                     up_vld_r0                   ;
        reg                                                     up_vld_r1                   ;
        reg                                                     up_vld_r2                   ;
        reg [10:0]                                              wr_cnt                      ;
        reg [ 9:0]                                              trans_cnt                    ;

        assign      sp_vld                      =               up_vld_r2                   ;
        assign      wr_ctrl_vld                 =               wr_cnt[10]                  ;

        always@(posedge clk or negedge rst_n)
        begin
            if(!rst_n)
                state                           <=              S_IDLE                      ;
            else
                state                           <=              next_state                  ;
        end

        always@(*)
        begin
            case(state)
                S_IDLE:
                    if(upsample_vld)
                        next_state              =               S_ONE                       ;
                    else
                        next_state              =               S_IDLE                      ;
                S_ONE:
                    if(upsample_vld&&(wr_addr==10'd958))
                        next_state              =               S_TWO                       ;
                    else
                        next_state              =               S_ONE                       ;
                S_TWO:
                    if(sp_vld&&(wr_cnt==11'd957))
                        next_state              =               S_TRANS                     ;
                    else
                        next_state              =               S_TWO                       ;
                S_THR:
                    if(sp_vld&&(wr_cnt==11'd957))
                        next_state              =               S_TRANS                     ;
                    else
                        next_state              =               S_THR                       ;
                S_TRANS:
                    if(complete)
                    begin
                        if(trans_cnt==10'd537)
                            next_state          =               S_IDLE                       ;
                        else begin
                            if(sel)
                                next_state      =               S_THR                       ;
                            else
                                next_state      =               S_TWO                       ;
                        end
                    end
                    else
                        next_state              =               S_TRANS                     ;
                default:
                    next_state                  =               S_IDLE                      ;
            endcase
        end

        always@(posedge clk or negedge rst_n)
        begin
            if(!rst_n)
            begin
                wr_addr                         <=              10'd0                       ;
                rd_addr                         <=              10'd0                       ;
            end
            else begin
                case(state)
                    S_IDLE:
                    begin
                        trans_cnt               <=              10'd0                       ;
                        signal                  <=              1'b0                        ;
                        if(upsample_vld)
                        begin
                            wr_addr             <=              wr_addr + 1'b1              ;
                        end
                    end
                    S_ONE:
                        if(upsample_vld)
                        begin
                            if(wr_addr==10'd958)
                            begin
                                wr_addr         <=              10'd0                       ;
                                signal          <=              ~signal                     ;
                                wr_cnt          <=              11'h7fe                     ;
                                wr_ctrl         <=              1'b0                        ;
                                finish          <=              1'b1                        ;
                            end 
                            else
                            begin
                                wr_addr         <=              wr_addr + 1'b1              ;
                            end
                        end
                    S_TWO:
                    begin
                        sel                     <=              1'b1                        ;
                        rd_addr                 <=              wr_addr                     ;
                        if(upsample_vld)
                                finish          <=              1'b0                        ;
                        if(sp_vld)
                                wr_cnt          <=              wr_cnt + 1'b1               ;
                        if(!wr_cnt[10]&sp_vld)
                                wr_ctrl         <=              ~wr_ctrl                    ;
                        if(~wr_ctrl&sp_vld)
                        begin
                            sp_dataB0_r         <=              sp_dataB0                   ;
                            sp_dataB1_r         <=              sp_dataB1                   ;
                            sp_dataB2_r         <=              sp_dataB2                   ;
                            sp_dataB3_r         <=              sp_dataB3                   ;
                            sp_dataG0_r         <=              sp_dataG0                   ;
                            sp_dataG1_r         <=              sp_dataG1                   ;
                            sp_dataG2_r         <=              sp_dataG2                   ;
                            sp_dataG3_r         <=              sp_dataG3                   ;
                            sp_dataR0_r         <=              sp_dataR0                   ;
                            sp_dataR1_r         <=              sp_dataR1                   ;
                            sp_dataR2_r         <=              sp_dataR2                   ;
                            sp_dataR3_r         <=              sp_dataR3                   ;
                        end
                        if(upsample_vld)
                        begin
                            if(wr_addr==10'd958)
                            begin
                                wr_addr         <=              10'd0                       ;
                                signal          <=              ~signal                     ;
                            end 
                            else
                            begin
                                wr_addr         <=              wr_addr + 1'b1              ;
                            end
                        end
                    end
                    S_THR:
                    begin
                        sel                     <=              1'b0                        ;
                        rd_addr                 <=              wr_addr                     ;
                        if(upsample_vld)
                                finish          <=              1'b0                        ;
                        if(sp_vld)
                                wr_cnt          <=              wr_cnt + 1'b1               ;
                        if(!wr_cnt[10]&sp_vld)
                                wr_ctrl         <=              ~wr_ctrl                    ;
                        if(~wr_ctrl&sp_vld)
                        begin
                            sp_dataB0_r         <=              sp_dataB0                   ;
                            sp_dataB1_r         <=              sp_dataB1                   ;
                            sp_dataB2_r         <=              sp_dataB2                   ;
                            sp_dataB3_r         <=              sp_dataB3                   ;
                            sp_dataG0_r         <=              sp_dataG0                   ;
                            sp_dataG1_r         <=              sp_dataG1                   ;
                            sp_dataG2_r         <=              sp_dataG2                   ;
                            sp_dataG3_r         <=              sp_dataG3                   ;
                            sp_dataR0_r         <=              sp_dataR0                   ;
                            sp_dataR1_r         <=              sp_dataR1                   ;
                            sp_dataR2_r         <=              sp_dataR2                   ;
                            sp_dataR3_r         <=              sp_dataR3                   ;
                        end
                        if(upsample_vld)
                        begin
                            if(wr_addr==10'd958)
                            begin
                                wr_addr         <=              10'd0                       ;
                                signal          <=              ~signal                     ;
                            end 
                            else
                            begin
                                wr_addr         <=              wr_addr + 1'b1              ;
                            end
                        end
                    end
                    S_TRANS:
                        if(complete)
                        begin
                            wr_cnt              <=              11'h7ff                     ;
                            if(trans_cnt==10'd537)
                                trans_cnt       <=              10'd0                       ;
                            else
                                trans_cnt       <=              trans_cnt + 1'b1             ;
                        end
                    default:;
                endcase
            end
        end

        always@(posedge clk)
        begin
                up_vld_r0                       <=  upsample_vld                                                    ;
                up_vld_r1                       <=  up_vld_r0                                                       ;
                up_vld_r2                       <=  up_vld_r1                                                       ;
        end

        always@(posedge clk)
        begin
            if(upsample_vld)
            begin
                hr_B_0_r0                       <=  {add_outB_0_3_rp,add_outB_0_2_rp,add_outB_0_1_rp,add_outB_0_0_rp};
                hr_B_1_r0                       <=  {add_outB_1_3_rp,add_outB_1_2_rp,add_outB_1_1_rp,add_outB_1_0_rp};
                hr_B_2_r0                       <=  {add_outB_2_3_rp,add_outB_2_2_rp,add_outB_2_1_rp,add_outB_2_0_rp};
                hr_B_3_r0                       <=  {add_outB_3_3_rp,add_outB_3_2_rp,add_outB_3_1_rp,add_outB_3_0_rp};
                hr_G_0_r0                       <=  {add_outG_0_3_rp,add_outG_0_2_rp,add_outG_0_1_rp,add_outG_0_0_rp};
                hr_G_1_r0                       <=  {add_outG_1_3_rp,add_outG_1_2_rp,add_outG_1_1_rp,add_outG_1_0_rp};
                hr_G_2_r0                       <=  {add_outG_2_3_rp,add_outG_2_2_rp,add_outG_2_1_rp,add_outG_2_0_rp};
                hr_G_3_r0                       <=  {add_outG_3_3_rp,add_outG_3_2_rp,add_outG_3_1_rp,add_outG_3_0_rp};
                hr_R_0_r0                       <=  {add_outR_0_3_rp,add_outR_0_2_rp,add_outR_0_1_rp,add_outR_0_0_rp};
                hr_R_1_r0                       <=  {add_outR_1_3_rp,add_outR_1_2_rp,add_outR_1_1_rp,add_outR_1_0_rp};
                hr_R_2_r0                       <=  {add_outR_2_3_rp,add_outR_2_2_rp,add_outR_2_1_rp,add_outR_2_0_rp};
                hr_R_3_r0                       <=  {add_outR_3_3_rp,add_outR_3_2_rp,add_outR_3_1_rp,add_outR_3_0_rp};
                hr_B_0_r1                       <=  hr_B_0_r0                                                        ;
                hr_B_1_r1                       <=  hr_B_1_r0                                                        ;
                hr_B_2_r1                       <=  hr_B_2_r0                                                        ;
                hr_B_3_r1                       <=  hr_B_3_r0                                                        ;
                hr_G_0_r1                       <=  hr_G_0_r0                                                        ;
                hr_G_1_r1                       <=  hr_G_1_r0                                                        ;
                hr_G_2_r1                       <=  hr_G_2_r0                                                        ;
                hr_G_3_r1                       <=  hr_G_3_r0                                                        ;
                hr_R_0_r1                       <=  hr_R_0_r0                                                        ;
                hr_R_1_r1                       <=  hr_R_1_r0                                                        ;
                hr_R_2_r1                       <=  hr_R_2_r0                                                        ;
                hr_R_3_r1                       <=  hr_R_3_r0                                                        ;
            end
        end

        always@(posedge clk)
        begin
            if(upsample_vld)
            begin
                bram_hr_B_2_r1              <=                  bram_hr_B_2_r0              ;
                bram_hr_B_3_r1              <=                  bram_hr_B_3_r0              ;
                bram_hr_G_2_r1              <=                  bram_hr_G_2_r0              ;
                bram_hr_G_3_r1              <=                  bram_hr_G_3_r0              ;
                bram_hr_R_2_r1              <=                  bram_hr_R_2_r0              ;
                bram_hr_R_3_r1              <=                  bram_hr_R_3_r0              ;
                case(state)
                    S_TWO:
                    begin
                        bram_hr_B_2_r0      <=                  hr_B0_2                     ;
                        bram_hr_B_3_r0      <=                  hr_B0_3                     ;
                        bram_hr_G_2_r0      <=                  hr_G0_2                     ;
                        bram_hr_G_3_r0      <=                  hr_G0_3                     ;
                        bram_hr_R_2_r0      <=                  hr_R0_2                     ;
                        bram_hr_R_3_r0      <=                  hr_R0_3                     ;
                    end
                    S_THR:
                    begin
                        bram_hr_B_2_r0      <=                  hr_B1_2                     ;
                        bram_hr_B_3_r0      <=                  hr_B1_3                     ;
                        bram_hr_G_2_r0      <=                  hr_G1_2                     ;
                        bram_hr_G_3_r0      <=                  hr_G1_3                     ;
                        bram_hr_R_2_r0      <=                  hr_R1_2                     ;
                        bram_hr_R_3_r0      <=                  hr_R1_3                     ;
                    end
                    default:;
                endcase
            end
        end   

    sp_comp sp_comp_instB0(
        .clk                                                        (clk                ),
        .up_data0                                                   ({bram_hr_B_2_r0,bram_hr_B_2_r1}),
        .up_data1                                                   ({bram_hr_B_3_r0,bram_hr_B_3_r1}),
        .up_data2                                                   ({hr_B_0_r0,hr_B_0_r1}),
        .sp_data                                                    (sp_dataB0          )
    );  

    sp_comp sp_comp_instB1(
        .clk                                                        (clk                ),
        .up_data0                                                   ({bram_hr_B_3_r0,bram_hr_B_3_r1}),
        .up_data1                                                   ({hr_B_0_r0,hr_B_0_r1}),
        .up_data2                                                   ({hr_B_1_r0,hr_B_1_r1}),
        .sp_data                                                    (sp_dataB1          )
    );  

    sp_comp sp_comp_instB2(
        .clk                                                        (clk                ),
        .up_data0                                                   ({hr_B_0_r0,hr_B_0_r1}),
        .up_data1                                                   ({hr_B_1_r0,hr_B_1_r1}),
        .up_data2                                                   ({hr_B_2_r0,hr_B_2_r1}),
        .sp_data                                                    (sp_dataB2          )
    );  

    sp_comp sp_comp_instB3(
        .clk                                                        (clk                ),
        .up_data0                                                   ({hr_B_1_r0,hr_B_1_r1}),
        .up_data1                                                   ({hr_B_2_r0,hr_B_2_r1}),
        .up_data2                                                   ({hr_B_3_r0,hr_B_3_r1}),
        .sp_data                                                    (sp_dataB3          )        
    );  

    sp_comp sp_comp_instG0(
        .clk                                                        (clk                ),
        .up_data0                                                   ({bram_hr_G_2_r0,bram_hr_G_2_r1}),
        .up_data1                                                   ({bram_hr_G_3_r0,bram_hr_G_3_r1}),
        .up_data2                                                   ({hr_G_0_r0,hr_G_0_r1}),
        .sp_data                                                    (sp_dataG0          )
    );  

    sp_comp sp_comp_instG1(
        .clk                                                        (clk                ),
        .up_data0                                                   ({bram_hr_G_3_r0,bram_hr_G_3_r1}),
        .up_data1                                                   ({hr_G_0_r0,hr_G_0_r1}),
        .up_data2                                                   ({hr_G_1_r0,hr_G_1_r1}),
        .sp_data                                                    (sp_dataG1          )
    );  

    sp_comp sp_comp_instG2(
        .clk                                                        (clk                ),
        .up_data0                                                   ({hr_G_0_r0,hr_G_0_r1}),
        .up_data1                                                   ({hr_G_1_r0,hr_G_1_r1}),
        .up_data2                                                   ({hr_G_2_r0,hr_G_2_r1}),
        .sp_data                                                    (sp_dataG2          )
    );  

    sp_comp sp_comp_instG3(
        .clk                                                        (clk                ),
        .up_data0                                                   ({hr_G_1_r0,hr_G_1_r1}),
        .up_data1                                                   ({hr_G_2_r0,hr_G_2_r1}),
        .up_data2                                                   ({hr_G_3_r0,hr_G_3_r1}),
        .sp_data                                                    (sp_dataG3          )        
    );  

    sp_comp sp_comp_instR0(
        .clk                                                        (clk                ),
        .up_data0                                                   ({bram_hr_R_2_r0,bram_hr_R_2_r1}),
        .up_data1                                                   ({bram_hr_R_3_r0,bram_hr_R_3_r1}),
        .up_data2                                                   ({hr_R_0_r0,hr_R_0_r1}),
        .sp_data                                                    (sp_dataR0          )
    );  

    sp_comp sp_comp_instR1(
        .clk                                                        (clk                ),
        .up_data0                                                   ({bram_hr_R_3_r0,bram_hr_R_3_r1}),
        .up_data1                                                   ({hr_R_0_r0,hr_R_0_r1}),
        .up_data2                                                   ({hr_R_1_r0,hr_R_1_r1}),
        .sp_data                                                    (sp_dataR1          )
    );  

    sp_comp sp_comp_instR2(
        .clk                                                        (clk                ),
        .up_data0                                                   ({hr_R_0_r0,hr_R_0_r1}),
        .up_data1                                                   ({hr_R_1_r0,hr_R_1_r1}),
        .up_data2                                                   ({hr_R_2_r0,hr_R_2_r1}),
        .sp_data                                                    (sp_dataR2          )
    );  

    sp_comp sp_comp_instR3(
        .clk                                                        (clk                ),
        .up_data0                                                   ({hr_R_1_r0,hr_R_1_r1}),
        .up_data1                                                   ({hr_R_2_r0,hr_R_2_r1}),
        .up_data2                                                   ({hr_R_3_r0,hr_R_3_r1}),
        .sp_data                                                    (sp_dataR3          )        
    );  





    hr_bram hr_bram_B0_2(
        .clk                                                    (clk                       ),
        .wr_en                                                  (upsample_vld&(~signal)    ),
        .wr_addr                                                (wr_addr                   ),
        .din                                                    ({add_outB_2_3_rp,add_outB_2_2_rp,
                                                                  add_outB_2_1_rp,add_outB_2_0_rp}),
        .rd_en                                                  (1'b1                      ),
        .rd_addr                                                (rd_addr                   ),
        .dout                                                   (hr_B0_2                   )
    );

    hr_bram hr_bram_B0_3(
        .clk                                                    (clk                       ),
        .wr_en                                                  (upsample_vld&(~signal)    ),
        .wr_addr                                                (wr_addr                   ),
        .din                                                    ({add_outB_3_3_rp,add_outB_3_2_rp,
                                                                  add_outB_3_1_rp,add_outB_3_0_rp}),
        .rd_en                                                  (1'b1                      ),
        .rd_addr                                                (rd_addr                   ),
        .dout                                                   (hr_B0_3                   )
    );


    hr_bram hr_bram_G0_2(
        .clk                                                    (clk                       ),
        .wr_en                                                  (upsample_vld&(~signal)    ),
        .wr_addr                                                (wr_addr                   ),
        .din                                                    ({add_outG_2_3_rp,add_outG_2_2_rp,
                                                                  add_outG_2_1_rp,add_outG_2_0_rp}),
        .rd_en                                                  (1'b1                      ),
        .rd_addr                                                (rd_addr                   ),
        .dout                                                   (hr_G0_2                   )
    );

    hr_bram hr_bram_G0_3(
        .clk                                                    (clk                       ),
        .wr_en                                                  (upsample_vld&(~signal)    ),
        .wr_addr                                                (wr_addr                   ),
        .din                                                    ({add_outG_3_3_rp,add_outG_3_2_rp,
                                                                  add_outG_3_1_rp,add_outG_3_0_rp}),
        .rd_en                                                  (1'b1                      ),
        .rd_addr                                                (rd_addr                   ),
        .dout                                                   (hr_G0_3                   )
    );


    hr_bram hr_bram_R0_2(
        .clk                                                    (clk                       ),
        .wr_en                                                  (upsample_vld&(~signal)    ),
        .wr_addr                                                (wr_addr                   ),
        .din                                                    ({add_outR_2_3_rp,add_outR_2_2_rp,
                                                                  add_outR_2_1_rp,add_outR_2_0_rp}),
        .rd_en                                                  (1'b1                      ),
        .rd_addr                                                (rd_addr                   ),
        .dout                                                   (hr_R0_2                   )
    );

    hr_bram hr_bram_R0_3(
        .clk                                                    (clk                       ),
        .wr_en                                                  (upsample_vld&(~signal)    ),
        .wr_addr                                                (wr_addr                   ),
        .din                                                    ({add_outR_3_3_rp,add_outR_3_2_rp,
                                                                  add_outR_3_1_rp,add_outR_3_0_rp}),
        .rd_en                                                  (1'b1                      ),
        .rd_addr                                                (rd_addr                   ),
        .dout                                                   (hr_R0_3                   )
    );


    hr_bram hr_bram_B1_2(
        .clk                                                    (clk                       ),
        .wr_en                                                  (upsample_vld&signal       ),
        .wr_addr                                                (wr_addr                   ),
        .din                                                    ({add_outB_2_3_rp,add_outB_2_2_rp,
                                                                  add_outB_2_1_rp,add_outB_2_0_rp}),
        .rd_en                                                  (1'b1                      ),
        .rd_addr                                                (rd_addr                   ),
        .dout                                                   (hr_B1_2                   )
    );

    hr_bram hr_bram_B1_3(
        .clk                                                    (clk                       ),
        .wr_en                                                  (upsample_vld&signal       ),
        .wr_addr                                                (wr_addr                   ),
        .din                                                    ({add_outB_3_3_rp,add_outB_3_2_rp,
                                                                  add_outB_3_1_rp,add_outB_3_0_rp}),
        .rd_en                                                  (1'b1                      ),
        .rd_addr                                                (rd_addr                   ),
        .dout                                                   (hr_B1_3                   )
    );

    hr_bram hr_bram_G1_2(
        .clk                                                    (clk                       ),
        .wr_en                                                  (upsample_vld&signal       ),
        .wr_addr                                                (wr_addr                   ),
        .din                                                    ({add_outG_2_3_rp,add_outG_2_2_rp,
                                                                  add_outG_2_1_rp,add_outG_2_0_rp}),
        .rd_en                                                  (1'b1                      ),
        .rd_addr                                                (rd_addr                   ),
        .dout                                                   (hr_G1_2                   )
    );

    hr_bram hr_bram_G1_3(
        .clk                                                    (clk                       ),
        .wr_en                                                  (upsample_vld&signal       ),
        .wr_addr                                                (wr_addr                   ),
        .din                                                    ({add_outG_3_3_rp,add_outG_3_2_rp,
                                                                  add_outG_3_1_rp,add_outG_3_0_rp}),
        .rd_en                                                  (1'b1                      ),
        .rd_addr                                                (rd_addr                   ),
        .dout                                                   (hr_G1_3                   )
    );

    hr_bram hr_bram_R1_2(
        .clk                                                    (clk                       ),
        .wr_en                                                  (upsample_vld&signal       ),
        .wr_addr                                                (wr_addr                   ),
        .din                                                    ({add_outR_2_3_rp,add_outR_2_2_rp,
                                                                  add_outR_2_1_rp,add_outR_2_0_rp}),
        .rd_en                                                  (1'b1                      ),
        .rd_addr                                                (rd_addr                   ),
        .dout                                                   (hr_R1_2                   )
    );

    hr_bram hr_bram_R1_3(
        .clk                                                    (clk                       ),
        .wr_en                                                  (upsample_vld&signal       ),
        .wr_addr                                                (wr_addr                   ),
        .din                                                    ({add_outR_3_3_rp,add_outR_3_2_rp,
                                                                  add_outR_3_1_rp,add_outR_3_0_rp}),
        .rd_en                                                  (1'b1                      ),
        .rd_addr                                                (rd_addr                   ),
        .dout                                                   (hr_R1_3                   )
    );
    

endmodule