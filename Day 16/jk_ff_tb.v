module jk_ff_tb();
reg j,k,clk,rst;
wire q,qbar;
jk_ff a0 (q,qbar,j,k,clk,rst);
always
    begin
        #5 clk =~clk;
    end
initial 
    begin
        clk=1'b0;
        rst=1'b1;
   #10  rst=1'b0;
   repeat(15)
    begin
       #10 j <= $random;
        k <= $random;
    end
     #100 $finish;
   end   
endmodule
