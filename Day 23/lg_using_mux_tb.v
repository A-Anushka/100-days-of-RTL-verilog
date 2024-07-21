module lg_using_mux_tb();
reg a,b;
wire [6:0] y;
logic_gates a1(y,a,b); 
initial 
begin
#0 {a,b}=2'b00;
#100 {a,b}=2'b01;
#100 {a,b}=2'b10;
#100 {a,b}=2'b11;
#100 $finish;
 end
endmodule
