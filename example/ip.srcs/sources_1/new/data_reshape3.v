`timescale 1ns / 1ps

module data_reshape3(
        input                wire[27:0]                          add_outB_0_0    ,
        input                wire[27:0]                          add_outB_0_1    ,
        input                wire[27:0]                          add_outB_0_2    ,
        input                wire[27:0]                          add_outB_0_3    ,
        input                wire[27:0]                          add_outB_1_0    ,
        input                wire[27:0]                          add_outB_1_1    ,
        input                wire[27:0]                          add_outB_1_2    ,
        input                wire[27:0]                          add_outB_1_3    ,
        input                wire[27:0]                          add_outB_2_0    ,
        input                wire[27:0]                          add_outB_2_1    ,
        input                wire[27:0]                          add_outB_2_2    ,
        input                wire[27:0]                          add_outB_2_3    ,
        input                wire[27:0]                          add_outB_3_0    ,
        input                wire[27:0]                          add_outB_3_1    ,
        input                wire[27:0]                          add_outB_3_2    ,
        input                wire[27:0]                          add_outB_3_3    ,
        input                wire[27:0]                          add_outG_0_0    ,
        input                wire[27:0]                          add_outG_0_1    ,
        input                wire[27:0]                          add_outG_0_2    ,
        input                wire[27:0]                          add_outG_0_3    ,
        input                wire[27:0]                          add_outG_1_0    ,
        input                wire[27:0]                          add_outG_1_1    ,
        input                wire[27:0]                          add_outG_1_2    ,
        input                wire[27:0]                          add_outG_1_3    ,
        input                wire[27:0]                          add_outG_2_0    ,
        input                wire[27:0]                          add_outG_2_1    ,
        input                wire[27:0]                          add_outG_2_2    ,
        input                wire[27:0]                          add_outG_2_3    ,
        input                wire[27:0]                          add_outG_3_0    ,
        input                wire[27:0]                          add_outG_3_1    ,
        input                wire[27:0]                          add_outG_3_2    ,
        input                wire[27:0]                          add_outG_3_3    ,
        input                wire[27:0]                          add_outR_0_0    ,
        input                wire[27:0]                          add_outR_0_1    ,
        input                wire[27:0]                          add_outR_0_2    ,
        input                wire[27:0]                          add_outR_0_3    ,
        input                wire[27:0]                          add_outR_1_0    ,
        input                wire[27:0]                          add_outR_1_1    ,
        input                wire[27:0]                          add_outR_1_2    ,
        input                wire[27:0]                          add_outR_1_3    ,
        input                wire[27:0]                          add_outR_2_0    ,
        input                wire[27:0]                          add_outR_2_1    ,
        input                wire[27:0]                          add_outR_2_2    ,
        input                wire[27:0]                          add_outR_2_3    ,
        input                wire[27:0]                          add_outR_3_0    ,
        input                wire[27:0]                          add_outR_3_1    ,
        input                wire[27:0]                          add_outR_3_2    ,
        input                wire[27:0]                          add_outR_3_3    ,
        
        output               reg [ 7:0]                          add_outB_0_0_rp ,
        output               reg [ 7:0]                          add_outB_0_1_rp ,
        output               reg [ 7:0]                          add_outB_0_2_rp ,
        output               reg [ 7:0]                          add_outB_0_3_rp ,
        output               reg [ 7:0]                          add_outB_1_0_rp ,
        output               reg [ 7:0]                          add_outB_1_1_rp ,
        output               reg [ 7:0]                          add_outB_1_2_rp ,
        output               reg [ 7:0]                          add_outB_1_3_rp ,
        output               reg [ 7:0]                          add_outB_2_0_rp ,
        output               reg [ 7:0]                          add_outB_2_1_rp ,
        output               reg [ 7:0]                          add_outB_2_2_rp ,
        output               reg [ 7:0]                          add_outB_2_3_rp ,
        output               reg [ 7:0]                          add_outB_3_0_rp ,
        output               reg [ 7:0]                          add_outB_3_1_rp ,
        output               reg [ 7:0]                          add_outB_3_2_rp ,
        output               reg [ 7:0]                          add_outB_3_3_rp ,
        output               reg [ 7:0]                          add_outG_0_0_rp ,
        output               reg [ 7:0]                          add_outG_0_1_rp ,
        output               reg [ 7:0]                          add_outG_0_2_rp ,
        output               reg [ 7:0]                          add_outG_0_3_rp ,
        output               reg [ 7:0]                          add_outG_1_0_rp ,
        output               reg [ 7:0]                          add_outG_1_1_rp ,
        output               reg [ 7:0]                          add_outG_1_2_rp ,
        output               reg [ 7:0]                          add_outG_1_3_rp ,
        output               reg [ 7:0]                          add_outG_2_0_rp ,
        output               reg [ 7:0]                          add_outG_2_1_rp ,
        output               reg [ 7:0]                          add_outG_2_2_rp ,
        output               reg [ 7:0]                          add_outG_2_3_rp ,
        output               reg [ 7:0]                          add_outG_3_0_rp ,
        output               reg [ 7:0]                          add_outG_3_1_rp ,
        output               reg [ 7:0]                          add_outG_3_2_rp ,
        output               reg [ 7:0]                          add_outG_3_3_rp ,
        output               reg [ 7:0]                          add_outR_0_0_rp ,
        output               reg [ 7:0]                          add_outR_0_1_rp ,
        output               reg [ 7:0]                          add_outR_0_2_rp ,
        output               reg [ 7:0]                          add_outR_0_3_rp ,
        output               reg [ 7:0]                          add_outR_1_0_rp ,
        output               reg [ 7:0]                          add_outR_1_1_rp ,
        output               reg [ 7:0]                          add_outR_1_2_rp ,
        output               reg [ 7:0]                          add_outR_1_3_rp ,
        output               reg [ 7:0]                          add_outR_2_0_rp ,
        output               reg [ 7:0]                          add_outR_2_1_rp ,
        output               reg [ 7:0]                          add_outR_2_2_rp ,
        output               reg [ 7:0]                          add_outR_2_3_rp ,
        output               reg [ 7:0]                          add_outR_3_0_rp ,
        output               reg [ 7:0]                          add_outR_3_1_rp ,
        output               reg [ 7:0]                          add_outR_3_2_rp ,
        output               reg [ 7:0]                          add_outR_3_3_rp 
    );

    always@(*)
    begin
        if(add_outB_0_0[27])
            add_outB_0_0_rp     =               8'b0                             ;
        else if(add_outB_0_0[26]||add_outB_0_0[25]||add_outB_0_0[24])
            add_outB_0_0_rp     =               8'hff                            ;
        else 
            add_outB_0_0_rp     =               add_outB_0_0[23:16]              ;
    end

    always@(*)
    begin
        if(add_outB_0_1[27])
            add_outB_0_1_rp     =               8'b0                             ;
        else if(add_outB_0_1[26]||add_outB_0_1[25]||add_outB_0_1[24])
            add_outB_0_1_rp     =               8'hff                            ;
        else 
            add_outB_0_1_rp     =               add_outB_0_1[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outB_0_2[27])    
            add_outB_0_2_rp     =               8'b0                             ;
        else if(add_outB_0_2[26]||add_outB_0_2[25]||add_outB_0_2[24])
            add_outB_0_2_rp     =               8'hff                            ;
        else 
            add_outB_0_2_rp     =               add_outB_0_2[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outB_0_3[27])
            add_outB_0_3_rp     =               8'b0                             ;
        else if(add_outB_0_3[26]||add_outB_0_3[25]||add_outB_0_3[24])
            add_outB_0_3_rp     =               8'hff                            ;
        else 
            add_outB_0_3_rp     =               add_outB_0_3[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outB_1_0[27])
            add_outB_1_0_rp     =               8'b0                             ;
        else if(add_outB_1_0[26]||add_outB_1_0[25]||add_outB_1_0[24])
            add_outB_1_0_rp     =               8'hff                            ;
        else 
            add_outB_1_0_rp     =               add_outB_1_0[23:16]              ;
    end

    
    always@(*)
    begin
        if(add_outB_1_1[27])
            add_outB_1_1_rp     =               8'b0                             ;
        else if(add_outB_1_1[26]||add_outB_1_1[25]||add_outB_1_1[24])
            add_outB_1_1_rp     =               8'hff                            ;
        else 
            add_outB_1_1_rp     =               add_outB_1_1[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outB_1_2[27])
            add_outB_1_2_rp     =               8'b0                             ;
        else if(add_outB_1_2[26]||add_outB_1_2[25]||add_outB_1_2[24])
            add_outB_1_2_rp     =               8'hff                            ;
        else 
            add_outB_1_2_rp     =               add_outB_1_2[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outB_1_3[27])
            add_outB_1_3_rp     =               8'b0                             ;
        else if(add_outB_1_3[26]||add_outB_1_3[25]||add_outB_1_3[24])
            add_outB_1_3_rp     =               8'hff                            ;
        else 
            add_outB_1_3_rp     =               add_outB_1_3[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outB_2_0[27])
            add_outB_2_0_rp     =               8'b0                             ;
        else if(add_outB_2_0[26]||add_outB_2_0[25]||add_outB_2_0[24])
            add_outB_2_0_rp     =               8'hff                            ;
        else 
            add_outB_2_0_rp     =               add_outB_2_0[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outB_2_1[27])
            add_outB_2_1_rp     =               8'b0                             ;
        else if(add_outB_2_1[26]||add_outB_2_1[25]||add_outB_2_1[24])
            add_outB_2_1_rp     =               8'hff                            ;
        else 
            add_outB_2_1_rp     =               add_outB_2_1[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outB_2_2[27])
            add_outB_2_2_rp     =               8'b0                             ;
        else if(add_outB_2_2[26]||add_outB_2_2[25]||add_outB_2_2[24])
            add_outB_2_2_rp     =               8'hff                            ;
        else 
            add_outB_2_2_rp     =               add_outB_2_2[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outB_2_3[27])
            add_outB_2_3_rp     =               8'b0                             ;
        else if(add_outB_2_3[26]||add_outB_2_3[25]||add_outB_2_3[24])
            add_outB_2_3_rp     =               8'hff                            ;
        else 
            add_outB_2_3_rp     =               add_outB_2_3[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outB_3_0[27])
            add_outB_3_0_rp     =               8'b0                             ;
        else if(add_outB_3_0[26]||add_outB_3_0[25]||add_outB_3_0[24])
            add_outB_3_0_rp     =               8'hff                            ;
        else 
            add_outB_3_0_rp     =               add_outB_3_0[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outB_3_1[27])
            add_outB_3_1_rp     =               8'b0                             ;
        else if(add_outB_3_1[26]||add_outB_3_1[25]||add_outB_3_1[24])
            add_outB_3_1_rp     =               8'hff                            ;
        else 
            add_outB_3_1_rp     =               add_outB_3_1[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outB_3_2[27])
            add_outB_3_2_rp     =               8'b0                             ;
        else if(add_outB_3_2[26]||add_outB_3_2[25]||add_outB_3_2[24])
            add_outB_3_2_rp     =               8'hff                            ;
        else 
            add_outB_3_2_rp     =               add_outB_3_2[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outB_3_3[27])
            add_outB_3_3_rp     =               8'b0                             ;
        else if(add_outB_3_3[26]||add_outB_3_3[25]||add_outB_3_3[24])
            add_outB_3_3_rp     =               8'hff                            ;
        else 
            add_outB_3_3_rp     =               add_outB_3_3[23:16]              ;
    end
    
    
    always@(*)
    begin
        if(add_outG_0_0[27])
            add_outG_0_0_rp     =               8'b0                             ;
        else if(add_outG_0_0[26]||add_outG_0_0[25]||add_outG_0_0[24])
            add_outG_0_0_rp     =               8'hff                            ;
        else 
            add_outG_0_0_rp     =               add_outG_0_0[23:16]              ;
    end

    always@(*)
    begin
        if(add_outG_0_1[27])
            add_outG_0_1_rp     =               8'b0                             ;
        else if(add_outG_0_1[26]||add_outG_0_1[25]||add_outG_0_1[24])
            add_outG_0_1_rp     =               8'hff                            ;
        else 
            add_outG_0_1_rp     =               add_outG_0_1[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outG_0_2[27])
            add_outG_0_2_rp     =               8'b0                             ;
        else if(add_outG_0_2[26]||add_outG_0_2[25]||add_outG_0_2[24])
            add_outG_0_2_rp     =               8'hff                            ;
        else 
            add_outG_0_2_rp     =               add_outG_0_2[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outG_0_3[27])
            add_outG_0_3_rp     =               8'b0                             ;
        else if(add_outG_0_3[26]||add_outG_0_3[25]||add_outG_0_3[24])
            add_outG_0_3_rp     =               8'hff                            ;
        else 
            add_outG_0_3_rp     =               add_outG_0_3[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outG_1_0[27])
            add_outG_1_0_rp     =               8'b0                             ;
        else if(add_outG_1_0[26]||add_outG_1_0[25]||add_outG_1_0[24])
            add_outG_1_0_rp     =               8'hff                            ;
        else 
            add_outG_1_0_rp     =               add_outG_1_0[23:16]              ;
    end

    
    always@(*)
    begin
        if(add_outG_1_1[27])
            add_outG_1_1_rp     =               8'b0                             ;
        else if(add_outG_1_1[26]||add_outG_1_1[25]||add_outG_1_1[24])
            add_outG_1_1_rp     =               8'hff                            ;
        else 
            add_outG_1_1_rp     =               add_outG_1_1[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outG_1_2[27])
            add_outG_1_2_rp     =               8'b0                             ;
        else if(add_outG_1_2[26]||add_outG_1_2[25]||add_outG_1_2[24])
            add_outG_1_2_rp     =               8'hff                            ;
        else 
            add_outG_1_2_rp     =               add_outG_1_2[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outG_1_3[27])
            add_outG_1_3_rp     =               8'b0                             ;
        else if(add_outG_1_3[26]||add_outG_1_3[25]||add_outG_1_3[24])
            add_outG_1_3_rp     =               8'hff                            ;
        else 
            add_outG_1_3_rp     =               add_outG_1_3[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outG_2_0[27])
            add_outG_2_0_rp     =               8'b0                             ;
        else if(add_outG_2_0[26]||add_outG_2_0[25]||add_outG_2_0[24])
            add_outG_2_0_rp     =               8'hff                            ;
        else 
            add_outG_2_0_rp     =               add_outG_2_0[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outG_2_1[27])
            add_outG_2_1_rp     =               8'b0                             ;
        else if(add_outG_2_1[26]||add_outG_2_1[25]||add_outG_2_1[24])
            add_outG_2_1_rp     =               8'hff                            ;
        else 
            add_outG_2_1_rp     =               add_outG_2_1[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outG_2_2[27])
            add_outG_2_2_rp     =               8'b0                             ;
        else if(add_outG_2_2[26]||add_outG_2_2[25]||add_outG_2_2[24])
            add_outG_2_2_rp     =               8'hff                            ;
        else 
            add_outG_2_2_rp     =               add_outG_2_2[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outG_2_3[27])
            add_outG_2_3_rp     =               8'b0                             ;
        else if(add_outG_2_3[26]||add_outG_2_3[25]||add_outG_2_3[24])
            add_outG_2_3_rp     =               8'hff                            ;
        else 
            add_outG_2_3_rp     =               add_outG_2_3[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outG_3_0[27])
            add_outG_3_0_rp     =               8'b0                             ;
        else if(add_outG_3_0[26]||add_outG_3_0[25]||add_outG_3_0[24])
            add_outG_3_0_rp     =               8'hff                            ;
        else 
            add_outG_3_0_rp     =               add_outG_3_0[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outG_3_1[27])
            add_outG_3_1_rp     =               8'b0                             ;
        else if(add_outG_3_1[26]||add_outG_3_1[25]||add_outG_3_1[24])
            add_outG_3_1_rp     =               8'hff                            ;
        else 
            add_outG_3_1_rp     =               add_outG_3_1[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outG_3_2[27])
            add_outG_3_2_rp     =               8'b0                             ;
        else if(add_outG_3_2[26]||add_outG_3_2[25]||add_outG_3_2[24])
            add_outG_3_2_rp     =               8'hff                            ;
        else 
            add_outG_3_2_rp     =               add_outG_3_2[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outG_3_3[27])
            add_outG_3_3_rp     =               8'b0                             ;
        else if(add_outG_3_3[26]||add_outG_3_3[25]||add_outG_3_3[24])
            add_outG_3_3_rp     =               8'hff                            ;
        else 
            add_outG_3_3_rp     =               add_outG_3_3[23:16]              ;
    end
    
    
    always@(*)
    begin
        if(add_outR_0_0[27])
            add_outR_0_0_rp     =               8'b0                             ;
        else if(add_outR_0_0[26]||add_outR_0_0[25]||add_outR_0_0[24])
            add_outR_0_0_rp     =               8'hff                            ;
        else 
            add_outR_0_0_rp     =               add_outR_0_0[23:16]              ;
    end

    always@(*)
    begin
        if(add_outR_0_1[27])
            add_outR_0_1_rp     =               8'b0                             ;
        else if(add_outR_0_1[26]||add_outR_0_1[25]||add_outR_0_1[24])
            add_outR_0_1_rp     =               8'hff                            ;
        else 
            add_outR_0_1_rp     =               add_outR_0_1[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outR_0_2[27])
            add_outR_0_2_rp     =               8'b0                             ;
        else if(add_outR_0_2[26]||add_outR_0_2[25]||add_outR_0_2[24])
            add_outR_0_2_rp     =               8'hff                            ;
        else 
            add_outR_0_2_rp     =               add_outR_0_2[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outR_0_3[27])
            add_outR_0_3_rp     =               8'b0                             ;
        else if(add_outR_0_3[26]||add_outR_0_3[25]||add_outR_0_3[24])
            add_outR_0_3_rp     =               8'hff                            ;
        else 
            add_outR_0_3_rp     =               add_outR_0_3[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outR_1_0[27])
            add_outR_1_0_rp     =               8'b0                             ;
        else if(add_outR_1_0[26]||add_outR_1_0[25]||add_outR_1_0[24])
            add_outR_1_0_rp     =               8'hff                            ;
        else 
            add_outR_1_0_rp     =               add_outR_1_0[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outR_1_1[27])
            add_outR_1_1_rp     =               8'b0                             ;
        else if(add_outR_1_1[26]||add_outR_1_1[25]||add_outR_1_1[24])
            add_outR_1_1_rp     =               8'hff                            ;
        else 
            add_outR_1_1_rp     =               add_outR_1_1[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outR_1_2[27])
            add_outR_1_2_rp     =               8'b0                             ;
        else if(add_outR_1_2[26]||add_outR_1_2[25]||add_outR_1_2[24])
            add_outR_1_2_rp     =               8'hff                            ;
        else 
            add_outR_1_2_rp     =               add_outR_1_2[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outR_1_3[27])
            add_outR_1_3_rp     =               8'b0                             ;
        else if(add_outR_1_3[26]||add_outR_1_3[25]||add_outR_1_3[24])
            add_outR_1_3_rp     =               8'hff                            ;
        else 
            add_outR_1_3_rp     =               add_outR_1_3[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outR_2_0[27])
            add_outR_2_0_rp     =               8'b0                             ;
        else if(add_outR_2_0[26]||add_outR_2_0[25]||add_outR_2_0[24])
            add_outR_2_0_rp     =               8'hff                            ;
        else 
            add_outR_2_0_rp     =               add_outR_2_0[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outR_2_1[27])
            add_outR_2_1_rp     =               8'b0                             ;
        else if(add_outR_2_1[26]||add_outR_2_1[25]||add_outR_2_1[24])
            add_outR_2_1_rp     =               8'hff                            ;
        else 
            add_outR_2_1_rp     =               add_outR_2_1[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outR_2_2[27])
            add_outR_2_2_rp     =               8'b0                             ;
        else if(add_outR_2_2[26]||add_outR_2_2[25]||add_outR_2_2[24])
            add_outR_2_2_rp     =               8'hff                            ;
        else 
            add_outR_2_2_rp     =               add_outR_2_2[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outR_2_3[27])
            add_outR_2_3_rp     =               8'b0                             ;
        else if(add_outR_2_3[26]||add_outR_2_3[25]||add_outR_2_3[24])
            add_outR_2_3_rp     =               8'hff                            ;
        else 
            add_outR_2_3_rp     =               add_outR_2_3[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outR_3_0[27])
            add_outR_3_0_rp     =               8'b0                             ;
        else if(add_outR_3_0[26]||add_outR_3_0[25]||add_outR_3_0[24])
            add_outR_3_0_rp     =               8'hff                            ;
        else 
            add_outR_3_0_rp     =               add_outR_3_0[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outR_3_1[27])
            add_outR_3_1_rp     =               8'b0                             ;
        else if(add_outR_3_1[26]||add_outR_3_1[25]||add_outR_3_1[24])
            add_outR_3_1_rp     =               8'hff                            ;
        else 
            add_outR_3_1_rp     =               add_outR_3_1[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outR_3_2[27])
            add_outR_3_2_rp     =               8'b0                             ;
        else if(add_outR_3_2[26]||add_outR_3_2[25]||add_outR_3_2[24])
            add_outR_3_2_rp     =               8'hff                            ;
        else 
            add_outR_3_2_rp     =               add_outR_3_2[23:16]              ;
    end
    
    always@(*)
    begin
        if(add_outR_3_3[27])
            add_outR_3_3_rp     =               8'b0                             ;
        else if(add_outR_3_3[26]||add_outR_3_3[25]||add_outR_3_3[24])
            add_outR_3_3_rp     =               8'hff                            ;
        else 
            add_outR_3_3_rp     =               add_outR_3_3[23:16]              ;
    end
    

endmodule
