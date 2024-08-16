module down_counter_tb();
reg clk,rst;
wire [3:0]count;
down_counter a1(count,clk,rst);
always 
#5 clk=~clk;
initial
begin
 #0   clk=0;
 #0   rst=1;
 #5   rst=0;
 #5   rst=1;
 #200 $stop;
 end
endmodule
