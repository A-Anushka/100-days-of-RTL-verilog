module exc3_2_bcd_tb();
reg [3:0] e;
wire [3:0] b;
exc3_2_bcd a3 (b,e);
initial begin 
repeat (10)
begin
e=$random; #100;
end
#100 $finish;
end
endmodule
