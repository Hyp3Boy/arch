`timescale 1ns/1ps

module mux2(a0,a1,s,y);

input s, a0, a1;
output y;
reg y;


always @ (a0 or a1 or s) begin
  case (s)
    1'b0: y = a0;
    1'b1: y = a1;
  endcase
end
endmodule
//


