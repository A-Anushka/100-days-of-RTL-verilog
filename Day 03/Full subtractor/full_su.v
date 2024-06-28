module fullsub(diff,borrow,a,b,cin);
input a,b,cin;
output diff,borrow;
 assign diff=(a^b^cin);
 assign borrow= ((~a & b)| (~(a^b)&cin));
endmodule
