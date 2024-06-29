module ripple(sum,carry,a,b,cin);
    input [3:0]a;
    input [3:0]b;
    input cin;
    output [3:0] sum;
    output carry;
    wire w1,w2,w3;
    fulladder a7(sum[0],w1,a[0],b[0],cin);
    fulladder a8(sum[1],w2,a[1],b[1],w1);
    fulladder a9(sum[2],w3,a[2],b[2],w2);
    fulladder a10(sum[3],carry,a[3],b[3],w3);   
endmodule
