module latch_sr_tb( );
reg s,r;
wire Q,Qbar;
latch_sr a1 (Q,Qbar,s,r);
initial begin
#0 s = 1;r = 0;             //Q=0,Qbar=1
#100 s = 1;r = 1;           //No change (Previous state)
#100 s = 0;r = 1;           //Q=1,Qbar=0;
#100 s = 1;r = 1;           //No change (Previous state)
#100 s = 0;r = 0;           //Invalid state (Q=Qbar=1)
#100 $finish;               //If inputs are Sbar and Rbar then at #0 Q=1,#200 Q=0;
end
endmodule
