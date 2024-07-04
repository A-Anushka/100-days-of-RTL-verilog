module demux_1to8_tb();
reg i;
reg [2:0]s;
wire [7:0]y;
demux_1to8 a1 (y,s,i);
initial 
begin
i=1;
#0 s=3'b000;
#100 s=3'b001;
#100 s=3'b010;
#100 s=3'b011;
#100 s=3'b100;
#100 s=3'b101;
#100 s=3'b110;
#100 s=3'b111;
end
endmodule
