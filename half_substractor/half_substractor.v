`timescale 1ns / 1ps

module half_substractor(a, b , y , borrow);
input a,b;
output y,borrow;
wire x;
xor(y,a,b);
and(borrow,x,b);
not(x,a);
endmodule    


//module half_substractor(a,b,y,borrow);
//input a,b;
//output y,borrow;
//reg y, borrow;
//always @(*)
 //   begin 
  //      y = a^b;
   //     borrow = (~a) & b;
    //end    
//endmodule    
