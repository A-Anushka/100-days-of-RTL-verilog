module comp_2bit(AltB,AeqB,AgtB,a,b);
    input [1:0] a, b;
    output AgtB,AeqB, AltB;
    wire w1,w2;
// A Equal to B
xnor a1(w1,a[1],b[1]);
xnor a2(w2,a[0],b[0]);
and a3(AeqB,w1,w2);
//A greater than B
assign AgtB=(a[1] & ~b[1]) | (a[0] & ~b[1] & ~b[0]) | (a[1] & a[0] & ~b[0]);
//A less than B
assign AltB=(~a[1] & b[1]) | (~a[1] & ~a[0] & b[0]) | (~a[0] & b[1] & b[0]);
    
endmodule
