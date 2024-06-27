module fulladder_tb;
reg a,b,cin;
wire sum,carry;
fulladder a6(sum,carry,a,b,cin);
initial
begin
#0 a=0;b=0;cin=0;
#100 a=0;b=0;cin=1;
#100 a=0;b=1;cin=0;
#100 a=0;b=1;cin=1;
#100 a=1;b=0;cin=0;
#100 a=1;b=0;cin=1;
#100 a=1;b=1;cin=0;
#100 a=1;b=1;cin=1;
#100 $finish;
end
