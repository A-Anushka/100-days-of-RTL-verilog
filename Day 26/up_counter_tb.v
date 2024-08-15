module up_counter_tb();
reg clk,rst;
wire [3:0] count;
up_counter a1(count,clk,rst);
always
    #5 clk=~clk;
initial
    clk=1;
initial 
begin
    #0 rst=0;
    #10 rst=1;
    #10 rst=0;
    #200 $stop;
end
endmodule
