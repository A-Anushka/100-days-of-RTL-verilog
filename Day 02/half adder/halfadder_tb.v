module halfadder_tb ;
reg a,b;
wire sum,carry;
halfadder a1(sum,carry,a,b);
initial
begin
#0 a=0;b=0;
#100 a=0;b=1;
#100 a=1;b=0;
#100 a=1;b=1;
#100 $finish;
end
