module pri_enc_tb();
reg [7:0] i;
reg en;
wire [2:0] y;
pri_enc a0 (y,en,i);
initial
    begin
      $monitor("en=%b i=%b y=%b",en,i,y);
 
 #0     en=0;i=8'bx;
 #50    en=1;i=8'b0000_0001;
 #50    i=8'b0000_001x;
 #50    i=8'b0000_01xx;
 #50    i=8'b0000_1xxx;
 #50    i=8'b0001_xxxx;
 #50    i=8'b001x_xxxx;
 #50    i=8'b01xx_xxxx;
 #50    i= 8'b1xxx_xxxx;     
 #50 $finish;
end
endmodule
