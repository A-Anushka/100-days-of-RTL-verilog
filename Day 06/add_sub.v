module fa(sum,carry,a,b,c);
input a,b,c; 
output sum,carry;
wire w0,w1,w2;
xor a1(w0,a,b);
xor a2(sum,w0,c);
and a3(w1,a,b);
and a4(w2,w0,c);
or a5(carry,w1,w2);
endmodule 

module add_sub(sum,carry,a,b,ctrl); 
    input [3:0] a,b;
    input ctrl;
    output [3:0]sum;
    output  carry;
    wire w3,w4,w5,w6;
    wire c0,c1,c2;
    assign w3=b[0]^ctrl;
    assign w4=b[1]^ctrl;
    assign w5=b[2]^ctrl;
    assign w6=b[3]^ctrl;
    
fa a6(sum[0],c0,a[0],w3,ctrl);
fa a7(sum[1],c1,a[1],w4,c0);
fa a8(sum[2],c2,a[2],w5,c1);
fa a9(sum[3],carry,a[3],w6,c2);
endmodule
