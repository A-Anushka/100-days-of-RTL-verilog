module halfsub(diff,borrow,a,b);
input a,b;
output diff,borrow;
wire w1;
xor a2(diff,a,b);
not a3(w1,a);
and a4(borrow,w1,b);
endmodule
