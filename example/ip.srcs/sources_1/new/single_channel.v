`timescale 1ns / 1ps

module single_channel(
        input           wire                        clk                         ,
        input           wire[ 1:0]                  cycle                       ,
        input           wire[67:0]                  weight0_0                   ,
        input           wire[67:0]                  weight0_1                   ,
        input           wire[67:0]                  weight0_2                   ,
        input           wire[67:0]                  weight0_3                   ,
        input           wire[67:0]                  weight1_0                   ,
        input           wire[67:0]                  weight1_1                   ,
        input           wire[67:0]                  weight1_2                   ,
        input           wire[67:0]                  weight1_3                   ,
        input           wire[67:0]                  weight2_0                   ,
        input           wire[67:0]                  weight2_1                   ,
        input           wire[67:0]                  weight2_2                   ,
        input           wire[67:0]                  weight2_3                   ,
        input           wire[67:0]                  weight3_0                   ,
        input           wire[67:0]                  weight3_1                   ,
        input           wire[67:0]                  weight3_2                   ,
        input           wire[67:0]                  weight3_3                   ,
        input           wire[31:0]                  mul_in                      ,
        output          wire[103:0]                 mul_out0_0                  ,
        output          wire[103:0]                 mul_out0_1                  ,
        output          wire[103:0]                 mul_out0_2                  ,
        output          wire[103:0]                 mul_out0_3                  ,
        output          wire[103:0]                 mul_out1_0                  ,
        output          wire[103:0]                 mul_out1_1                  ,
        output          wire[103:0]                 mul_out1_2                  ,
        output          wire[103:0]                 mul_out1_3                  ,
        output          wire[103:0]                 mul_out2_0                  ,
        output          wire[103:0]                 mul_out2_1                  ,
        output          wire[103:0]                 mul_out2_2                  ,
        output          wire[103:0]                 mul_out2_3                  ,
        output          wire[103:0]                 mul_out3_0                  ,
        output          wire[103:0]                 mul_out3_1                  ,
        output          wire[103:0]                 mul_out3_2                  ,
        output          wire[103:0]                 mul_out3_3                  
    );


        mul_unit unit0 (
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in         )           ,
            .w                                      (weight0_0      )           ,
            .mul_out                                (mul_out0_0     )           
    );
        
        mul_unit unit1 (
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in         )           ,
            .w                                      (weight0_1      )           ,
            .mul_out                                (mul_out0_1     )           
    );
       
        mul_unit unit2 (
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in         )           ,
            .w                                      (weight0_2      )           ,
            .mul_out                                (mul_out0_2     )           
    );
       
        mul_unit unit3 (
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in         )           ,
            .w                                      (weight0_3      )           ,
            .mul_out                                (mul_out0_3     )           
    );
       
        mul_unit unit4 (
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in        )           ,
            .w                                      (weight1_0      )           ,
            .mul_out                                (mul_out1_0     )           
    );
       
        mul_unit unit5 (
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in         )           ,
            .w                                      (weight1_1      )           ,
            .mul_out                                (mul_out1_1     )           
    );
       
        mul_unit unit6 (
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in         )           ,
            .w                                      (weight1_2      )           ,
            .mul_out                                (mul_out1_2     )           
    );
       
        mul_unit unit7 (
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in         )           ,
            .w                                      (weight1_3      )           ,
            .mul_out                                (mul_out1_3     )           
    );
       
        mul_unit unit8 (
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in         )           ,
            .w                                      (weight2_0      )           ,
            .mul_out                                (mul_out2_0     )           
    );
       
        mul_unit unit9 (
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in         )           ,
            .w                                      (weight2_1      )           ,
            .mul_out                                (mul_out2_1     )           
    );
       
        mul_unit unit10(
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in         )           ,
            .w                                      (weight2_2      )           ,
            .mul_out                                (mul_out2_2     )           
    );
       
        mul_unit unit11(
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in         )           ,
            .w                                      (weight2_3      )           ,
            .mul_out                                (mul_out2_3     )           
    );
       
        mul_unit unit12(
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in         )           ,
            .w                                      (weight3_0      )           ,
            .mul_out                                (mul_out3_0     )           
    );
       
        mul_unit unit13(
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in         )           ,
            .w                                      (weight3_1      )           ,
            .mul_out                                (mul_out3_1     )           
    );
       
        mul_unit unit14(
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in         )           ,
            .w                                      (weight3_2      )           ,
            .mul_out                                (mul_out3_2     )           
    );
       
        mul_unit unit15(
            .clk                                    (clk            )           ,
            .cycle                                  (cycle          )           ,
            .mul_in                                 (mul_in         )           ,
            .w                                      (weight3_3      )           ,
            .mul_out                                (mul_out3_3     )           
    );
         

endmodule
