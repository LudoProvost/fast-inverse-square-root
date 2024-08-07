`timescale 1ns / 1ps

//
// assumes input is formatted using IEEE 754-1985 32-bit floating-point 
//

module FastInvSqrt(
    input [31:0] sqrtin,
    output [31:0] sqrtout
    );

wire [31:0] magicConst = 32'h5F3759DF;

wire [31:0] shiftedIn = (sqrtin >> 1); //shift right one position

wire [31:0] shiftedInComplement = ~shiftedIn; //complement the shifted input. Since FA32b cin = 1, input is 2's complement.
    
FullAdder_32b FA32b (magicConst, shiftedInComplement, 1'b1, sqrtout);  // 0x5F3759DF - (in >> 1)
    
endmodule
