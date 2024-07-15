module d_ff_tb();
reg d,clk;
wire q,qbar;
d_ff a1 (q,qbar,d,clk);
initial begin
clk = 1'b0; 
forever #50 clk = ~clk;
end

initial begin
d = 1'b0;
 forever #100 d = ~d;
 #100 $finish;
end
endmodule
