module celda_inicial(
    input [15:0] A, B,              //modelo optimizado para las pruebas de 16-bit
    output f_in, g_in
);

//todas las salidas de Z
assign f_in = (~A|B);

//todas las salidas de la funcion Y
assign g_in = ((~A|B) & (A|~B));

endmodule