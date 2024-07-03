module mux_4to1(y,s0,s1,i0,i1,i2,i3);
    input i0,i1,i2,i3;
    input s0,s1;
    output y;
    wire w0,w1,w2,w3;
    assign w0 =(~s1 & ~s0 & i0);
    assign w1 =(~s1 & s0 & i1);
    assign w2 =(s1 & ~s0 & i2);
    assign w3=(s1 & s0 & i3);
    assign y= w0|w1|w2|w3;
endmodule
