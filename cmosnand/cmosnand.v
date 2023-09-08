`timescale 1ns / 1ps
module cmosnand (Y, A, B);
input A, B; 
output Y;
wire w;
supply0 GND;
supply1 VDD;
pmos p1 (Y, VDD, A);
pmos p2 (Y, VDD, B);
nmos n1 (Y, w,A );
nmos n2 (w, GND, B);
endmodule


