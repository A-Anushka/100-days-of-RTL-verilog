module exc3_2_bcd(b,e);
    input [3:0] e;
    output reg [3:0] b;
    always @(*)
    begin
    if (e>=3 & e<=12)
    begin
    b[0]= ~e[0];
    b[1]= e[1] ^ e[0];
    b[2]=((~e[2] & ~e[1]) | (~e[2] & ~e[0]) | (e[2] & e[1] & e[0]));
    b[3]= ((e[3] & e[2]) | (e[3] & e[1] & e[0]));
    end
    else 
        b=4'bxxxx;
   end
endmodule
