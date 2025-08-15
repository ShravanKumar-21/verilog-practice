`timescale 10ns/1ps
module full_adder_4bit_tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    integer i, j;
    
    
    full_adder_4bit fa1(a, b, cin, cout, sum);

    initial 
    begin
        $monitor("time=%d a=%b b=%b cin=%b sum=%b cout=%b", $time, a, b, cin, sum, cout);

        for (i = 0; i < 16; i = i + 1) 
        begin
            for (j = 0; j < 16; j = j + 1) 
            begin
                a = i;
                b = j;
                cin = 0;  
                #5 cin = 1; 
                #5;
            end
        end
        $finish;
    end
endmodule
