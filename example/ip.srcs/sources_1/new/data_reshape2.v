`timescale 1ns / 1ps


module data_reshape2(
        input               wire                                clk                         ,
        input               wire                                isEND0                      ,
        input               wire                                isEND1                      ,
        input               wire                                isHD                        ,
        input               wire[ 3:0]                          cycle                       ,
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
        input               wire[31:0]                          lr_B0_r0                    ,
        input               wire[31:0]                          lr_G0_r0                    ,
        input               wire[31:0]                          lr_R0_r0                    ,
        input               wire[31:0]                          lr_B1_r0                    ,
        input               wire[31:0]                          lr_G1_r0                    ,
        input               wire[31:0]                          lr_R1_r0                    ,
        input               wire[31:0]                          lr_B2_r0                    ,
        input               wire[31:0]                          lr_G2_r0                    ,
        input               wire[31:0]                          lr_R2_r0                    ,
        input               wire[31:0]                          lr_B3_r0                    ,
        input               wire[31:0]                          lr_G3_r0                    ,
        input               wire[31:0]                          lr_R3_r0                    ,
        input               wire[31:0]                          lr_B0_r1                    ,
        input               wire[31:0]                          lr_G0_r1                    ,
        input               wire[31:0]                          lr_R0_r1                    ,
        input               wire[31:0]                          lr_B1_r1                    ,
        input               wire[31:0]                          lr_G1_r1                    ,
        input               wire[31:0]                          lr_R1_r1                    ,
        input               wire[31:0]                          lr_B2_r1                    ,
        input               wire[31:0]                          lr_G2_r1                    ,
        input               wire[31:0]                          lr_R2_r1                    ,
        input               wire[31:0]                          lr_B3_r1                    ,
        input               wire[31:0]                          lr_G3_r1                    ,
        input               wire[31:0]                          lr_R3_r1                    ,       
        output              reg [31:0]                          mul_in_B                    ,     
        output              reg [31:0]                          mul_in_G                    ,       
        output              reg [31:0]                          mul_in_R                      
    );

    always@(posedge clk)
    begin
        if(isHD)
        begin
            case(cycle[3:2])
                2'b00:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0_r0[23:16],lr_B0_r0[15: 8],lr_B0_r0[ 7: 0],lr_B0_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G0_r0[23:16],lr_G0_r0[15: 8],lr_G0_r0[ 7: 0],lr_G0_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R0_r0[23:16],lr_R0_r0[15: 8],lr_R0_r0[ 7: 0],lr_R0_r0[ 7: 0]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1_r0[23:16],lr_B1_r0[15: 8],lr_B1_r0[ 7: 0],lr_B1_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G1_r0[23:16],lr_G1_r0[15: 8],lr_G1_r0[ 7: 0],lr_G1_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R1_r0[23:16],lr_R1_r0[15: 8],lr_R1_r0[ 7: 0],lr_R1_r0[ 7: 0]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2_r0[23:16],lr_B2_r0[15: 8],lr_B2_r0[ 7: 0],lr_B2_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G2_r0[23:16],lr_G2_r0[15: 8],lr_G2_r0[ 7: 0],lr_G2_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R2_r0[23:16],lr_R2_r0[15: 8],lr_R2_r0[ 7: 0],lr_R2_r0[ 7: 0]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3_r0[23:16],lr_B3_r0[15: 8],lr_B3_r0[ 7: 0],lr_B3_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G3_r0[23:16],lr_G3_r0[15: 8],lr_G3_r0[ 7: 0],lr_G3_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R3_r0[23:16],lr_R3_r0[15: 8],lr_R3_r0[ 7: 0],lr_R3_r0[ 7: 0]};
                        end
                        default:;
                    endcase
                end
                2'b01:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0_r0[31:24],lr_B0_r0[23:16],lr_B0_r0[15: 8],lr_B0_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G0_r0[31:24],lr_G0_r0[23:16],lr_G0_r0[15: 8],lr_G0_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R0_r0[31:24],lr_R0_r0[23:16],lr_R0_r0[15: 8],lr_R0_r0[ 7: 0]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1_r0[31:24],lr_B1_r0[23:16],lr_B1_r0[15: 8],lr_B1_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G1_r0[31:24],lr_G1_r0[23:16],lr_G1_r0[15: 8],lr_G1_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R1_r0[31:24],lr_R1_r0[23:16],lr_R1_r0[15: 8],lr_R1_r0[ 7: 0]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2_r0[31:24],lr_B2_r0[23:16],lr_B2_r0[15: 8],lr_B2_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G2_r0[31:24],lr_G2_r0[23:16],lr_G2_r0[15: 8],lr_G2_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R2_r0[31:24],lr_R2_r0[23:16],lr_R2_r0[15: 8],lr_R2_r0[ 7: 0]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3_r0[31:24],lr_B3_r0[23:16],lr_B3_r0[15: 8],lr_B3_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G3_r0[31:24],lr_G3_r0[23:16],lr_G3_r0[15: 8],lr_G3_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R3_r0[31:24],lr_R3_r0[23:16],lr_R3_r0[15: 8],lr_R3_r0[ 7: 0]};
                        end
                        default:;
                    endcase
                end
                2'b10:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0[ 7: 0],lr_B0_r0[31:24],lr_B0_r0[23:16],lr_B0_r0[15: 8]};
                            mul_in_G       <=                  {lr_G0[ 7: 0],lr_G0_r0[31:24],lr_G0_r0[23:16],lr_G0_r0[15: 8]};
                            mul_in_R       <=                  {lr_R0[ 7: 0],lr_R0_r0[31:24],lr_R0_r0[23:16],lr_R0_r0[15: 8]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1[ 7: 0],lr_B1_r0[31:24],lr_B1_r0[23:16],lr_B1_r0[15: 8]};
                            mul_in_G       <=                  {lr_G1[ 7: 0],lr_G1_r0[31:24],lr_G1_r0[23:16],lr_G1_r0[15: 8]};
                            mul_in_R       <=                  {lr_R1[ 7: 0],lr_R1_r0[31:24],lr_R1_r0[23:16],lr_R1_r0[15: 8]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2[ 7: 0],lr_B2_r0[31:24],lr_B2_r0[23:16],lr_B2_r0[15: 8]};
                            mul_in_G       <=                  {lr_G2[ 7: 0],lr_G2_r0[31:24],lr_G2_r0[23:16],lr_G2_r0[15: 8]};
                            mul_in_R       <=                  {lr_R2[ 7: 0],lr_R2_r0[31:24],lr_R2_r0[23:16],lr_R2_r0[15: 8]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3[ 7: 0],lr_B3_r0[31:24],lr_B3_r0[23:16],lr_B3_r0[15: 8]};
                            mul_in_G       <=                  {lr_G3[ 7: 0],lr_G3_r0[31:24],lr_G3_r0[23:16],lr_G3_r0[15: 8]};
                            mul_in_R       <=                  {lr_R3[ 7: 0],lr_R3_r0[31:24],lr_R3_r0[23:16],lr_R3_r0[15: 8]};
                        end
                        default:;
                    endcase
                end
                2'b11:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0[15: 8],lr_B0[ 7: 0],lr_B0_r0[31:24],lr_B0_r0[23:16]};
                            mul_in_G       <=                  {lr_G0[15: 8],lr_G0[ 7: 0],lr_G0_r0[31:24],lr_G0_r0[23:16]};
                            mul_in_R       <=                  {lr_R0[15: 8],lr_R0[ 7: 0],lr_R0_r0[31:24],lr_R0_r0[23:16]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1[15: 8],lr_B1[ 7: 0],lr_B1_r0[31:24],lr_B1_r0[23:16]};
                            mul_in_G       <=                  {lr_G1[15: 8],lr_G1[ 7: 0],lr_G1_r0[31:24],lr_G1_r0[23:16]};
                            mul_in_R       <=                  {lr_R1[15: 8],lr_R1[ 7: 0],lr_R1_r0[31:24],lr_R1_r0[23:16]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2[15: 8],lr_B2[ 7: 0],lr_B2_r0[31:24],lr_B2_r0[23:16]};
                            mul_in_G       <=                  {lr_G2[15: 8],lr_G2[ 7: 0],lr_G2_r0[31:24],lr_G2_r0[23:16]};
                            mul_in_R       <=                  {lr_R2[15: 8],lr_R2[ 7: 0],lr_R2_r0[31:24],lr_R2_r0[23:16]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3[15: 8],lr_B3[ 7: 0],lr_B3_r0[31:24],lr_B3_r0[23:16]};
                            mul_in_G       <=                  {lr_G3[15: 8],lr_G3[ 7: 0],lr_G3_r0[31:24],lr_G3_r0[23:16]};
                            mul_in_R       <=                  {lr_R3[15: 8],lr_R3[ 7: 0],lr_R3_r0[31:24],lr_R3_r0[23:16]};
                        end
                        default:;
                    endcase
                end
                default:;
            endcase
        end
        else if(isEND0)
        begin
            case(cycle[3:2])
                2'b00:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0_r0[23:16],lr_B0_r0[15: 8],lr_B0_r0[ 7: 0],lr_B0_r1[31:24]};
                            mul_in_G       <=                  {lr_G0_r0[23:16],lr_G0_r0[15: 8],lr_G0_r0[ 7: 0],lr_G0_r1[31:24]};
                            mul_in_R       <=                  {lr_R0_r0[23:16],lr_R0_r0[15: 8],lr_R0_r0[ 7: 0],lr_R0_r1[31:24]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1_r0[23:16],lr_B1_r0[15: 8],lr_B1_r0[ 7: 0],lr_B1_r1[31:24]};
                            mul_in_G       <=                  {lr_G1_r0[23:16],lr_G1_r0[15: 8],lr_G1_r0[ 7: 0],lr_G1_r1[31:24]};
                            mul_in_R       <=                  {lr_R1_r0[23:16],lr_R1_r0[15: 8],lr_R1_r0[ 7: 0],lr_R1_r1[31:24]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2_r0[23:16],lr_B2_r0[15: 8],lr_B2_r0[ 7: 0],lr_B2_r1[31:24]};
                            mul_in_G       <=                  {lr_G2_r0[23:16],lr_G2_r0[15: 8],lr_G2_r0[ 7: 0],lr_G2_r1[31:24]};
                            mul_in_R       <=                  {lr_R2_r0[23:16],lr_R2_r0[15: 8],lr_R2_r0[ 7: 0],lr_R2_r1[31:24]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3_r0[23:16],lr_B3_r0[15: 8],lr_B3_r0[ 7: 0],lr_B3_r1[31:24]};
                            mul_in_G       <=                  {lr_G3_r0[23:16],lr_G3_r0[15: 8],lr_G3_r0[ 7: 0],lr_G3_r1[31:24]};
                            mul_in_R       <=                  {lr_R3_r0[23:16],lr_R3_r0[15: 8],lr_R3_r0[ 7: 0],lr_R3_r1[31:24]};
                        end
                        default:;
                    endcase
                end
                2'b01:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0_r0[31:24],lr_B0_r0[23:16],lr_B0_r0[15: 8],lr_B0_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G0_r0[31:24],lr_G0_r0[23:16],lr_G0_r0[15: 8],lr_G0_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R0_r0[31:24],lr_R0_r0[23:16],lr_R0_r0[15: 8],lr_R0_r0[ 7: 0]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1_r0[31:24],lr_B1_r0[23:16],lr_B1_r0[15: 8],lr_B1_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G1_r0[31:24],lr_G1_r0[23:16],lr_G1_r0[15: 8],lr_G1_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R1_r0[31:24],lr_R1_r0[23:16],lr_R1_r0[15: 8],lr_R1_r0[ 7: 0]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2_r0[31:24],lr_B2_r0[23:16],lr_B2_r0[15: 8],lr_B2_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G2_r0[31:24],lr_G2_r0[23:16],lr_G2_r0[15: 8],lr_G2_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R2_r0[31:24],lr_R2_r0[23:16],lr_R2_r0[15: 8],lr_R2_r0[ 7: 0]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3_r0[31:24],lr_B3_r0[23:16],lr_B3_r0[15: 8],lr_B3_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G3_r0[31:24],lr_G3_r0[23:16],lr_G3_r0[15: 8],lr_G3_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R3_r0[31:24],lr_R3_r0[23:16],lr_R3_r0[15: 8],lr_R3_r0[ 7: 0]};
                        end
                        default:;
                    endcase
                end
                2'b10:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0[ 7: 0],lr_B0_r0[31:24],lr_B0_r0[23:16],lr_B0_r0[15: 8]};
                            mul_in_G       <=                  {lr_G0[ 7: 0],lr_G0_r0[31:24],lr_G0_r0[23:16],lr_G0_r0[15: 8]};
                            mul_in_R       <=                  {lr_R0[ 7: 0],lr_R0_r0[31:24],lr_R0_r0[23:16],lr_R0_r0[15: 8]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1[ 7: 0],lr_B1_r0[31:24],lr_B1_r0[23:16],lr_B1_r0[15: 8]};
                            mul_in_G       <=                  {lr_G1[ 7: 0],lr_G1_r0[31:24],lr_G1_r0[23:16],lr_G1_r0[15: 8]};
                            mul_in_R       <=                  {lr_R1[ 7: 0],lr_R1_r0[31:24],lr_R1_r0[23:16],lr_R1_r0[15: 8]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2[ 7: 0],lr_B2_r0[31:24],lr_B2_r0[23:16],lr_B2_r0[15: 8]};
                            mul_in_G       <=                  {lr_G2[ 7: 0],lr_G2_r0[31:24],lr_G2_r0[23:16],lr_G2_r0[15: 8]};
                            mul_in_R       <=                  {lr_R2[ 7: 0],lr_R2_r0[31:24],lr_R2_r0[23:16],lr_R2_r0[15: 8]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3[ 7: 0],lr_B3_r0[31:24],lr_B3_r0[23:16],lr_B3_r0[15: 8]};
                            mul_in_G       <=                  {lr_G3[ 7: 0],lr_G3_r0[31:24],lr_G3_r0[23:16],lr_G3_r0[15: 8]};
                            mul_in_R       <=                  {lr_R3[ 7: 0],lr_R3_r0[31:24],lr_R3_r0[23:16],lr_R3_r0[15: 8]};
                        end
                        default:;
                    endcase
                end
                2'b11:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0[15: 8],lr_B0[ 7: 0],lr_B0_r0[31:24],lr_B0_r0[23:16]};
                            mul_in_G       <=                  {lr_G0[15: 8],lr_G0[ 7: 0],lr_G0_r0[31:24],lr_G0_r0[23:16]};
                            mul_in_R       <=                  {lr_R0[15: 8],lr_R0[ 7: 0],lr_R0_r0[31:24],lr_R0_r0[23:16]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1[15: 8],lr_B1[ 7: 0],lr_B1_r0[31:24],lr_B1_r0[23:16]};
                            mul_in_G       <=                  {lr_G1[15: 8],lr_G1[ 7: 0],lr_G1_r0[31:24],lr_G1_r0[23:16]};
                            mul_in_R       <=                  {lr_R1[15: 8],lr_R1[ 7: 0],lr_R1_r0[31:24],lr_R1_r0[23:16]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2[15: 8],lr_B2[ 7: 0],lr_B2_r0[31:24],lr_B2_r0[23:16]};
                            mul_in_G       <=                  {lr_G2[15: 8],lr_G2[ 7: 0],lr_G2_r0[31:24],lr_G2_r0[23:16]};
                            mul_in_R       <=                  {lr_R2[15: 8],lr_R2[ 7: 0],lr_R2_r0[31:24],lr_R2_r0[23:16]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3[15: 8],lr_B3[ 7: 0],lr_B3_r0[31:24],lr_B3_r0[23:16]};
                            mul_in_G       <=                  {lr_G3[15: 8],lr_G3[ 7: 0],lr_G3_r0[31:24],lr_G3_r0[23:16]};
                            mul_in_R       <=                  {lr_R3[15: 8],lr_R3[ 7: 0],lr_R3_r0[31:24],lr_R3_r0[23:16]};
                        end
                        default:;
                    endcase
                end
                default:;
            endcase
        end
        else if(isEND1)
        begin
            case(cycle[3:2])
                2'b00:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0[23:16],lr_B0[15: 8],lr_B0[ 7: 0],lr_B0_r0[31:24]};
                            mul_in_G       <=                  {lr_G0[23:16],lr_G0[15: 8],lr_G0[ 7: 0],lr_G0_r0[31:24]};
                            mul_in_R       <=                  {lr_R0[23:16],lr_R0[15: 8],lr_R0[ 7: 0],lr_R0_r0[31:24]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1[23:16],lr_B1[15: 8],lr_B1[ 7: 0],lr_B1_r0[31:24]};
                            mul_in_G       <=                  {lr_G1[23:16],lr_G1[15: 8],lr_G1[ 7: 0],lr_G1_r0[31:24]};
                            mul_in_R       <=                  {lr_R1[23:16],lr_R1[15: 8],lr_R1[ 7: 0],lr_R1_r0[31:24]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2[23:16],lr_B2[15: 8],lr_B2[ 7: 0],lr_B2_r0[31:24]};
                            mul_in_G       <=                  {lr_G2[23:16],lr_G2[15: 8],lr_G2[ 7: 0],lr_G2_r0[31:24]};
                            mul_in_R       <=                  {lr_R2[23:16],lr_R2[15: 8],lr_R2[ 7: 0],lr_R2_r0[31:24]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3[23:16],lr_B3[15: 8],lr_B3[ 7: 0],lr_B3_r0[31:24]};
                            mul_in_G       <=                  {lr_G3[23:16],lr_G3[15: 8],lr_G3[ 7: 0],lr_G3_r0[31:24]};
                            mul_in_R       <=                  {lr_R3[23:16],lr_R3[15: 8],lr_R3[ 7: 0],lr_R3_r0[31:24]};
                        end
                        default:;
                    endcase
                end
                2'b01:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0[31:24],lr_B0[23:16],lr_B0[15: 8],lr_B0[ 7: 0]};
                            mul_in_G       <=                  {lr_G0[31:24],lr_G0[23:16],lr_G0[15: 8],lr_G0[ 7: 0]};
                            mul_in_R       <=                  {lr_R0[31:24],lr_R0[23:16],lr_R0[15: 8],lr_R0[ 7: 0]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1[31:24],lr_B1[23:16],lr_B1[15: 8],lr_B1[ 7: 0]};
                            mul_in_G       <=                  {lr_G1[31:24],lr_G1[23:16],lr_G1[15: 8],lr_G1[ 7: 0]};
                            mul_in_R       <=                  {lr_R1[31:24],lr_R1[23:16],lr_R1[15: 8],lr_R1[ 7: 0]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2[31:24],lr_B2[23:16],lr_B2[15: 8],lr_B2[ 7: 0]};
                            mul_in_G       <=                  {lr_G2[31:24],lr_G2[23:16],lr_G2[15: 8],lr_G2[ 7: 0]};
                            mul_in_R       <=                  {lr_R2[31:24],lr_R2[23:16],lr_R2[15: 8],lr_R2[ 7: 0]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3[31:24],lr_B3[23:16],lr_B3[15: 8],lr_B3[ 7: 0]};
                            mul_in_G       <=                  {lr_G3[31:24],lr_G3[23:16],lr_G3[15: 8],lr_G3[ 7: 0]};
                            mul_in_R       <=                  {lr_R3[31:24],lr_R3[23:16],lr_R3[15: 8],lr_R3[ 7: 0]};
                        end
                        default:;
                    endcase
                end
                2'b10:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0[31:24],lr_B0[31:24],lr_B0[23:16],lr_B0[15: 8]};
                            mul_in_G       <=                  {lr_G0[31:24],lr_G0[31:24],lr_G0[23:16],lr_G0[15: 8]};
                            mul_in_R       <=                  {lr_R0[31:24],lr_R0[31:24],lr_R0[23:16],lr_R0[15: 8]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1[31:24],lr_B1[31:24],lr_B1[23:16],lr_B1[15: 8]};
                            mul_in_G       <=                  {lr_G1[31:24],lr_G1[31:24],lr_G1[23:16],lr_G1[15: 8]};
                            mul_in_R       <=                  {lr_R1[31:24],lr_R1[31:24],lr_R1[23:16],lr_R1[15: 8]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2[31:24],lr_B2[31:24],lr_B2[23:16],lr_B2[15: 8]};
                            mul_in_G       <=                  {lr_G2[31:24],lr_G2[31:24],lr_G2[23:16],lr_G2[15: 8]};
                            mul_in_R       <=                  {lr_R2[31:24],lr_R2[31:24],lr_R2[23:16],lr_R2[15: 8]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3[31:24],lr_B3[31:24],lr_B3[23:16],lr_B3[15: 8]};
                            mul_in_G       <=                  {lr_G3[31:24],lr_G3[31:24],lr_G3[23:16],lr_G3[15: 8]};
                            mul_in_R       <=                  {lr_R3[31:24],lr_R3[31:24],lr_R3[23:16],lr_R3[15: 8]};
                        end
                        default:;
                    endcase
                end
                2'b11:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0[31:24],lr_B0[31:24],lr_B0[31:24],lr_B0[23:16]};
                            mul_in_G       <=                  {lr_G0[31:24],lr_G0[31:24],lr_G0[31:24],lr_G0[23:16]};
                            mul_in_R       <=                  {lr_R0[31:24],lr_R0[31:24],lr_R0[31:24],lr_R0[23:16]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1[31:24],lr_B1[31:24],lr_B1[31:24],lr_B1[23:16]};
                            mul_in_G       <=                  {lr_G1[31:24],lr_G1[31:24],lr_G1[31:24],lr_G1[23:16]};
                            mul_in_R       <=                  {lr_R1[31:24],lr_R1[31:24],lr_R1[31:24],lr_R1[23:16]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2[31:24],lr_B2[31:24],lr_B2[31:24],lr_B2[23:16]};
                            mul_in_G       <=                  {lr_G2[31:24],lr_G2[31:24],lr_G2[31:24],lr_G2[23:16]};
                            mul_in_R       <=                  {lr_R2[31:24],lr_R2[31:24],lr_R2[31:24],lr_R2[23:16]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3[31:24],lr_B3[31:24],lr_B3[31:24],lr_B3[23:16]};
                            mul_in_G       <=                  {lr_G3[31:24],lr_G3[31:24],lr_G3[31:24],lr_G3[23:16]};
                            mul_in_R       <=                  {lr_R3[31:24],lr_R3[31:24],lr_R3[31:24],lr_R3[23:16]};
                        end
                        default:;
                    endcase
                end
                default:;
            endcase
        end
        else begin
            case(cycle[3:2])
                2'b00:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0_r0[23:16],lr_B0_r0[15: 8],lr_B0_r0[ 7: 0],lr_B0_r1[31:24]};
                            mul_in_G       <=                  {lr_G0_r0[23:16],lr_G0_r0[15: 8],lr_G0_r0[ 7: 0],lr_G0_r1[31:24]};
                            mul_in_R       <=                  {lr_R0_r0[23:16],lr_R0_r0[15: 8],lr_R0_r0[ 7: 0],lr_R0_r1[31:24]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1_r0[23:16],lr_B1_r0[15: 8],lr_B1_r0[ 7: 0],lr_B1_r1[31:24]};
                            mul_in_G       <=                  {lr_G1_r0[23:16],lr_G1_r0[15: 8],lr_G1_r0[ 7: 0],lr_G1_r1[31:24]};
                            mul_in_R       <=                  {lr_R1_r0[23:16],lr_R1_r0[15: 8],lr_R1_r0[ 7: 0],lr_R1_r1[31:24]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2_r0[23:16],lr_B2_r0[15: 8],lr_B2_r0[ 7: 0],lr_B2_r1[31:24]};
                            mul_in_G       <=                  {lr_G2_r0[23:16],lr_G2_r0[15: 8],lr_G2_r0[ 7: 0],lr_G2_r1[31:24]};
                            mul_in_R       <=                  {lr_R2_r0[23:16],lr_R2_r0[15: 8],lr_R2_r0[ 7: 0],lr_R2_r1[31:24]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3_r0[23:16],lr_B3_r0[15: 8],lr_B3_r0[ 7: 0],lr_B3_r1[31:24]};
                            mul_in_G       <=                  {lr_G3_r0[23:16],lr_G3_r0[15: 8],lr_G3_r0[ 7: 0],lr_G3_r1[31:24]};
                            mul_in_R       <=                  {lr_R3_r0[23:16],lr_R3_r0[15: 8],lr_R3_r0[ 7: 0],lr_R3_r1[31:24]};
                        end
                        default:;
                    endcase
                end
                2'b01:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0_r0[31:24],lr_B0_r0[23:16],lr_B0_r0[15: 8],lr_B0_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G0_r0[31:24],lr_G0_r0[23:16],lr_G0_r0[15: 8],lr_G0_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R0_r0[31:24],lr_R0_r0[23:16],lr_R0_r0[15: 8],lr_R0_r0[ 7: 0]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1_r0[31:24],lr_B1_r0[23:16],lr_B1_r0[15: 8],lr_B1_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G1_r0[31:24],lr_G1_r0[23:16],lr_G1_r0[15: 8],lr_G1_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R1_r0[31:24],lr_R1_r0[23:16],lr_R1_r0[15: 8],lr_R1_r0[ 7: 0]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2_r0[31:24],lr_B2_r0[23:16],lr_B2_r0[15: 8],lr_B2_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G2_r0[31:24],lr_G2_r0[23:16],lr_G2_r0[15: 8],lr_G2_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R2_r0[31:24],lr_R2_r0[23:16],lr_R2_r0[15: 8],lr_R2_r0[ 7: 0]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3_r0[31:24],lr_B3_r0[23:16],lr_B3_r0[15: 8],lr_B3_r0[ 7: 0]};
                            mul_in_G       <=                  {lr_G3_r0[31:24],lr_G3_r0[23:16],lr_G3_r0[15: 8],lr_G3_r0[ 7: 0]};
                            mul_in_R       <=                  {lr_R3_r0[31:24],lr_R3_r0[23:16],lr_R3_r0[15: 8],lr_R3_r0[ 7: 0]};
                        end
                        default:;
                    endcase
                end
                2'b10:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0[ 7: 0],lr_B0_r0[31:24],lr_B0_r0[23:16],lr_B0_r0[15: 8]};
                            mul_in_G       <=                  {lr_G0[ 7: 0],lr_G0_r0[31:24],lr_G0_r0[23:16],lr_G0_r0[15: 8]};
                            mul_in_R       <=                  {lr_R0[ 7: 0],lr_R0_r0[31:24],lr_R0_r0[23:16],lr_R0_r0[15: 8]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1[ 7: 0],lr_B1_r0[31:24],lr_B1_r0[23:16],lr_B1_r0[15: 8]};
                            mul_in_G       <=                  {lr_G1[ 7: 0],lr_G1_r0[31:24],lr_G1_r0[23:16],lr_G1_r0[15: 8]};
                            mul_in_R       <=                  {lr_R1[ 7: 0],lr_R1_r0[31:24],lr_R1_r0[23:16],lr_R1_r0[15: 8]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2[ 7: 0],lr_B2_r0[31:24],lr_B2_r0[23:16],lr_B2_r0[15: 8]};
                            mul_in_G       <=                  {lr_G2[ 7: 0],lr_G2_r0[31:24],lr_G2_r0[23:16],lr_G2_r0[15: 8]};
                            mul_in_R       <=                  {lr_R2[ 7: 0],lr_R2_r0[31:24],lr_R2_r0[23:16],lr_R2_r0[15: 8]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3[ 7: 0],lr_B3_r0[31:24],lr_B3_r0[23:16],lr_B3_r0[15: 8]};
                            mul_in_G       <=                  {lr_G3[ 7: 0],lr_G3_r0[31:24],lr_G3_r0[23:16],lr_G3_r0[15: 8]};
                            mul_in_R       <=                  {lr_R3[ 7: 0],lr_R3_r0[31:24],lr_R3_r0[23:16],lr_R3_r0[15: 8]};
                        end
                        default:;
                    endcase
                end
                2'b11:
                begin
                    case(cycle[1:0])
                        2'b00:
                        begin
                            mul_in_B       <=                  {lr_B0[15: 8],lr_B0[ 7: 0],lr_B0_r0[31:24],lr_B0_r0[23:16]};
                            mul_in_G       <=                  {lr_G0[15: 8],lr_G0[ 7: 0],lr_G0_r0[31:24],lr_G0_r0[23:16]};
                            mul_in_R       <=                  {lr_R0[15: 8],lr_R0[ 7: 0],lr_R0_r0[31:24],lr_R0_r0[23:16]};
                        end
                        2'b01:
                        begin
                            mul_in_B       <=                  {lr_B1[15: 8],lr_B1[ 7: 0],lr_B1_r0[31:24],lr_B1_r0[23:16]};
                            mul_in_G       <=                  {lr_G1[15: 8],lr_G1[ 7: 0],lr_G1_r0[31:24],lr_G1_r0[23:16]};
                            mul_in_R       <=                  {lr_R1[15: 8],lr_R1[ 7: 0],lr_R1_r0[31:24],lr_R1_r0[23:16]};

                        end
                        2'b10:
                        begin
                            mul_in_B       <=                  {lr_B2[15: 8],lr_B2[ 7: 0],lr_B2_r0[31:24],lr_B2_r0[23:16]};
                            mul_in_G       <=                  {lr_G2[15: 8],lr_G2[ 7: 0],lr_G2_r0[31:24],lr_G2_r0[23:16]};
                            mul_in_R       <=                  {lr_R2[15: 8],lr_R2[ 7: 0],lr_R2_r0[31:24],lr_R2_r0[23:16]};
                        end
                        2'b11:
                        begin
                            mul_in_B       <=                  {lr_B3[15: 8],lr_B3[ 7: 0],lr_B3_r0[31:24],lr_B3_r0[23:16]};
                            mul_in_G       <=                  {lr_G3[15: 8],lr_G3[ 7: 0],lr_G3_r0[31:24],lr_G3_r0[23:16]};
                            mul_in_R       <=                  {lr_R3[15: 8],lr_R3[ 7: 0],lr_R3_r0[31:24],lr_R3_r0[23:16]};
                        end
                        default:;
                    endcase
                end
                default:;
            endcase
        end
    end

endmodule
