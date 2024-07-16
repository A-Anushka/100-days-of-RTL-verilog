module t_ff_tb();
reg t,clk,rst;
wire q,qbar;
t_ff a0(q,qbar,t,clk,rst);
initial 
begin
clk = 1'b1; 
forever #50 clk = ~clk;
end

initial 
begin
rst = 1'b1;
#25 rst = 1'b0;
end
initial 
begin
t = 1'b0;
#100 t = ~t;
#100 $finish;
end
endmodule
