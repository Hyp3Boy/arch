`include "../mux8/mux8.v"
`timescale 1ns / 1ps

module mux16 (a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,s0,s1,s2,s3,y);

input a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,s0,s1,s2,s3;
output y;
wire w1,w2;


mux2 m2(w1,w2,s3,y);
mux8 m0(a0,a1,a2,a3,a4,a5,a6,a7,s0,s1,s2,w1);
mux8 m1(a8,a9,a10,a11,a12,a13,a14,a15,s0,s1,s2,w2);


endmodule



