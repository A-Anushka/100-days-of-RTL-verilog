module fulladder(sum,carry,a,b,cin );
input a,b,cin;
output sum,carry;
wire w1,w2,w3;
xor a1(w1,a,b);
xor a2(sum,w1,cin);
and a3(w2,a,b);
and a4(w3,w1,cin);
or a5(carry,w2,w3);
endmodule
