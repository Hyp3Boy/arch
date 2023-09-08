`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2023 20:35:41
// Design Name: 
// Module Name: half-substractor_tb
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


//module half_substractor_tb;
//reg a,b;
//wire y,borrow;
//half_substractor half_substractor_tb (a, b, y,borrow);

//initial 
//  begin
//    a = 0; b = 0;
//    #1 a = 0; b = 1;
//    #1 a = 1; b = 0;
//    #1 a = 1; b = 1;
//    #1 $finish;
//  end
//initial 
//  begin
//    $monitor ("A=%b, B=%b, Y=%b, Borrow=%b", a, b, y, borrow);
//  end
//endmodule

module half_substractor_tb;
reg a,b;
wire y,borrow;

half_substractor half_substractor_tb(a,b,y,borrow);

initial 
    begin
        a = 1'b0;
        b = 1'b0;
        #1;

        a = 1'b0;
        b = 1'b1;
        #1;        
         
        a = 1'b1;
        b = 1'b0;
        #1;         
 
        a = 1'b1;
        b = 1'b1;
        #1;
       
        $finish;
     end   
     initial 
 begin
  $monitor ("A=%b, B=%b, Y=%b, Borrow=%b", a, b, y, borrow);
  end


endmodule
