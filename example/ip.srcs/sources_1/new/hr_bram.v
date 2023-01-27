`timescale 1ns / 1ps

module hr_bram(
        input                   wire                                                clk                               ,
        input                   wire                                                wr_en                             ,
        input                   wire[9:0]                                           wr_addr                           ,
        input                   wire[31:0]                                          din                               ,
        input                   wire                                                rd_en                             ,
        input                   wire[9:0]                                           rd_addr                           ,
        output                  reg [31:0]                                          dout
    );
    
    (* ram_style = "block" *)   reg [31:0]                                         cache [960:0]                     ;
        
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