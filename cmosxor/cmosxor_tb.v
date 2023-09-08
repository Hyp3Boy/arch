
`timescale 1ns / 1ps

module cmosxor_tb;
reg A, B;
wire Y;

cmosxor cmosxor_tb (Y, A, B);

initial 
  begin
    A = 0; B = 0;
    #1 A = 0; B = 1;
    #1 A = 1; B = 0;
    #1 A = 1; B = 1;
    #1 $finish;
  end
initial 
  begin
    $monitor ("A=%b, B=%b, Y=%b", A, B, Y);
  end
endmodule


