`timescale 1ns / 1ps

module cmosand_tb;
reg A, B;
wire Y;

cmosand cmosand_tb (Y, A, B);

initial 
  begin
    A = 0; B = 0;
    #10 A = 0; B = 1;
    #10 A = 1; B = 0;
    #10 A = 1; B = 1;
    #10 $finish;
  end
initial 
  begin
    $monitor ("A=%b, B=%b, Y=%b", A, B, Y);
  end
endmodule
