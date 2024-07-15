module sr_ff(clk,S,R, q,q_bar);
input clk,S,R;
output reg q;
output q_bar;

always@(posedge clk)
begin
  case({S,R})
    2'b00: q <= q;
  2'b01: q <= 1'b0;
  2'b10: q <= 1'b1;
  2'b11: q <= 1'bx;
  endcase
end

assign q_bar = ~q;
endmodule

module d_ff(q,qbar,d,clk);
input d,clk;
output q,qbar;
sr_ff a10 (clk,d,~d, q,qbar);
endmodule
