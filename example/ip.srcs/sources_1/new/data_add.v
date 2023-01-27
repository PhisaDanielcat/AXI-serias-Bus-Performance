`timescale 1ns / 1ps

module data_add(
        input               wire                                clk             ,
        input               wire[103:0]                         mul_outB_0_0    ,
        input               wire[103:0]                         mul_outB_0_1    ,
        input               wire[103:0]                         mul_outB_0_2    ,
        input               wire[103:0]                         mul_outB_0_3    ,
        input               wire[103:0]                         mul_outB_1_0    ,
        input               wire[103:0]                         mul_outB_1_1    ,
        input               wire[103:0]                         mul_outB_1_2    ,
        input               wire[103:0]                         mul_outB_1_3    ,
        input               wire[103:0]                         mul_outB_2_0    ,
        input               wire[103:0]                         mul_outB_2_1    ,
        input               wire[103:0]                         mul_outB_2_2    ,
        input               wire[103:0]                         mul_outB_2_3    ,
        input               wire[103:0]                         mul_outB_3_0    ,
        input               wire[103:0]                         mul_outB_3_1    ,
        input               wire[103:0]                         mul_outB_3_2    ,
        input               wire[103:0]                         mul_outB_3_3    ,
        input               wire[103:0]                         mul_outG_0_0    ,
        input               wire[103:0]                         mul_outG_0_1    ,
        input               wire[103:0]                         mul_outG_0_2    ,
        input               wire[103:0]                         mul_outG_0_3    ,
        input               wire[103:0]                         mul_outG_1_0    ,
        input               wire[103:0]                         mul_outG_1_1    ,
        input               wire[103:0]                         mul_outG_1_2    ,
        input               wire[103:0]                         mul_outG_1_3    ,
        input               wire[103:0]                         mul_outG_2_0    ,
        input               wire[103:0]                         mul_outG_2_1    ,
        input               wire[103:0]                         mul_outG_2_2    ,
        input               wire[103:0]                         mul_outG_2_3    ,
        input               wire[103:0]                         mul_outG_3_0    ,
        input               wire[103:0]                         mul_outG_3_1    ,
        input               wire[103:0]                         mul_outG_3_2    ,
        input               wire[103:0]                         mul_outG_3_3    ,
        input               wire[103:0]                         mul_outR_0_0    ,
        input               wire[103:0]                         mul_outR_0_1    ,
        input               wire[103:0]                         mul_outR_0_2    ,
        input               wire[103:0]                         mul_outR_0_3    ,
        input               wire[103:0]                         mul_outR_1_0    ,
        input               wire[103:0]                         mul_outR_1_1    ,
        input               wire[103:0]                         mul_outR_1_2    ,
        input               wire[103:0]                         mul_outR_1_3    ,
        input               wire[103:0]                         mul_outR_2_0    ,
        input               wire[103:0]                         mul_outR_2_1    ,
        input               wire[103:0]                         mul_outR_2_2    ,
        input               wire[103:0]                         mul_outR_2_3    ,
        input               wire[103:0]                         mul_outR_3_0    ,
        input               wire[103:0]                         mul_outR_3_1    ,
        input               wire[103:0]                         mul_outR_3_2    ,
        input               wire[103:0]                         mul_outR_3_3    ,
        
        output              reg signed [27:0]                   add_outB_0_0    ,
        output              reg signed [27:0]                   add_outB_0_1    ,
        output              reg signed [27:0]                   add_outB_0_2    ,
        output              reg signed [27:0]                   add_outB_0_3    ,
        output              reg signed [27:0]                   add_outB_1_0    ,
        output              reg signed [27:0]                   add_outB_1_1    ,
        output              reg signed [27:0]                   add_outB_1_2    ,
        output              reg signed [27:0]                   add_outB_1_3    ,
        output              reg signed [27:0]                   add_outB_2_0    ,
        output              reg signed [27:0]                   add_outB_2_1    ,
        output              reg signed [27:0]                   add_outB_2_2    ,
        output              reg signed [27:0]                   add_outB_2_3    ,
        output              reg signed [27:0]                   add_outB_3_0    ,
        output              reg signed [27:0]                   add_outB_3_1    ,
        output              reg signed [27:0]                   add_outB_3_2    ,
        output              reg signed [27:0]                   add_outB_3_3    ,
        output              reg signed [27:0]                   add_outG_0_0    ,
        output              reg signed [27:0]                   add_outG_0_1    ,
        output              reg signed [27:0]                   add_outG_0_2    ,
        output              reg signed [27:0]                   add_outG_0_3    ,
        output              reg signed [27:0]                   add_outG_1_0    ,
        output              reg signed [27:0]                   add_outG_1_1    ,
        output              reg signed [27:0]                   add_outG_1_2    ,
        output              reg signed [27:0]                   add_outG_1_3    ,
        output              reg signed [27:0]                   add_outG_2_0    ,
        output              reg signed [27:0]                   add_outG_2_1    ,
        output              reg signed [27:0]                   add_outG_2_2    ,
        output              reg signed [27:0]                   add_outG_2_3    ,
        output              reg signed [27:0]                   add_outG_3_0    ,
        output              reg signed [27:0]                   add_outG_3_1    ,
        output              reg signed [27:0]                   add_outG_3_2    ,
        output              reg signed [27:0]                   add_outG_3_3    ,
        output              reg signed [27:0]                   add_outR_0_0    ,
        output              reg signed [27:0]                   add_outR_0_1    ,
        output              reg signed [27:0]                   add_outR_0_2    ,
        output              reg signed [27:0]                   add_outR_0_3    ,
        output              reg signed [27:0]                   add_outR_1_0    ,
        output              reg signed [27:0]                   add_outR_1_1    ,
        output              reg signed [27:0]                   add_outR_1_2    ,
        output              reg signed [27:0]                   add_outR_1_3    ,
        output              reg signed [27:0]                   add_outR_2_0    ,
        output              reg signed [27:0]                   add_outR_2_1    ,
        output              reg signed [27:0]                   add_outR_2_2    ,
        output              reg signed [27:0]                   add_outR_2_3    ,
        output              reg signed [27:0]                   add_outR_3_0    ,
        output              reg signed [27:0]                   add_outR_3_1    ,
        output              reg signed [27:0]                   add_outR_3_2    ,
        output              reg signed [27:0]                   add_outR_3_3    
    );


        reg  signed[25:0]                                       mul_outB_0_0_0    ;
        reg  signed[25:0]                                       mul_outB_0_0_1    ;
        reg  signed[25:0]                                       mul_outB_0_0_2    ;
        reg  signed[25:0]                                       mul_outB_0_0_3    ;
        reg  signed[25:0]                                       mul_outB_0_1_0    ;
        reg  signed[25:0]                                       mul_outB_0_1_1    ;
        reg  signed[25:0]                                       mul_outB_0_1_2    ;
        reg  signed[25:0]                                       mul_outB_0_1_3    ;
        reg  signed[25:0]                                       mul_outB_0_2_0    ;
        reg  signed[25:0]                                       mul_outB_0_2_1    ;
        reg  signed[25:0]                                       mul_outB_0_2_2    ;
        reg  signed[25:0]                                       mul_outB_0_2_3    ;
        reg  signed[25:0]                                       mul_outB_0_3_0    ;
        reg  signed[25:0]                                       mul_outB_0_3_1    ;
        reg  signed[25:0]                                       mul_outB_0_3_2    ;
        reg  signed[25:0]                                       mul_outB_0_3_3    ;
        reg  signed[25:0]                                       mul_outB_1_0_0    ;
        reg  signed[25:0]                                       mul_outB_1_0_1    ;
        reg  signed[25:0]                                       mul_outB_1_0_2    ;
        reg  signed[25:0]                                       mul_outB_1_0_3    ;
        reg  signed[25:0]                                       mul_outB_1_1_0    ;
        reg  signed[25:0]                                       mul_outB_1_1_1    ;
        reg  signed[25:0]                                       mul_outB_1_1_2    ;
        reg  signed[25:0]                                       mul_outB_1_1_3    ;
        reg  signed[25:0]                                       mul_outB_1_2_0    ;
        reg  signed[25:0]                                       mul_outB_1_2_1    ;
        reg  signed[25:0]                                       mul_outB_1_2_2    ;
        reg  signed[25:0]                                       mul_outB_1_2_3    ;
        reg  signed[25:0]                                       mul_outB_1_3_0    ;
        reg  signed[25:0]                                       mul_outB_1_3_1    ;
        reg  signed[25:0]                                       mul_outB_1_3_2    ;
        reg  signed[25:0]                                       mul_outB_1_3_3    ;
        reg  signed[25:0]                                       mul_outB_2_0_0    ;
        reg  signed[25:0]                                       mul_outB_2_0_1    ;
        reg  signed[25:0]                                       mul_outB_2_0_2    ;
        reg  signed[25:0]                                       mul_outB_2_0_3    ;
        reg  signed[25:0]                                       mul_outB_2_1_0    ;
        reg  signed[25:0]                                       mul_outB_2_1_1    ;
        reg  signed[25:0]                                       mul_outB_2_1_2    ;
        reg  signed[25:0]                                       mul_outB_2_1_3    ;
        reg  signed[25:0]                                       mul_outB_2_2_0    ;
        reg  signed[25:0]                                       mul_outB_2_2_1    ;
        reg  signed[25:0]                                       mul_outB_2_2_2    ;
        reg  signed[25:0]                                       mul_outB_2_2_3    ;
        reg  signed[25:0]                                       mul_outB_2_3_0    ;
        reg  signed[25:0]                                       mul_outB_2_3_1    ;
        reg  signed[25:0]                                       mul_outB_2_3_2    ;
        reg  signed[25:0]                                       mul_outB_2_3_3    ;
        reg  signed[25:0]                                       mul_outB_3_0_0    ;
        reg  signed[25:0]                                       mul_outB_3_0_1    ;
        reg  signed[25:0]                                       mul_outB_3_0_2    ;
        reg  signed[25:0]                                       mul_outB_3_0_3    ;
        reg  signed[25:0]                                       mul_outB_3_1_0    ;
        reg  signed[25:0]                                       mul_outB_3_1_1    ;
        reg  signed[25:0]                                       mul_outB_3_1_2    ;
        reg  signed[25:0]                                       mul_outB_3_1_3    ;
        reg  signed[25:0]                                       mul_outB_3_2_0    ;
        reg  signed[25:0]                                       mul_outB_3_2_1    ;
        reg  signed[25:0]                                       mul_outB_3_2_2    ;
        reg  signed[25:0]                                       mul_outB_3_2_3    ;
        reg  signed[25:0]                                       mul_outB_3_3_0    ;
        reg  signed[25:0]                                       mul_outB_3_3_1    ;
        reg  signed[25:0]                                       mul_outB_3_3_2    ;
        reg  signed[25:0]                                       mul_outB_3_3_3    ;
        
        reg  signed[25:0]                                       mul_outG_0_0_0    ;
        reg  signed[25:0]                                       mul_outG_0_0_1    ;
        reg  signed[25:0]                                       mul_outG_0_0_2    ;
        reg  signed[25:0]                                       mul_outG_0_0_3    ;
        reg  signed[25:0]                                       mul_outG_0_1_0    ;
        reg  signed[25:0]                                       mul_outG_0_1_1    ;
        reg  signed[25:0]                                       mul_outG_0_1_2    ;
        reg  signed[25:0]                                       mul_outG_0_1_3    ;
        reg  signed[25:0]                                       mul_outG_0_2_0    ;
        reg  signed[25:0]                                       mul_outG_0_2_1    ;
        reg  signed[25:0]                                       mul_outG_0_2_2    ;
        reg  signed[25:0]                                       mul_outG_0_2_3    ;
        reg  signed[25:0]                                       mul_outG_0_3_0    ;
        reg  signed[25:0]                                       mul_outG_0_3_1    ;
        reg  signed[25:0]                                       mul_outG_0_3_2    ;
        reg  signed[25:0]                                       mul_outG_0_3_3    ;
        reg  signed[25:0]                                       mul_outG_1_0_0    ;
        reg  signed[25:0]                                       mul_outG_1_0_1    ;
        reg  signed[25:0]                                       mul_outG_1_0_2    ;
        reg  signed[25:0]                                       mul_outG_1_0_3    ;
        reg  signed[25:0]                                       mul_outG_1_1_0    ;
        reg  signed[25:0]                                       mul_outG_1_1_1    ;
        reg  signed[25:0]                                       mul_outG_1_1_2    ;
        reg  signed[25:0]                                       mul_outG_1_1_3    ;
        reg  signed[25:0]                                       mul_outG_1_2_0    ;
        reg  signed[25:0]                                       mul_outG_1_2_1    ;
        reg  signed[25:0]                                       mul_outG_1_2_2    ;
        reg  signed[25:0]                                       mul_outG_1_2_3    ;
        reg  signed[25:0]                                       mul_outG_1_3_0    ;
        reg  signed[25:0]                                       mul_outG_1_3_1    ;
        reg  signed[25:0]                                       mul_outG_1_3_2    ;
        reg  signed[25:0]                                       mul_outG_1_3_3    ;
        reg  signed[25:0]                                       mul_outG_2_0_0    ;
        reg  signed[25:0]                                       mul_outG_2_0_1    ;
        reg  signed[25:0]                                       mul_outG_2_0_2    ;
        reg  signed[25:0]                                       mul_outG_2_0_3    ;
        reg  signed[25:0]                                       mul_outG_2_1_0    ;
        reg  signed[25:0]                                       mul_outG_2_1_1    ;
        reg  signed[25:0]                                       mul_outG_2_1_2    ;
        reg  signed[25:0]                                       mul_outG_2_1_3    ;
        reg  signed[25:0]                                       mul_outG_2_2_0    ;
        reg  signed[25:0]                                       mul_outG_2_2_1    ;
        reg  signed[25:0]                                       mul_outG_2_2_2    ;
        reg  signed[25:0]                                       mul_outG_2_2_3    ;
        reg  signed[25:0]                                       mul_outG_2_3_0    ;
        reg  signed[25:0]                                       mul_outG_2_3_1    ;
        reg  signed[25:0]                                       mul_outG_2_3_2    ;
        reg  signed[25:0]                                       mul_outG_2_3_3    ;
        reg  signed[25:0]                                       mul_outG_3_0_0    ;
        reg  signed[25:0]                                       mul_outG_3_0_1    ;
        reg  signed[25:0]                                       mul_outG_3_0_2    ;
        reg  signed[25:0]                                       mul_outG_3_0_3    ;
        reg  signed[25:0]                                       mul_outG_3_1_0    ;
        reg  signed[25:0]                                       mul_outG_3_1_1    ;
        reg  signed[25:0]                                       mul_outG_3_1_2    ;
        reg  signed[25:0]                                       mul_outG_3_1_3    ;
        reg  signed[25:0]                                       mul_outG_3_2_0    ;
        reg  signed[25:0]                                       mul_outG_3_2_1    ;
        reg  signed[25:0]                                       mul_outG_3_2_2    ;
        reg  signed[25:0]                                       mul_outG_3_2_3    ;
        reg  signed[25:0]                                       mul_outG_3_3_0    ;
        reg  signed[25:0]                                       mul_outG_3_3_1    ;
        reg  signed[25:0]                                       mul_outG_3_3_2    ;
        reg  signed[25:0]                                       mul_outG_3_3_3    ;

        reg  signed[25:0]                                       mul_outR_0_0_0    ;
        reg  signed[25:0]                                       mul_outR_0_0_1    ;
        reg  signed[25:0]                                       mul_outR_0_0_2    ;
        reg  signed[25:0]                                       mul_outR_0_0_3    ;
        reg  signed[25:0]                                       mul_outR_0_1_0    ;
        reg  signed[25:0]                                       mul_outR_0_1_1    ;
        reg  signed[25:0]                                       mul_outR_0_1_2    ;
        reg  signed[25:0]                                       mul_outR_0_1_3    ;
        reg  signed[25:0]                                       mul_outR_0_2_0    ;
        reg  signed[25:0]                                       mul_outR_0_2_1    ;
        reg  signed[25:0]                                       mul_outR_0_2_2    ;
        reg  signed[25:0]                                       mul_outR_0_2_3    ;
        reg  signed[25:0]                                       mul_outR_0_3_0    ;
        reg  signed[25:0]                                       mul_outR_0_3_1    ;
        reg  signed[25:0]                                       mul_outR_0_3_2    ;
        reg  signed[25:0]                                       mul_outR_0_3_3    ;
        reg  signed[25:0]                                       mul_outR_1_0_0    ;
        reg  signed[25:0]                                       mul_outR_1_0_1    ;
        reg  signed[25:0]                                       mul_outR_1_0_2    ;
        reg  signed[25:0]                                       mul_outR_1_0_3    ;
        reg  signed[25:0]                                       mul_outR_1_1_0    ;
        reg  signed[25:0]                                       mul_outR_1_1_1    ;
        reg  signed[25:0]                                       mul_outR_1_1_2    ;
        reg  signed[25:0]                                       mul_outR_1_1_3    ;
        reg  signed[25:0]                                       mul_outR_1_2_0    ;
        reg  signed[25:0]                                       mul_outR_1_2_1    ;
        reg  signed[25:0]                                       mul_outR_1_2_2    ;
        reg  signed[25:0]                                       mul_outR_1_2_3    ;
        reg  signed[25:0]                                       mul_outR_1_3_0    ;
        reg  signed[25:0]                                       mul_outR_1_3_1    ;
        reg  signed[25:0]                                       mul_outR_1_3_2    ;
        reg  signed[25:0]                                       mul_outR_1_3_3    ;
        reg  signed[25:0]                                       mul_outR_2_0_0    ;
        reg  signed[25:0]                                       mul_outR_2_0_1    ;
        reg  signed[25:0]                                       mul_outR_2_0_2    ;
        reg  signed[25:0]                                       mul_outR_2_0_3    ;
        reg  signed[25:0]                                       mul_outR_2_1_0    ;
        reg  signed[25:0]                                       mul_outR_2_1_1    ;
        reg  signed[25:0]                                       mul_outR_2_1_2    ;
        reg  signed[25:0]                                       mul_outR_2_1_3    ;
        reg  signed[25:0]                                       mul_outR_2_2_0    ;
        reg  signed[25:0]                                       mul_outR_2_2_1    ;
        reg  signed[25:0]                                       mul_outR_2_2_2    ;
        reg  signed[25:0]                                       mul_outR_2_2_3    ;
        reg  signed[25:0]                                       mul_outR_2_3_0    ;
        reg  signed[25:0]                                       mul_outR_2_3_1    ;
        reg  signed[25:0]                                       mul_outR_2_3_2    ;
        reg  signed[25:0]                                       mul_outR_2_3_3    ;
        reg  signed[25:0]                                       mul_outR_3_0_0    ;
        reg  signed[25:0]                                       mul_outR_3_0_1    ;
        reg  signed[25:0]                                       mul_outR_3_0_2    ;
        reg  signed[25:0]                                       mul_outR_3_0_3    ;
        reg  signed[25:0]                                       mul_outR_3_1_0    ;
        reg  signed[25:0]                                       mul_outR_3_1_1    ;
        reg  signed[25:0]                                       mul_outR_3_1_2    ;
        reg  signed[25:0]                                       mul_outR_3_1_3    ;
        reg  signed[25:0]                                       mul_outR_3_2_0    ;
        reg  signed[25:0]                                       mul_outR_3_2_1    ;
        reg  signed[25:0]                                       mul_outR_3_2_2    ;
        reg  signed[25:0]                                       mul_outR_3_2_3    ;
        reg  signed[25:0]                                       mul_outR_3_3_0    ;
        reg  signed[25:0]                                       mul_outR_3_3_1    ;
        reg  signed[25:0]                                       mul_outR_3_3_2    ;
        reg  signed[25:0]                                       mul_outR_3_3_3    ;
        wire signed[16:0]                                       bias              ;

        assign      bias                =                       17'b01000_0000_0000_0000;

        always@(*)
        begin
            mul_outB_0_0_0              =                      mul_outB_0_0[ 25: 0];
            mul_outB_0_0_1              =                      mul_outB_0_0[ 51:26];
            mul_outB_0_0_2              =                      mul_outB_0_0[ 77:52];
            mul_outB_0_0_3              =                      mul_outB_0_0[103:78];
            mul_outB_0_1_0              =                      mul_outB_0_1[ 25: 0];
            mul_outB_0_1_1              =                      mul_outB_0_1[ 51:26];
            mul_outB_0_1_2              =                      mul_outB_0_1[ 77:52];
            mul_outB_0_1_3              =                      mul_outB_0_1[103:78];
            mul_outB_0_2_0              =                      mul_outB_0_2[ 25: 0];
            mul_outB_0_2_1              =                      mul_outB_0_2[ 51:26];
            mul_outB_0_2_2              =                      mul_outB_0_2[ 77:52];
            mul_outB_0_2_3              =                      mul_outB_0_2[103:78];
            mul_outB_0_3_0              =                      mul_outB_0_3[ 25: 0];
            mul_outB_0_3_1              =                      mul_outB_0_3[ 51:26];
            mul_outB_0_3_2              =                      mul_outB_0_3[ 77:52];
            mul_outB_0_3_3              =                      mul_outB_0_3[103:78];
            mul_outB_1_0_0              =                      mul_outB_1_0[ 25: 0];
            mul_outB_1_0_1              =                      mul_outB_1_0[ 51:26];
            mul_outB_1_0_2              =                      mul_outB_1_0[ 77:52];
            mul_outB_1_0_3              =                      mul_outB_1_0[103:78];
            mul_outB_1_1_0              =                      mul_outB_1_1[ 25: 0];
            mul_outB_1_1_1              =                      mul_outB_1_1[ 51:26];
            mul_outB_1_1_2              =                      mul_outB_1_1[ 77:52];
            mul_outB_1_1_3              =                      mul_outB_1_1[103:78];
            mul_outB_1_2_0              =                      mul_outB_1_2[ 25: 0];
            mul_outB_1_2_1              =                      mul_outB_1_2[ 51:26];
            mul_outB_1_2_2              =                      mul_outB_1_2[ 77:52];
            mul_outB_1_2_3              =                      mul_outB_1_2[103:78];
            mul_outB_1_3_0              =                      mul_outB_1_3[ 25: 0];
            mul_outB_1_3_1              =                      mul_outB_1_3[ 51:26];
            mul_outB_1_3_2              =                      mul_outB_1_3[ 77:52];
            mul_outB_1_3_3              =                      mul_outB_1_3[103:78];
            mul_outB_2_0_0              =                      mul_outB_2_0[ 25: 0];
            mul_outB_2_0_1              =                      mul_outB_2_0[ 51:26];
            mul_outB_2_0_2              =                      mul_outB_2_0[ 77:52];
            mul_outB_2_0_3              =                      mul_outB_2_0[103:78];
            mul_outB_2_1_0              =                      mul_outB_2_1[ 25: 0];
            mul_outB_2_1_1              =                      mul_outB_2_1[ 51:26];
            mul_outB_2_1_2              =                      mul_outB_2_1[ 77:52];
            mul_outB_2_1_3              =                      mul_outB_2_1[103:78];
            mul_outB_2_2_0              =                      mul_outB_2_2[ 25: 0];
            mul_outB_2_2_1              =                      mul_outB_2_2[ 51:26];
            mul_outB_2_2_2              =                      mul_outB_2_2[ 77:52];
            mul_outB_2_2_3              =                      mul_outB_2_2[103:78];
            mul_outB_2_3_0              =                      mul_outB_2_3[ 25: 0];
            mul_outB_2_3_1              =                      mul_outB_2_3[ 51:26];
            mul_outB_2_3_2              =                      mul_outB_2_3[ 77:52];
            mul_outB_2_3_3              =                      mul_outB_2_3[103:78];
            mul_outB_3_0_0              =                      mul_outB_3_0[ 25: 0];
            mul_outB_3_0_1              =                      mul_outB_3_0[ 51:26];
            mul_outB_3_0_2              =                      mul_outB_3_0[ 77:52];
            mul_outB_3_0_3              =                      mul_outB_3_0[103:78];
            mul_outB_3_1_0              =                      mul_outB_3_1[ 25: 0];
            mul_outB_3_1_1              =                      mul_outB_3_1[ 51:26];
            mul_outB_3_1_2              =                      mul_outB_3_1[ 77:52];
            mul_outB_3_1_3              =                      mul_outB_3_1[103:78];
            mul_outB_3_2_0              =                      mul_outB_3_2[ 25: 0];
            mul_outB_3_2_1              =                      mul_outB_3_2[ 51:26];
            mul_outB_3_2_2              =                      mul_outB_3_2[ 77:52];
            mul_outB_3_2_3              =                      mul_outB_3_2[103:78];
            mul_outB_3_3_0              =                      mul_outB_3_3[ 25: 0];
            mul_outB_3_3_1              =                      mul_outB_3_3[ 51:26];
            mul_outB_3_3_2              =                      mul_outB_3_3[ 77:52];
            mul_outB_3_3_3              =                      mul_outB_3_3[103:78];
            mul_outG_0_0_0              =                      mul_outG_0_0[ 25: 0];
            mul_outG_0_0_1              =                      mul_outG_0_0[ 51:26];
            mul_outG_0_0_2              =                      mul_outG_0_0[ 77:52];
            mul_outG_0_0_3              =                      mul_outG_0_0[103:78];
            mul_outG_0_1_0              =                      mul_outG_0_1[ 25: 0];
            mul_outG_0_1_1              =                      mul_outG_0_1[ 51:26];
            mul_outG_0_1_2              =                      mul_outG_0_1[ 77:52];
            mul_outG_0_1_3              =                      mul_outG_0_1[103:78];
            mul_outG_0_2_0              =                      mul_outG_0_2[ 25: 0];
            mul_outG_0_2_1              =                      mul_outG_0_2[ 51:26];
            mul_outG_0_2_2              =                      mul_outG_0_2[ 77:52];
            mul_outG_0_2_3              =                      mul_outG_0_2[103:78];
            mul_outG_0_3_0              =                      mul_outG_0_3[ 25: 0];
            mul_outG_0_3_1              =                      mul_outG_0_3[ 51:26];
            mul_outG_0_3_2              =                      mul_outG_0_3[ 77:52];
            mul_outG_0_3_3              =                      mul_outG_0_3[103:78];
            mul_outG_1_0_0              =                      mul_outG_1_0[ 25: 0];
            mul_outG_1_0_1              =                      mul_outG_1_0[ 51:26];
            mul_outG_1_0_2              =                      mul_outG_1_0[ 77:52];
            mul_outG_1_0_3              =                      mul_outG_1_0[103:78];
            mul_outG_1_1_0              =                      mul_outG_1_1[ 25: 0];
            mul_outG_1_1_1              =                      mul_outG_1_1[ 51:26];
            mul_outG_1_1_2              =                      mul_outG_1_1[ 77:52];
            mul_outG_1_1_3              =                      mul_outG_1_1[103:78];
            mul_outG_1_2_0              =                      mul_outG_1_2[ 25: 0];
            mul_outG_1_2_1              =                      mul_outG_1_2[ 51:26];
            mul_outG_1_2_2              =                      mul_outG_1_2[ 77:52];
            mul_outG_1_2_3              =                      mul_outG_1_2[103:78];
            mul_outG_1_3_0              =                      mul_outG_1_3[ 25: 0];
            mul_outG_1_3_1              =                      mul_outG_1_3[ 51:26];
            mul_outG_1_3_2              =                      mul_outG_1_3[ 77:52];
            mul_outG_1_3_3              =                      mul_outG_1_3[103:78];
            mul_outG_2_0_0              =                      mul_outG_2_0[ 25: 0];
            mul_outG_2_0_1              =                      mul_outG_2_0[ 51:26];
            mul_outG_2_0_2              =                      mul_outG_2_0[ 77:52];
            mul_outG_2_0_3              =                      mul_outG_2_0[103:78];
            mul_outG_2_1_0              =                      mul_outG_2_1[ 25: 0];
            mul_outG_2_1_1              =                      mul_outG_2_1[ 51:26];
            mul_outG_2_1_2              =                      mul_outG_2_1[ 77:52];
            mul_outG_2_1_3              =                      mul_outG_2_1[103:78];
            mul_outG_2_2_0              =                      mul_outG_2_2[ 25: 0];
            mul_outG_2_2_1              =                      mul_outG_2_2[ 51:26];
            mul_outG_2_2_2              =                      mul_outG_2_2[ 77:52];
            mul_outG_2_2_3              =                      mul_outG_2_2[103:78];
            mul_outG_2_3_0              =                      mul_outG_2_3[ 25: 0];
            mul_outG_2_3_1              =                      mul_outG_2_3[ 51:26];
            mul_outG_2_3_2              =                      mul_outG_2_3[ 77:52];
            mul_outG_2_3_3              =                      mul_outG_2_3[103:78];
            mul_outG_3_0_0              =                      mul_outG_3_0[ 25: 0];
            mul_outG_3_0_1              =                      mul_outG_3_0[ 51:26];
            mul_outG_3_0_2              =                      mul_outG_3_0[ 77:52];
            mul_outG_3_0_3              =                      mul_outG_3_0[103:78];
            mul_outG_3_1_0              =                      mul_outG_3_1[ 25: 0];
            mul_outG_3_1_1              =                      mul_outG_3_1[ 51:26];
            mul_outG_3_1_2              =                      mul_outG_3_1[ 77:52];
            mul_outG_3_1_3              =                      mul_outG_3_1[103:78];
            mul_outG_3_2_0              =                      mul_outG_3_2[ 25: 0];
            mul_outG_3_2_1              =                      mul_outG_3_2[ 51:26];
            mul_outG_3_2_2              =                      mul_outG_3_2[ 77:52];
            mul_outG_3_2_3              =                      mul_outG_3_2[103:78];
            mul_outG_3_3_0              =                      mul_outG_3_3[ 25: 0];
            mul_outG_3_3_1              =                      mul_outG_3_3[ 51:26];
            mul_outG_3_3_2              =                      mul_outG_3_3[ 77:52];
            mul_outG_3_3_3              =                      mul_outG_3_3[103:78];
            mul_outR_0_0_0              =                      mul_outR_0_0[ 25: 0];
            mul_outR_0_0_1              =                      mul_outR_0_0[ 51:26];
            mul_outR_0_0_2              =                      mul_outR_0_0[ 77:52];
            mul_outR_0_0_3              =                      mul_outR_0_0[103:78];
            mul_outR_0_1_0              =                      mul_outR_0_1[ 25: 0];
            mul_outR_0_1_1              =                      mul_outR_0_1[ 51:26];
            mul_outR_0_1_2              =                      mul_outR_0_1[ 77:52];
            mul_outR_0_1_3              =                      mul_outR_0_1[103:78];
            mul_outR_0_2_0              =                      mul_outR_0_2[ 25: 0];
            mul_outR_0_2_1              =                      mul_outR_0_2[ 51:26];
            mul_outR_0_2_2              =                      mul_outR_0_2[ 77:52];
            mul_outR_0_2_3              =                      mul_outR_0_2[103:78];
            mul_outR_0_3_0              =                      mul_outR_0_3[ 25: 0];
            mul_outR_0_3_1              =                      mul_outR_0_3[ 51:26];
            mul_outR_0_3_2              =                      mul_outR_0_3[ 77:52];
            mul_outR_0_3_3              =                      mul_outR_0_3[103:78];
            mul_outR_1_0_0              =                      mul_outR_1_0[ 25: 0];
            mul_outR_1_0_1              =                      mul_outR_1_0[ 51:26];
            mul_outR_1_0_2              =                      mul_outR_1_0[ 77:52];
            mul_outR_1_0_3              =                      mul_outR_1_0[103:78];
            mul_outR_1_1_0              =                      mul_outR_1_1[ 25: 0];
            mul_outR_1_1_1              =                      mul_outR_1_1[ 51:26];
            mul_outR_1_1_2              =                      mul_outR_1_1[ 77:52];
            mul_outR_1_1_3              =                      mul_outR_1_1[103:78];
            mul_outR_1_2_0              =                      mul_outR_1_2[ 25: 0];
            mul_outR_1_2_1              =                      mul_outR_1_2[ 51:26];
            mul_outR_1_2_2              =                      mul_outR_1_2[ 77:52];
            mul_outR_1_2_3              =                      mul_outR_1_2[103:78];
            mul_outR_1_3_0              =                      mul_outR_1_3[ 25: 0];
            mul_outR_1_3_1              =                      mul_outR_1_3[ 51:26];
            mul_outR_1_3_2              =                      mul_outR_1_3[ 77:52];
            mul_outR_1_3_3              =                      mul_outR_1_3[103:78];
            mul_outR_2_0_0              =                      mul_outR_2_0[ 25: 0];
            mul_outR_2_0_1              =                      mul_outR_2_0[ 51:26];
            mul_outR_2_0_2              =                      mul_outR_2_0[ 77:52];
            mul_outR_2_0_3              =                      mul_outR_2_0[103:78];
            mul_outR_2_1_0              =                      mul_outR_2_1[ 25: 0];
            mul_outR_2_1_1              =                      mul_outR_2_1[ 51:26];
            mul_outR_2_1_2              =                      mul_outR_2_1[ 77:52];
            mul_outR_2_1_3              =                      mul_outR_2_1[103:78];
            mul_outR_2_2_0              =                      mul_outR_2_2[ 25: 0];
            mul_outR_2_2_1              =                      mul_outR_2_2[ 51:26];
            mul_outR_2_2_2              =                      mul_outR_2_2[ 77:52];
            mul_outR_2_2_3              =                      mul_outR_2_2[103:78];
            mul_outR_2_3_0              =                      mul_outR_2_3[ 25: 0];
            mul_outR_2_3_1              =                      mul_outR_2_3[ 51:26];
            mul_outR_2_3_2              =                      mul_outR_2_3[ 77:52];
            mul_outR_2_3_3              =                      mul_outR_2_3[103:78];
            mul_outR_3_0_0              =                      mul_outR_3_0[ 25: 0];
            mul_outR_3_0_1              =                      mul_outR_3_0[ 51:26];
            mul_outR_3_0_2              =                      mul_outR_3_0[ 77:52];
            mul_outR_3_0_3              =                      mul_outR_3_0[103:78];
            mul_outR_3_1_0              =                      mul_outR_3_1[ 25: 0];
            mul_outR_3_1_1              =                      mul_outR_3_1[ 51:26];
            mul_outR_3_1_2              =                      mul_outR_3_1[ 77:52];
            mul_outR_3_1_3              =                      mul_outR_3_1[103:78];
            mul_outR_3_2_0              =                      mul_outR_3_2[ 25: 0];
            mul_outR_3_2_1              =                      mul_outR_3_2[ 51:26];
            mul_outR_3_2_2              =                      mul_outR_3_2[ 77:52];
            mul_outR_3_2_3              =                      mul_outR_3_2[103:78];
            mul_outR_3_3_0              =                      mul_outR_3_3[ 25: 0];
            mul_outR_3_3_1              =                      mul_outR_3_3[ 51:26];
            mul_outR_3_3_2              =                      mul_outR_3_3[ 77:52];
            mul_outR_3_3_3              =                      mul_outR_3_3[103:78];
        end


        always@(posedge clk)
        begin
            add_outB_0_0        <=      mul_outB_0_0_0 + mul_outB_0_0_1 + mul_outB_0_0_2 + mul_outB_0_0_3 + bias;
            add_outB_0_1        <=      mul_outB_0_1_0 + mul_outB_0_1_1 + mul_outB_0_1_2 + mul_outB_0_1_3 + bias;
            add_outB_0_2        <=      mul_outB_0_2_0 + mul_outB_0_2_1 + mul_outB_0_2_2 + mul_outB_0_2_3 + bias;
            add_outB_0_3        <=      mul_outB_0_3_0 + mul_outB_0_3_1 + mul_outB_0_3_2 + mul_outB_0_3_3 + bias;
            add_outB_1_0        <=      mul_outB_1_0_0 + mul_outB_1_0_1 + mul_outB_1_0_2 + mul_outB_1_0_3 + bias;
            add_outB_1_1        <=      mul_outB_1_1_0 + mul_outB_1_1_1 + mul_outB_1_1_2 + mul_outB_1_1_3 + bias;
            add_outB_1_2        <=      mul_outB_1_2_0 + mul_outB_1_2_1 + mul_outB_1_2_2 + mul_outB_1_2_3 + bias;
            add_outB_1_3        <=      mul_outB_1_3_0 + mul_outB_1_3_1 + mul_outB_1_3_2 + mul_outB_1_3_3 + bias;
            add_outB_2_0        <=      mul_outB_2_0_0 + mul_outB_2_0_1 + mul_outB_2_0_2 + mul_outB_2_0_3 + bias;
            add_outB_2_1        <=      mul_outB_2_1_0 + mul_outB_2_1_1 + mul_outB_2_1_2 + mul_outB_2_1_3 + bias;
            add_outB_2_2        <=      mul_outB_2_2_0 + mul_outB_2_2_1 + mul_outB_2_2_2 + mul_outB_2_2_3 + bias;
            add_outB_2_3        <=      mul_outB_2_3_0 + mul_outB_2_3_1 + mul_outB_2_3_2 + mul_outB_2_3_3 + bias;
            add_outB_3_0        <=      mul_outB_3_0_0 + mul_outB_3_0_1 + mul_outB_3_0_2 + mul_outB_3_0_3 + bias;
            add_outB_3_1        <=      mul_outB_3_1_0 + mul_outB_3_1_1 + mul_outB_3_1_2 + mul_outB_3_1_3 + bias;
            add_outB_3_2        <=      mul_outB_3_2_0 + mul_outB_3_2_1 + mul_outB_3_2_2 + mul_outB_3_2_3 + bias;
            add_outB_3_3        <=      mul_outB_3_3_0 + mul_outB_3_3_1 + mul_outB_3_3_2 + mul_outB_3_3_3 + bias;
            add_outG_0_0        <=      mul_outG_0_0_0 + mul_outG_0_0_1 + mul_outG_0_0_2 + mul_outG_0_0_3 + bias;
            add_outG_0_1        <=      mul_outG_0_1_0 + mul_outG_0_1_1 + mul_outG_0_1_2 + mul_outG_0_1_3 + bias;
            add_outG_0_2        <=      mul_outG_0_2_0 + mul_outG_0_2_1 + mul_outG_0_2_2 + mul_outG_0_2_3 + bias;
            add_outG_0_3        <=      mul_outG_0_3_0 + mul_outG_0_3_1 + mul_outG_0_3_2 + mul_outG_0_3_3 + bias;
            add_outG_1_0        <=      mul_outG_1_0_0 + mul_outG_1_0_1 + mul_outG_1_0_2 + mul_outG_1_0_3 + bias;
            add_outG_1_1        <=      mul_outG_1_1_0 + mul_outG_1_1_1 + mul_outG_1_1_2 + mul_outG_1_1_3 + bias;
            add_outG_1_2        <=      mul_outG_1_2_0 + mul_outG_1_2_1 + mul_outG_1_2_2 + mul_outG_1_2_3 + bias;
            add_outG_1_3        <=      mul_outG_1_3_0 + mul_outG_1_3_1 + mul_outG_1_3_2 + mul_outG_1_3_3 + bias;
            add_outG_2_0        <=      mul_outG_2_0_0 + mul_outG_2_0_1 + mul_outG_2_0_2 + mul_outG_2_0_3 + bias;
            add_outG_2_1        <=      mul_outG_2_1_0 + mul_outG_2_1_1 + mul_outG_2_1_2 + mul_outG_2_1_3 + bias;
            add_outG_2_2        <=      mul_outG_2_2_0 + mul_outG_2_2_1 + mul_outG_2_2_2 + mul_outG_2_2_3 + bias;
            add_outG_2_3        <=      mul_outG_2_3_0 + mul_outG_2_3_1 + mul_outG_2_3_2 + mul_outG_2_3_3 + bias;
            add_outG_3_0        <=      mul_outG_3_0_0 + mul_outG_3_0_1 + mul_outG_3_0_2 + mul_outG_3_0_3 + bias;
            add_outG_3_1        <=      mul_outG_3_1_0 + mul_outG_3_1_1 + mul_outG_3_1_2 + mul_outG_3_1_3 + bias;
            add_outG_3_2        <=      mul_outG_3_2_0 + mul_outG_3_2_1 + mul_outG_3_2_2 + mul_outG_3_2_3 + bias;
            add_outG_3_3        <=      mul_outG_3_3_0 + mul_outG_3_3_1 + mul_outG_3_3_2 + mul_outG_3_3_3 + bias;
            add_outR_0_0        <=      mul_outR_0_0_0 + mul_outR_0_0_1 + mul_outR_0_0_2 + mul_outR_0_0_3 + bias;
            add_outR_0_1        <=      mul_outR_0_1_0 + mul_outR_0_1_1 + mul_outR_0_1_2 + mul_outR_0_1_3 + bias;
            add_outR_0_2        <=      mul_outR_0_2_0 + mul_outR_0_2_1 + mul_outR_0_2_2 + mul_outR_0_2_3 + bias;
            add_outR_0_3        <=      mul_outR_0_3_0 + mul_outR_0_3_1 + mul_outR_0_3_2 + mul_outR_0_3_3 + bias;
            add_outR_1_0        <=      mul_outR_1_0_0 + mul_outR_1_0_1 + mul_outR_1_0_2 + mul_outR_1_0_3 + bias;
            add_outR_1_1        <=      mul_outR_1_1_0 + mul_outR_1_1_1 + mul_outR_1_1_2 + mul_outR_1_1_3 + bias;
            add_outR_1_2        <=      mul_outR_1_2_0 + mul_outR_1_2_1 + mul_outR_1_2_2 + mul_outR_1_2_3 + bias;
            add_outR_1_3        <=      mul_outR_1_3_0 + mul_outR_1_3_1 + mul_outR_1_3_2 + mul_outR_1_3_3 + bias;
            add_outR_2_0        <=      mul_outR_2_0_0 + mul_outR_2_0_1 + mul_outR_2_0_2 + mul_outR_2_0_3 + bias;
            add_outR_2_1        <=      mul_outR_2_1_0 + mul_outR_2_1_1 + mul_outR_2_1_2 + mul_outR_2_1_3 + bias;
            add_outR_2_2        <=      mul_outR_2_2_0 + mul_outR_2_2_1 + mul_outR_2_2_2 + mul_outR_2_2_3 + bias;
            add_outR_2_3        <=      mul_outR_2_3_0 + mul_outR_2_3_1 + mul_outR_2_3_2 + mul_outR_2_3_3 + bias;
            add_outR_3_0        <=      mul_outR_3_0_0 + mul_outR_3_0_1 + mul_outR_3_0_2 + mul_outR_3_0_3 + bias;
            add_outR_3_1        <=      mul_outR_3_1_0 + mul_outR_3_1_1 + mul_outR_3_1_2 + mul_outR_3_1_3 + bias;
            add_outR_3_2        <=      mul_outR_3_2_0 + mul_outR_3_2_1 + mul_outR_3_2_2 + mul_outR_3_2_3 + bias;
            add_outR_3_3        <=      mul_outR_3_3_0 + mul_outR_3_3_1 + mul_outR_3_3_2 + mul_outR_3_3_3 + bias;
        end


endmodule
