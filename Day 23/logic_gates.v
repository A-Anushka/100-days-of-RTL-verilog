// 2 to 1 multiplexer
module mux_2to1(y,i0,i1,sel);
input sel, i0,i1;
output reg y;
always@(*)
 begin
  if(sel)
    y = i1;
  else
    y = i0;
 end
endmodule

//Logic gates using Multiplexer 
module logic_gates(y,a,b);
    input a,b;
    output [6:0] y;
  
  mux_2to1 and_gate(y[0], 1'b0, a,b);               //y[0] represents AND gate output
  mux_2to1 or_gate(y[1], a, 1'b1, b);               //y[1] represents OR gate output
  mux_2to1 not_gate(y[2], 1'b1, 1'b0, a);           //y[2] represents NOT gate output
  mux_2to1 nand_gate(y[3], 1'b1, ~b, a);            //y[3] represents NAND gate output
  mux_2to1 nor_gate(y[4], ~b, 1'b0, a);             //y[4] represents NOR gate output
  mux_2to1 xor_gate(y[5], b, ~b, a);                //y[5] represents XOR gate output
  mux_2to1 xnor_gate(y[6], ~b, b, a);               //y[6] represents XNOR gate output

endmodule
