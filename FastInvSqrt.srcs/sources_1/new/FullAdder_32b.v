`timescale 1ns / 1ps

module FullAdder_32b(
    input [31:0] in1,
    input [31:0] in2,
    input cin,
    output [31:0] sum
    );
    
wire [31:0] cout;   

genvar i;
generate
    for (i = 0; i < 32; i = i + 1) begin : fullAdderLoop
        if (i == 0) begin
            FullAdder FA (in1[i], in2[i], cin, cout[i], sum[i]);
        end else begin
            FullAdder FA (in1[i], in2[i], cout[i - 1], cout[i], sum[i]);
        end
    end
endgenerate
    
endmodule
