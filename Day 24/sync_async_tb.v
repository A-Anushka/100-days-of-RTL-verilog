module sync_async_tb();
reg clk,rst,a;
wire sync,async;
sync_async_reset a1(sync,async,clk,rst,a);
initial begin
clk= 0; rst= 0; a= 1;
end
initial 
  forever #50 clk<= ~clk;
initial 
  forever #200 rst<= ~rst;
endmodule
