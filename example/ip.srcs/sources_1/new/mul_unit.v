`timescale 1ns / 1ps

module mul_unit(
        input               wire                                clk             ,
        input               wire[ 1:0]                          cycle           ,
        input               wire[31:0]                          mul_in          ,
        input               wire[67:0]                          w               ,
        output              reg [103:0]                         mul_out           
    );

    reg     signed          [25:0]                              cin[3:0]        ;
    wire    signed          [25:0]                              ip_r[3:0]       ;

    always@(*)
        begin
            if(cycle == 3'd1)
            begin
                        cin[0]                  =           26'b0               ;
                        cin[1]                  =           26'b0               ;
                        cin[2]                  =           26'b0               ;
                        cin[3]                  =           26'b0               ;
            end
            else        
            begin
                        cin[0]                  =           mul_out[ 25: 0]     ;
                        cin[1]                  =           mul_out[ 51:26]     ;
                        cin[2]                  =           mul_out[ 77:52]     ;
                        cin[3]                  =           mul_out[103:78]     ;
            end
        end
    
    mult_gen_0 u1 (
      .CLK(clk),  // input wire CLK
      .A(w[16: 0]),      // input wire [16 : 0] A
      .B({1'b0,mul_in[ 7: 0]}),      // input wire [8 : 0] B
      .P(ip_r[0])      // output wire [25 : 0] P
    );
    mult_gen_0 u2 (
      .CLK(clk),  // input wire CLK
      .A(w[33:17]),      // input wire [16 : 0] A
      .B({1'b0,mul_in[15: 8]}),      // input wire [8 : 0] B
      .P(ip_r[1])      // output wire [25 : 0] P
    );
    mult_gen_0 u3 (
      .CLK(clk),  // input wire CLK
      .A(w[50:34]),      // input wire [16 : 0] A
      .B({1'b0,mul_in[23:16]}),      // input wire [8 : 0] B
      .P(ip_r[2])      // output wire [25 : 0] P
    );
    mult_gen_0 u4 (
      .CLK(clk),  // input wire CLK
      .A(w[67:51]),      // input wire [16 : 0] A
      .B({1'b0,mul_in[31:24]}),      // input wire [8 : 0] B
      .P(ip_r[3])      // output wire [25 : 0] P
    );
    
    always@(posedge clk)
    begin
        mul_out[25: 0]  <=  ip_r[0] + cin[0];
        mul_out[51:26]  <=  ip_r[1] + cin[1];
        mul_out[77:52]  <=  ip_r[2] + cin[2];
        mul_out[103:78]  <=  ip_r[3] + cin[3];
    end


endmodule
