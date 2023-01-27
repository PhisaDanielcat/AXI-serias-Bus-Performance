`timescale 1ns / 1ps

module upsample_ctrl(
        input               wire                            clk                 ,
        input               wire                            rst_n               ,
        input               wire                            isHD                ,
        input               wire                            download_req        ,
        input               wire[1:0]                       cycle               ,
        output              reg [1:0]                       cycle_r             ,
        output              wire                            upsample_vld        
    );

        parameter           S_IDLE              =           1'b0                ;
        parameter           S_VLD               =           1'b1                ;

        reg                                                 state               ;
        reg                                                 next_state          ;
        reg                                                 isHD_d0             ;
        reg                                                 isHD_d1             ;
        reg                                                 isHD_d2             ;

        assign  upsample_vld                    =           state&cycle_r[1]&~cycle_r[0];

        always@(posedge clk)
        begin
                cycle_r                         <=          cycle               ;
                isHD_d0                         <=          isHD                ;
                isHD_d1                         <=          isHD_d0             ;
                isHD_d2                         <=          isHD_d1             ;
        end

        always@(posedge clk or negedge  rst_n)
        begin
            if(!rst_n)
                state                           <=          S_IDLE              ;
            else 
                state                           <=          next_state          ;
        end

        always@(*)
        begin
            case(state)
                S_IDLE:
                    if(isHD_d2)
                        next_state              =           S_VLD               ;
                    else
                        next_state              =           S_IDLE              ;
                S_VLD:
                    if(download_req)
                        next_state              =           S_IDLE              ;
                    else
                        next_state              =           S_VLD               ;
                default:
                    next_state                  =           S_IDLE              ;
            endcase
        end
endmodule
