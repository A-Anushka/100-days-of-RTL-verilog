module gates_tb;
reg a;
reg b;
wire y;
uni_ga a1(y,a,b);
initial 
begin
 #10 a=1'b0;b=1'b0;
 #10 a=1'b0;b=1'b1;
 #10 a=1'b1;b=1'b0;
 #10 a=1'b1;b=1'b1;
 #10 $stop;
 end
endmodule
