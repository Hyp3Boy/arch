`timescale 1ns / 1ps
module cmosor (Y, A, B);
input A, B; 
output Y;
wire w1,w2;
supply0 GND;
supply1 VDD;

//nor (Y, A, B);
pmos p1 (w1, VDD, A);
pmos p2 (w2, w1, B);
nmos n1 (w2, GND,A );
nmos n2 (w2, GND, B);
//or = ~nor
pmos p3 (Y, VDD, w2);
nmos n3 (Y, GND, w2);
endmodule

