module jk_ff(q,qbar,j,k,clk,rst);
    input j,k,clk,rst;
    output reg q,qbar;
    
    always @(posedge clk) 
    begin
    if (rst)
        begin
            q <= 0; qbar <= 1;
        end  
    else
        begin
            case({j,k})
                2'b00 :
                    begin   
                        q <= q; qbar <= qbar;
                    end 
                2'b01 :
                    begin   
                        q <= 0; qbar <= 1;
                    end 
                2'b10 :
                    begin   
                        q <= 1; qbar <= 0;
                    end 
                2'b11 :
                    begin   
                        q <= ~q; qbar <= ~qbar;     //Invalid state 
                    end 
             endcase
         end   
      end    
endmodule
