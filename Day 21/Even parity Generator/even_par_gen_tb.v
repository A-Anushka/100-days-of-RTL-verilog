module even_par_gen_tb();
reg [2:0] a;
wire even;
parity_gen a0(even,a);
initial 
begin
a=3'b000;
     while(a<=3'b111)
        begin
            a=a+1; #100;
         end
     #100 $stop;
 end     
endmodule
