`timescale 1ns/ 1ps

module cmosnot_tb;
reg a;
wire y;
cmosnot cmos_not (y,a);
initial begin
  a = 0;
  #1 a=1;
  #1 a=0;
  #1 $finish;
end
initial begin
  $monitor("%2d:\ta = %b\ty = %b", $time, a, y);
end
endmodule
