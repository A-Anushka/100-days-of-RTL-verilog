module master_jk_tb();
reg clk,rst,j,k;
wire q,qbar;
master_jk_ff z1(q,qbar,clk,rst,j,k);
initial 
begin
  clk=1'b1;
     forever #20 clk = ~clk;  
end 
initial
begin
  rst = 1'b1; #50;
  rst = 1'b0; #100;
end
initial 
begin
  j = 1'b0; k = 1'b1; #100; 
  j = 1'b0; k = 1'b0; #100; 
  j = 1'b1; k = 1'b0; #100; 
  j = 1'b0; k = 1'b0; #100; 
  j = 1'b1; k = 1'b1; #100; 
  $finish;
end
endmodule
