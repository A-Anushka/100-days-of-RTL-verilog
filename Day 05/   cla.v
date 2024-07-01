module cla(sum,carry,a,b,c);
    input [3:0] a,b;
    input c;
    output [3:0] sum;
    output carry;
wire [3:0]p,g,cin;
assign p=a^b; 
assign g=a & b;
//cin(i+1)=g(i)|(p(i)& c(i))
assign cin[0]=c;
assign cin[1]=g[0]|(p[0] & cin[0]);
assign cin[2]=g[1]|(p[1] & g[0])|(p[1] &p[0] & cin[0]);
assign cin[3]=g[2]|(p[2] & g[1])|(p[2] & p[1] & g[0])|(p[2] & p[1] &p[0] & cin[0]);
assign carry =g[3]|(p[3] & p[2] & g[1])|(p[3] & p[2] & p[1] & g[0])|(p[3] & p[2] & p[1] &p[0] & cin[0]);
assign sum=p^cin;
endmodule
