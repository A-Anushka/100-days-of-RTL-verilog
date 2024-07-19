module odd_par_gen_tb();
reg [2:0] a;
wire odd;
odd_par_gen a0(odd,a);
initial 
begin
a=3'b000; #100;
     while(a<=3'b111)
        begin
            a=a+1; #100;
         end
     #100 $stop;
 end     
endmodule
