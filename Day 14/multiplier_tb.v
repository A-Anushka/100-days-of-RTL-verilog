module multiplier_tb();       
   reg [3:0]A,B;      
   wire [7:0]Y; 
     
multiplier a1 (Y,A,B);
initial
begin
#0      A=6;    B=11;
#100    A=4;    B=20; 
#100    A=8;    B=6; 
#100    A=13;   B=8;  
#100 $finish;
end 
endmodule
