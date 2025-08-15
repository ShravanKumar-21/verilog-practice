`timescale 1ns / 1ps

module half_adder(sum, carry, a ,b);
 
     input a, b;
     output sum, carry;
     
    //dataflow
    sum = a ^ b;
    carry = a & b;
    
    
endmodule
