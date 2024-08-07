`timescale 1ns / 1ps

module FullAdder(
    input in1,
    input in2,
    input cin,
    output cout,
    output sum
    );
    
assign sum = in1 ^ in2 ^ cin;
assign cout = (in1 & in2) | (in1 & cin) | (in2 & cin);    

endmodule
