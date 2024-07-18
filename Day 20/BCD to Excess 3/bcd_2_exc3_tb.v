module bcd_2_exc3_tb();
reg [3:0] b;
wire [3:0] e;
bcd_2_exc3 a4(e,b);
initial
begin
repeat (10)
begin
b=$random(); #100;
end
#100 $finish;
end
endmodule
