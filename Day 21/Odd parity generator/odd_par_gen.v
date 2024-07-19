module odd_par_gen(odd,a);
    input [2:0] a;
    output odd;
    wire w1;
   xor a1(w1,a[0],a[2]); 
   xnor a2(odd,w1,a[1]);
endmodule
