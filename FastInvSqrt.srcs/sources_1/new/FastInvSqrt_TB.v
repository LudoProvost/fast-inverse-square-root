`timescale 1ns / 1ps

module FastInvSqrt_TB;

wire [31:0] sqrtin = 32'b00111110001000000000000000000000; // 0.15625 in IEEE 754-1985 32-bit floating-point format

wire [31:0] sqrtout;

FastInvSqrt FIS (sqrtin, sqrtout);

// Inverse sqrt of 0.15625 is approx. equal to 2.52982

endmodule
