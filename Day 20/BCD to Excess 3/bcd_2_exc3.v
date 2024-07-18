module bcd_2_exc3(e,b);
    input [3:0] b;
    output reg [3:0] e;
    always @(*)
    begin
    if(b<=9)
    begin
     e[0]=~b[0];
     e[1]= b[0] ~^ b[1];
     e[2]=((~b[2] & b[1]) | (~b[2] & b[0]) | (b[2] & ~b[1] & ~b[0]));
     e[3]=(b[3] | (b[2] & b[1]) | (b[2] & b[0]));
     end 
     else 
        e=4'bxxxx;
     end     
endmodule
