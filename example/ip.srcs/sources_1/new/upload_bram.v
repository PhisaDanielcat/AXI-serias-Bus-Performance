`timescale 1ns / 1ps

module upload_bram(
        input                   wire                                                clk                               ,
        input                   wire                                                wr_en                             ,
        input                   wire[10:0]                                          wr_addr                           ,
        input                   wire[63:0]                                          din                               ,
        input                   wire                                                rd_en                             ,
        input                   wire[10:0]                                          rd_addr                           ,
        output                  reg [63:0]                                          dout
    );
    
    (* ram_style = "block" *)   reg [63:0]                                         cache [1439:0]                    ;
        
        always@(posedge clk)
        begin
            if(wr_en)
                    cache[wr_addr]                      <=                          din                               ;
        end
        
        always@(posedge clk)
        begin
            if(rd_en)
                    dout                                <=                          cache [rd_addr]                   ;
        end
endmodule
