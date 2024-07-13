module latch_sr(Q,Qbar,s,r);
    input s,r;
    output Q,Qbar;
nand n1(Q, s, Qbar);
nand n2(Qbar, r, Q);
endmodule
