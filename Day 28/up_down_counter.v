module up_down_counter(count,clk,rst,ctrl);
    input clk,rst,ctrl;
    output reg [3:0] count;
    always @(posedge clk)
    begin
    if(rst)
        count <=4'b0000;
    else if(ctrl)
            count<=count+1;
    else if(ctrl <= 4'b0000)
        count<=count-1;
    end             
endmodule
