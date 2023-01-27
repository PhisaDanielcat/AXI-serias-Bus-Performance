`timescale 1ns / 1ps

module upload_ctrl(
        input                   wire                                        clk             ,
        input                   wire                                        rst_n           ,
        input                   wire                                        wr_ctrl_vld     ,
        input                   wire                                        wr_ctrl         ,
        input                   wire                                        M_AXI_WVALID    ,
        input                   wire                                        M_AXI_WREADY    ,
        input                   wire                                        sp_vld          ,
        input                   wire[31:0]                                  sp_dataB0       ,
        input                   wire[31:0]                                  sp_dataB1       ,
        input                   wire[31:0]                                  sp_dataB2       ,
        input                   wire[31:0]                                  sp_dataB3       ,
        input                   wire[31:0]                                  sp_dataG0       ,
        input                   wire[31:0]                                  sp_dataG1       ,
        input                   wire[31:0]                                  sp_dataG2       ,
        input                   wire[31:0]                                  sp_dataG3       ,
        input                   wire[31:0]                                  sp_dataR0       ,
        input                   wire[31:0]                                  sp_dataR1       ,
        input                   wire[31:0]                                  sp_dataR2       ,
        input                   wire[31:0]                                  sp_dataR3       ,
        input                   wire[31:0]                                  sp_dataB0_r     ,
        input                   wire[31:0]                                  sp_dataB1_r     ,
        input                   wire[31:0]                                  sp_dataB2_r     ,
        input                   wire[31:0]                                  sp_dataB3_r     ,
        input                   wire[31:0]                                  sp_dataG0_r     ,
        input                   wire[31:0]                                  sp_dataG1_r     ,
        input                   wire[31:0]                                  sp_dataG2_r     ,
        input                   wire[31:0]                                  sp_dataG3_r     ,
        input                   wire[31:0]                                  sp_dataR0_r     ,
        input                   wire[31:0]                                  sp_dataR1_r     ,
        input                   wire[31:0]                                  sp_dataR2_r     ,
        input                   wire[31:0]                                  sp_dataR3_r     ,
        input                   wire[63:0]                                  rd_data0        ,
        input                   wire[63:0]                                  rd_data1        ,
        input                   wire[63:0]                                  rd_data2        ,
        input                   wire[63:0]                                  rd_data3        ,
        output                  reg                                         upload_req      ,
        output                  reg                                         complete        ,
        output                  reg [63:0]                                  rd_data         ,
        output                  wire[10:0]                                  rd_addr         ,
        output                  reg                                         wr_en           ,
        output                  reg [10:0]                                  wr_addr         ,
        output                  reg [63:0]                                  wd0             ,
        output                  reg [63:0]                                  wd1             ,
        output                  reg [63:0]                                  wd2             ,
        output                  reg [63:0]                                  wd3            
);

        parameter               S_IDLE          =                           3'b001          ;
        parameter               S_WR0           =                           3'b011          ;
        parameter               S_WR1           =                           3'b010          ;
        parameter               S_WR2           =                           3'b110          ;
        parameter               S_TRANS         =                           3'b111          ;

        reg [2:0]                                                           state           ;
        reg [2:0]                                                           next_state      ;

        wire[191:0]                                                         wr_data0        ; 
        wire[191:0]                                                         wr_data1        ;
        wire[191:0]                                                         wr_data2        ;
        wire[191:0]                                                         wr_data3        ;
        reg [191:0]                                                         wr_data0_r      ; 
        reg [191:0]                                                         wr_data1_r      ;
        reg [191:0]                                                         wr_data2_r      ;
        reg [191:0]                                                         wr_data3_r      ;
        wire                                                                wr_en_w         ;
        reg [1:0]                                                           wr_cnt          ;
        reg [ 1: 0]                                                         rd_cnt          ;
        reg [10: 0]                                                         rd_addr_r       ;

        assign                  rd_addr         =                           (M_AXI_WVALID&M_AXI_WREADY)?(rd_addr_r+1):rd_addr_r;
        assign                  wr_en_w         =                           wr_ctrl&~wr_ctrl_vld&sp_vld;
        assign                  wr_data0        =                           {sp_dataR0[31:24],sp_dataG0[31:24],sp_dataB0[31:24],
                                                                             sp_dataR0[23:16],sp_dataG0[23:16],sp_dataB0[23:16],
                                                                             sp_dataR0[15: 8],sp_dataG0[15: 8],sp_dataB0[15: 8],
                                                                             sp_dataR0[ 7: 0],sp_dataG0[ 7: 0],sp_dataB0[ 7: 0],
                                                                             sp_dataR0_r[31:24],sp_dataG0_r[31:24],sp_dataB0_r[31:24],
                                                                             sp_dataR0_r[23:16],sp_dataG0_r[23:16],sp_dataB0_r[23:16],
                                                                             sp_dataR0_r[15: 8],sp_dataG0_r[15: 8],sp_dataB0_r[15: 8],
                                                                             sp_dataR0_r[ 7: 0],sp_dataG0_r[ 7: 0],sp_dataB0_r[ 7: 0]};
        assign                  wr_data1        =                           {sp_dataR1[31:24],sp_dataG1[31:24],sp_dataB1[31:24],
                                                                             sp_dataR1[23:16],sp_dataG1[23:16],sp_dataB1[23:16],
                                                                             sp_dataR1[15: 8],sp_dataG1[15: 8],sp_dataB1[15: 8],
                                                                             sp_dataR1[ 7: 0],sp_dataG1[ 7: 0],sp_dataB1[ 7: 0],
                                                                             sp_dataR1_r[31:24],sp_dataG1_r[31:24],sp_dataB1_r[31:24],
                                                                             sp_dataR1_r[23:16],sp_dataG1_r[23:16],sp_dataB1_r[23:16],
                                                                             sp_dataR1_r[15: 8],sp_dataG1_r[15: 8],sp_dataB1_r[15: 8],
                                                                             sp_dataR1_r[ 7: 0],sp_dataG1_r[ 7: 0],sp_dataB1_r[ 7: 0]};
        assign                  wr_data2        =                           {sp_dataR2[31:24],sp_dataG2[31:24],sp_dataB2[31:24],
                                                                             sp_dataR2[23:16],sp_dataG2[23:16],sp_dataB2[23:16],
                                                                             sp_dataR2[15: 8],sp_dataG2[15: 8],sp_dataB2[15: 8],
                                                                             sp_dataR2[ 7: 0],sp_dataG2[ 7: 0],sp_dataB2[ 7: 0],
                                                                             sp_dataR2_r[31:24],sp_dataG2_r[31:24],sp_dataB2_r[31:24],
                                                                             sp_dataR2_r[23:16],sp_dataG2_r[23:16],sp_dataB2_r[23:16],
                                                                             sp_dataR2_r[15: 8],sp_dataG2_r[15: 8],sp_dataB2_r[15: 8],
                                                                             sp_dataR2_r[ 7: 0],sp_dataG2_r[ 7: 0],sp_dataB2_r[ 7: 0]};
        assign                  wr_data3        =                           {sp_dataR3[31:24],sp_dataG3[31:24],sp_dataB3[31:24],
                                                                             sp_dataR3[23:16],sp_dataG3[23:16],sp_dataB3[23:16],
                                                                             sp_dataR3[15: 8],sp_dataG3[15: 8],sp_dataB3[15: 8],
                                                                             sp_dataR3[ 7: 0],sp_dataG3[ 7: 0],sp_dataB3[ 7: 0],
                                                                             sp_dataR3_r[31:24],sp_dataG3_r[31:24],sp_dataB3_r[31:24],
                                                                             sp_dataR3_r[23:16],sp_dataG3_r[23:16],sp_dataB3_r[23:16],
                                                                             sp_dataR3_r[15: 8],sp_dataG3_r[15: 8],sp_dataB3_r[15: 8],
                                                                             sp_dataR3_r[ 7: 0],sp_dataG3_r[ 7: 0],sp_dataB3_r[ 7: 0]};
                                                                             
        always@(posedge clk or negedge rst_n)
        begin
            if(!rst_n)
                state                           <=                          S_IDLE          ;
            else
                state                           <=                          next_state      ;
        end

        always@(*)
        begin
            case(state)
                S_IDLE:
                    if(wr_en_w)
                        next_state              =                           S_WR0           ;
                    else 
                        next_state              =                           S_IDLE          ;
                S_WR0:
                    if(wr_cnt==2'd2)
                        next_state              =                           S_WR1           ;
                    else
                        next_state              =                           S_WR0           ;
                S_WR1:
                    if(wr_addr==11'd1436)
                        next_state              =                           S_WR2           ;
                    else
                        next_state              =                           S_WR1           ;
                S_WR2:
                    if(wr_cnt==2'd2)
                        next_state              =                           S_TRANS         ;
                    else
                        next_state              =                           S_WR2           ;
                S_TRANS:
                    if(rd_addr_r==11'h7fe)
                        next_state              =                           S_IDLE          ;
                    else
                        next_state              =                           S_TRANS         ;
                default:
                    next_state                  =                           S_IDLE          ;
            endcase 
        end

        always@(posedge clk or negedge rst_n)
        begin
            if(!rst_n)
            begin
                wr_addr                         <=                          11'd0           ;
                rd_addr_r                       <=                          11'd0           ;
            end
            else begin
                case(state)
                    S_IDLE:
                    begin
                        upload_req              <=                          1'b0            ;
                        complete                <=                          1'b0            ;
                        rd_cnt                  <=                          2'd0            ;
                        rd_addr_r               <=                          11'd0           ;
                        if(wr_en_w)
                        begin
                            wr_en               <=                          1'b1            ;
                            wr_cnt              <=                          2'b0            ;
                            wr_addr             <=                          11'd0           ;
                        end
                    end
                    S_WR0:
                    begin
                        wr_addr                 <=                          wr_addr + 1'b1  ;
                        if(wr_cnt==2'd2)
                        begin
                            wr_en               <=                          1'b0            ;
                            wr_cnt              <=                          2'b0            ;
                        end
                        else
                        begin
                            wr_cnt              <=                          wr_cnt + 1'b1   ;
                        end
                    end
                    S_WR1:
                    begin
                        if(wr_en)
                                wr_addr         <=                          wr_addr + 1'b1  ;
                        if(wr_cnt==2'd2)
                        begin
                                wr_cnt          <=                          2'b0            ;
                        end
                        else if(wr_en)
                        begin
                                wr_cnt          <=                          wr_cnt + 1'b1   ;
                        end
                        if(wr_en_w)
                                wr_en           <=                          1'b1            ;
                        else if(wr_addr==11'd1436)
                                wr_en           <=                          1'b1            ;
                        else if(wr_cnt==2'd2)
                                wr_en           <=                          1'b0            ;
                    end
                    S_WR2:
                    begin
                        if(wr_cnt==2'd2)
                        begin
                                upload_req      <=                          1'b1            ;
                                wr_en           <=                          1'b0            ;
                                wr_cnt          <=                          2'b0            ;
                                wr_addr         <=                          11'b0           ;
                        end
                        else
                        begin
                                wr_addr         <=                          wr_addr + 1'b1  ;
                                wr_cnt          <=                          wr_cnt + 1'b1   ;
                        end
                    end
                    S_TRANS:
                    begin
                        if(M_AXI_WVALID&M_AXI_WREADY)
                        begin
                            if(rd_addr==11'd1439)
                            begin
                                if(rd_cnt[0]&rd_cnt[1])
                                begin
                                    rd_cnt      <=                          rd_cnt          ;
                                    rd_addr_r   <=                          11'h7fe         ;
                                end
                                else begin
                                    rd_addr_r   <=                          11'h7ff         ;
                                    rd_cnt      <=                          rd_cnt + 1'b1   ;
                                end
                            end
                            else
                                rd_addr_r       <=                          rd_addr_r + 1'b1;
                        end
                        if(rd_addr_r==11'h7fe)
                                complete        <=                          1'b1            ;
                    end
                    default:;
                endcase
            end
        end

        always@(*)
        begin
            case(state)
                S_WR0:
                begin
                    case(wr_cnt)
                        2'b00:
                        begin
                            wd0                 =                           {wr_data0[15:0],wr_data0[23:0],wr_data0[23:0]};
                            wd1                 =                           {wr_data1[15:0],wr_data1[23:0],wr_data1[23:0]};
                            wd2                 =                           {wr_data2[15:0],wr_data2[23:0],wr_data2[23:0]};
                            wd3                 =                           {wr_data3[15:0],wr_data3[23:0],wr_data3[23:0]};
                        end
                        2'b01:
                        begin
                            wd0                 =                           {wr_data0[7:0],wr_data0[23:0],wr_data0[23:0],wr_data0[23:16]};
                            wd1                 =                           {wr_data1[7:0],wr_data1[23:0],wr_data1[23:0],wr_data1[23:16]};
                            wd2                 =                           {wr_data2[7:0],wr_data2[23:0],wr_data2[23:0],wr_data2[23:16]};
                            wd3                 =                           {wr_data3[7:0],wr_data3[23:0],wr_data3[23:0],wr_data3[23:16]};
                        end
                        2'b10:
                        begin
                            wd0                 =                           {wr_data0[71:48],wr_data0[47:24],wr_data0[23:8]};
                            wd1                 =                           {wr_data1[71:48],wr_data1[47:24],wr_data1[23:8]};
                            wd2                 =                           {wr_data2[71:48],wr_data2[47:24],wr_data2[23:8]};
                            wd3                 =                           {wr_data3[71:48],wr_data3[47:24],wr_data3[23:8]};
                        end
                        default:
                        begin
                            wd0                 =                           {wr_data0[15:0],wr_data0[23:0],wr_data0[23:0]};
                            wd1                 =                           {wr_data1[15:0],wr_data1[23:0],wr_data1[23:0]};
                            wd2                 =                           {wr_data2[15:0],wr_data2[23:0],wr_data2[23:0]};
                            wd3                 =                           {wr_data3[15:0],wr_data3[23:0],wr_data3[23:0]};
                        end
                    endcase                         
                end
                S_WR1:
                begin
                    case(wr_cnt)
                        2'b00:
                        begin
                            wd0                 =                           {wr_data0_r[135:120],wr_data0_r[119:96],wr_data0_r[95:72]};
                            wd1                 =                           {wr_data1_r[135:120],wr_data1_r[119:96],wr_data1_r[95:72]};
                            wd2                 =                           {wr_data2_r[135:120],wr_data2_r[119:96],wr_data2_r[95:72]};
                            wd3                 =                           {wr_data3_r[135:120],wr_data3_r[119:96],wr_data3_r[95:72]};
                        end
                        2'b01:
                        begin
                            wd0                 =                           {wr_data0[7:0],wr_data0_r[191:184],wr_data0_r[183:160],wr_data0_r[159:136]};
                            wd1                 =                           {wr_data1[7:0],wr_data1_r[191:184],wr_data1_r[183:160],wr_data1_r[159:136]};
                            wd2                 =                           {wr_data2[7:0],wr_data2_r[191:184],wr_data2_r[183:160],wr_data2_r[159:136]};
                            wd3                 =                           {wr_data3[7:0],wr_data3_r[191:184],wr_data3_r[183:160],wr_data3_r[159:136]};
                        end
                        2'b10:
                        begin
                            wd0                 =                           {wr_data0[71:48],wr_data0[47:24],wr_data0[23:8]};
                            wd1                 =                           {wr_data1[71:48],wr_data1[47:24],wr_data1[23:8]};
                            wd2                 =                           {wr_data2[71:48],wr_data2[47:24],wr_data2[23:8]};
                            wd3                 =                           {wr_data3[71:48],wr_data3[47:24],wr_data3[23:8]};
                        end
                        default:
                        begin
                        begin
                            wd0                 =                           {wr_data0_r[135:120],wr_data0_r[119:96],wr_data0_r[95:72]};
                            wd1                 =                           {wr_data1_r[135:120],wr_data1_r[119:96],wr_data1_r[95:72]};
                            wd2                 =                           {wr_data2_r[135:120],wr_data2_r[119:96],wr_data2_r[95:72]};
                            wd3                 =                           {wr_data3_r[135:120],wr_data3_r[119:96],wr_data3_r[95:72]};
                        end
                        end
                    endcase                         
                end
                S_WR2:
                begin
                    case(wr_cnt)
                        2'b00:
                        begin
                            wd0                 =                           {wr_data0[135:120],wr_data0[119:96],wr_data0[95:72]};
                            wd1                 =                           {wr_data1[135:120],wr_data1[119:96],wr_data1[95:72]};
                            wd2                 =                           {wr_data2[135:120],wr_data2[119:96],wr_data2[95:72]};
                            wd3                 =                           {wr_data3[135:120],wr_data3[119:96],wr_data3[95:72]};
                        end
                        2'b01:
                        begin
                            wd0                 =                           {wr_data0[175:168],wr_data0[191:184],wr_data0[183:160],wr_data0[159:136]};
                            wd1                 =                           {wr_data1[175:168],wr_data1[191:184],wr_data1[183:160],wr_data1[159:136]};
                            wd2                 =                           {wr_data2[175:168],wr_data2[191:184],wr_data2[183:160],wr_data2[159:136]};
                            wd3                 =                           {wr_data3[175:168],wr_data3[191:184],wr_data3[183:160],wr_data3[159:136]};
                        end
                        2'b10:
                        begin
                            wd0                 =                           {wr_data0[191:168],wr_data0[191:168],wr_data0[191:176]};
                            wd1                 =                           {wr_data1[191:168],wr_data1[191:168],wr_data1[191:176]};
                            wd2                 =                           {wr_data2[191:168],wr_data2[191:168],wr_data2[191:176]};
                            wd3                 =                           {wr_data3[191:168],wr_data3[191:168],wr_data3[191:176]};
                        end
                        default:
                        begin
                            wd0                 =                           {wr_data0[135:120],wr_data0[119:96],wr_data0[95:72]};
                            wd1                 =                           {wr_data1[135:120],wr_data1[119:96],wr_data1[95:72]};
                            wd2                 =                           {wr_data2[135:120],wr_data2[119:96],wr_data2[95:72]};
                            wd3                 =                           {wr_data3[135:120],wr_data3[119:96],wr_data3[95:72]};
                        end
                    endcase                         
                end
                default:
                begin
                            wd0                 =                           {wr_data0[135:120],wr_data0[119:96],wr_data0[95:72]};
                            wd1                 =                           {wr_data1[135:120],wr_data1[119:96],wr_data1[95:72]};
                            wd2                 =                           {wr_data2[135:120],wr_data2[119:96],wr_data2[95:72]};
                            wd3                 =                           {wr_data3[135:120],wr_data3[119:96],wr_data3[95:72]};
                end
            endcase
        end

        always@(posedge clk)
        begin
            if(wr_cnt[1])
            begin
                            wr_data0_r          <=                          wr_data0                ;
                            wr_data1_r          <=                          wr_data1                ;
                            wr_data2_r          <=                          wr_data2                ;
                            wr_data3_r          <=                          wr_data3                ;
            end
        end

        always@(*)
        begin
            case(rd_cnt)
                2'b00:
                            rd_data             =                           rd_data0                ;
                2'b01:
                begin
                    if(rd_addr==11'd0)
                            rd_data             =                           rd_data0                ;
                    else
                            rd_data             =                           rd_data1                ;
                end
                2'b10:
                begin
                    if(rd_addr==11'd0)
                            rd_data             =                           rd_data1                ;
                    else
                            rd_data             =                           rd_data2                ;    
                end
                2'b11:
                begin
                    if(rd_addr==11'd0)
                            rd_data             =                           rd_data2                ;
                    else
                            rd_data             =                           rd_data3                ;
                end
                default:
                            rd_data             =                           rd_data0                ;
            endcase
        end

endmodule
