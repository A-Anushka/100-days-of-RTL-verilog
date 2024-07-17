module bin2gray_tb();
reg [3:0] b;
wire [3:0] g;
bin2gray a1(g,b);
initial 
begin
repeat(10)
begin
#100 b=$random;
end
#100 $finish;
end
endmodule
