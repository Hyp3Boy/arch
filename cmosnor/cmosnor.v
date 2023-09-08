`timescale 1ns / 1ps
module cmosnor (Y, A, B);
input A, B; 
output Y;
wire w;
supply0 GND;
supply1 VDD;
pmos p1 (w, VDD, A);
pmos p2 (Y, w, B);
nmos n1 (Y, GND,A );
nmos n2 (Y, GND, B);
endmodule



