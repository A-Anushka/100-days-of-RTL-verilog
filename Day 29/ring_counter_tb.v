module ring_counter_tb();
parameter N=4;
reg clk,rst;
wire [N-1:0]Q;
sync_ring_counter a1(clk, rst, Q);
initial
 begin
    clk= 1'b0;
    forever #5 clk= ~clk;
 end
initial
 begin 
    rst = 1;
    #10 rst = 0;
    #100 $finish;
 end
endmodule
