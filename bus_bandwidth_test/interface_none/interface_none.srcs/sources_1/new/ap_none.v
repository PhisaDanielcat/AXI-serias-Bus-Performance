`timescale 1ns / 1ps


module ap_none(
    input clk,
    input [31:0]a,
    output reg[31:0]a_out
    );
    always@(posedge clk) 
        a_out <= a;
endmodule
