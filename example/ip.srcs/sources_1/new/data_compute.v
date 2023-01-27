`timescale 1ns / 1ps

module data_compute(
        input               wire                                clk             ,
        input               wire[ 1:0]                          cycle           ,
        input               wire[31:0]                          mul_in_B        ,
        input               wire[31:0]                          mul_in_G        ,
        input               wire[31:0]                          mul_in_R        ,
        input               wire[271:0]                         weight0_0       ,
        input               wire[271:0]                         weight0_1       ,
        input               wire[271:0]                         weight0_2       ,
        input               wire[271:0]                         weight0_3       ,
        input               wire[271:0]                         weight1_0       ,
        input               wire[271:0]                         weight1_1       ,
        input               wire[271:0]                         weight1_2       ,
        input               wire[271:0]                         weight1_3       ,
        input               wire[271:0]                         weight2_0       ,
        input               wire[271:0]                         weight2_1       ,
        input               wire[271:0]                         weight2_2       ,
        input               wire[271:0]                         weight2_3       ,
        input               wire[271:0]                         weight3_0       ,
        input               wire[271:0]                         weight3_1       ,
        input               wire[271:0]                         weight3_2       ,
        input               wire[271:0]                         weight3_3       ,
        output              wire[ 7:0]                          add_outB_0_0_rp ,
        output              wire[ 7:0]                          add_outB_0_1_rp ,
        output              wire[ 7:0]                          add_outB_0_2_rp ,
        output              wire[ 7:0]                          add_outB_0_3_rp ,
        output              wire[ 7:0]                          add_outB_1_0_rp ,
        output              wire[ 7:0]                          add_outB_1_1_rp ,
        output              wire[ 7:0]                          add_outB_1_2_rp ,
        output              wire[ 7:0]                          add_outB_1_3_rp ,
        output              wire[ 7:0]                          add_outB_2_0_rp ,
        output              wire[ 7:0]                          add_outB_2_1_rp ,
        output              wire[ 7:0]                          add_outB_2_2_rp ,
        output              wire[ 7:0]                          add_outB_2_3_rp ,
        output              wire[ 7:0]                          add_outB_3_0_rp ,
        output              wire[ 7:0]                          add_outB_3_1_rp ,
        output              wire[ 7:0]                          add_outB_3_2_rp ,
        output              wire[ 7:0]                          add_outB_3_3_rp ,
        output              wire[ 7:0]                          add_outG_0_0_rp ,
        output              wire[ 7:0]                          add_outG_0_1_rp ,
        output              wire[ 7:0]                          add_outG_0_2_rp ,
        output              wire[ 7:0]                          add_outG_0_3_rp ,
        output              wire[ 7:0]                          add_outG_1_0_rp ,
        output              wire[ 7:0]                          add_outG_1_1_rp ,
        output              wire[ 7:0]                          add_outG_1_2_rp ,
        output              wire[ 7:0]                          add_outG_1_3_rp ,
        output              wire[ 7:0]                          add_outG_2_0_rp ,
        output              wire[ 7:0]                          add_outG_2_1_rp ,
        output              wire[ 7:0]                          add_outG_2_2_rp ,
        output              wire[ 7:0]                          add_outG_2_3_rp ,
        output              wire[ 7:0]                          add_outG_3_0_rp ,
        output              wire[ 7:0]                          add_outG_3_1_rp ,
        output              wire[ 7:0]                          add_outG_3_2_rp ,
        output              wire[ 7:0]                          add_outG_3_3_rp ,
        output              wire[ 7:0]                          add_outR_0_0_rp ,
        output              wire[ 7:0]                          add_outR_0_1_rp ,
        output              wire[ 7:0]                          add_outR_0_2_rp ,
        output              wire[ 7:0]                          add_outR_0_3_rp ,
        output              wire[ 7:0]                          add_outR_1_0_rp ,
        output              wire[ 7:0]                          add_outR_1_1_rp ,
        output              wire[ 7:0]                          add_outR_1_2_rp ,
        output              wire[ 7:0]                          add_outR_1_3_rp ,
        output              wire[ 7:0]                          add_outR_2_0_rp ,
        output              wire[ 7:0]                          add_outR_2_1_rp ,
        output              wire[ 7:0]                          add_outR_2_2_rp ,
        output              wire[ 7:0]                          add_outR_2_3_rp ,
        output              wire[ 7:0]                          add_outR_3_0_rp ,
        output              wire[ 7:0]                          add_outR_3_1_rp ,
        output              wire[ 7:0]                          add_outR_3_2_rp ,
        output              wire[ 7:0]                          add_outR_3_3_rp 
    );

        wire[103:0]                                             mul_outB_0_0    ;
        wire[103:0]                                             mul_outB_0_1    ;
        wire[103:0]                                             mul_outB_0_2    ;
        wire[103:0]                                             mul_outB_0_3    ;
        wire[103:0]                                             mul_outB_1_0    ;
        wire[103:0]                                             mul_outB_1_1    ;
        wire[103:0]                                             mul_outB_1_2    ;
        wire[103:0]                                             mul_outB_1_3    ;
        wire[103:0]                                             mul_outB_2_0    ;
        wire[103:0]                                             mul_outB_2_1    ;
        wire[103:0]                                             mul_outB_2_2    ;
        wire[103:0]                                             mul_outB_2_3    ;
        wire[103:0]                                             mul_outB_3_0    ;
        wire[103:0]                                             mul_outB_3_1    ;
        wire[103:0]                                             mul_outB_3_2    ;
        wire[103:0]                                             mul_outB_3_3    ;
        wire[103:0]                                             mul_outG_0_0    ;
        wire[103:0]                                             mul_outG_0_1    ;
        wire[103:0]                                             mul_outG_0_2    ;
        wire[103:0]                                             mul_outG_0_3    ;
        wire[103:0]                                             mul_outG_1_0    ;
        wire[103:0]                                             mul_outG_1_1    ;
        wire[103:0]                                             mul_outG_1_2    ;
        wire[103:0]                                             mul_outG_1_3    ;
        wire[103:0]                                             mul_outG_2_0    ;
        wire[103:0]                                             mul_outG_2_1    ;
        wire[103:0]                                             mul_outG_2_2    ;
        wire[103:0]                                             mul_outG_2_3    ;
        wire[103:0]                                             mul_outG_3_0    ;
        wire[103:0]                                             mul_outG_3_1    ;
        wire[103:0]                                             mul_outG_3_2    ;
        wire[103:0]                                             mul_outG_3_3    ;
        wire[103:0]                                             mul_outR_0_0    ;
        wire[103:0]                                             mul_outR_0_1    ;
        wire[103:0]                                             mul_outR_0_2    ;
        wire[103:0]                                             mul_outR_0_3    ;
        wire[103:0]                                             mul_outR_1_0    ;
        wire[103:0]                                             mul_outR_1_1    ;
        wire[103:0]                                             mul_outR_1_2    ;
        wire[103:0]                                             mul_outR_1_3    ;
        wire[103:0]                                             mul_outR_2_0    ;
        wire[103:0]                                             mul_outR_2_1    ;
        wire[103:0]                                             mul_outR_2_2    ;
        wire[103:0]                                             mul_outR_2_3    ;
        wire[103:0]                                             mul_outR_3_0    ;
        wire[103:0]                                             mul_outR_3_1    ;
        wire[103:0]                                             mul_outR_3_2    ;
        wire[103:0]                                             mul_outR_3_3    ;
        wire[27:0]                                              add_outB_0_0    ;
        wire[27:0]                                              add_outB_0_1    ;
        wire[27:0]                                              add_outB_0_2    ;
        wire[27:0]                                              add_outB_0_3    ;
        wire[27:0]                                              add_outB_1_0    ;
        wire[27:0]                                              add_outB_1_1    ;
        wire[27:0]                                              add_outB_1_2    ;
        wire[27:0]                                              add_outB_1_3    ;
        wire[27:0]                                              add_outB_2_0    ;
        wire[27:0]                                              add_outB_2_1    ;
        wire[27:0]                                              add_outB_2_2    ;
        wire[27:0]                                              add_outB_2_3    ;
        wire[27:0]                                              add_outB_3_0    ;
        wire[27:0]                                              add_outB_3_1    ;
        wire[27:0]                                              add_outB_3_2    ;
        wire[27:0]                                              add_outB_3_3    ;
        wire[27:0]                                              add_outG_0_0    ;
        wire[27:0]                                              add_outG_0_1    ;
        wire[27:0]                                              add_outG_0_2    ;
        wire[27:0]                                              add_outG_0_3    ;
        wire[27:0]                                              add_outG_1_0    ;
        wire[27:0]                                              add_outG_1_1    ;
        wire[27:0]                                              add_outG_1_2    ;
        wire[27:0]                                              add_outG_1_3    ;
        wire[27:0]                                              add_outG_2_0    ;
        wire[27:0]                                              add_outG_2_1    ;
        wire[27:0]                                              add_outG_2_2    ;
        wire[27:0]                                              add_outG_2_3    ;
        wire[27:0]                                              add_outG_3_0    ;
        wire[27:0]                                              add_outG_3_1    ;
        wire[27:0]                                              add_outG_3_2    ;
        wire[27:0]                                              add_outG_3_3    ;
        wire[27:0]                                              add_outR_0_0    ;
        wire[27:0]                                              add_outR_0_1    ;
        wire[27:0]                                              add_outR_0_2    ;
        wire[27:0]                                              add_outR_0_3    ;
        wire[27:0]                                              add_outR_1_0    ;
        wire[27:0]                                              add_outR_1_1    ;
        wire[27:0]                                              add_outR_1_2    ;
        wire[27:0]                                              add_outR_1_3    ;
        wire[27:0]                                              add_outR_2_0    ;
        wire[27:0]                                              add_outR_2_1    ;
        wire[27:0]                                              add_outR_2_2    ;
        wire[27:0]                                              add_outR_2_3    ;
        wire[27:0]                                              add_outR_3_0    ;
        wire[27:0]                                              add_outR_3_1    ;
        wire[27:0]                                              add_outR_3_2    ;
        wire[27:0]                                              add_outR_3_3    ;


    data_mul data_mul_inst(
        .clk                                                    (clk            ),
        .cycle                                                  (cycle          ),
        .mul_in_B                                               (mul_in_B       ),
        .mul_in_G                                               (mul_in_G       ),
        .mul_in_R                                               (mul_in_R       ),
        .weight0_0                                              (weight0_0      ),
        .weight0_1                                              (weight0_1      ),
        .weight0_2                                              (weight0_2      ),
        .weight0_3                                              (weight0_3      ),
        .weight1_0                                              (weight1_0      ),
        .weight1_1                                              (weight1_1      ),
        .weight1_2                                              (weight1_2      ),
        .weight1_3                                              (weight1_3      ),
        .weight2_0                                              (weight2_0      ),
        .weight2_1                                              (weight2_1      ),
        .weight2_2                                              (weight2_2      ),
        .weight2_3                                              (weight2_3      ),
        .weight3_0                                              (weight3_0      ),
        .weight3_1                                              (weight3_1      ),
        .weight3_2                                              (weight3_2      ),
        .weight3_3                                              (weight3_3      ),
        .mul_outB_0_0                                           (mul_outB_0_0   ),
        .mul_outB_0_1                                           (mul_outB_0_1   ),
        .mul_outB_0_2                                           (mul_outB_0_2   ),
        .mul_outB_0_3                                           (mul_outB_0_3   ),
        .mul_outB_1_0                                           (mul_outB_1_0   ),
        .mul_outB_1_1                                           (mul_outB_1_1   ),
        .mul_outB_1_2                                           (mul_outB_1_2   ),
        .mul_outB_1_3                                           (mul_outB_1_3   ),
        .mul_outB_2_0                                           (mul_outB_2_0   ),
        .mul_outB_2_1                                           (mul_outB_2_1   ),
        .mul_outB_2_2                                           (mul_outB_2_2   ),
        .mul_outB_2_3                                           (mul_outB_2_3   ),
        .mul_outB_3_0                                           (mul_outB_3_0   ),
        .mul_outB_3_1                                           (mul_outB_3_1   ),
        .mul_outB_3_2                                           (mul_outB_3_2   ),
        .mul_outB_3_3                                           (mul_outB_3_3   ),
        .mul_outG_0_0                                           (mul_outG_0_0   ),
        .mul_outG_0_1                                           (mul_outG_0_1   ),
        .mul_outG_0_2                                           (mul_outG_0_2   ),
        .mul_outG_0_3                                           (mul_outG_0_3   ),
        .mul_outG_1_0                                           (mul_outG_1_0   ),
        .mul_outG_1_1                                           (mul_outG_1_1   ),
        .mul_outG_1_2                                           (mul_outG_1_2   ),
        .mul_outG_1_3                                           (mul_outG_1_3   ),
        .mul_outG_2_0                                           (mul_outG_2_0   ),
        .mul_outG_2_1                                           (mul_outG_2_1   ),
        .mul_outG_2_2                                           (mul_outG_2_2   ),
        .mul_outG_2_3                                           (mul_outG_2_3   ),
        .mul_outG_3_0                                           (mul_outG_3_0   ),
        .mul_outG_3_1                                           (mul_outG_3_1   ),
        .mul_outG_3_2                                           (mul_outG_3_2   ),
        .mul_outG_3_3                                           (mul_outG_3_3   ),
        .mul_outR_0_0                                           (mul_outR_0_0   ),
        .mul_outR_0_1                                           (mul_outR_0_1   ),
        .mul_outR_0_2                                           (mul_outR_0_2   ),
        .mul_outR_0_3                                           (mul_outR_0_3   ),
        .mul_outR_1_0                                           (mul_outR_1_0   ),
        .mul_outR_1_1                                           (mul_outR_1_1   ),
        .mul_outR_1_2                                           (mul_outR_1_2   ),
        .mul_outR_1_3                                           (mul_outR_1_3   ),
        .mul_outR_2_0                                           (mul_outR_2_0   ),
        .mul_outR_2_1                                           (mul_outR_2_1   ),
        .mul_outR_2_2                                           (mul_outR_2_2   ),
        .mul_outR_2_3                                           (mul_outR_2_3   ),
        .mul_outR_3_0                                           (mul_outR_3_0   ),
        .mul_outR_3_1                                           (mul_outR_3_1   ),
        .mul_outR_3_2                                           (mul_outR_3_2   ),
        .mul_outR_3_3                                           (mul_outR_3_3   )            
    );  

    data_add data_add_inst(
        .clk                                                    (clk            ),
        .mul_outB_0_0                                           (mul_outB_0_0   ),
        .mul_outB_0_1                                           (mul_outB_0_1   ),
        .mul_outB_0_2                                           (mul_outB_0_2   ),
        .mul_outB_0_3                                           (mul_outB_0_3   ),
        .mul_outB_1_0                                           (mul_outB_1_0   ),
        .mul_outB_1_1                                           (mul_outB_1_1   ),
        .mul_outB_1_2                                           (mul_outB_1_2   ),
        .mul_outB_1_3                                           (mul_outB_1_3   ),
        .mul_outB_2_0                                           (mul_outB_2_0   ),
        .mul_outB_2_1                                           (mul_outB_2_1   ),
        .mul_outB_2_2                                           (mul_outB_2_2   ),
        .mul_outB_2_3                                           (mul_outB_2_3   ),
        .mul_outB_3_0                                           (mul_outB_3_0   ),
        .mul_outB_3_1                                           (mul_outB_3_1   ),
        .mul_outB_3_2                                           (mul_outB_3_2   ),
        .mul_outB_3_3                                           (mul_outB_3_3   ),
        .mul_outG_0_0                                           (mul_outG_0_0   ),
        .mul_outG_0_1                                           (mul_outG_0_1   ),
        .mul_outG_0_2                                           (mul_outG_0_2   ),
        .mul_outG_0_3                                           (mul_outG_0_3   ),
        .mul_outG_1_0                                           (mul_outG_1_0   ),
        .mul_outG_1_1                                           (mul_outG_1_1   ),
        .mul_outG_1_2                                           (mul_outG_1_2   ),
        .mul_outG_1_3                                           (mul_outG_1_3   ),
        .mul_outG_2_0                                           (mul_outG_2_0   ),
        .mul_outG_2_1                                           (mul_outG_2_1   ),
        .mul_outG_2_2                                           (mul_outG_2_2   ),
        .mul_outG_2_3                                           (mul_outG_2_3   ),
        .mul_outG_3_0                                           (mul_outG_3_0   ),
        .mul_outG_3_1                                           (mul_outG_3_1   ),
        .mul_outG_3_2                                           (mul_outG_3_2   ),
        .mul_outG_3_3                                           (mul_outG_3_3   ),
        .mul_outR_0_0                                           (mul_outR_0_0   ),
        .mul_outR_0_1                                           (mul_outR_0_1   ),
        .mul_outR_0_2                                           (mul_outR_0_2   ),
        .mul_outR_0_3                                           (mul_outR_0_3   ),
        .mul_outR_1_0                                           (mul_outR_1_0   ),
        .mul_outR_1_1                                           (mul_outR_1_1   ),
        .mul_outR_1_2                                           (mul_outR_1_2   ),
        .mul_outR_1_3                                           (mul_outR_1_3   ),
        .mul_outR_2_0                                           (mul_outR_2_0   ),
        .mul_outR_2_1                                           (mul_outR_2_1   ),
        .mul_outR_2_2                                           (mul_outR_2_2   ),
        .mul_outR_2_3                                           (mul_outR_2_3   ),
        .mul_outR_3_0                                           (mul_outR_3_0   ),
        .mul_outR_3_1                                           (mul_outR_3_1   ),
        .mul_outR_3_2                                           (mul_outR_3_2   ),
        .mul_outR_3_3                                           (mul_outR_3_3   ),
        .add_outB_0_0                                           (add_outB_0_0   ),
        .add_outB_0_1                                           (add_outB_0_1   ),
        .add_outB_0_2                                           (add_outB_0_2   ),
        .add_outB_0_3                                           (add_outB_0_3   ),
        .add_outB_1_0                                           (add_outB_1_0   ),
        .add_outB_1_1                                           (add_outB_1_1   ),
        .add_outB_1_2                                           (add_outB_1_2   ),
        .add_outB_1_3                                           (add_outB_1_3   ),
        .add_outB_2_0                                           (add_outB_2_0   ),
        .add_outB_2_1                                           (add_outB_2_1   ),
        .add_outB_2_2                                           (add_outB_2_2   ),
        .add_outB_2_3                                           (add_outB_2_3   ),
        .add_outB_3_0                                           (add_outB_3_0   ),
        .add_outB_3_1                                           (add_outB_3_1   ),
        .add_outB_3_2                                           (add_outB_3_2   ),
        .add_outB_3_3                                           (add_outB_3_3   ),
        .add_outG_0_0                                           (add_outG_0_0   ),
        .add_outG_0_1                                           (add_outG_0_1   ),
        .add_outG_0_2                                           (add_outG_0_2   ),
        .add_outG_0_3                                           (add_outG_0_3   ),
        .add_outG_1_0                                           (add_outG_1_0   ),
        .add_outG_1_1                                           (add_outG_1_1   ),
        .add_outG_1_2                                           (add_outG_1_2   ),
        .add_outG_1_3                                           (add_outG_1_3   ),
        .add_outG_2_0                                           (add_outG_2_0   ),
        .add_outG_2_1                                           (add_outG_2_1   ),
        .add_outG_2_2                                           (add_outG_2_2   ),
        .add_outG_2_3                                           (add_outG_2_3   ),
        .add_outG_3_0                                           (add_outG_3_0   ),
        .add_outG_3_1                                           (add_outG_3_1   ),
        .add_outG_3_2                                           (add_outG_3_2   ),
        .add_outG_3_3                                           (add_outG_3_3   ),
        .add_outR_0_0                                           (add_outR_0_0   ),
        .add_outR_0_1                                           (add_outR_0_1   ),
        .add_outR_0_2                                           (add_outR_0_2   ),
        .add_outR_0_3                                           (add_outR_0_3   ),
        .add_outR_1_0                                           (add_outR_1_0   ),
        .add_outR_1_1                                           (add_outR_1_1   ),
        .add_outR_1_2                                           (add_outR_1_2   ),
        .add_outR_1_3                                           (add_outR_1_3   ),
        .add_outR_2_0                                           (add_outR_2_0   ),
        .add_outR_2_1                                           (add_outR_2_1   ),
        .add_outR_2_2                                           (add_outR_2_2   ),
        .add_outR_2_3                                           (add_outR_2_3   ),
        .add_outR_3_0                                           (add_outR_3_0   ),
        .add_outR_3_1                                           (add_outR_3_1   ),
        .add_outR_3_2                                           (add_outR_3_2   ),
        .add_outR_3_3                                           (add_outR_3_3   )
    );

     data_reshape3 data_reshape3_inst(
        .add_outB_0_0                                           (add_outB_0_0   ),
        .add_outB_0_1                                           (add_outB_0_1   ),
        .add_outB_0_2                                           (add_outB_0_2   ),
        .add_outB_0_3                                           (add_outB_0_3   ),
        .add_outB_1_0                                           (add_outB_1_0   ),
        .add_outB_1_1                                           (add_outB_1_1   ),
        .add_outB_1_2                                           (add_outB_1_2   ),
        .add_outB_1_3                                           (add_outB_1_3   ),
        .add_outB_2_0                                           (add_outB_2_0   ),
        .add_outB_2_1                                           (add_outB_2_1   ),
        .add_outB_2_2                                           (add_outB_2_2   ),
        .add_outB_2_3                                           (add_outB_2_3   ),
        .add_outB_3_0                                           (add_outB_3_0   ),
        .add_outB_3_1                                           (add_outB_3_1   ),
        .add_outB_3_2                                           (add_outB_3_2   ),
        .add_outB_3_3                                           (add_outB_3_3   ),
        .add_outG_0_0                                           (add_outG_0_0   ),
        .add_outG_0_1                                           (add_outG_0_1   ),
        .add_outG_0_2                                           (add_outG_0_2   ),
        .add_outG_0_3                                           (add_outG_0_3   ),
        .add_outG_1_0                                           (add_outG_1_0   ),
        .add_outG_1_1                                           (add_outG_1_1   ),
        .add_outG_1_2                                           (add_outG_1_2   ),
        .add_outG_1_3                                           (add_outG_1_3   ),
        .add_outG_2_0                                           (add_outG_2_0   ),
        .add_outG_2_1                                           (add_outG_2_1   ),
        .add_outG_2_2                                           (add_outG_2_2   ),
        .add_outG_2_3                                           (add_outG_2_3   ),
        .add_outG_3_0                                           (add_outG_3_0   ),
        .add_outG_3_1                                           (add_outG_3_1   ),
        .add_outG_3_2                                           (add_outG_3_2   ),
        .add_outG_3_3                                           (add_outG_3_3   ),
        .add_outR_0_0                                           (add_outR_0_0   ),
        .add_outR_0_1                                           (add_outR_0_1   ),
        .add_outR_0_2                                           (add_outR_0_2   ),
        .add_outR_0_3                                           (add_outR_0_3   ),
        .add_outR_1_0                                           (add_outR_1_0   ),
        .add_outR_1_1                                           (add_outR_1_1   ),
        .add_outR_1_2                                           (add_outR_1_2   ),
        .add_outR_1_3                                           (add_outR_1_3   ),
        .add_outR_2_0                                           (add_outR_2_0   ),
        .add_outR_2_1                                           (add_outR_2_1   ),
        .add_outR_2_2                                           (add_outR_2_2   ),
        .add_outR_2_3                                           (add_outR_2_3   ),
        .add_outR_3_0                                           (add_outR_3_0   ),
        .add_outR_3_1                                           (add_outR_3_1   ),
        .add_outR_3_2                                           (add_outR_3_2   ),
        .add_outR_3_3                                           (add_outR_3_3   ),
        .add_outB_0_0_rp                                        (add_outB_0_0_rp),
        .add_outB_0_1_rp                                        (add_outB_0_1_rp),
        .add_outB_0_2_rp                                        (add_outB_0_2_rp),
        .add_outB_0_3_rp                                        (add_outB_0_3_rp),
        .add_outB_1_0_rp                                        (add_outB_1_0_rp),
        .add_outB_1_1_rp                                        (add_outB_1_1_rp),
        .add_outB_1_2_rp                                        (add_outB_1_2_rp),
        .add_outB_1_3_rp                                        (add_outB_1_3_rp),
        .add_outB_2_0_rp                                        (add_outB_2_0_rp),
        .add_outB_2_1_rp                                        (add_outB_2_1_rp),
        .add_outB_2_2_rp                                        (add_outB_2_2_rp),
        .add_outB_2_3_rp                                        (add_outB_2_3_rp),
        .add_outB_3_0_rp                                        (add_outB_3_0_rp),
        .add_outB_3_1_rp                                        (add_outB_3_1_rp),
        .add_outB_3_2_rp                                        (add_outB_3_2_rp),
        .add_outB_3_3_rp                                        (add_outB_3_3_rp),
        .add_outG_0_0_rp                                        (add_outG_0_0_rp),
        .add_outG_0_1_rp                                        (add_outG_0_1_rp),
        .add_outG_0_2_rp                                        (add_outG_0_2_rp),
        .add_outG_0_3_rp                                        (add_outG_0_3_rp),
        .add_outG_1_0_rp                                        (add_outG_1_0_rp),
        .add_outG_1_1_rp                                        (add_outG_1_1_rp),
        .add_outG_1_2_rp                                        (add_outG_1_2_rp),
        .add_outG_1_3_rp                                        (add_outG_1_3_rp),
        .add_outG_2_0_rp                                        (add_outG_2_0_rp),
        .add_outG_2_1_rp                                        (add_outG_2_1_rp),
        .add_outG_2_2_rp                                        (add_outG_2_2_rp),
        .add_outG_2_3_rp                                        (add_outG_2_3_rp),
        .add_outG_3_0_rp                                        (add_outG_3_0_rp),
        .add_outG_3_1_rp                                        (add_outG_3_1_rp),
        .add_outG_3_2_rp                                        (add_outG_3_2_rp),
        .add_outG_3_3_rp                                        (add_outG_3_3_rp),
        .add_outR_0_0_rp                                        (add_outR_0_0_rp),
        .add_outR_0_1_rp                                        (add_outR_0_1_rp),
        .add_outR_0_2_rp                                        (add_outR_0_2_rp),
        .add_outR_0_3_rp                                        (add_outR_0_3_rp),
        .add_outR_1_0_rp                                        (add_outR_1_0_rp),
        .add_outR_1_1_rp                                        (add_outR_1_1_rp),
        .add_outR_1_2_rp                                        (add_outR_1_2_rp),
        .add_outR_1_3_rp                                        (add_outR_1_3_rp),
        .add_outR_2_0_rp                                        (add_outR_2_0_rp),
        .add_outR_2_1_rp                                        (add_outR_2_1_rp),
        .add_outR_2_2_rp                                        (add_outR_2_2_rp),
        .add_outR_2_3_rp                                        (add_outR_2_3_rp),
        .add_outR_3_0_rp                                        (add_outR_3_0_rp),
        .add_outR_3_1_rp                                        (add_outR_3_1_rp),
        .add_outR_3_2_rp                                        (add_outR_3_2_rp),
        .add_outR_3_3_rp                                        (add_outR_3_3_rp)
    );

endmodule
