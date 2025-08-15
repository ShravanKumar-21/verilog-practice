`timescale 1ns / 1ps

module half_adder(sum, carry, a ,b);
 
     input a, b;
     output reg sum, carry;
     
    //behavioral
    always @(a,b)
    begin
        sum = a ^ b;
        carry = a & b;
    end
    
    //dataflow
    //sum = a ^ b;
    //carry = a & b;
    
    
endmodule
