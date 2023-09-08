`timescale 1ns / 1ps
module cmosand (Y, A, B);
input A, B; 
output Y;
wire w1,w2;
supply0 GND;
supply1 VDD;
//nand (Y, A, B);
pmos p1 (w2, VDD, A);
pmos p2 (w2, VDD, B);
nmos n1 (w2, w1,A );
nmos n2 (w1, GND, B);
// and (Y, A, B);
pmos p3 (Y, VDD, w2);
nmos n3 (Y, GND, w2);
endmodule


