module demux1to16_tb();
reg i;
reg [3:0] s;
wire [15:0] y;
demux_1to16 b1 (y,s,i);
initial
begin
i=1;
#0 s=4'b0000;
#50 s=4'b0001;
#50 s=4'b0010;
#50 s=4'b0011;
#50 s=4'b0100;
#50 s=4'b0101;
#50 s=4'b0110;
#50 s=4'b0111;
#50 s=4'b1000;
#50 s=4'b1001;
#50 s=4'b1010;
#50 s=4'b1011;
#50 s=4'b1100;
#50 s=4'b1101;
#50 s=4'b1110;
#50 s=4'b1111;
#50 $finish;
end
endmodule
