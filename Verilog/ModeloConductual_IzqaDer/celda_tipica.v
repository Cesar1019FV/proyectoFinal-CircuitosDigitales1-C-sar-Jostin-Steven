module celda_tipica(
    input z, y, g_in,
    input [15:0] A, B,                  //modelo optimizado para las pruebas de 16-bit
    output f_mid, g_mid
);

//todas las salidas de Z
assign f_mid = (((z | ~A) & (z | B)) & (y | z));

//todas las salidas de la funcion Y
assign g_mid = (y & g_in);

endmodule