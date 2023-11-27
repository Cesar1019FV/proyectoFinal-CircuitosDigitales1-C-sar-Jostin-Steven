`timescale 1ns / 1ps

module celda_final(
    input f_mid,
    output f
);

//se niega debido a que f es una salida que se activa en bajo
assign f = f_mid;

endmodule