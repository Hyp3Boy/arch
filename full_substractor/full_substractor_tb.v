`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2023 21:53:10
// Design Name: 
// Module Name: full_substractor_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_substractor_tb;
reg a, b, b_in;
wire d, b_out;

full_substractor full_substractor_tb (a, b, b_in, d, b_out);

initial 
    begin
        a = 1'b0;
        b = 1'b0;
        b_in = 1'b0;
        #1;

        a = 1'b0;
        b = 1'b0;
        b_in = 1'b1;
        #1;

        a = 1'b0;
        b = 1'b1;
        b_in = 1'b0;
        #1;

        a = 1'b0;
        b = 1'b1;
        b_in = 1'b1;
        #1;

        a = 1'b1;
        b = 1'b0;
        b_in = 1'b0;
        #1;

        a = 1'b1;
        b = 1'b0;
        b_in = 1'b1;
        #1;

        a = 1'b1;
        b = 1'b1;
        b_in = 1'b0;
        #1;

        a = 1'b1;
        b = 1'b1;
        b_in = 1'b1;
        #1;

        
       
        $finish;
     end   

initial
    begin
        $monitor ("A=%b, B=%b, B_in=%b, D=%b, B_out=%b", a, b, b_in, d, b_out);
    end
endmodule
