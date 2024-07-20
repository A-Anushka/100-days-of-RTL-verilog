module oddp_checker_tb();
reg [2:0] b;
reg p;
wire par_checker;
odd_par_checker a12(par_checker,b,p);
initial
begin
p=0;
repeat(16)
begin
#100 p=~p;
end
end
initial begin
#0 b=0;
while(b<8)
begin
#200 b=b+1;
end
#100 $finish;
end
endmodule
