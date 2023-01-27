`timescale 1ns / 1ps

module sp_comp(
        input           wire                                            clk                     ,
        input           wire[63:0]                                      up_data0                ,
        input           wire[63:0]                                      up_data1                ,
        input           wire[63:0]                                      up_data2                ,
        output          wire[31:0]                                      sp_data                
    );

        
        reg signed[11:0]                                                sp_data_r0              ;
        reg signed[11:0]                                                sp_data_r1              ;
        reg signed[11:0]                                                sp_data_r2              ;
        reg signed[11:0]                                                sp_data_r3              ;
        reg signed[11:0]                                                sp_data_r0_0            ;
        reg signed[11:0]                                                sp_data_r1_0            ;
        reg signed[11:0]                                                sp_data_r2_0            ;
        reg signed[11:0]                                                sp_data_r3_0            ;
        reg signed[11:0]                                                sp_data_r0_1            ;
        reg signed[11:0]                                                sp_data_r1_1            ;
        reg signed[11:0]                                                sp_data_r2_1            ;
        reg signed[11:0]                                                sp_data_r3_1            ;
        wire[ 7:0]                                                      up0_0                   ;
        wire[ 7:0]                                                      up0_1                   ;
        wire[ 7:0]                                                      up0_2                   ;
        wire[ 7:0]                                                      up0_3                   ;
        wire[ 7:0]                                                      up0_4                   ;
        wire[ 7:0]                                                      up0_5                   ;
        wire[ 7:0]                                                      up0_6                   ;
        wire[ 7:0]                                                      up0_7                   ;
        wire[ 7:0]                                                      up1_0                   ;
        wire[ 7:0]                                                      up1_1                   ;
        wire[ 7:0]                                                      up1_2                   ;
        wire[ 7:0]                                                      up1_3                   ;
        wire[ 7:0]                                                      up1_4                   ;
        wire[ 7:0]                                                      up1_5                   ;
        wire[ 7:0]                                                      up1_6                   ;
        wire[ 7:0]                                                      up1_7                   ;
        wire[ 7:0]                                                      up2_0                   ;
        wire[ 7:0]                                                      up2_1                   ;
        wire[ 7:0]                                                      up2_2                   ;
        wire[ 7:0]                                                      up2_3                   ;
        wire[ 7:0]                                                      up2_4                   ;
        wire[ 7:0]                                                      up2_5                   ;
        wire[ 7:0]                                                      up2_6                   ;
        wire[ 7:0]                                                      up2_7                   ;
        wire[ 7:0]                                                      res0                    ;
        wire[ 7:0]                                                      res1                    ;
        wire[ 7:0]                                                      res2                    ;
        wire[ 7:0]                                                      res3                    ;


        assign          res0  =                               (sp_data_r0[11])?8'd0:((sp_data_r0[10]||sp_data_r0[9]
                                                                        ||sp_data_r0[8])?8'hff:sp_data_r0[7:0]);
        assign          res1  =                               (sp_data_r1[11])?8'd0:((sp_data_r1[10]||sp_data_r1[9]
                                                                        ||sp_data_r1[8])?8'hff:sp_data_r1[7:0]);
        assign          res2  =                               (sp_data_r2[11])?8'd0:((sp_data_r2[10]||sp_data_r2[9]
                                                                        ||sp_data_r2[8])?8'hff:sp_data_r2[7:0]);
        assign          res3  =                               (sp_data_r3[11])?8'd0:((sp_data_r3[10]||sp_data_r3[9]
                                                                        ||sp_data_r3[8])?8'hff:sp_data_r3[7:0]);

        assign          sp_data         =                     {res3, res2, res1, res0}          ;

        assign          up0_0           =                               up_data0[ 7: 0]         ;
        assign          up0_1           =                               up_data0[15: 8]         ;
        assign          up0_2           =                               up_data0[23:16]         ;
        assign          up0_3           =                               up_data0[31:24]         ;
        assign          up0_4           =                               up_data0[39:32]         ;
        assign          up0_5           =                               up_data0[47:40]         ;
        assign          up0_6           =                               up_data0[55:48]         ;
        assign          up0_7           =                               up_data0[63:56]         ;
        assign          up1_0           =                               up_data1[ 7: 0]         ;
        assign          up1_1           =                               up_data1[15: 8]         ;
        assign          up1_2           =                               up_data1[23:16]         ;
        assign          up1_3           =                               up_data1[31:24]         ;
        assign          up1_4           =                               up_data1[39:32]         ;
        assign          up1_5           =                               up_data1[47:40]         ;
        assign          up1_6           =                               up_data1[55:48]         ;
        assign          up1_7           =                               up_data1[63:56]         ;
        assign          up2_0           =                               up_data2[ 7: 0]         ;
        assign          up2_1           =                               up_data2[15: 8]         ;
        assign          up2_2           =                               up_data2[23:16]         ;
        assign          up2_3           =                               up_data2[31:24]         ;
        assign          up2_4           =                               up_data2[39:32]         ;
        assign          up2_5           =                               up_data2[47:40]         ;
        assign          up2_6           =                               up_data2[55:48]         ;
        assign          up2_7           =                               up_data2[63:56]         ;

    always@(posedge clk)
    begin
            sp_data_r0_0        <=              5*up1_3                                         ;
            sp_data_r1_0        <=              5*up1_4                                         ;
            sp_data_r2_0        <=              5*up1_5                                         ;
            sp_data_r3_0        <=              5*up1_6                                         ;
            sp_data_r0_1        <=              up0_3 + up2_3 + up1_2 + up1_4                   ;
            sp_data_r1_1        <=              up0_4 + up2_4 + up1_3 + up1_5                   ;
            sp_data_r2_1        <=              up0_5 + up2_5 + up1_4 + up1_6                   ;
            sp_data_r3_1        <=              up0_6 + up2_6 + up1_5 + up1_7                   ;
            sp_data_r0          <=              sp_data_r0_0 - sp_data_r0_1                     ;
            sp_data_r1          <=              sp_data_r1_0 - sp_data_r1_1                     ;
            sp_data_r2          <=              sp_data_r2_0 - sp_data_r2_1                     ;
            sp_data_r3          <=              sp_data_r3_0 - sp_data_r3_1                     ;
    end
endmodule
