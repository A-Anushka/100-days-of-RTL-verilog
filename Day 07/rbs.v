module fs(diff,borrow,a,b,c);
input a,b,c;
output diff,borrow;
assign diff=a^b^c;
assign borrow=(~a&b)|(~(a^b)&c);
endmodule

module rbs(diff,borrow,a,b,c);
    input [3:0] a,b;
    input c;
    output [3:0] diff;
    output borrow;
    wire w0,w1,w2;
    fs a1(diff[0],w0,a[0],b[0],c);
    fs a2(diff[1],w1,a[1],b[1],w0);
    fs a3(diff[2],w2,a[2],b[2],w1);
    fs a4(diff[3],borrow,a[3],b[3],w2);   
endmodule
