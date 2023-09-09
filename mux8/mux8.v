`include "../mux2/mux2.v"
`timescale 1ns / 1ps


module mux8(a0,a1,a2,a3,a4,a5,a6,a7,s0,s1,s2,y);
input a0,a1,a2,a3,a4,a5,a6,a7,s0,s1,s2;
output y;
wire w1,w2,w3,w4,w5,w6;

mux2 m0(a0,a1,s0,w1);
mux2 m1(a2,a3,s0,w2);
mux2 m2(a4,a5,s0,w3);
mux2 m3(a6,a7,s0,w4);

mux2 m4(w1,w2,s1,w5);
mux2 m5(w3,w4,s1,w6);

mux2 m6(w5,w6,s2,y);

endmodule 

