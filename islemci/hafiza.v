
module hafiza( 
                input clk,
                input rst,
                
                input [15:0]emir,
                
                input [7:0] gelen_veri,
                
                output [7:0] veri1_o,
                output [7:0] veri2_o,
                
                input veriyi_yaz
                 );
                
                
 reg [7:0] hafiza [7:0];
 
 wire [2:0] veri1_nerede;
 wire [2:0] veri2_nerede;
 
 wire [2:0] veriyi_buraya_kaydet;
 
 
 
 assign veri1_nerede = emir[5:3];
 assign veri2_nerede = emir[8:6];
 
 assign veri1_o = hafiza[veri1_nerede];
 assign veri2_o = hafiza[veri2_nerede];
 
 
 
 initial begin
   hafiza[0] = 8'd12;
   hafiza[1] = 8'd7;
   
   hafiza[2] = 8'd4;
   hafiza[3] = 8'd43;
   
   hafiza[4] = 8'd1;
   hafiza[5] = 8'd4;
   
   hafiza[6] = 8'd26;
   hafiza[7] = 8'd40;
 
 end 
 
 
 assign veriyi_buraya_kaydet = emir[11:9]; 
 
 always @(posedge clk) begin
 
    if (veriyi_yaz) begin
        hafiza[veriyi_buraya_kaydet] <= gelen_veri;
    end
 
 end 
 
 
 
 
 



endmodule 