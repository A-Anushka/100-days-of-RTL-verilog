module sync_async_reset(sync,async,clk,rst,a);
    input clk,rst,a;
    output  reg sync,async;
       
//SYNCHRONOUS RESET : Flop reset is asserted/de-asserted on a predictable clock edge
    always@(posedge clk)  
    begin
        if(rst) 
            sync <= 1'b0;
        else 
            sync <= a;
    end

//ASYNCHRONOUS RESET : Reset is a separate input into Flop.
    always@(posedge clk or posedge rst)
    begin
        if(rst) 
            async <= 1'b0;
        else 
            async <= a;
    end      
endmodule
