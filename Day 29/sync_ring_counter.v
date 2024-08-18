module sync_ring_counter #(parameter N=4)
(   input clk,rst,
    output reg[N-1:0] Q );
    always @(posedge clk) 
    begin 
    if (rst) 
        Q <= 1;  
    else 
        Q <= {Q[0], Q[N-1:1]};
    
    end
endmodule
