module mux_tb();
reg i0,i1;
reg s;
wire y;

mux_2to1 b1(y,s,i0,i1);
initial
begin
#0 s=0;i0=1;i1=0;
#100 i0=0;i1=1;
#100 s=1;i0=1;i1=0;
#100 i0=0;i1=1;
#100 $finish;
end
endmodule
