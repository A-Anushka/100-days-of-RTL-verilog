module parity_gen(even,a);
    input [2:0] a;
    output even;
    assign even= a[0] ^ a[1] ^ a[2];    
endmodule
