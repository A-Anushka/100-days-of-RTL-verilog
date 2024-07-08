module comp_2bit_tb();
reg [1:0] a, b;
wire AgtB, AeqB, AltB;
integer i;
comp_2bit a0 (AltB,AeqB,AgtB,a,b);
initial  
begin
#0 a=2'b00; b=2'b00;
for(i=0;i<4;i=i+1)
begin
#50 b=2'b01; 
#50 b=2'b10;
#50 b=2'b11;
#50 b=2'b00; a=a+1;
end
$finish;
end
endmodule
