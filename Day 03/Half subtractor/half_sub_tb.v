module halfsub_tb;
reg a,b;
wire diff,borrow;
halfsub a1(diff,borrow,a,b);
initial 
begin
#100 a=0;b=0;
#100 a=0;b=1;
#100 a=1;b=0;
#100 a=1;b=1;
#100 $finish;
end
endmodule
