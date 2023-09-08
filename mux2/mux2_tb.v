`timescale 1ns / 1ps

module mux2_tb;
reg a0, a1, s;
wire y;

mux2 mux2_tb (a0, a1, s, y);

initial 
  begin
    a0 = 0; a1 = 0; s = 0;
    #1 a0 = 0; a1 = 0; s = 1;
    #1 a0 = 0; a1 = 1; s = 0;
    #1 a0 = 0; a1 = 1; s = 1;
    #1 a0 = 1; a1 = 0; s = 0;
    #1 a0 = 1; a1 = 0; s = 1;
    #1 a0 = 1; a1 = 1; s = 0;
    #1 a0 = 1; a1 = 1; s = 1;
    #1 $finish;
  end
initial 
  begin
    $monitor("a0=%b, a1=%b, s=%b, y=%b", a0, a1, s, y);
  end
endmodule



