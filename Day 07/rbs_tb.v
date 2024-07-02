module rbs_tb();
reg [3:0]a,b;
reg c;
wire [3:0]diff;
wire borrow;
rbs b1(diff,borrow,a,b,c);
initial 
begin
c=0;
#0 a=4'b1000; b=4'b0001;
#100  a=4'b1001; b=4'b1001;
#100  a=4'b0100; b=4'b0101;
#100 a=4'b0010;b=4'b0100;
#100 $finish;
end
endmodule
