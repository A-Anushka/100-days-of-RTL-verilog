
module odd_par_checker(par_checker,b,p);
    input [2:0] b;
    input p;
    output par_checker;
    assign par_checker= ~(b[0] ^ b[1] ^ b[2] ^p);
endmodule
