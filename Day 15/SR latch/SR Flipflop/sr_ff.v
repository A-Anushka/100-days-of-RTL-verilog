module sr_ff(q,qb,s,r,clk);
    input s,r,clk;
    output q,qb;
    wire w1,w2;
and a1(w1,s,clk);
and a2(w2,clk,r);
nor a3(q,w1,qb);
nor a4(qb,w2,q
