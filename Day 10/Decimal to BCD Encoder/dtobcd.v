module d_to_bcd(a,y);
    input [9:0] y;
    output [3:0] a;
    assign a[3]=y[8]|y[9];
    assign a[2]=y[4]|y[5]|y[6]|y[7];
    assign a[1]=y[2]|y[3]|y[6]|y[7];
    assign a[0]=y[1]|y[3]|y[5]|y[7]|y[9];
endmodule
