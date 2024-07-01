module add_sub_tb();
reg [3:0]a,b;
reg ctrl;
wire [3:0]sum;
wire carry;
add_sub a0(sum,carry,a,b,ctrl);
initial 
begin
a=4'b1001;
b=4'b0101;
#0 ctrl=1'b0;
#100 ctrl=1'b1;
#200 $finish;
end
endmodule
