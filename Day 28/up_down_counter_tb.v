module up_down_counter_tb();
reg clk,rst,ctrl;
wire [3:0] count;
up_down_counter a1(count,clk,rst,ctrl);
always 
#5 clk=~clk;
initial
begin
#0 clk=0;
#0 rst=1;ctrl=0;
#20 rst=0;
#180 ctrl=1;
#300 $stop;
end
endmodule
