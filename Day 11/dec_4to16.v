module dec_4to16(y,en,a);
    input [3:0] a;
    input en;
    output reg [15:0] y;
    always @* begin
    if(en==1)
        begin
        case(a)
            4'b0000: y = 16'b0000000000000001; // output 0
            4'b0001: y = 16'b0000000000000010; // output 1
            4'b0010: y = 16'b0000000000000100; // output 2
            4'b0011: y = 16'b0000000000001000; // output 3
            4'b0100: y = 16'b0000000000010000; // output 4
            4'b0101: y = 16'b0000000000100000; // output 5
            4'b0110: y = 16'b0000000001000000; // output 6
            4'b0111: y = 16'b0000000010000000; // output 7
            4'b1000: y = 16'b0000000100000000; // output 8
            4'b1001: y = 16'b0000001000000000; // output 9
            4'b1010: y = 16'b0000010000000000; // output 10
            4'b1011: y = 16'b0000100000000000; // output 11
            4'b1100: y = 16'b0001000000000000; // output 12
            4'b1101: y = 16'b0010000000000000; // output 13
            4'b1110: y = 16'b0100000000000000; // output 14
            4'b1111: y = 16'b1000000000000000; // output 15
            default: y = 16'b0000000000000000; // default case (should not occur)
        endcase
        end
    end
endmodule
