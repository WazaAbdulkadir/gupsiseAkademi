`timescale 1ns / 1ps

module MESS(
               input clk,
               input rst,
               
               input [15:0]emir,
               
               output [7:0]sonuc 

    );
    
    wire [7:0] veri1_bagla;
    wire [7:0] veri2_bagla;
    
    wire [7:0] sonucu_bagla;
    
    wire yazma_emri;

hafiza hafizayi_tanimla (.clk(clk), .rst(rst), .emir(emir),.gelen_veri(sonucu_bagla), .veri1_o(veri1_bagla) ,.veri2_o(veri2_bagla) ,.veriyi_yaz(yazma_emri) );
Aritmetik aritmetigi_tanimla (.clk(clk), .rst(rst), .emir(emir), .veri1_i(veri1_bagla),.veri2_i(veri2_bagla), .veriyi_yaz_o(yazma_emri), .sonuc_o(sonucu_bagla)); 
    
    
    
                 
                 

    
endmodule
