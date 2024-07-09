module fa(sum,carry,a,b,cin);
  input a,b,cin;
  output sum,carry;

  assign sum=(a^b^cin);
  assign carry=((a&b)|(a&cin)|(b&cin));
endmodule

module multiplier(Y,A,B);
    input [3:0] A,B;
    output [7:0] Y;
    wire [16:0]w;
 assign Y[0] = A[0]&B[0]; 
  
  fa FA1(Y[1], w[0], A[1]&B[0], A[0]&B[1], 1'b0);
  fa FA2(w[1], w[2], A[1]&B[1], A[0]&B[2], w[0]);
  fa FA3(w[3], w[4], A[1]&B[2], A[0]&B[3], w[2]);
  fa FA4(w[5], w[6], A[1]&B[3], w[4], 1'b0);
  
  fa FA5(Y[2], w[14], w[1], A[2]&B[0], 1'b0);
  fa FA6(w[13], w[15], w[3], A[2]&B[1], w[14]);
  fa FA7(w[12], w[16], w[5], A[2]&B[2], w[15]);
  fa FA8(w[8], w[7], w[6], A[2]&B[3], w[16]);
  
  fa FA9(Y[3], w[11], w[13], A[3]&B[0], 1'b0);
  fa FA10(Y[4], w[10], w[12], A[3]&B[1], w[11]);
  fa FA11(Y[5], w[9], w[8], A[3]&B[2], w[10]);
  fa FA12(Y[6], Y[7],w[7], A[3]&B[3], w[9]);
endmodule
