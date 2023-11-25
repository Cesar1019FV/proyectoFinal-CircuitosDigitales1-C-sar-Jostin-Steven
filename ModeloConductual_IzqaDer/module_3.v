`timescale 1ns / 1ps

module celda_final(
    input g_mid,
    output f
);

assign f = ~g_mid;

endmodule