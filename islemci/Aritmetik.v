`timescale 1ns / 1ps


module Aritmetik(
                    input clk,
                    input rst,
                    
                    input veri1_i,
                    input veri2_i,
                    input [15:0] emir,
                    
                    output reg veriyi_yaz_o,
                    output reg [7:0] sonuc_o
                    
                    );
    
    
    wire [2:0]islem_kismi;
    
    assign islem_kismi = emir[2:0];
    
    always @  (posedge clk ) begin
     
      if (rst)begin
        veriyi_yaz_o <= 0;
      end
      
      
      else begin
            
            case (islem_kismi) 
                
                3'b000: begin
                    
                    sonuc_o <= veri1_i + veri2_i;
                    veriyi_yaz_o <= 1;
                    
                
                end
                
                
                3'b010: begin
                    sonuc_o <= veri1_i - veri2_i;
                    veriyi_yaz_o <= 1;
                end
                
                
                 3'b100: begin
                    sonuc_o <= veri1_i * veri2_i;
                    veriyi_yaz_o <= 1;
                end
                
            
            
            endcase
        
      end 
      
      
        
    
    end 
    
endmodule
