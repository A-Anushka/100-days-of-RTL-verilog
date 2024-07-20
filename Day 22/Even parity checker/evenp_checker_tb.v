module evenp_checker_tb();
reg [2:0] a;
reg p;
wire checker;
even_par_checker a11(checker,a,p);

initial
begin
p=0;
repeat(16)
begin
#100 p=~p;
end
end

initial
begin
#0 a=3'b000;
#200 a=3'b001;
#200 a=3'b010;
#200 a=3'b011;
#200 a=3'b100;
#200 a=3'b101;
#200 a=3'b110;
#200 a=3'b111;
#200$finish;
end
endmodule
