module demux_1to8(y,s,i);
    input i;
    input [2:0] s;
    output  reg [7:0] y;
    always @(*)
    begin
        case(s)
            3'b000 : 
                begin
                y[0]=i; y[7:1]=0;
                end
            3'b001 :
                begin 
                y[1]=i; y[0]=0;
                end
            3'b010 : 
                begin 
                y[2]=i; y[1:0]=0;
                end
            3'b011 :
                begin
                 y[3]=i; y[2:0]=0;
                end
            3'b100 : 
                begin
                y[4]=i; y[3:0]=0;
                end
            3'b101 : 
                begin
                y[5]=i; y[4:0]=0;
                end
            3'b110 :
                begin
                 y[6]=i; y[5:0]=0;
                 end
            3'b111 :
                begin
                 y[7]=i; y[6:0]=0;
                 end
            default: y=0;
         endcase 
         end   
endmodule
