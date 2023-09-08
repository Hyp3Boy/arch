`include "../cmosnot/cmosnot.v"
`include "../cmosand/cmosand.v"
`include "../cmosor/cmosor.v"
`timescale 1ns / 1ps
module cmosxor (Y, A, B);
input A, B;
output Y;
wire N1, N2, N3, N4;
cmosnot not1 (.y(N1), .a(A));
cmosand and1 (.Y(N2), .A(N1), .B(B));
cmosand and2 (.Y(N4), .A(A), .B(N3));
cmosnot not2 (.y(N3), .a(B));
cmosor or1 (.Y(Y), .A(N2), .B(N4));
endmodule



