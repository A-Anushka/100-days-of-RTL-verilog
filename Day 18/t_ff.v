module jk_ff(q,q_bar,J,K,clk,rst);
input clk,rst,J,K;
output reg q;
output q_bar;

always@(posedge clk)
begin
if(!rst) begin
  case({J,K})
    2'b00: q <= q;
  2'b01: q <= 1'b0;
  2'b10: q <= 1'b1;
  2'b11: q <= ~q;
  endcase
end
else
q <= 1'b0;
end

assign q_bar = ~q;
endmodule

module t_ff(q,qbar,t,clk,rst);
    input t,clk,rst;
    output q,qbar;
    jk_ff a11(q,qbar,t,t,clk,rst);

endmodule
