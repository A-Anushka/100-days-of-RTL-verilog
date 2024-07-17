module gray2bin_tb();
reg [3:0] g;
wire [3:0] b;
gray2bin a2(b,g);
initial 
begin
g=4'b0000;
repeat(10)
begin
#100 g=$random;
end
#100 $finish;
end
endmodule
