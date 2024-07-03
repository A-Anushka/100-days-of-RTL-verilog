module mux_2to1(y,s,i0,i1);
    input i0,i1;
    input s;
    output y;
    wire d0,d1;
    and a1(d0,~s,i0);
    and a2(d1,s,i1);
    or a3(y,d0,d1);
endmodule
