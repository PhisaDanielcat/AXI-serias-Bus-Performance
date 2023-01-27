`timescale 1ns / 1ps

module data_mul(
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
        output              wire[103:0]                         mul_outB_0_0    ,
        output              wire[103:0]                         mul_outB_0_1    ,
        output              wire[103:0]                         mul_outB_0_2    ,
        output              wire[103:0]                         mul_outB_0_3    ,
        output              wire[103:0]                         mul_outB_1_0    ,
        output              wire[103:0]                         mul_outB_1_1    ,
        output              wire[103:0]                         mul_outB_1_2    ,
        output              wire[103:0]                         mul_outB_1_3    ,
        output              wire[103:0]                         mul_outB_2_0    ,
        output              wire[103:0]                         mul_outB_2_1    ,
        output              wire[103:0]                         mul_outB_2_2    ,
        output              wire[103:0]                         mul_outB_2_3    ,
        output              wire[103:0]                         mul_outB_3_0    ,
        output              wire[103:0]                         mul_outB_3_1    ,
        output              wire[103:0]                         mul_outB_3_2    ,
        output              wire[103:0]                         mul_outB_3_3    ,
        output              wire[103:0]                         mul_outG_0_0    ,
        output              wire[103:0]                         mul_outG_0_1    ,
        output              wire[103:0]                         mul_outG_0_2    ,
        output              wire[103:0]                         mul_outG_0_3    ,
        output              wire[103:0]                         mul_outG_1_0    ,
        output              wire[103:0]                         mul_outG_1_1    ,
        output              wire[103:0]                         mul_outG_1_2    ,
        output              wire[103:0]                         mul_outG_1_3    ,
        output              wire[103:0]                         mul_outG_2_0    ,
        output              wire[103:0]                         mul_outG_2_1    ,
        output              wire[103:0]                         mul_outG_2_2    ,
        output              wire[103:0]                         mul_outG_2_3    ,
        output              wire[103:0]                         mul_outG_3_0    ,
        output              wire[103:0]                         mul_outG_3_1    ,
        output              wire[103:0]                         mul_outG_3_2    ,
        output              wire[103:0]                         mul_outG_3_3    ,
        output              wire[103:0]                         mul_outR_0_0    ,
        output              wire[103:0]                         mul_outR_0_1    ,
        output              wire[103:0]                         mul_outR_0_2    ,
        output              wire[103:0]                         mul_outR_0_3    ,
        output              wire[103:0]                         mul_outR_1_0    ,
        output              wire[103:0]                         mul_outR_1_1    ,
        output              wire[103:0]                         mul_outR_1_2    ,
        output              wire[103:0]                         mul_outR_1_3    ,
        output              wire[103:0]                         mul_outR_2_0    ,
        output              wire[103:0]                         mul_outR_2_1    ,
        output              wire[103:0]                         mul_outR_2_2    ,
        output              wire[103:0]                         mul_outR_2_3    ,
        output              wire[103:0]                         mul_outR_3_0    ,
        output              wire[103:0]                         mul_outR_3_1    ,
        output              wire[103:0]                         mul_outR_3_2    ,
        output              wire[103:0]                         mul_outR_3_3                
    );  

        reg [67:0]                                              w0_0            ;
        reg [67:0]                                              w0_1            ;
        reg [67:0]                                              w0_2            ;
        reg [67:0]                                              w0_3            ;
        reg [67:0]                                              w1_0            ;
        reg [67:0]                                              w1_1            ;
        reg [67:0]                                              w1_2            ;
        reg [67:0]                                              w1_3            ;
        reg [67:0]                                              w2_0            ;
        reg [67:0]                                              w2_1            ;
        reg [67:0]                                              w2_2            ;
        reg [67:0]                                              w2_3            ;
        reg [67:0]                                              w3_0            ;
        reg [67:0]                                              w3_1            ;
        reg [67:0]                                              w3_2            ;
        reg [67:0]                                              w3_3            ;

        always@(*)
        begin
            case(cycle)
                2'b00:
                begin
                    w0_0            =                           weight0_0[ 67:  0];
                    w0_1            =                           weight0_0[135: 68];
                    w0_2            =                           weight0_0[203:136];
                    w0_3            =                           weight0_0[271:204];
                    w1_0            =                           weight1_0[ 67:  0];
                    w1_1            =                           weight1_0[135: 68];
                    w1_2            =                           weight1_0[203:136];
                    w1_3            =                           weight1_0[271:204];
                    w2_0            =                           weight2_0[ 67:  0];
                    w2_1            =                           weight2_0[135: 68];
                    w2_2            =                           weight2_0[203:136];
                    w2_3            =                           weight2_0[271:204];
                    w3_0            =                           weight3_0[ 67:  0];
                    w3_1            =                           weight3_0[135: 68];
                    w3_2            =                           weight3_0[203:136];
                    w3_3            =                           weight3_0[271:204];
                end
                2'b01:
                begin
                    w0_0            =                           weight0_1[ 67:  0];
                    w0_1            =                           weight0_1[135: 68];
                    w0_2            =                           weight0_1[203:136];
                    w0_3            =                           weight0_1[271:204];
                    w1_0            =                           weight1_1[ 67:  0];
                    w1_1            =                           weight1_1[135: 68];
                    w1_2            =                           weight1_1[203:136];
                    w1_3            =                           weight1_1[271:204];
                    w2_0            =                           weight2_1[ 67:  0];
                    w2_1            =                           weight2_1[135: 68];
                    w2_2            =                           weight2_1[203:136];
                    w2_3            =                           weight2_1[271:204];
                    w3_0            =                           weight3_1[ 67:  0];
                    w3_1            =                           weight3_1[135: 68];
                    w3_2            =                           weight3_1[203:136];
                    w3_3            =                           weight3_1[271:204];
                end
                2'b10:
                begin
                    w0_0            =                           weight0_2[ 67:  0];
                    w0_1            =                           weight0_2[135: 68];
                    w0_2            =                           weight0_2[203:136];
                    w0_3            =                           weight0_2[271:204];
                    w1_0            =                           weight1_2[ 67:  0];
                    w1_1            =                           weight1_2[135: 68];
                    w1_2            =                           weight1_2[203:136];
                    w1_3            =                           weight1_2[271:204];
                    w2_0            =                           weight2_2[ 67:  0];
                    w2_1            =                           weight2_2[135: 68];
                    w2_2            =                           weight2_2[203:136];
                    w2_3            =                           weight2_2[271:204];
                    w3_0            =                           weight3_2[ 67:  0];
                    w3_1            =                           weight3_2[135: 68];
                    w3_2            =                           weight3_2[203:136];
                    w3_3            =                           weight3_2[271:204];
                end
                2'b11:
                begin
                    w0_0            =                           weight0_3[ 67:  0];
                    w0_1            =                           weight0_3[135: 68];
                    w0_2            =                           weight0_3[203:136];
                    w0_3            =                           weight0_3[271:204];
                    w1_0            =                           weight1_3[ 67:  0];
                    w1_1            =                           weight1_3[135: 68];
                    w1_2            =                           weight1_3[203:136];
                    w1_3            =                           weight1_3[271:204];
                    w2_0            =                           weight2_3[ 67:  0];
                    w2_1            =                           weight2_3[135: 68];
                    w2_2            =                           weight2_3[203:136];
                    w2_3            =                           weight2_3[271:204];
                    w3_0            =                           weight3_3[ 67:  0];
                    w3_1            =                           weight3_3[135: 68];
                    w3_2            =                           weight3_3[203:136];
                    w3_3            =                           weight3_3[271:204];
                end
                default:
                begin
                    w0_0            =                           weight0_0[ 67:  0];
                    w0_1            =                           weight0_0[135: 68];
                    w0_2            =                           weight0_0[203:136];
                    w0_3            =                           weight0_0[271:204];
                    w1_0            =                           weight1_0[ 67:  0];
                    w1_1            =                           weight1_0[135: 68];
                    w1_2            =                           weight1_0[203:136];
                    w1_3            =                           weight1_0[271:204];
                    w2_0            =                           weight2_0[ 67:  0];
                    w2_1            =                           weight2_0[135: 68];
                    w2_2            =                           weight2_0[203:136];
                    w2_3            =                           weight2_0[271:204];
                    w3_0            =                           weight3_0[ 67:  0];
                    w3_1            =                           weight3_0[135: 68];
                    w3_2            =                           weight3_0[203:136];
                    w3_3            =                           weight3_0[271:204];
                end
            endcase
        end

    single_channel  B_channel(
        .clk                                                    (clk            ),
        .cycle                                                  (cycle          ),
        .weight0_0                                              (w0_0           ),
        .weight0_1                                              (w0_1           ),
        .weight0_2                                              (w0_2           ),
        .weight0_3                                              (w0_3           ),
        .weight1_0                                              (w1_0           ),
        .weight1_1                                              (w1_1           ),
        .weight1_2                                              (w1_2           ),
        .weight1_3                                              (w1_3           ),
        .weight2_0                                              (w2_0           ),
        .weight2_1                                              (w2_1           ),
        .weight2_2                                              (w2_2           ),
        .weight2_3                                              (w2_3           ),
        .weight3_0                                              (w3_0           ),
        .weight3_1                                              (w3_1           ),
        .weight3_2                                              (w3_2           ),
        .weight3_3                                              (w3_3           ),
        .mul_in                                                 (mul_in_B       ),
        .mul_out0_0                                             (mul_outB_0_0   ),
        .mul_out0_1                                             (mul_outB_0_1   ),
        .mul_out0_2                                             (mul_outB_0_2   ),
        .mul_out0_3                                             (mul_outB_0_3   ),
        .mul_out1_0                                             (mul_outB_1_0   ),
        .mul_out1_1                                             (mul_outB_1_1   ),
        .mul_out1_2                                             (mul_outB_1_2   ),
        .mul_out1_3                                             (mul_outB_1_3   ),
        .mul_out2_0                                             (mul_outB_2_0   ),
        .mul_out2_1                                             (mul_outB_2_1   ),
        .mul_out2_2                                             (mul_outB_2_2   ),
        .mul_out2_3                                             (mul_outB_2_3   ),
        .mul_out3_0                                             (mul_outB_3_0   ),
        .mul_out3_1                                             (mul_outB_3_1   ),
        .mul_out3_2                                             (mul_outB_3_2   ),
        .mul_out3_3                                             (mul_outB_3_3   )
    );

    single_channel  G_channel(
        .clk                                                    (clk            ),
        .cycle                                                  (cycle          ),
        .weight0_0                                              (w0_0           ),
        .weight0_1                                              (w0_1           ),
        .weight0_2                                              (w0_2           ),
        .weight0_3                                              (w0_3           ),
        .weight1_0                                              (w1_0           ),
        .weight1_1                                              (w1_1           ),
        .weight1_2                                              (w1_2           ),
        .weight1_3                                              (w1_3           ),
        .weight2_0                                              (w2_0           ),
        .weight2_1                                              (w2_1           ),
        .weight2_2                                              (w2_2           ),
        .weight2_3                                              (w2_3           ),
        .weight3_0                                              (w3_0           ),
        .weight3_1                                              (w3_1           ),
        .weight3_2                                              (w3_2           ),
        .weight3_3                                              (w3_3           ),
        .mul_in                                                 (mul_in_G       ),
        .mul_out0_0                                             (mul_outG_0_0   ),
        .mul_out0_1                                             (mul_outG_0_1   ),
        .mul_out0_2                                             (mul_outG_0_2   ),
        .mul_out0_3                                             (mul_outG_0_3   ),
        .mul_out1_0                                             (mul_outG_1_0   ),
        .mul_out1_1                                             (mul_outG_1_1   ),
        .mul_out1_2                                             (mul_outG_1_2   ),
        .mul_out1_3                                             (mul_outG_1_3   ),
        .mul_out2_0                                             (mul_outG_2_0   ),
        .mul_out2_1                                             (mul_outG_2_1   ),
        .mul_out2_2                                             (mul_outG_2_2   ),
        .mul_out2_3                                             (mul_outG_2_3   ),
        .mul_out3_0                                             (mul_outG_3_0   ),
        .mul_out3_1                                             (mul_outG_3_1   ),
        .mul_out3_2                                             (mul_outG_3_2   ),
        .mul_out3_3                                             (mul_outG_3_3   )
    );

    single_channel  R_channel(
        .clk                                                    (clk            ),
        .cycle                                                  (cycle          ),
        .weight0_0                                              (w0_0           ),
        .weight0_1                                              (w0_1           ),
        .weight0_2                                              (w0_2           ),
        .weight0_3                                              (w0_3           ),
        .weight1_0                                              (w1_0           ),
        .weight1_1                                              (w1_1           ),
        .weight1_2                                              (w1_2           ),
        .weight1_3                                              (w1_3           ),
        .weight2_0                                              (w2_0           ),
        .weight2_1                                              (w2_1           ),
        .weight2_2                                              (w2_2           ),
        .weight2_3                                              (w2_3           ),
        .weight3_0                                              (w3_0           ),
        .weight3_1                                              (w3_1           ),
        .weight3_2                                              (w3_2           ),
        .weight3_3                                              (w3_3           ),
        .mul_in                                                 (mul_in_R       ),
        .mul_out0_0                                             (mul_outR_0_0   ),
        .mul_out0_1                                             (mul_outR_0_1   ),
        .mul_out0_2                                             (mul_outR_0_2   ),
        .mul_out0_3                                             (mul_outR_0_3   ),
        .mul_out1_0                                             (mul_outR_1_0   ),
        .mul_out1_1                                             (mul_outR_1_1   ),
        .mul_out1_2                                             (mul_outR_1_2   ),
        .mul_out1_3                                             (mul_outR_1_3   ),
        .mul_out2_0                                             (mul_outR_2_0   ),
        .mul_out2_1                                             (mul_outR_2_1   ),
        .mul_out2_2                                             (mul_outR_2_2   ),
        .mul_out2_3                                             (mul_outR_2_3   ),
        .mul_out3_0                                             (mul_outR_3_0   ),
        .mul_out3_1                                             (mul_outR_3_1   ),
        .mul_out3_2                                             (mul_outR_3_2   ),
        .mul_out3_3                                             (mul_outR_3_3   )
    );

endmodule
