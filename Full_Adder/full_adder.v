`timescale 1ns / 1ps

module full_adder(sum, cout, a, b, cin);

  input a, b, cin;
  output sum, cout;
  
  wire w1, w2, w3;
  
  half_adder ha1(w1, w2, a, b);
  half_adder ha2(sum, w3, w1, cin);
  
  or or1(cout, w2, w3); 
  
endmodule
