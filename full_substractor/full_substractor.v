`timescale 1ns / 1ps

module full_substractor(a,b,b_in,d,b_out);
input a,b,b_in;
output d,b_out;
reg d,b_out;
always @(*)
    begin
        d = b_in ^ (a^b);
        b_out = (((~a) & b) | ((~b_in) & (a^b)) );
    end

endmodule
