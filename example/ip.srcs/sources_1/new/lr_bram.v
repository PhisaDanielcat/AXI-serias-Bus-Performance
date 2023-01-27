`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/04 16:15:28
// Design Name: 
// Module Name: bram
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module lr_bram(
        input                   wire                                                clk                               ,
        input                   wire                                                wr_en                             ,
        input                   wire[6:0]                                           wr_addr                           ,
        input                   wire[7:0]                                           din                               ,
        input                   wire                                                rd_en                             ,
        input                   wire[6:0]                                           rd_addr                           ,
        output                  reg [7:0]                                           dout
    );
    
    (* ram_style = "block" *)   reg [7:0]                                          cache [119:0]                      ;
        
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
