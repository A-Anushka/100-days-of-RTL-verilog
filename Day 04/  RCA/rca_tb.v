module ripple_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;
ripple b1(sum,carry,a,b,cin);
initial 
begin
cin=0;
#0 a=4'b1100; b=4'b1101;
#100 a=4'b1000; b=4'b0001;
#100 a=4'b1001; b=4'b1001;
#100 a=4'b0100; b=4'b0101;
#100 $finish;
end
endmodule
