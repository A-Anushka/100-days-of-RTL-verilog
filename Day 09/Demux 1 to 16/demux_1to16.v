// 1 : 2 Demultiplexer
module demux_1to2(y,s,i);
input i,s;
output [1:0]y;
assign y[0]= (~s & i) ;
assign y[1]= (s & i) ;
endmodule

// 1 : 8 Demultiplexer
module demux_1to8(y,s,i);
input i;
input [2:0]s;
output [7:0]y;
assign y[0]= (~s[2] & ~s[1] & ~s[0] &  i) ;
assign y[1]= (~s[2] & ~s[1] & s[0] &  i) ;
assign y[2]= (~s[2] & s[1] & ~s[0] &  i) ;
assign y[3]= (~s[2] & s[1] & s[0] &  i) ;
assign y[4]= (s[2] & ~s[1] & ~s[0] &  i) ;
assign y[5]= (s[2] & ~s[1] & s[0] &  i) ;
assign y[6]= (s[2] & s[1] & ~s[0] &  i) ;
assign y[7]= (s[2] & s[1] & s[0] &  i) ;

endmodule

// 1 : 16 Demultiplexer using 1 : 2 Demultiplexer(a1) and 1 : 8 Demultiplexer (a2,a3)
module demux_1to16(y,s,i);
    input i;
    input [3:0] s;
    output [15:0] y;
    wire [1:0]w;
demux_1to2 a1 (w[1:0],s[3],i);
demux_1to8 a2 (y[7:0],s[2:0],w[0]);
demux_1to8 a3 (y[15:8],s[2:0],w[1]);
endmodule
