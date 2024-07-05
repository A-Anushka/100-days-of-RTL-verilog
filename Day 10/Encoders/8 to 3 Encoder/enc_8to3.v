module enc_8to3(y,d);
    input [7:0] d;
    output [2:0] y;
    or a3 (y[2],d[4],d[5],d[6],d[7]);
    or a2 (y[1],d[2],d[3],d[6],d[7]);
    or a1 (y[0],d[1],d[3],d[5],d[7]);
endmodule
