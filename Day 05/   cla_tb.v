module cla_tb();
reg [3:0]a,b;
reg c;
wire [3:0]sum;
wire carry;
cla a3(sum,carry,a,b,c);
initial 
begin
#0 c=0;
#100 a=4'b1100; b=4'b1101;
#300 $finish;
end
endmodule
