`timescale 1ns / 1ns

module mux16_tb();

    reg d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,s0,s1,s2,s3;
    wire y;
    
    mux16 mux16_1_instance (.a0(d0),.a1(d1),.a2(d2),.a3(d3),.a4(d4),.a5(d5),
    .a6(d6),.a7(d7),.a8(d8),.a9(d9),.a10(d10),.a11(d11),.a12(d12),.a13(d13),.a14(d14),
    .a15(d15),.s0(s0),.s1(s1),.s2(s2),.s3(s3),.y(y));
    initial begin
          $dumpfile("mux16_tb.vcd");
          $dumpvars(0,mux16_tb);

        d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=0;s2=0;s1=0;s0=0;
        #1 d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=0;s2=0;s1=0;s0=1;
        #1 d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=0;s2=0;s1=1;s0=0;
        #1 d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=0;s2=0;s1=1;s0=1;
        #1 d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=0;s2=1;s1=0;s0=0;
        #1 d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=0;s2=1;s1=0;s0=1;
        #1 d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=0;s2=1;s1=1;s0=0;
        #1 d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=0;s2=1;s1=1;s0=1;
        #1 d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=1;s2=0;s1=0;s0=0;
        #1 d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=1;s2=0;s1=0;s0=1;
        #1 d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=1;s2=0;s1=1;s0=0;
        #1 d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=1;s2=0;s1=1;s0=1;
        #1 d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=1;s2=1;s1=0;s0=0;
        #1 d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=1;s2=1;s1=0;s0=1;
        #1 d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=1;s2=1;s1=1;s0=0;
        #1 d0=0;d1=1;d2=0;d3=1;d4=0;d5=1;d6=0;d7=1;d8=0;d9=1;d10=0;d11=1;d12=0;d13=1;d14=0;d15=1;s3=1;s2=1;s1=1;s0=1;
        #1 $finish;
    end
    
    
    initial begin
        $monitor("%b%b%b%b = %b", s3,s2,s1,s0,y);
    end

endmodule
