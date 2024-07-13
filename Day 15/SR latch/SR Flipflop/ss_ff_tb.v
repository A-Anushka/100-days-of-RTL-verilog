module sr_ff_tb();
reg s,r,clk;
wire q,qb;
sr_ff a0(q,qb,s,r,clk);
initial begin
clk=0;
#0 s=1; r=0;               
#100 clk=1; s=0; r=0;      //No change state
#100 s=0; r=1;             //Reset 
#100 s=1; r=0;             //Set
#100 s=1; r=1;             //Invalid 
#100 $finish;
end
endmodule
