module dec_4to16_tb();
reg [3:0] a;
reg en;
wire [15:0] y;
integer i;
dec_4to16 a0 (y,en,a);
initial 
begin
#0 en=0;a=4'bxxxx;
for(i=0;i<=16;i=i+1)
begin
    #10 en=1; a=i;
end
$finish;
 end
endmodule
