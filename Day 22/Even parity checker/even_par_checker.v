module even_par_checker(checker,a,p);
    input [2:0] a;
    input p;
    output checker;
    wire w1,w2;
    xor a1(w1,a[1],a[2]);
    xor a2(w2,a[0],p);
    xor a3(checker,w1,w2);
  endmodule
