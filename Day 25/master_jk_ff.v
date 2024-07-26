module jk_ff(clk,j,k,q,qbar);
   input clk,j,k;
   output q,qbar;
   wire a1,a2;
   and b1(a1,clk,j);
   and b2(a2,clk,k);
   nor b3(qbar,a2,q);
   nor b4(q,a1,qbar);
endmodule

module master_jk_ff(q,qbar,clk,rst,j,k);
    input clk,rst,j,k;
    output q,qbar;
    wire w0,w1,w2,w3,w4,w5,w6;
    assign w1=rst?0:w0;
    assign w3=rst?1:w2;
    assign w4 = ~clk;
    and(w0,j,qbar);
    and(w2,k,q);   
   jk_ff master(clk,w1,w3,w5,w6);
   jk_ff slave(w4,w5,w6,q, qbar);  
endmodule
