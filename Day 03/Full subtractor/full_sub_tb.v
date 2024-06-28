module fullsub_tb;
reg a,b,cin;
wire diff,borrow;
fullsub a1(diff,borrow,a,b,cin);
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
endmodule
