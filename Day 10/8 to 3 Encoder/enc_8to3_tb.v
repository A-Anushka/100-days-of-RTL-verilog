module enc_8to3_tb();
reg [7:0] d;
wire [2:0] y;
enc_8to3 a0 (y,d);
initial 
 begin
#0 d=8'b00000000;
#100 d=8'b00000001;
#100 d=8'b00000010;
#100 d=8'b00000100;
#100 d=8'b00001000;
#100 d=8'b00010000;
#100 d=8'b00100000;
#100 d=8'b01000000;
#100 d=8'b10000000;
#100 $finish;
end
endmodule
